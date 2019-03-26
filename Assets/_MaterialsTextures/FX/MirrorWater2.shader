// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "FX/MirrorWater2"
{
    Properties
    {
		_Color ("Tint", Color) = (1,1,1,1)
		_HighlightColor ("Hightlight Color", Color) = (1,1,1,1)
		_BlendWidth ("Blend Width", float) = .1
        _MainTex ("_MainTex", 2D) = "white" {}
		_BlurTex ("_BlurTex", 2D) = "black" {}
		_RippleTex ("_RippleTex", 2D) = "black" {}
        _ReflectionTexLeft ("_ReflectionTexLeft", 2D) = "white" {}
        _ReflectionTexRight ("_ReflectionTexRight", 2D) = "white" {}
		_DepthMul ("Depth Mul", Float) = 2
		_CamDistRange ("CamDistRange", Float) = 50
		_RefractionScale ("_RefractionScale", Range(0,1)) = .3
		_GlittiesPanningSpeed ("GlittiesPanningSpeed", Range(0, .1)) = .02
        [PowerSlider(10)] _FresnelExponent ("Fresnel Exponent", Range(0.01, 10)) = 1
    }

	SubShader
	{
		Tags { "RenderType"="Opaque" "Queue"="Transparent"}
		LOD 100
		// Blend SrcAlpha OneMinusSrcAlpha
		ZWrite On
		GrabPass
        {
            "_GrabScreenTex"
        }

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
				float4 worldPos: TEXCOORD2;
				float3 viewDir: TEXCOORD3;
				float4 screenPos: TEXCOORD4;
				float3 worldNormal : NORMAL;
				float4 grabPos : TEXCOORD5;
				float3 ray : TEXCOORD6;
				float4 projPos : TEXCOORD7;
			};
			sampler2D _GrabScreenTex;
			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _CameraDepthTexture;
			fixed4 _HighlightColor;
			float _BlendWidth;
			sampler2D _ReflectionTexLeft;
			sampler2D _ReflectionTexRight;
			fixed4 _Color;
			half foamNoise;
			float _FresnelExponent;
			float _DepthMul;
			float _CamDistRange;
			float _RefractionScale;

			float4x4 _WaterBlurMatrix;
			sampler2D _WaterBlurTex;
			sampler2D _BlurTex;
			sampler2D _RippleTex;
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.worldPos = mul(unity_ObjectToWorld, v.vertex);
				o.viewDir = normalize(UnityWorldSpaceViewDir(o.worldPos));
				o.screenPos = ComputeScreenPos(o.vertex);
				o.worldNormal = UnityObjectToWorldNormal(v.normal);
				o.grabPos = ComputeGrabScreenPos(o.vertex);
				o.ray = o.worldPos.xyz - _WorldSpaceCameraPos;
				o.projPos = ComputeScreenPos (o.vertex);
				o.projPos.z = -mul(UNITY_MATRIX_V, o.worldPos).z;

				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			float _GlittiesPanningSpeed;
			fixed4 frag (v2f i) : SV_Target
			{
					// apply reflection projection
				// float mainTexR = tex2D(_MainTex, i.uv + float2(sin(_Time.z * .02), sin(_Time.z * .05))).r;
				// float4 _offset =  float4(mainTexR*.011 + _Time.w, mainTexR*.011 + _Time.w, 0, 0); // probably unecessary,
				// float4 _offset = float4(0,0,0,0);
				
				float camDist = distance(i.worldPos, _WorldSpaceCameraPos);
				float4 normalTex = tex2D(_RippleTex, i.uv *10+float2(sin(_Time.z * _GlittiesPanningSpeed), sin(_Time.z * _GlittiesPanningSpeed)));
				float4 normalTex2 = tex2D(_MainTex, i.uv *80+float2(-sin(_Time.z * _GlittiesPanningSpeed), -sin(_Time.z * _GlittiesPanningSpeed)));
				float3 tangent = mul(unity_ObjectToWorld, lerp(normalTex.xyz, normalTex2.xyz, .5));
				float4 offset = normalTex * _RefractionScale;
				// offset.y = saturate(offset.y)
				float unmodifiedDepth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, i.screenPos));
				float depth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, i.screenPos+offset));
				float refractionMod = step(0,(depth-camDist));
				depth = lerp(unmodifiedDepth, depth, refractionMod);
				offset *= refractionMod;
				// float inverted = step(0, depth-camDist);
				float3 worldPosition = depth * i.ray / i.projPos.z + _WorldSpaceCameraPos;
				float waterHeightFog = saturate(abs(worldPosition.y / _BlendWidth));
				float4 grabColor = tex2Dproj(_GrabScreenTex, i.grabPos+offset);
				fixed4 refl;
				if (unity_StereoEyeIndex == 0) refl = tex2Dproj(_ReflectionTexLeft, UNITY_PROJ_COORD(i.screenPos)+offset);
				else refl = tex2Dproj(_ReflectionTexRight, UNITY_PROJ_COORD(i.screenPos)+offset);
				refl.a = 1;
				float4 col = refl * _Color;
				
				// depth = saturate(depth);
				half4 foamLine = 1-step(.1, saturate(_BlendWidth * (depth - i.screenPos.w)));
				
				//get the dot product between the normal and the view direction
				float fresnel = dot(i.worldNormal, i.viewDir);
				//invert the fresnel so the big values are on the outside
				fresnel = saturate(1 - fresnel);
				//raise the fresnel value to the exponents power to be able to adjust it
				fresnel = pow(fresnel, _FresnelExponent);
				//combine the fresnel value with a color
				// float3 fresnelColor = fresnel * _FresnelColor;
				//apply the fresnel value to the emission
				float finalAlpha = saturate((depth-camDist)/_CamDistRange + waterHeightFog*.95 + .3); 
				// o.Albedo = foamLine;
				grabColor = lerp(grabColor, Luminance(grabColor)*_HighlightColor, pow(waterHeightFog, .08));
				col = lerp(grabColor, col, finalAlpha);// + step(.2, dot(normalTex.xyz-float3(.5,.5,.5), float3(0,1,0)));// + foamLine;//finalAlpha;
				// o.Emission = foamLine * _HighlightColor;
				col.a = 1;
				UNITY_APPLY_FOG(i.fogCoord, col);
				float glitties = step(dot(normalTex, normalTex2), .4);
				float ddG = fwidth(glitties);
				float smoothglitties = smoothstep(-ddG, ddG, glitties);
				float ddG2 = fwidth(smoothglitties);
				float smoothestGlitties = smoothstep(-ddG2, ddG2,smoothglitties);
				float hilight = saturate(1-abs(dot(tangent, i.viewDir)))*0;
				return col + glitties + hilight;
			}
			ENDCG
		}
	}
}

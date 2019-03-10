Shader "FX/MirrorWater"
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
        [PowerSlider(10)] _FresnelExponent ("Fresnel Exponent", Range(0.01, 10)) = 1
    }
    SubShader
    {

        Tags { "RenderType"="Opaque" "Queue"="Transparent" }
		LOD 200
        ZWrite On
		Blend SrcAlpha OneMinusSrcAlpha

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf WaterLighting alpha:premul
		#pragma debug
		

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
        sampler2D _CameraDepthTexture;
		fixed4 _HighlightColor;
        float _BlendWidth;

		struct Input {
			float2 uv_MainTex;
            float3 viewDir;
			float3 worldNormal;
           	float3 worldPos;
            float4 screenPos;
		};

        sampler2D _ReflectionTexLeft;
        sampler2D _ReflectionTexRight;
		fixed4 _Color;
		half foamNoise;

		float4 LightingWaterLighting (SurfaceOutput s, float3 lightDir, half3 viewDir, float atten){
			half NdotL = dot (s.Normal, lightDir);
            half4 c;
            c.rgb = s.Albedo * _LightColor0.rgb * (NdotL * atten);
            c.a = s.Alpha;
            return c;
		}

		float _FresnelExponent;
		float _DepthMul;
		float _CamDistRange;

		float4x4 _WaterBlurMatrix;
		sampler2D _WaterBlurTex;
		sampler2D _BlurTex;
		sampler2D _RippleTex;
		void surf (Input IN, inout SurfaceOutput o) {
			// apply reflection projection
		    float mainTexR = tex2D(_MainTex, IN.uv_MainTex + float2(sin(_Time.z * .02), sin(_Time.z * .05))).r;
            // float4 _offset =  float4(mainTexR*.11, mainTexR*.011, 0, 0); // probably unecessary,
			float4 _offset = float4(0,0,0,0);

            fixed4 refl;
		    if (unity_StereoEyeIndex == 0) refl = tex2Dproj(_ReflectionTexLeft, UNITY_PROJ_COORD(IN.screenPos + _offset));
            else refl = tex2Dproj(_ReflectionTexRight, UNITY_PROJ_COORD(IN.screenPos+_offset));
			refl.a = 1;
			o.Albedo = refl * _Color;// + depth * _HighlightColor;
			// o.Albedo = 1;
           	float depth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, IN.screenPos));
			// depth = saturate(depth);
		   	half4 foamLine = 1-step(.1, saturate(_BlendWidth * (depth - IN.screenPos.w)));
			
			//get the dot product between the normal and the view direction
            float fresnel = dot(IN.worldNormal, IN.viewDir);
            //invert the fresnel so the big values are on the outside
            fresnel = saturate(1 - fresnel);
            //raise the fresnel value to the exponents power to be able to adjust it
            fresnel = pow(fresnel, _FresnelExponent);
            //combine the fresnel value with a color
            // float3 fresnelColor = fresnel * _FresnelColor;
			float camDist = distance(IN.worldPos, _WorldSpaceCameraPos);
            //apply the fresnel value to the emission
			float finalAlpha = saturate((depth-camDist)/_CamDistRange + (fresnel)); 
			// o.Albedo = foamLine;
			o.Alpha = finalAlpha;
			o.Emission = foamLine * _HighlightColor;
			// o.Emission = tex2D(_MainTex, blurUV);

            // o.Albedo = depth;
            // fixed brightness = .21 * refl.r + .71 * refl.g + .8 * refl.b;
            // fixed viewDot = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal) - .3);
			// o.Albedo = float3(brightness, brightness, brightness);
            //o.Albedo = foamLine * float3(1,1,1);

		}
		ENDCG
	}
	FallBack "Diffuse"
}
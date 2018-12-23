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
    }
    SubShader
    {

        Tags { "RenderType"="Opaque" "Queue"="Transparent" }
		LOD 200
        ZWrite On

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf WaterLighting alpha:fade
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

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		float4x4 _WaterBlurMatrix;
		sampler2D _WaterBlurTex;
		sampler2D _BlurTex;
		sampler2D _RippleTex;
		void surf (Input IN, inout SurfaceOutput o) {
			// waterIntersectionRipples
			// convert to camera space of blur cam
			half4 clipCoors = mul(_WaterBlurMatrix, float4(IN.worldPos, 1.0));
			clipCoors = clipCoors / clipCoors.w;// / clipCoors.w;
			half mask = step(abs(clipCoors.x), 1) * step(abs(clipCoors.y), 1);
			// sample the blur
			half2 blurUV = ((clipCoors.xy) + half2 (1,1)) / 2;// + half2(.5, .5));
			// half blurValue = tex2D (_MainTex, blurUV).r-.01;
			float3 blurNormal = tex2D (_MainTex, blurUV).rgb;
			half blurValue = blurNormal.b *.6;
			// interfere perlin with itself to get foam pattern
			half rippleSample1 = tex2D(_RippleTex, IN.worldPos.xy *.5 * saturate(blurNormal.xy*.8)).r;
			half rippleSample2 = tex2D(_RippleTex, IN.worldPos.xy *.5 * saturate(blurNormal.xy*.8) + -half2(_Time.x, _Time.x)*.5).r;
			// half rippleSample1 = tex2D(_RippleTex, IN.worldPos.xy *.5).r;
			// half rippleSample2 = tex2D(_RippleTex, IN.worldPos.xy *.5 + -half2(_Time.x, _Time.x)*.5).r;
			half output = step((rippleSample1 * rippleSample2) *.85, blurValue);
			float3 intersectionFoam = half3(output, output, output) * _HighlightColor;
			o.Emission = intersectionFoam * mask;
			// apply reflection projection
		    float mainTexR = tex2D(_MainTex, IN.uv_MainTex + float2(sin(_Time.z * .02), sin(_Time.z * .05))).r;
            // float4 _offset =  float4(mainTexR*.11, mainTexR*.011, 0, 0); // probably unecessary,
			float4 _offset = float4(0,0,0,0);
	
            fixed4 refl;
		    if (unity_StereoEyeIndex == 0) refl = tex2Dproj(_ReflectionTexLeft, UNITY_PROJ_COORD(IN.screenPos + _offset));
            else refl = tex2Dproj(_ReflectionTexRight, UNITY_PROJ_COORD(IN.screenPos+_offset));
			refl.a = 1;
			o.Albedo = refl * _Color + intersectionFoam*mask;// + depth * _HighlightColor;
			// o.Albedo = 1;
           	float4 depth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, IN.screenPos));
		   	half4 foamLine = 1- saturate(_BlendWidth * (depth - IN.screenPos.w));
			o.Alpha = saturate((1-foamLine) + .6) + 2*intersectionFoam.r*mask;
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
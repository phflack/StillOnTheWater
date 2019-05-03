Shader "Custom/TestBlurProjection" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_BlurTex ("Albedo (RGB)", 2D) = "white" {}
		_RippleTex ("Ripple Tex", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Unlit 
         #include "UnityCG.cginc" 
         
        half4 LightingUnlit (SurfaceOutput s, half3 lightDir, half atten) {
          half4 c;
          c.rgb = s.Albedo;
          c.a = s.Alpha;
          return c;
        }

		struct Input {
           float3 worldPos;
           float4 screenPos;
         };
		fixed4 _Color;

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
			// sample the blur
			half2 blurUV = ((clipCoors.xy) + half2 (1,1)) / 2;// + half2(.5, .5));
			half blurValue = tex2D (_BlurTex, blurUV).r-.01;
			// interfere perlin with itself to get foam pattern
			half rippleSample1 = tex2D(_RippleTex, blurUV*4 + half2(_Time.x, _Time.x) * .5).r;
			half rippleSample2 = tex2D(_RippleTex, blurUV*4 + -half2(_Time.x, _Time.x) * .5).r;
			half output = blurValue * step(rippleSample1 * rippleSample2, blurValue) * .3;
			float3 intersectionFoam = half3(output, output, output);
			// half output = input;
			o.Albedo = intersectionFoam;
			// o.Albedo = c;
			o.Alpha = 1;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

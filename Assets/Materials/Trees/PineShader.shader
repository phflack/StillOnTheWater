Shader "Custom/PineShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_ColorNoise ("Color Noise (Grayscale)", 2D) = "white" {}
		_ColorVarianceAmount ("Color Variance Amount", Range(0,1)) = .15
		_Scale("Scale", float) = 1
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _ColorNoise;

		struct Input {
			float2 uv_ColorNoise;
			float3 worldPos;
		};

		fixed4 _Color;
		float _ColorVarianceAmount;
		float _Scale;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color

			fixed4 c = _Color;
			float colorMod = tex2D (_ColorNoise, float2((fmod(IN.worldPos.x, _Scale)/ _Scale), (fmod(IN.worldPos.z, _Scale)/ _Scale))).r * _ColorVarianceAmount;
			c.r = saturate(c.r + colorMod);
			o.Albedo = c.rgb;

//			o.Alpha = 1;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
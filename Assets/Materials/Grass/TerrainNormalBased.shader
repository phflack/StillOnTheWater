Shader "Custom/TerrainNormalBased" {
	Properties {
		
		_GrassTex ("Grass", 2D) = "white" {}
		_DirtTex ("Dirt", 2D) = "white" {}

		_GrassTint ("Grass Tint", Color) = (1,1,1,1)
		_DirtTint ("Dirt Tint", Color) = (1,1,1,1)

//		_Glossiness ("Smoothness", Range(0,1)) = 0.5
//		_Metallic ("Metallic", Range(0,1)) = 0.0

		_AngleThreshold ("Angle Threshold", Range(0,1)) = .76
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _GrassTex;
		sampler2D _DirtTex;

		struct Input {
			float2 uv_GrassTex;
			float3 worldNormal;
		};

//		half _Glossiness;
//		half _Metallic;
		fixed4 _GrassTint;
		fixed4 _DirtTint;
		fixed _AngleThreshold;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 grass = tex2D (_GrassTex, IN.uv_GrassTex) * _GrassTint;
			fixed4 dirt = tex2D (_DirtTex, IN.uv_GrassTex) * _DirtTint;
			o.Albedo = lerp(dirt.rgb, grass.rgb, step(_AngleThreshold, dot(IN.worldNormal, fixed3(0,1,0))));
			// Metallic and smoothness come from slider variables
//			o.Metallic = _Metallic;
//			o.Smoothness = _Glossiness;
//			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

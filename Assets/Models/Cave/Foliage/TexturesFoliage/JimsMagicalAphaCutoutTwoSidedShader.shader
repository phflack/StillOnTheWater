Shader "Custom/JimsMagicalAphaCutoutTwoSidedShader" {
	Properties {
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Cutoff ("Cutoff", Range(0, 1)) = 0
		_Color ("Color", Color) = (1,1,1,1)
		_Emission ("Emission", Color) = (0,0,0,0)
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
        [Enum(UnityEngine.Rendering.CullMode)] _Cull("Cull", Float) = 2 //"Back"
	}
	SubShader {
		Tags { "RenderType"="Opaque" "Queue"="AlphaTest" }
		LOD 200
		Cull [_Cull]

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows addshadow

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0
		
    	#pragma shader_feature FILL_WITH_RED

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		float4 _Emission;
		fixed4 _Color;
		float _Cutoff;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			clip (c.a - _Cutoff);
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Emission = _Emission; 
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

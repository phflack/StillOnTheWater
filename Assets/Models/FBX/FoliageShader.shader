Shader "Custom/FoliageShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_Emission ("Emission", Color) = (0,0,0,0)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_FlowMap ("Flowmap (RGB)", 2D) = "black" {}
		_Lean("Offset", Vector) = (.5,.5,0,0)
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_FlowMapScale ("FlowmapScale", float) = 1
		_Amount ("Amoutn", float) = .1
		_Speed ("Speed", float) = 1
		_BaseY ("BaseY", float) = 0
	}
	SubShader {
		Tags { "Queue"="AlphaTest" "RenderType"="TransparentCutout" }
		Cull Off

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows vertex:vert addshadow

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _FlowMap;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;
		fixed4 _Lean;
		float _Speed;

		float _Amount;
		float _BaseY;
		float _FlowMapScale;
		void vert (inout appdata_full v) {
		  float2 flowXZ = tex2Dlod (_FlowMap, float4(v.vertex.x * _FlowMapScale, v.vertex.z * _FlowMapScale,0,0) + float4(0, _Time.y * _Speed,0,0)) + (_Lean * 4 - fixed2(2, 2));
          v.vertex.xz += (flowXZ * _Amount) * saturate(abs(v.vertex.y - _BaseY));
      	}


		float4 _Emission;
		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)
		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex);
			clip(Luminance(c.rgb) - .1);
			o.Albedo = _Color;
			o.Emission = _Emission;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

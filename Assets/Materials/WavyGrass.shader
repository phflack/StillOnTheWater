Shader "Custom/WavyGrass" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_FlowMap ("Flowmap", 2D) = "white" {}
		_Amount ("Wave Amount", float) = .1
		_BaseY ("_BaseY", float) = 0
		_Smoothness ("Smoothness", float) = 0
	}
	SubShader {
		Tags { "RenderType"="Transparent" }
		LOD 200
		Cull Off

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard vertex:vert

		// Use shader model 3.0 target, to get nicer looking lighting
//		#pragma targaet 3.0

		sampler2D _MainTex;
		sampler2D _FlowMap;

		struct Input {
			float2 uv_MainTex;
			float2 uv_FlowMap;
		};

		fixed4 _Color;
		float _Smoothness;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		float _Amount;
		float _BaseY;
		void vert (inout appdata_full v) {
		  float2 flowXZ = tex2Dlod (_FlowMap, float4(mul(unity_ObjectToWorld, v.vertex).x/50, mul(unity_ObjectToWorld, v.vertex).z/50,0,0) + float4(0, _Time.y/2,0,0));
          v.vertex.xz += (flowXZ * _Amount) * saturate(abs(v.vertex.y - _BaseY));
      	}

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Smoothness = _Smoothness;
			o.Alpha = c.a;
			clip(c.a - 0.5);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
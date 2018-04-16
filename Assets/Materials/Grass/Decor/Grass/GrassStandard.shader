Shader "Custom/GrassStandard" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_WindStrength("Wind Strength", Range(0, .8)) = 0.5
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		Cull Off
		

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows vertex:vert

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		half _WindStrength;
		fixed4 _Color;
		//float wind = sin(_Time * v0.x + v0.z));
		//v1 += wind * _WindStrength;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void vert(inout appdata_full v) {
			//float3 wind = sin(_Time * v.x + v.z), 0, cos(_Time * v.x + v.z);
			v.vertex.x += clamp(v.vertex.y, 0, _Time.y * 1) * sin(_Time.w * _WindStrength/2) * _WindStrength;
			//v.vertex.x += v.vertex.y * sin(_Time.w * v.vertex.x + v.vertex.z * _WindStrength / 2) * _WindStrength;
			//v.vertex.xyz += wind * _WindStrength;
		}

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			clip(c.a - .4);
			//o.Metallic = _Metallic;
			//o.Smoothness = _Glossiness;
			//float wind = sin(_Time * 50));
			o.Alpha = c.a;// +wind * _WindStrength;
			
		}
		ENDCG
	}
	FallBack "Diffuse"
}

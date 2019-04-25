Shader "Custom/lilwaterfall" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("MainTex", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Transparent"  "Queue"="Transparent"}
		LOD 200
		Cull Off

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf WrapLambert fullforwardshadows alpha:blend

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;


		half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten) {
        	half NdotL = dot (s.Normal, lightDir);
        	half diff = NdotL * 0.5 + 0.5;
        	half4 c;
        	c.rgb = s.Albedo * Luminance(_LightColor0.rgb) * (diff * atten);
        	c.a = s.Alpha;
        	return c;
    	}
		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutput o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex + float2(0, -_Time.z*2));
			o.Albedo = c.a * _Color;
			// Metallic and smoothness come from slider variables
			// o.Metallic = _Metallic;
			o.Emission = step(_Glossiness, c.a) * _Color;
			// o.Smoothness = _Glossiness;
			o.Alpha = 1 * c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

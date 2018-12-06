Shader "Cavestone" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_Ramp ("Ramp", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf HalfFlat fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _Ramp;

		struct Input {
			float2 uv_Ramp;
			float3 worldNormal;
		};

		fixed4 _Color;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		half4 LightingHalfFlat (SurfaceOutput s, half3 lightDir, half atten) {
			half NdotL = dot (s.Normal, lightDir);
			half diff = NdotL * 0.5 + 0.5;
			half3 ramp = tex2D (_Ramp, float2(1-diff, 1-diff)).rgb;
			half4 c;
			c.rgb = ramp * _Color;
			c.a = 1;//s.Alpha;
			return c;
		}

		void surf (Input IN, inout SurfaceOutput o) {
			// Albedo comes from a texture tinted by color
			// o.Albedo = _Color;
			// o.Emission = IN.worldNormal * .5 + float3(.5, .5, .5);
		}
		ENDCG
	}
	FallBack "Diffuse"
}

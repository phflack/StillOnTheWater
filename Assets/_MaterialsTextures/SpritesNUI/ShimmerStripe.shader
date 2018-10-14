Shader "Custom/ShimmerStripe" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_StripeAlpha ("Stripe Alpha", Range(0,1)) = .7
		_ShimmerSpeedMod ("Shimmer Speed Mod", float) = 1
		_ShimmerStripeWidth ("Stripe Width", Range(0,.3)) = .1
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows alpha:fade

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float3 worldPos;
		};

		float4 _Color;
		float _StripeAlpha;
		float _ShimmerSpeedMod;
		float _ShimmerStripeWidth;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutputStandard o) {
		 	float3 localPos = IN.worldPos -  mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz;
		 	float progress = frac(_Time.y * _ShimmerSpeedMod) * 2 -1;
		 	half withinStripeRegion = 1 * step(progress - _ShimmerStripeWidth, localPos.x) * step(localPos.x, progress + _ShimmerStripeWidth);
			o.Albedo = _Color.rgb;
			o.Alpha = saturate(withinStripeRegion * _StripeAlpha + (1-withinStripeRegion) * _Color.a);
		}
		ENDCG
	}
	FallBack "Diffuse"
}

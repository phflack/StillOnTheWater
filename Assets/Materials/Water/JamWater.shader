Shader "Custom/JamWater" {
	Properties {
		_Color ("Color", Color) = (1,1,1,.5)
		_HighlightColor ("Hightlight Color", Color) = (1,1,1,1)
		_Noise1 ("Noise1", 2D) = "white" {}
		_Noise2 ("Noise2", 2D) = "white" {}
		_BlendWidth ("Blend Width", float) = .1
		_DepthRange ("Depth Range", float) = 1
		_WaveAmount ("Wave Amount", float) = .05
	}
	SubShader {
		Stencil {
			Ref 7
			Comp NotEqual
			Pass Replace
		}
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
		ZWrite Off
		LOD 100

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard alpha:fade vertex:vert

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _Noise1;
		sampler2D _Noise2;
		sampler2D _CameraDepthTexture;

		struct Input {
			float2 uv_Noise1;
			float4 screenPos;
			float3 worldPos;
		};

		float _DepthRange;
		fixed4 _Color;
		fixed4 _HighlightColor;
		float _BlendWidth;
		fixed _WaveAmount;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void vert (inout appdata_full v) {
          v.vertex.y += _WaveAmount * sin((mul (unity_ObjectToWorld, v.vertex).x + _Time.x * 2) * 7) * sin((mul(unity_ObjectToWorld, v.vertex).z + _Time.x * 2) * 7);
      	}

		void surf (Input IN, inout SurfaceOutputStandard o) {
			float4 depth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, IN.screenPos));
			half4 foamLine = 1- saturate(_BlendWidth * (depth - IN.screenPos.w));


			float2 wavyFlux = float2(
									 _Time.x/2,
									 .02 * sin(IN.uv_Noise1.x * 20)
									);

			float noise1 = tex2D (_Noise1, IN.uv_Noise1 + wavyFlux).r;
			float noise2 = tex2D (_Noise2, IN.uv_Noise1 + wavyFlux * half2(1.5,.5)).r;

			float bubbleTrails = step(noise1, noise2);

			
//			o.Albedo = saturate(o.Albedo + _HighlightColor * depthValue * _BlendAmount);
//			o.Albedo += _HighlightColor * depthValue * _BlendAmount;

			o.Albedo = _Color;
			o.Albedo += foamLine * _HighlightColor + bubbleTrails * _HighlightColor;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

Shader "Custom/smokeParticle" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_AlphaTex ("AlphaTex", 2D) = "white" {}
		_NoiseTex ("NoiseTex", 2D) = "white" {}
		_Cutoff ("Cutoff", Range(.01, 1)) = .01
	}
	SubShader {
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
		LOD 200
		// Blend SrcAlpha One
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows alpha:blend vertex:vert

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _AlphaTex;
		sampler2D _NoiseTex;

		struct appdata_particles {
            float4 vertex : POSITION;
			float3 normal : NORMAL;
            float4 color : COLOR;
            float4 texcoord : TEXCOORD0;
			float3 velocity : TEXCOORD1;
			float4 tangent : TANGENT;
    	};

		struct Input {
			float4 color;
			float2 uv_AlphaTex;
			float2 uv_NoiseTex;
			float3 velocity;
			float4 tangent;
		};

		void vert(inout appdata_particles v, out Input o) {
            UNITY_INITIALIZE_OUTPUT(Input,o);
            o.uv_AlphaTex = v.texcoord.xy;
			o.uv_NoiseTex = v.texcoord.zw;
            o.color = v.color;
			o.velocity = v.velocity;
			
			// compute the binormal so we have a 3-vector basis to convert world space velocity to tangent space
			float3 binormal = cross(v.normal, v.tangent.xyz);
			o.tangent = v.tangent;
        }


		fixed4 _Color;
		fixed _Cutoff;
		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		sampler2D_half _CameraMotionVectorsTexture;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_AlphaTex, IN.uv_AlphaTex);
			float2 offset = float2(-_Time.x*2, 0);// *(IN.velocity.xy);
			fixed4 noise = tex2Dlod (_NoiseTex, float4(IN.uv_NoiseTex+offset,0,8*(1-IN.color.a)));
			fixed4 col = IN.color * _Color * (noise*.7+.15);
			clip((c.a*IN.color.a*IN.color.a) - _Cutoff);
			o.Albedo = col.rgb;
			// o.Albedo = float3(IN.velocity.x, IN.velocity.y, IN.velocity.z);
			o.Alpha = c.a*IN.color.a;
			// o.Alpha = 1;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
Shader "Custom/Blur"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}

	CGINCLUDE
		#include "UnityCG.cginc"
		struct appdata
		{
			float4 vertex : POSITION;
			float2 uv : TEXCOORD0;
		};

		struct v2f
		{
			float4 pos : SV_POSITION;
			float2 uv : TEXCOORD0;
		};

		v2f vert (appdata v)
		{
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			o.uv = v.uv;
			return o;
		}

		sampler2D _MainTex;
		float4 _MainTex_TexelSize;
		half3 Sample (float2 uv) {
			return tex2D(_MainTex, uv).rgb;
		}

		half3 SampleBox (float2 uv, float delta) {
			float4 o = _MainTex_TexelSize.xyxy * float2(-delta, delta).xxyy;
			half3 s = Sample(uv + o.xy) + Sample(uv + o.zy) + Sample(uv + o.xw) + Sample(uv + o.zw);
			return s * .25f;
		}
	ENDCG
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass { // 0
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag	
				
				half4 frag (v2f i) : SV_Target {
					return half4(SampleBox(i.uv, 1), 1);
				}
			ENDCG
		}

		Pass { // 1
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag	
				
				half4 frag (v2f i) : SV_Target {
					return half4(SampleBox(i.uv, .5), 1);
				}
			ENDCG
		}
	}
}

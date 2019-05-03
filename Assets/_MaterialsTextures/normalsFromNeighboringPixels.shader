Shader "Hidden/normalsFromNeighboringPixels"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			sampler2D _MainTex;
			float4 _MainTex_TexelSize;
			half3 Sample (float2 uv) {
				return tex2D(_MainTex, uv).rgb;
			}
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.uv);
				float4 quads = float2(-1, 1).xxyy;
				float4 o = _MainTex_TexelSize.xyxy * quads;
				half2 s = Sample(i.uv + o.xy) * quads.xy + Sample(i.uv + o.zy) * quads.zy + Sample(i.uv + o.xw) * quads.xw + Sample(i.uv + o.zw) * quads.zw;
				s = normalize(s*.5 + float2(.5, .5));
				col = float4(normalize(s.rg),col.r,1);
				return col;
			}
			ENDCG
		}
	}
}

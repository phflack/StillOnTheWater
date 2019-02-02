Shader "Hidden/dithereffect2"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_DitherTex ("Texture", 2D) = "white" {}
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
				float2 pos : TEXCOORD1;
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				o.pos = v.uv * _ScreenParams.xy;
				return o;
			}
			
			sampler2D _MainTex;
			sampler2D _DitherTex;

			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.uv);
				float2 ditherUV = float2((i.pos.x%4)/64 + Luminance(col.rgb), ((i.pos.y)%4)/4);
				col = tex2D(_DitherTex, ditherUV);
				return col;
			}
			ENDCG
		}
	}
}

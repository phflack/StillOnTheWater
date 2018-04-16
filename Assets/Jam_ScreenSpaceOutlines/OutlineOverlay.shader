Shader "Hidden/OutlineOverlay"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_OutlineOutputTex ("Outline Output Render Texture", 2D) = "white" {}
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
			sampler2D _OutlineOutputTex;

			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.uv);
				fixed4 outlines = tex2D(_OutlineOutputTex, i.uv);
				// just invert the colors
				float outlineTexIsNotBlack = step(.01, outlines.r) + step(.01, outlines.g) + step(.01, outlines.b);

				return outlineTexIsNotBlack * outlines + (1 - outlineTexIsNotBlack) * col ;
			}
			ENDCG
		}
	}
}

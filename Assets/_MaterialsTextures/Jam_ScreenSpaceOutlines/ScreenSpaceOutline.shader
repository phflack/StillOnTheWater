Shader "Hidden/ScreenSpaceOutline"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Threshold ("Threshold", Range(0,1.1)) = .5
		_OutlineColor ("OutlineColor", Color) = (1,1,1,1)
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
			// This is a totally undocumented builtin that contains the texel dimensions for this texture!
			//  .xy = 1/size   .zw = size.
			fixed4 _MainTex_TexelSize;
			float _Threshold;
			float4 _OutlineColor;

			fixed4 frag (v2f i) : SV_Target
			{
				fixed col1 = tex2D(_MainTex, i.uv + fixed2(-1 * _MainTex_TexelSize.x, 1 * _MainTex_TexelSize.y)).r; // left   column
				fixed col2 = tex2D(_MainTex, i.uv + fixed2(-1 * _MainTex_TexelSize.x, 0 * _MainTex_TexelSize.y)).r;
				fixed col3 = tex2D(_MainTex, i.uv + fixed2(-1 * _MainTex_TexelSize.x,-1 * _MainTex_TexelSize.y)).r;
				fixed col4 = tex2D(_MainTex, i.uv + fixed2( 0 * _MainTex_TexelSize.x, 1 * _MainTex_TexelSize.y)).r; // middle column
				fixed col5 = tex2D(_MainTex, i.uv + fixed2( 0 * _MainTex_TexelSize.x, 0 * _MainTex_TexelSize.y)).r;
				fixed col6 = tex2D(_MainTex, i.uv + fixed2( 0 * _MainTex_TexelSize.x,-1 * _MainTex_TexelSize.y)).r;
				fixed col7 = tex2D(_MainTex, i.uv + fixed2( 1 * _MainTex_TexelSize.x, 1 * _MainTex_TexelSize.y)).r; // right  column
				fixed col8 = tex2D(_MainTex, i.uv + fixed2( 1 * _MainTex_TexelSize.x, 0 * _MainTex_TexelSize.y)).r;
				fixed col9 = tex2D(_MainTex, i.uv + fixed2( 1 * _MainTex_TexelSize.x,-1 * _MainTex_TexelSize.y)).r;

				// Sobel Edge Detection Operator Kernel
				  // -1 0 1
				  // -2 0 2
				  // -1 0 1
				      
				// Grid Variables
				  // col1 col4 col7
				  // col2 col5 col8
				  // col3 col6 col9      

				fixed verticalSobel   = col1 * -1 + col2 * -2 + col3 * -1 + col7 * 1 + col8 * 2 + col9 * 1;
				fixed horizontalSobel = col1 * -1 + col4 * -2 + col7 * -1 + col3 * 1 + col6 * 2 + col9 * 1;
				// I think the maximum value of the sobel operator output scalar is sqrt(32)
				fixed averageEdgeStrength =	sqrt(verticalSobel * verticalSobel + horizontalSobel * horizontalSobel) / sqrt(32);
//				
				return _OutlineColor * step(_Threshold, averageEdgeStrength);
			}
			ENDCG
		}
	}
}

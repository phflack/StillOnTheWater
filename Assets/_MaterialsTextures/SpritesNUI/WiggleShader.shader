Shader "Unlit/WiggleShader"
{
	Properties
	{
		[PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
		_Noise ("Noise", 2D) = "black" {}
		_RandomNoise("Random Noise", 2D) = "black" {}
		_NoiseAmt ("Noise Amount", float) = 0.1
		_NoiseSpeed ("Noise Speed", float) = .1
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader
	{
		Tags
		{
			"Queue" = "Transparent"
			"IgnoreProjector" = "True"
			"RenderType" = "Transparent"
			"PreviewType" = "Plane"
			"CanUseSpriteAtlas" = "True"
		}

		Cull Off
		Lighting Off
		ZWrite Off
		ZTest[unity_GUIZTestMode]
		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			#include "UnityUI.cginc"

			struct appdata_t
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float4 color: COLOR;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 color: COLOR;
			};

			sampler2D _MainTex;
			sampler2D _Noise;
			sampler2D _RandomNoise;
			float4 _MainTex_ST;
			float _NoiseAmt;
			float _NoiseSpeed;
			fixed4 _Color;
			fixed4 _TextureSampleAdd;
			
			v2f vert (appdata_t v)
			{
				v2f o;
				float4 noise = tex2Dlod(_Noise, float4(v.uv.x + round(_Time.y * 10)/10 * _NoiseSpeed, v.uv.y + round(_Time.y * 10)/10 * _NoiseSpeed, 0, 0));
				fixed2 randomVector = tex2Dlod(_RandomNoise, float4(v.uv.x, v.uv.y, 0, 0)).rg;
				o.vertex = UnityObjectToClipPos(v.vertex + float4(randomVector.x * (noise.r - .5), randomVector.y * (noise.g - .5), 0, 0) * _NoiseAmt);
				#ifdef UNITY_HALF_TEXEL_OFFSET
					o.vertex.xy += (_ScreenParams.zw - 1.0)*float2(-1,1);
				#endif
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.color = v.color * _Color;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				return (tex2D(_MainTex, i.uv) + _TextureSampleAdd) * i.color;
			}
			ENDCG
		}
	}
}

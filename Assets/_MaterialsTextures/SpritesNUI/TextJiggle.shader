// bitshiftproductions
Shader "FX/Fast-UI-Jiggle"
{
	Properties
	{
		[PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
		_Color("Tint", Color) = (1,1,1,1)
		_WobblesPerSecond("Wobbles per Second ", Float) = 1
		_WobblePeriod("Wobble Period (pixels)", Float) = 1
		_WobbleAmplitude("Wobble Amplitude (pixels)", Float) = 0.03
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
				float4 vertex   : POSITION;
				float4 color    : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex   : SV_POSITION;
				fixed4 color : COLOR;
				half2 texcoord  : TEXCOORD0;
			};

			fixed4 _Color;
			fixed4 _TextureSampleAdd;

			float _WobblesPerSecond;
			float _WobblePeriod;
			float _WobbleAmplitude;

			#define PI 3.14159
			#define TWO_PI 6.28318
			v2f vert(appdata_t IN)
			{
				v2f OUT;
				float4 worldPos = IN.vertex;
				worldPos.y += sin((_Time.y + frac(worldPos.x)) * _WobblesPerSecond * TWO_PI + worldPos.x / _WobblePeriod) * _WobbleAmplitude;
				worldPos.x += cos((_Time.y + frac(worldPos.x)) * _WobblesPerSecond * TWO_PI + worldPos.x / _WobblePeriod) * _WobbleAmplitude;
				OUT.vertex = UnityObjectToClipPos(worldPos);
				OUT.texcoord = IN.texcoord;

		#ifdef UNITY_HALF_TEXEL_OFFSET
				OUT.vertex.xy += (_ScreenParams.zw - 1.0)*float2(-1,1);
		#endif
				OUT.color = IN.color * _Color;
				return OUT;
			}

			sampler2D _MainTex;
			fixed4 frag(v2f IN) : SV_Target
			{
				return (tex2D(_MainTex, IN.texcoord) + _TextureSampleAdd) * IN.color;
			}
			ENDCG
		}
	}
}
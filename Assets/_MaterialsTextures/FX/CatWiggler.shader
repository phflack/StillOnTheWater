// Unity built-in shader source. Copyright (c) 2016 Unity Technologies. MIT license (see license.txt)
// Edited by MinionsArt for hologram effect

Shader "FX/Ghosty Hologram Effect2" {
	Properties{
		_TintColor("Tint Color", Color) = (0,0.5,1,1)
		_RimColor("Rim Color", Color) = (0,1,1,1)
		_MainTex("Main Texture", 2D) = "white" {}
		_GlitchTime("Glitches Over Time", Range(0.01,3.0)) = 1.0
		_WaveSize("Wave Size", Range(0,.2)) = .1
		_TimeMod("Time Mod", Range(0, 10)) = 1 
		_Alpha("Alpha", Range(0,1)) = 1
	}

		Category{
		Tags{ "Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent" "PreviewType" = "Sphere" }
		Blend SrcAlpha OneMinusSrcAlpha 
		ColorMask RGB
		Cull Back 
		SubShader{
		Pass{

		CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#pragma target 2.0
	
	
	#include "UnityCG.cginc"

	sampler2D _MainTex;
	fixed4 _TintColor;
	fixed4 _RimColor;
	float4 _MainTex_ST;
	float _GlitchTime;
	float _WaveSize;
	float _OptTime = 0;
	float _CurrHeight;
	float _Alpha;
	float _TimeMod;

	struct appdata_t {
		float4 vertex : POSITION;
		fixed4 color : COLOR;

		float2 texcoord : TEXCOORD0;
		float3 normal : NORMAL; // vertex normal
		UNITY_VERTEX_INPUT_INSTANCE_ID
	};

	struct v2f {
		float4 vertex : SV_POSITION;
		fixed4 color : COLOR;
		float2 texcoord : TEXCOORD0;
		float3 wpos : TEXCOORD1; // worldposition
		float3 normalDir : TEXCOORD2; // normal direction for rimlighting

	};

	v2f vert(appdata_t v)
	{
		v2f o;

		o.vertex = v.vertex;

		// Vertex glitching
		// why is this marked optimisation? it gets the value for this moment along a sine curve that is normalized
		// to 1 sine phase (s) == glitch time (s)
//		float glitchPos = v.vertex.y + _SinTime.y * 2;// position on model
//		_OptTime = _OptTime == 0 ? smoothstep(0, 1, _Time.w * _GlitchTime) : _OptTime;
////		float glitchtime = step(0.99, _OptTime); // returns 1 when sine is near top, otherwise returns 0;
//		float glitchPosClamped = step(0, glitchPos) * step(glitchPos, 0.2);// clamped segment of model
        _CurrHeight = -cos (6.28 * _GlitchTime * (o.vertex.z) + _Time.w * _TimeMod) * _WaveSize * step(o.vertex.z, .03);
        _CurrHeight += -cos (6.28 * _GlitchTime * (o.vertex.y) + _Time.w * _TimeMod) * _WaveSize * step(.03, o.vertex.z) * .2 * smoothstep(-.2, 0, o.vertex.y);
        _CurrHeight *= step(o.vertex.z, .15)+ .1;
        o.vertex.y -= .02 * step(.15, o.vertex.z);
		o.vertex.x += _CurrHeight;// moving the vertices when glitchtime returns 1;
//		o.debugline.y = step(-.1, o.vertex.y + sin(_Time.y) + _OptTime) * step(o.vertex.y+sin(_Time.y) +_OptTime, .1); 
		o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
		// world position and normal direction
//		o.vertex.y *= abs(o.vertex.z-.2) * 5;
		o.vertex = UnityObjectToClipPos(o.vertex);

		o.wpos = mul(unity_ObjectToWorld, v.vertex).xyz;
		o.normalDir = normalize(mul(float4(v.normal, 0.0), unity_WorldToObject).xyz);

		return o;
	}

	fixed4 frag(v2f i) : SV_Target
	{
		float4 text = tex2D(_MainTex, i.texcoord);// texture
//
//		// rim lighting
		float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.wpos.xyz);
//		half rim = 1.0 - saturate(dot(viewDirection, i.normalDir));// rimlight based on view and normal
//
//		// small scanlines down
//		float fraclines = frac((i.wpos.y * _WorldScale) + _Time.y);//small lines 
//		float scanlines = step(fraclines, 0.5);// cut off based on 0.5
//		// big scanline up
//		float bigfracline = frac((i.debugline.y));// big gradient line
//
//		half rim = 1.0 - saturate(dot(viewDirection, i.normalDir));// rimlight based on view and normal
		fixed4 col = text;// end result color 
	
		col.a = 1 * (_Alpha);// alpha based on scanlines and rim
	
		return col;
		}
		ENDCG
	}
	}
	}
}
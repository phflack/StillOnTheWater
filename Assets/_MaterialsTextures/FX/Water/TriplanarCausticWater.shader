// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Unlit/Triplanar"
{
    Properties
    {
		_Speed ("Speed", Float) = .5
		_FadeHeightWidth ("FadeHeightWidth", Vector) = (1,1,1,1)
		_Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Texture", 2D) = "white" {}
        _WarpTex ("WarpTex", 2D) = "black" {}
        _Tiling ("Tiling", Float) = 1.0
		_FalloffTex ("FallOff", 2D) = "" {}
    }
    SubShader
    {
		Tags {"Queue"="Transparent"}
        Pass
        {
			ZWrite Off
			ColorMask RGB
			Blend One One
			Offset -1, -1
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
			#pragma multi_compile_fog
            #include "UnityCG.cginc"

            struct v2f
            {
                half3 objNormal : TEXCOORD0;
				float4 coords : TEXCOORD1;
				UNITY_FOG_COORDS(2)
				float4 uvFalloff : TEXCOORD3;
                float4 worldPos : TEXCOORD4;
				float4 pos : SV_POSITION;
            };

			float _Speed;
            float _Tiling;
			float4x4 unity_Projector;
			float4x4 unity_ProjectorClip;

            v2f vert (float4 pos : POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD0)
            {
                v2f o;
				o.pos = UnityObjectToClipPos(pos);
                o.worldPos = mul(unity_ObjectToWorld, pos);
                o.coords = float4(pos.xyz, 1) * _Tiling;
                o.objNormal = normal;
				o.uvFalloff = mul (unity_ProjectorClip, pos);
                return o;
            }

			float4 _Color;
			float4 _FadeHeightWidth;
            sampler2D _MainTex;
            sampler2D _WarpTex;
			sampler2D _FalloffTex;
            sampler2D _OcclusionMap;
            
            fixed4 frag (v2f i) : SV_Target
            {
                // use absolute value of normal as texture weights
                half3 blend = abs(i.objNormal);
                // make sure the weights sum up to 1 (divide by sum of x+y+z)
                blend /= dot(blend,1.0);
                // read the three texture projections, for x,y,z axes
				float2 offset = _Time.xx * _Speed;
                float wobblex = tex2D(_WarpTex, i.coords.yz + offset);
                float wobbley = tex2D(_WarpTex, i.coords.xz + offset);
                float wobblez = tex2D(_WarpTex, i.coords.yx + offset);
                fixed4 cx = tex2D(_MainTex, i.coords.yz + offset   + wobblex * .3);
                fixed4 cy = tex2D(_MainTex, i.coords.xz + offset   + wobbley * .1);
                fixed4 cz = tex2D(_MainTex, i.coords.xy + offset   + wobblez * .3);
                fixed4 cx2 = tex2D(_MainTex, i.coords.yz + -offset);
                fixed4 cy2 = tex2D(_MainTex, i.coords.xz + -offset);
                fixed4 cz2 = tex2D(_MainTex, i.coords.xy + -offset);
                // blend the textures based on weights
                fixed4 c = cx * blend.x + cy * blend.y + cz * blend.z + cx2 * blend.x + cy2 * blend.y + cz2 * blend.z;
				//  c = step(c.r, _Cutoff) * step(c.r, _Cutoff+.1);
                // modulate by regular occlusion map
				fixed4 texF = tex2Dproj (_FalloffTex, UNITY_PROJ_COORD(i.uvFalloff));
				fixed4 res = c * texF.a * _Color;
				float heightFalloff = saturate(_FadeHeightWidth.x - (i.worldPos.y*_FadeHeightWidth.y));
				res *= heightFalloff;
                return res;
            }
            ENDCG
        }
    }
}
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Per pixel bumped refraction.
// Uses a normal map to distort the image behind, and
// an additional texture to tint the color.

Shader "FX/RippleParticleDepthTest" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_Distortion  ("Distortion", range (0,128)) = 10
	_MainTex ("Cutout", 2D) = "white" {}
	_NormalMap ("Normalmap", 2D) = "bump" {}
}
SubShader {
    Tags { "Queue" = "Transparent" "RenderType"="Transparent"}

    GrabPass {"_GrabTexture"}

    Pass {
        Name "GrabOffset"
        Cull Back
        ZWrite Off
        Blend SrcAlpha OneMinusSrcAlpha
       
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #pragma fragmentoption ARB_precision_hint_fastest

        #include "UnityCG.cginc"

        sampler2D _GrabTexture;
       
        sampler2D _NormalMap;
        float4 _NormalMap_ST;
       
        float _Distortion;
        fixed4 _Color;
		sampler2D _MainTex;
       
        sampler2D _CameraDepthTexture;
       
        struct appdata {
            float4 vertex : POSITION;
            float2 texcoord : TEXCOORD0;
			float4 color: COLOR;
        };
       

        struct v2f {
			float4 color : COLOR;
            float4 pos : POSITION;
            float2 texcoord : TEXCOORD0;
            float4 GrabUV : TEXCOORD2;
        };

        v2f vert (appdata v)
        {
            v2f o;
            o.pos = UnityObjectToClipPos (v.vertex);
            o.texcoord = TRANSFORM_TEX(v.texcoord, _NormalMap);

            o.GrabUV = ComputeGrabScreenPos(o.pos);
           o.color = v.color;
            return o;
        }
       

        fixed4 frag (v2f i) : COLOR
        {
			float4 mainTex = tex2D(_MainTex, i.texcoord);
			clip (mainTex.a - .0001);
            fixed4 bump = fixed4(UnpackNormal(tex2D(_NormalMap, i.texcoord)),0);
            bump = normalize(bump);
           
            fixed4 DistUV = i.GrabUV + (bump * _Distortion) * mainTex.a * i.color.a;
           
            fixed4 refraction = tex2Dproj(_GrabTexture, UNITY_PROJ_COORD(DistUV));
            fixed4 refractionN = tex2Dproj(_GrabTexture, UNITY_PROJ_COORD(i.GrabUV));

            fixed depthRefr = UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(DistUV)));
            fixed depthOG = UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.GrabUV)));
             
             if(depthOG < depthRefr - .01)
                 refraction = refractionN;
             
            return fixed4(refraction.rgb,1) * _Color;
			// return depthOG;
		}
    
    	ENDCG
	}
}
}
Shader "Custom/SparkleShader" {
	Properties {
		//_Color ("Color", Color) = (1,1,1,1)
		_NoiseTex ("Noise Texture", 2D) = "white" {}
		_Scale ("Scale", Float) = 1
		_Intensity ("Intensity", Float) = 50
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows 

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_NoiseTex;
			
		};

		half _Scale;
		half _Intensity;
		fixed4 _Color;

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutputStandard o) {
			 fixed4 col = tex2D(_SparkleTex, i.uv);
 
                half3 viewDirection = normalize(i.wPos - _WorldSpaceCameraPos); //get the view direction
 
                //sparkle effect
                fixed3 sparklemap = tex2D(_SparkleTex, i.uv*_Scale); //sample the noise texture
                sparklemap -= half3(0.5,0.5,0.5); //change the noise texture into a random direction
                sparklemap = normalize(sparklemap);
                half sparkle = pow(saturate((dot(-viewDirection, normalize(sparklemap + i.wNormal)))),_Intensity); //get a value based on how close you are to looking at the normal offset by a random direction
                col += _SparkleColor*sparkle; //change the color based on this value
 
                //rim lighting
                half rim = pow(1.0 - saturate(dot(-viewDirection, i.wNormal)), _RimPower); //same concept, but the value is based on how far you are from looking at the normal
                col += _RimColor * rim;
 
                return col;
			//o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}

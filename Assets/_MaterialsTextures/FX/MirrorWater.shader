Shader "FX/MirrorWater"
{
    Properties
    {
		_Color ("Tint", Color) = (1,1,1,1)
		_HighlightColor ("Hightlight Color", Color) = (1,1,1,1)
		_BlendWidth ("Blend Width", float) = .1
        _MainTex ("_MainTex", 2D) = "white" {}
        _ReflectionTexLeft ("_ReflectionTexLeft", 2D) = "white" {}
        _ReflectionTexRight ("_ReflectionTexRight", 2D) = "white" {}
    }
    SubShader
    {

        Tags { "RenderType"="Opaque" "Queue"="Geometry" }
		LOD 200
        ZWrite On

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf WaterLighting alpha:fade
		#pragma debug
		

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
        sampler2D _CameraDepthTexture;
		fixed4 _HighlightColor;
        float _BlendWidth;

		struct Input {
			float2 uv_MainTex;
            float3 viewDir;
            float4 screenPos;
		};

        sampler2D _ReflectionTexLeft;
        sampler2D _ReflectionTexRight;
		fixed4 _Color;

		float4 LightingWaterLighting (SurfaceOutput s, float3 lightDir, half3 viewDir, float atten){
			half NdotL = dot (s.Normal, lightDir);
            half4 c;
            c.rgb = s.Albedo * _LightColor0.rgb * (NdotL * atten);
            c.a = s.Alpha;
            return c;
		}

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_BUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)

		void surf (Input IN, inout SurfaceOutput o) {
		    float mainTexR = tex2D(_MainTex, IN.uv_MainTex + float2(sin(_Time.z * .02), sin(_Time.z * .05))).r;
            float4 _offset =  float4(mainTexR*.11, mainTexR*.011, 0, 0);
           
            fixed4 refl;
		    if (unity_StereoEyeIndex == 0) refl = tex2Dproj(_ReflectionTexLeft, UNITY_PROJ_COORD(IN.screenPos + _offset));
            else refl = tex2Dproj(_ReflectionTexRight, UNITY_PROJ_COORD(IN.screenPos+_offset));
			refl.a = 1;
			o.Albedo = refl * _Color;// + depth * _HighlightColor;
			// o.Albedo = 1;
           float4 depth = LinearEyeDepth (tex2Dproj(_CameraDepthTexture, IN.screenPos));
		   half4 foamLine = 1- saturate(_BlendWidth * (depth - IN.screenPos.w));
			o.Alpha = saturate((1-foamLine) + .6) ;
			
            // o.Albedo = depth;
            // fixed brightness = .21 * refl.r + .71 * refl.g + .8 * refl.b;
            // fixed viewDot = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal) - .3);
			// o.Albedo = float3(brightness, brightness, brightness);
            //o.Albedo = foamLine * float3(1,1,1);

		}
		ENDCG
	}
	FallBack "Diffuse"
}
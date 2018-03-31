// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Skybox" {
   Properties {
      _Cube ("Environment Map", Cube) = "white" {}
      _A ("A", Range(0,1)) = .5
      _B ("B", Range(0,1)) = .5
      _C ("C", Range(0,1)) = .5
   }

   SubShader {
      Tags { "Queue"="Background"  }

      Pass {
         ZWrite Off 
         Cull Off

         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag

         // User-specified uniforms
         samplerCUBE _Cube;
         float _A;
         float _B;
         float _C;

         struct vertexInput {
            float4 vertex : POSITION;
            float3 texcoord : TEXCOORD0;
         };

         struct vertexOutput {
            float4 vertex : SV_POSITION;
            float3 texcoord : TEXCOORD0;
         };

         vertexOutput vert(vertexInput input)
         {
            vertexOutput output;
            output.vertex = UnityObjectToClipPos(input.vertex);
            output.texcoord = input.texcoord;
            return output;
         }

         fixed4 frag (vertexOutput input) : COLOR
         {
            float4 col = texCUBE (_Cube, input.texcoord + float3(0,0,_Time.y * .3));
            col = col;
            return col;
         }
         ENDCG 
      }
   } 	
}
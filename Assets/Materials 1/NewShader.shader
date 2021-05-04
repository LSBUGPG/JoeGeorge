// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-4676-OUT,custl-2687-RGB;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31915,y:33221,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Slider,id:6057,x:31859,y:33629,ptovrint:False,ptlb:Line Thickness,ptin:_LineThickness,varname:node_6057,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.01;n:type:ShaderForge.SFN_Set,id:9522,x:32242,y:33631,varname:BlurAmount,prsc:2|IN-6057-OUT;n:type:ShaderForge.SFN_ScreenPos,id:3199,x:31904,y:33723,varname:node_3199,prsc:2,sctp:2;n:type:ShaderForge.SFN_Set,id:2682,x:32126,y:33710,varname:ScreenPosUV,prsc:2|IN-3199-UVOUT;n:type:ShaderForge.SFN_Set,id:4766,x:32126,y:33769,varname:ScreenPosU,prsc:2|IN-3199-U;n:type:ShaderForge.SFN_Set,id:5837,x:32126,y:33824,varname:ScreenPosV,prsc:2|IN-3199-V;n:type:ShaderForge.SFN_SceneColor,id:2687,x:32126,y:33908,varname:node_2687,prsc:2|UVIN-3962-OUT;n:type:ShaderForge.SFN_Get,id:5826,x:31522,y:33908,varname:node_5826,prsc:2|IN-4766-OUT;n:type:ShaderForge.SFN_Get,id:6705,x:31522,y:33962,varname:node_6705,prsc:2|IN-9522-OUT;n:type:ShaderForge.SFN_Get,id:4488,x:31610,y:34063,varname:node_4488,prsc:2|IN-5837-OUT;n:type:ShaderForge.SFN_Add,id:7194,x:31723,y:33908,varname:node_7194,prsc:2|A-5826-OUT,B-6705-OUT;n:type:ShaderForge.SFN_Append,id:3962,x:31922,y:33908,varname:node_3962,prsc:2|A-7194-OUT,B-4488-OUT;n:type:ShaderForge.SFN_Get,id:1767,x:31535,y:34144,varname:node_1767,prsc:2|IN-4766-OUT;n:type:ShaderForge.SFN_Get,id:4203,x:31322,y:34234,varname:node_4203,prsc:2|IN-9522-OUT;n:type:ShaderForge.SFN_Add,id:5286,x:31756,y:34218,varname:node_5286,prsc:2|A-1767-OUT,B-6225-OUT;n:type:ShaderForge.SFN_Append,id:7762,x:31955,y:34218,varname:node_7762,prsc:2|A-5286-OUT,B-4715-OUT;n:type:ShaderForge.SFN_SceneColor,id:4071,x:32191,y:34218,varname:node_4071,prsc:2|UVIN-7762-OUT;n:type:ShaderForge.SFN_Get,id:4715,x:31721,y:34418,varname:node_4715,prsc:2|IN-5837-OUT;n:type:ShaderForge.SFN_RemapRange,id:6225,x:31524,y:34234,varname:node_6225,prsc:2,frmn:0,frmx:1,tomn:0,tomx:-1|IN-4203-OUT;n:type:ShaderForge.SFN_Get,id:8220,x:31371,y:34853,varname:node_8220,prsc:2|IN-9522-OUT;n:type:ShaderForge.SFN_Get,id:7440,x:31371,y:34748,varname:node_7440,prsc:2|IN-5837-OUT;n:type:ShaderForge.SFN_Add,id:2982,x:31733,y:34845,varname:node_2982,prsc:2|A-7440-OUT,B-8220-OUT;n:type:ShaderForge.SFN_Append,id:8479,x:31932,y:34845,varname:node_8479,prsc:2|A-2982-OUT;n:type:ShaderForge.SFN_SceneColor,id:2496,x:32168,y:34845,varname:node_2496,prsc:2|UVIN-8479-OUT;proporder:4430-6057;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _LineThickness ("Line Thickness", Range(0, 0.01)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _LineThickness;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 emissive = node_1672.rgb;
                float ScreenPosU = sceneUVs.r;
                float BlurAmount = _LineThickness;
                float ScreenPosV = sceneUVs.g;
                float3 finalColor = emissive + tex2D( _GrabTexture, float2((ScreenPosU+BlurAmount),ScreenPosV)).rgb;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}

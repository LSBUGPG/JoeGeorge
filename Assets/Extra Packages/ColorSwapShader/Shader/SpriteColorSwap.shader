// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/SpriteColorSwap"
{
	Properties
	{
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255

		_ColorMask ("Color Mask", Float) = 15

		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
		_OverallEffect("OverallEffect", Range( 0 , 1)) = 0
		[Header(Color Set 1)][Space(8)]_ColorDetect1("Color Detect 1", Color) = (0,0,0,1)
		_NewColor1("New Color 1", Color) = (1,1,1,1)
		_Range1("Range1", Range( 0 , 1)) = 0.2
		_SoftFalloff1("Soft-Falloff1", Range( 0 , 1)) = 0.2
		[Header(Color Set 2)][Space(8)]_ColorDetect2("Color Detect 2", Color) = (0,0,0,1)
		_NewColor2("New Color 2", Color) = (1,1,1,1)
		_Range2("Range2", Range( 0 , 1)) = 0.2
		_SoftFalloff2("Soft-Falloff2", Range( 0 , 1)) = 0.2
		[Header(Color Set 3)][Space(8)]_ColorDetect3("Color Detect 3", Color) = (0,0,0,1)
		_NewColor3("New Color 3", Color) = (1,1,1,1)
		_Range3("Range 3", Range( 0 , 1)) = 0.2
		_SoftFalloff3("Soft-Falloff3", Range( 0 , 1)) = 0.2
		[Header(Color Set 4)][Space(8)]_ColorDetect4("Color Detect 4", Color) = (0,0,0,1)
		_NewColor4("New Color 4", Color) = (1,1,1,1)
		_Range4("Range 4", Range( 0 , 1)) = 0.2
		_SoftFalloff4("Soft-Falloff4", Range( 0 , 1)) = 0.2
		[Header(Color Set 5)][Space(8)]_ColorDetect5("Color Detect 5", Color) = (0,0,0,1)
		_NewColor5("New Color 5", Color) = (1,1,1,1)
		_Range5("Range 5", Range( 0 , 1)) = 0.2
		_SoftFalloff5("Soft-Falloff5", Range( 0 , 1)) = 0.2
		[Header(Color Set 6)][Space(8)]_ColorDetect6("Color Detect 6", Color) = (0,0,0,0)
		_NewColor6("New Color 6", Color) = (1,1,1,1)
		_Range6("Range 6", Range( 0 , 1)) = 0.2
		_SoftFalloff6("Soft-Falloff6", Range( 0 , 1)) = 0.2
		[Header(Color Set 7)][Space(8)]_ColorDetect7("Color Detect 7", Color) = (0,0,0,0)
		_NewColor7("New Color 7", Color) = (1,1,1,1)
		_Range7("Range 7", Range( 0 , 1)) = 0.2
		_SoftFalloff7("Soft-Falloff7", Range( 0 , 1)) = 0.2
		[Header(Color Set 8)][Space(8)]_ColorDetect8("Color Detect 8", Color) = (0,0,0,0)
		_NewColor8("New Color 8", Color) = (1,1,1,1)
		_Range8("Range 8", Range( 0 , 1)) = 0.2
		_SoftFalloff8("Soft-Falloff8", Range( 0 , 1)) = 0.2
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		LOD 0

		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" "PreviewType"="Plane" "CanUseSpriteAtlas"="True" }
		
		Stencil
		{
			Ref [_Stencil]
			ReadMask [_StencilReadMask]
			WriteMask [_StencilWriteMask]
			CompFront [_StencilComp]
			PassFront [_StencilOp]
			FailFront Keep
			ZFailFront Keep
			CompBack Always
			PassBack Keep
			FailBack Keep
			ZFailBack Keep
		}


		Cull Off
		Lighting Off
		ZWrite Off
		ZTest LEqual
		Blend SrcAlpha OneMinusSrcAlpha
		ColorMask [_ColorMask]

		
		Pass
		{
			Name "Default"
		CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0

			#include "UnityCG.cginc"
			#include "UnityUI.cginc"

			#pragma multi_compile __ UNITY_UI_CLIP_RECT
			#pragma multi_compile __ UNITY_UI_ALPHACLIP
			
			
			
			struct appdata_t
			{
				float4 vertex   : POSITION;
				float4 color    : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f
			{
				float4 vertex   : SV_POSITION;
				fixed4 color    : COLOR;
				half2 texcoord  : TEXCOORD0;
				float4 worldPosition : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				
			};
			
			uniform fixed4 _Color;
			uniform fixed4 _TextureSampleAdd;
			uniform float4 _ClipRect;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _NewColor1;
			uniform float4 _ColorDetect1;
			uniform float _Range1;
			uniform float _SoftFalloff1;
			uniform float4 _NewColor2;
			uniform float4 _ColorDetect2;
			uniform float _Range2;
			uniform float _SoftFalloff2;
			uniform float4 _NewColor3;
			uniform float4 _ColorDetect3;
			uniform float _Range3;
			uniform float _SoftFalloff3;
			uniform float4 _NewColor4;
			uniform float4 _ColorDetect4;
			uniform float _Range4;
			uniform float _SoftFalloff4;
			uniform float4 _NewColor5;
			uniform float4 _ColorDetect5;
			uniform float _Range5;
			uniform float _SoftFalloff5;
			uniform float4 _NewColor6;
			uniform float4 _ColorDetect6;
			uniform float _Range6;
			uniform float _SoftFalloff6;
			uniform float4 _NewColor7;
			uniform float4 _ColorDetect7;
			uniform float _Range7;
			uniform float _SoftFalloff7;
			uniform float4 _NewColor8;
			uniform float4 _ColorDetect8;
			uniform float _Range8;
			uniform float _SoftFalloff8;
			uniform float _OverallEffect;

			
			v2f vert( appdata_t IN  )
			{
				v2f OUT;
				UNITY_SETUP_INSTANCE_ID( IN );
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);
				UNITY_TRANSFER_INSTANCE_ID(IN, OUT);
				OUT.worldPosition = IN.vertex;
				
				
				OUT.worldPosition.xyz +=  float3( 0, 0, 0 ) ;
				OUT.vertex = UnityObjectToClipPos(OUT.worldPosition);

				OUT.texcoord = IN.texcoord;
				
				OUT.color = IN.color * _Color;
				return OUT;
			}

			fixed4 frag(v2f IN  ) : SV_Target
			{
				float2 uv_MainTex = IN.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode3 = tex2D( _MainTex, uv_MainTex );
				float4 InputMask60 = tex2DNode3;
				float AlphaFromTexture58 = tex2DNode3.a;
				float4 lerpResult7 = lerp( InputMask60 , _NewColor1 , saturate( ( 1.0 - ( ( distance( _ColorDetect1.rgb , InputMask60.rgb ) - _Range1 ) / max( _SoftFalloff1 , 1E-05 ) ) ) ));
				float4 lerpResult15 = lerp( lerpResult7 , _NewColor2 , saturate( ( 1.0 - ( ( distance( _ColorDetect2.rgb , InputMask60.rgb ) - _Range2 ) / max( _SoftFalloff2 , 1E-05 ) ) ) ));
				float4 lerpResult26 = lerp( lerpResult15 , _NewColor3 , saturate( ( 1.0 - ( ( distance( _ColorDetect3.rgb , InputMask60.rgb ) - _Range3 ) / max( _SoftFalloff3 , 1E-05 ) ) ) ));
				float4 lerpResult32 = lerp( lerpResult26 , _NewColor4 , saturate( ( 1.0 - ( ( distance( _ColorDetect4.rgb , InputMask60.rgb ) - _Range4 ) / max( _SoftFalloff4 , 1E-05 ) ) ) ));
				float4 lerpResult38 = lerp( lerpResult32 , _NewColor5 , saturate( ( 1.0 - ( ( distance( _ColorDetect5.rgb , InputMask60.rgb ) - _Range5 ) / max( _SoftFalloff5 , 1E-05 ) ) ) ));
				float4 lerpResult55 = lerp( lerpResult38 , _NewColor6 , saturate( ( 1.0 - ( ( distance( _ColorDetect6.rgb , InputMask60.rgb ) - _Range6 ) / max( _SoftFalloff6 , 1E-05 ) ) ) ));
				float4 lerpResult56 = lerp( lerpResult55 , _NewColor7 , saturate( ( 1.0 - ( ( distance( _ColorDetect7.rgb , InputMask60.rgb ) - _Range7 ) / max( _SoftFalloff7 , 1E-05 ) ) ) ));
				float4 lerpResult57 = lerp( lerpResult56 , _NewColor8 , saturate( ( 1.0 - ( ( distance( _ColorDetect8.rgb , InputMask60.rgb ) - _Range8 ) / max( _SoftFalloff8 , 1E-05 ) ) ) ));
				float4 lerpResult17 = lerp( ( InputMask60 * AlphaFromTexture58 ) , ( AlphaFromTexture58 * lerpResult57 ) , _OverallEffect);
				
				half4 color = lerpResult17;
				
				#ifdef UNITY_UI_CLIP_RECT
                color.a *= UnityGet2DClipping(IN.worldPosition.xy, _ClipRect);
                #endif
				
				#ifdef UNITY_UI_ALPHACLIP
				clip (color.a - 0.001);
				#endif

				return color;
			}
		ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=17800
162;125;1920;1029;5651.847;569.0819;6.394176;True;False
Node;AmplifyShaderEditor.CommentaryNode;72;-2000.996,-765.5429;Inherit;False;1040.487;408.5788;Comment;4;1;3;60;58;Driver;1,1,1,1;0;0
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;1;-1950.996,-715.5429;Inherit;False;0;0;_MainTex;Shader;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;3;-1667.488,-655.915;Inherit;True;Property;_TextureSample0;Texture Sample 0;0;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;60;-1203.509,-695.465;Inherit;False;InputMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;5;-259.7363,10.47255;Float;False;Property;_ColorDetect1;Color Detect 1;1;0;Create;True;0;0;False;2;Header(Color Set 1);Space(8);0,0,0,1;1,0.7605331,0.5613208,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9;-302.8328,279.8322;Float;False;Property;_SoftFalloff1;Soft-Falloff1;4;0;Create;True;0;0;False;0;0.2;0.103;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8;-300,189;Float;False;Property;_Range1;Range1;3;0;Create;True;0;0;False;0;0.2;0.323;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;63;-276.7543,-156.9021;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;10;-326.6994,572.5256;Float;False;Property;_ColorDetect2;Color Detect 2;5;0;Create;True;0;0;False;2;Header(Color Set 2);Space(8);0,0,0,1;0.8679245,0.1514791,0.1432894,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;6;141.1571,-140.6496;Float;False;Property;_NewColor1;New Color 1;2;0;Create;True;0;0;False;0;1,1,1,1;0.509434,0.2931816,0.2811499,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;4;124.8036,35.31122;Inherit;False;Color Mask;-1;;1;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;14;-314.661,854.4558;Float;False;Property;_SoftFalloff2;Soft-Falloff2;8;0;Create;True;0;0;False;0;0.2;0.196;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-311.8282,763.6236;Float;False;Property;_Range2;Range2;7;0;Create;True;0;0;False;0;0.2;0.064;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;64;-277.8146,408.4681;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;-262.8994,1055.486;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;22;-400.6156,1168.651;Float;False;Property;_ColorDetect3;Color Detect 3;9;0;Create;True;0;0;False;2;Header(Color Set 3);Space(8);0,0,0,1;0.7764707,0.509804,0.2941177,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;21;-394.5929,1480.433;Float;False;Property;_SoftFalloff3;Soft-Falloff3;12;0;Create;True;0;0;False;0;0.2;0.124;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;12;112.9753,609.9348;Inherit;False;Color Mask;-1;;2;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;13;129.3289,433.9739;Float;False;Property;_NewColor2;New Color 2;6;0;Create;True;0;0;False;0;1,1,1,1;0.1666074,0.9056604,0.3377479,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;7;499,-232;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-391.76,1389.601;Float;False;Property;_Range3;Range 3;11;0;Create;True;0;0;False;0;0.2;0.067;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-180.8574,1654.026;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;15;642.1558,454.8833;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;29;-272.8916,2046.928;Float;False;Property;_Range4;Range 4;15;0;Create;True;0;0;False;0;0.2;0.211;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;27;-279.8525,2148.769;Float;False;Property;_SoftFalloff4;Soft-Falloff4;16;0;Create;True;0;0;False;0;0.2;0.115;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;23;49.397,1059.952;Float;False;Property;_NewColor3;New Color 3;10;0;Create;True;0;0;False;0;1,1,1,1;0.4056604,0.226023,0.2162246,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;24;33.04335,1235.912;Inherit;False;Color Mask;-1;;3;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;28;-281.7473,1825.978;Float;False;Property;_ColorDetect4;Color Detect 4;13;0;Create;True;0;0;False;2;Header(Color Set 4);Space(8);0,0,0,1;0.1600346,0.3716722,0.5441177,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;34;-216.5489,2647.799;Float;False;Property;_Range5;Range 5;19;0;Create;True;0;0;False;0;0.2;0.173;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;31;151.9118,1893.239;Inherit;False;Color Mask;-1;;4;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;35;-227.2479,2425.006;Float;False;Property;_ColorDetect5;Color Detect 5;17;0;Create;True;0;0;False;2;Header(Color Set 5);Space(8);0,0,0,1;0.1568628,0.4235294,0.2078432,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;30;168.2655,1717.279;Float;False;Property;_NewColor4;New Color 4;14;0;Create;True;0;0;False;0;1,1,1,1;0.6487889,0.7352941,0.652965,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;33;-225.3531,2747.797;Float;False;Property;_SoftFalloff5;Soft-Falloff5;20;0;Create;True;0;0;False;0;0.2;0.292;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;26;641.5005,1062.723;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-87.62659,2260.022;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;42;-178.6171,3061.219;Float;False;Property;_ColorDetect6;Color Detect 6;21;0;Create;True;0;0;False;2;Header(Color Set 6);Space(8);0,0,0,0;0.3803922,0.2196079,0.1372549,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;36;206.4111,2492.267;Inherit;False;Color Mask;-1;;5;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;37;222.7648,2316.307;Float;False;Property;_NewColor5;New Color 5;18;0;Create;True;0;0;False;0;1,1,1,1;0.2205882,0.2189662,0.2189662,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;41;-176.7223,3384.01;Float;False;Property;_SoftFalloff6;Soft-Falloff6;24;0;Create;True;0;0;False;0;0.2;0.489;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;68;-37.28235,2908.906;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-167.9181,3284.012;Float;False;Property;_Range6;Range 6;23;0;Create;True;0;0;False;0;0.2;0.182;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;32;655.6539,1692.544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;47;-113.5189,3708.356;Float;False;Property;_ColorDetect7;Color Detect 7;25;0;Create;True;0;0;False;2;Header(Color Set 7);Space(8);0,0,0,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;45;-102.8198,3931.149;Float;False;Property;_Range7;Range 7;27;0;Create;True;0;0;False;0;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;43;273.039,2952.52;Float;False;Property;_NewColor6;New Color 6;22;0;Create;True;0;0;False;0;1,1,1,1;1,0,0.8024158,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;44;255.0417,3128.48;Inherit;False;Color Mask;-1;;6;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;38;709.7639,2343.608;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-111.6241,4031.147;Float;False;Property;_SoftFalloff7;Soft-Falloff7;28;0;Create;True;0;0;False;0;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;69;46.62561,3544.736;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;49;320.14,3775.617;Inherit;False;Color Mask;-1;;7;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-41.55293,4612.746;Float;False;Property;_Range8;Range 8;31;0;Create;True;0;0;False;0;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;48;336.4938,3599.657;Float;False;Property;_NewColor7;New Color 7;26;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;55;914.0527,2912.159;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;52;-52.2519,4389.953;Float;False;Property;_ColorDetect8;Color Detect 8;29;0;Create;True;0;0;False;2;Header(Color Set 8);Space(8);0,0,0,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;70;35.43806,4180.566;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;51;-50.35712,4712.743;Float;False;Property;_SoftFalloff8;Soft-Falloff8;32;0;Create;True;0;0;False;0;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;58;-1281.942,-471.9641;Inherit;False;AlphaFromTexture;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;73;1774.082,3564.685;Inherit;False;1995.891;553.4258;Comment;8;17;19;61;59;18;39;71;2;Final OUTPUT;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;53;397.7608,4281.254;Float;False;Property;_NewColor8;New Color 8;30;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;56;1162.849,3471.95;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;54;381.4071,4457.214;Inherit;False;Color Mask;-1;;8;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;71;1824.082,3932.787;Inherit;False;58;AlphaFromTexture;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;61;2151.331,3761.523;Inherit;False;58;AlphaFromTexture;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;59;2196.532,3614.685;Inherit;False;60;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;57;1380.546,4003.468;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;2470.13,3683.473;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;18;2530.525,4003.111;Float;False;Property;_OverallEffect;OverallEffect;0;0;Create;True;0;0;False;0;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;2194.477,3953.4;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;17;2965.954,3847.308;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;3579.973,3805.831;Float;False;True;-1;2;ASEMaterialInspector;0;4;ColorSwap/SpriteColorSwap;5056123faa0c79b47ab6ad7e8bf059a4;True;Default;0;0;Default;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;True;2;False;-1;True;True;True;True;True;0;True;-9;True;True;0;True;-5;255;True;-8;255;True;-7;0;True;-4;0;True;-6;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;0;False;-1;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;0
WireConnection;3;0;1;0
WireConnection;60;0;3;0
WireConnection;4;1;63;0
WireConnection;4;3;5;0
WireConnection;4;4;8;0
WireConnection;4;5;9;0
WireConnection;12;1;64;0
WireConnection;12;3;10;0
WireConnection;12;4;11;0
WireConnection;12;5;14;0
WireConnection;7;0;60;0
WireConnection;7;1;6;0
WireConnection;7;2;4;0
WireConnection;15;0;7;0
WireConnection;15;1;13;0
WireConnection;15;2;12;0
WireConnection;24;1;65;0
WireConnection;24;3;22;0
WireConnection;24;4;20;0
WireConnection;24;5;21;0
WireConnection;31;1;66;0
WireConnection;31;3;28;0
WireConnection;31;4;29;0
WireConnection;31;5;27;0
WireConnection;26;0;15;0
WireConnection;26;1;23;0
WireConnection;26;2;24;0
WireConnection;36;1;67;0
WireConnection;36;3;35;0
WireConnection;36;4;34;0
WireConnection;36;5;33;0
WireConnection;32;0;26;0
WireConnection;32;1;30;0
WireConnection;32;2;31;0
WireConnection;44;1;68;0
WireConnection;44;3;42;0
WireConnection;44;4;40;0
WireConnection;44;5;41;0
WireConnection;38;0;32;0
WireConnection;38;1;37;0
WireConnection;38;2;36;0
WireConnection;49;1;69;0
WireConnection;49;3;47;0
WireConnection;49;4;45;0
WireConnection;49;5;46;0
WireConnection;55;0;38;0
WireConnection;55;1;43;0
WireConnection;55;2;44;0
WireConnection;58;0;3;4
WireConnection;56;0;55;0
WireConnection;56;1;48;0
WireConnection;56;2;49;0
WireConnection;54;1;70;0
WireConnection;54;3;52;0
WireConnection;54;4;50;0
WireConnection;54;5;51;0
WireConnection;57;0;56;0
WireConnection;57;1;53;0
WireConnection;57;2;54;0
WireConnection;19;0;59;0
WireConnection;19;1;61;0
WireConnection;39;0;71;0
WireConnection;39;1;57;0
WireConnection;17;0;19;0
WireConnection;17;1;39;0
WireConnection;17;2;18;0
WireConnection;2;0;17;0
ASEEND*/
//CHKSM=498B4A129A26F33FF7C2C38B90856C22971587C3
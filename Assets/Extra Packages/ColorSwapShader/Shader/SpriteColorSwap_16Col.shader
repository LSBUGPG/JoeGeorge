// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/SpriteColorSwap16Color"
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
		[Header(Color Set 1)][Space(8)]_ColorDetect1("Color Detect 1", Color) = (0,0,0,0)
		_NewColor1("New Color 1", Color) = (1,1,1,1)
		_Range1("Range1", Range( 0 , 1)) = 0.2
		_SoftFalloff1("Soft-Falloff1", Range( 0 , 1)) = 0.1
		[Header(Color Set 2)][Space(8)]_ColorDetect2("Color Detect 2", Color) = (0,0,0,0)
		_NewColor2("New Color 2", Color) = (1,1,1,1)
		_Range2("Range2", Range( 0 , 1)) = 0.2
		_SoftFalloff2("Soft-Falloff2", Range( 0 , 1)) = 0.1
		[Header(Color Set 3)][Space(8)]_ColorDetect3("Color Detect 3", Color) = (0,0,0,0)
		_NewColor3("New Color 3", Color) = (1,1,1,1)
		_Range3("Range 3", Range( 0 , 1)) = 0.2
		_SoftFalloff3("Soft-Falloff3", Range( 0 , 1)) = 0.1
		[Header(Color Set 4)][Space(8)]_ColorDetect4("Color Detect 4", Color) = (0,0,0,0)
		_NewColor4("New Color 4", Color) = (1,1,1,1)
		_Range4("Range 4", Range( 0 , 1)) = 0.2
		_SoftFalloff4("Soft-Falloff4", Range( 0 , 1)) = 0.1
		[Header(Color Set 5)][Space(8)]_ColorDetect5("Color Detect 5", Color) = (0,0,0,0)
		_NewColor5("New Color 5", Color) = (1,1,1,1)
		_Range5("Range 5", Range( 0 , 1)) = 0.2
		_SoftFalloff5("Soft-Falloff5", Range( 0 , 1)) = 0.1
		[Header(Color Set 6)][Space(8)]_ColorDetect6("Color Detect 6", Color) = (0,0,0,0)
		_NewColor6("New Color 6", Color) = (1,1,1,1)
		_Range6("Range 6", Range( 0 , 1)) = 0.2
		_SoftFalloff6("Soft-Falloff6", Range( 0 , 1)) = 0.1
		[Header(Color Set 7)][Space(8)]_ColorDetect7("Color Detect 7", Color) = (0,0,0,0)
		_NewColor7("New Color 7", Color) = (1,1,1,1)
		_Range7("Range 7", Range( 0 , 1)) = 0.2
		_SoftFalloff7("Soft-Falloff7", Range( 0 , 1)) = 0.1
		[Header(Color Set 8)][Space(8)]_ColorDetect8("Color Detect 8", Color) = (0,0,0,0)
		_NewColor8("New Color 8", Color) = (1,1,1,1)
		_Range8("Range 8", Range( 0 , 1)) = 0.2
		_SoftFalloff8("Soft-Falloff8", Range( 0 , 1)) = 0.1
		[Header(Color Set 9)][Space(8)]_ColorDetect9("Color Detect 9", Color) = (0,0,0,0)
		_NewColor9("New Color 9", Color) = (1,1,1,1)
		_Range9("Range 9", Range( 0 , 1)) = 0.2
		_SoftFalloff9("Soft-Falloff9", Range( 0 , 1)) = 0.1
		[Header(Color Set 10)][Space(8)]_ColorDetect10("Color Detect 10", Color) = (0,0,0,0)
		_NewColor10("New Color 10", Color) = (1,1,1,1)
		_Range10("Range 10", Range( 0 , 1)) = 0.2
		_SoftFalloff10("Soft-Falloff10", Range( 0 , 1)) = 0.1
		[Header(Color Set 11)][Space(8)]_ColorDetect11("Color Detect 11", Color) = (0,0,0,0)
		_NewColor11("New Color 11", Color) = (1,1,1,1)
		_Range11("Range 11", Range( 0 , 1)) = 0.2
		_SoftFalloff11("Soft-Falloff11", Range( 0 , 1)) = 0.1
		[Header(Color Set 12)][Space(8)]_ColorDetect12("Color Detect 12", Color) = (0,0,0,0)
		_NewColor12("New Color 12", Color) = (1,1,1,1)
		_Range12("Range 12", Range( 0 , 1)) = 0.2
		_SoftFalloff12("Soft-Falloff12", Range( 0 , 1)) = 0.1
		[Header(Color Set 13)][Space(8)]_ColorDetect13("Color Detect 13", Color) = (0,0,0,0)
		_NewColor13("New Color 13", Color) = (1,1,1,1)
		_Range13("Range 13", Range( 0 , 1)) = 0.2
		_SoftFalloff13("Soft-Falloff13", Range( 0 , 1)) = 0.1
		[Header(Color Set 14)][Space(8)]_ColorDetect14("Color Detect 14", Color) = (0,0,0,0)
		_NewColor14("New Color 14", Color) = (1,1,1,1)
		_Range14("Range 14", Range( 0 , 1)) = 0.2
		_SoftFalloff14("Soft-Falloff14", Range( 0 , 1)) = 0.1
		[Header(Color Set 15)][Space(8)]_ColorDetect15("Color Detect 15", Color) = (0,0,0,0)
		_NewColor15("New Color 15", Color) = (1,1,1,1)
		_Range15("Range 15", Range( 0 , 1)) = 0.2
		_SoftFalloff15("Soft-Falloff15", Range( 0 , 1)) = 0.1
		[Header(Color Set 16)][Space(8)]_ColorDetect16("Color Detect 16", Color) = (0,0,0,0)
		_NewColor16("New Color 16", Color) = (1,1,1,1)
		_Range16("Range 16", Range( 0 , 1)) = 0.2
		_SoftFalloff16("Soft-Falloff16", Range( 0 , 1)) = 0.1
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
			uniform float4 _NewColor9;
			uniform float4 _ColorDetect9;
			uniform float _Range9;
			uniform float _SoftFalloff9;
			uniform float4 _NewColor10;
			uniform float4 _ColorDetect10;
			uniform float _Range10;
			uniform float _SoftFalloff10;
			uniform float4 _NewColor11;
			uniform float4 _ColorDetect11;
			uniform float _Range11;
			uniform float _SoftFalloff11;
			uniform float4 _NewColor12;
			uniform float4 _ColorDetect12;
			uniform float _Range12;
			uniform float _SoftFalloff12;
			uniform float4 _NewColor13;
			uniform float4 _ColorDetect13;
			uniform float _Range13;
			uniform float _SoftFalloff13;
			uniform float4 _NewColor14;
			uniform float4 _ColorDetect14;
			uniform float _Range14;
			uniform float _SoftFalloff14;
			uniform float4 _NewColor15;
			uniform float4 _ColorDetect15;
			uniform float _Range15;
			uniform float _SoftFalloff15;
			uniform float4 _NewColor16;
			uniform float4 _ColorDetect16;
			uniform float _Range16;
			uniform float _SoftFalloff16;
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
				float AlphaFromTexture131 = tex2DNode3.a;
				float4 InputMask56 = tex2DNode3;
				float4 lerpResult7 = lerp( InputMask56 , _NewColor1 , saturate( ( 1.0 - ( ( distance( _ColorDetect1.rgb , InputMask56.rgb ) - _Range1 ) / max( _SoftFalloff1 , 1E-05 ) ) ) ));
				float4 lerpResult15 = lerp( lerpResult7 , _NewColor2 , saturate( ( 1.0 - ( ( distance( _ColorDetect2.rgb , InputMask56.rgb ) - _Range2 ) / max( _SoftFalloff2 , 1E-05 ) ) ) ));
				float4 lerpResult26 = lerp( lerpResult15 , _NewColor3 , saturate( ( 1.0 - ( ( distance( _ColorDetect3.rgb , InputMask56.rgb ) - _Range3 ) / max( _SoftFalloff3 , 1E-05 ) ) ) ));
				float4 lerpResult32 = lerp( lerpResult26 , _NewColor4 , saturate( ( 1.0 - ( ( distance( _ColorDetect4.rgb , InputMask56.rgb ) - _Range4 ) / max( _SoftFalloff4 , 1E-05 ) ) ) ));
				float4 lerpResult38 = lerp( lerpResult32 , _NewColor5 , saturate( ( 1.0 - ( ( distance( _ColorDetect5.rgb , InputMask56.rgb ) - _Range5 ) / max( _SoftFalloff5 , 1E-05 ) ) ) ));
				float4 lerpResult85 = lerp( lerpResult38 , _NewColor6 , saturate( ( 1.0 - ( ( distance( _ColorDetect6.rgb , InputMask56.rgb ) - _Range6 ) / max( _SoftFalloff6 , 1E-05 ) ) ) ));
				float4 lerpResult86 = lerp( lerpResult85 , _NewColor7 , saturate( ( 1.0 - ( ( distance( _ColorDetect7.rgb , InputMask56.rgb ) - _Range7 ) / max( _SoftFalloff7 , 1E-05 ) ) ) ));
				float4 lerpResult87 = lerp( lerpResult86 , _NewColor8 , saturate( ( 1.0 - ( ( distance( _ColorDetect8.rgb , InputMask56.rgb ) - _Range8 ) / max( _SoftFalloff8 , 1E-05 ) ) ) ));
				float4 lerpResult88 = lerp( lerpResult87 , _NewColor9 , saturate( ( 1.0 - ( ( distance( _ColorDetect9.rgb , InputMask56.rgb ) - _Range9 ) / max( _SoftFalloff9 , 1E-05 ) ) ) ));
				float4 lerpResult89 = lerp( lerpResult88 , _NewColor10 , saturate( ( 1.0 - ( ( distance( _ColorDetect10.rgb , InputMask56.rgb ) - _Range10 ) / max( _SoftFalloff10 , 1E-05 ) ) ) ));
				float4 lerpResult90 = lerp( lerpResult89 , _NewColor11 , saturate( ( 1.0 - ( ( distance( _ColorDetect11.rgb , InputMask56.rgb ) - _Range11 ) / max( _SoftFalloff11 , 1E-05 ) ) ) ));
				float4 lerpResult91 = lerp( lerpResult90 , _NewColor12 , saturate( ( 1.0 - ( ( distance( _ColorDetect12.rgb , InputMask56.rgb ) - _Range12 ) / max( _SoftFalloff12 , 1E-05 ) ) ) ));
				float4 lerpResult98 = lerp( lerpResult91 , _NewColor13 , saturate( ( 1.0 - ( ( distance( _ColorDetect13.rgb , InputMask56.rgb ) - _Range13 ) / max( _SoftFalloff13 , 1E-05 ) ) ) ));
				float4 lerpResult101 = lerp( lerpResult98 , _NewColor14 , saturate( ( 1.0 - ( ( distance( _ColorDetect14.rgb , InputMask56.rgb ) - _Range14 ) / max( _SoftFalloff14 , 1E-05 ) ) ) ));
				float4 lerpResult106 = lerp( lerpResult101 , _NewColor15 , saturate( ( 1.0 - ( ( distance( _ColorDetect15.rgb , InputMask56.rgb ) - _Range15 ) / max( _SoftFalloff15 , 1E-05 ) ) ) ));
				float4 lerpResult119 = lerp( lerpResult106 , _NewColor16 , saturate( ( 1.0 - ( ( distance( _ColorDetect16.rgb , InputMask56.rgb ) - _Range16 ) / max( _SoftFalloff16 , 1E-05 ) ) ) ));
				float4 Result16samples127 = lerpResult119;
				float4 lerpResult17 = lerp( ( tex2DNode3 * tex2DNode3.a ) , ( AlphaFromTexture131 * Result16samples127 ) , _OverallEffect);
				
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
218;211;1920;1029;1337.6;1480.366;1.904251;True;False
Node;AmplifyShaderEditor.CommentaryNode;260;-568.0258,-1225.364;Inherit;False;1688.379;646.4675;Comment;5;1;3;131;56;19;Main sprite driver;1,1,1,1;0;0
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;1;-518.0258,-905.9178;Inherit;False;0;0;_MainTex;Shader;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;3;-249.3862,-1052.891;Inherit;True;Property;_TextureSample0;Texture Sample 0;0;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;56;602.6679,-1175.364;Inherit;False;InputMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;261;-703.6667,136.9072;Inherit;False;1781.808;9841.072;Comment;113;8;9;5;14;10;11;6;4;13;22;7;21;12;20;29;27;15;24;28;23;30;31;33;26;34;35;41;40;36;42;32;37;49;43;38;58;48;47;44;46;59;54;45;85;53;52;51;66;62;63;50;61;86;70;64;67;72;65;87;71;69;73;78;68;88;76;77;75;89;82;79;83;74;84;92;95;93;94;90;80;81;96;105;103;99;91;97;102;112;111;98;107;104;110;100;116;109;117;113;108;118;101;106;114;115;119;127;57;255;256;257;258;259;First 16;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;8;-553.051,618.0865;Float;False;Property;_Range1;Range1;3;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;259;-577.4579,186.9072;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;5;-517.051,447.0865;Float;False;Property;_ColorDetect1;Color Detect 1;1;0;Create;True;0;0;False;2;Header(Color Set 1);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9;-555.8839,708.9188;Float;False;Property;_SoftFalloff1;Soft-Falloff1;4;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;4;-137.5349,536.633;Inherit;False;Color Mask;-1;;1;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-567.9232,1192.71;Float;False;Property;_Range2;Range2;7;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;6;-108.7981,341.0656;Float;False;Property;_NewColor1;New Color 1;2;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;14;-567.7121,1283.542;Float;False;Property;_SoftFalloff2;Soft-Falloff2;8;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;258;-586.4229,864.7675;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;10;-579.7504,1001.612;Float;False;Property;_ColorDetect2;Color Detect 2;5;0;Create;True;0;0;False;2;Header(Color Set 2);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;21;-647.6438,1909.52;Float;False;Property;_SoftFalloff3;Soft-Falloff3;12;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;13;-126.5086,863.0605;Float;False;Property;_NewColor2;New Color 2;6;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;12;-140.0757,1039.021;Inherit;False;Color Mask;-1;;2;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;257;-586.4236,1465.754;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;7;245.9489,197.0866;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;22;-653.6665,1597.738;Float;False;Property;_ColorDetect3;Color Detect 3;9;0;Create;True;0;0;False;2;Header(Color Set 3);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;20;-644.8109,1818.688;Float;False;Property;_Range3;Range 3;11;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;-529.9205,2094.992;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;15;521.0538,917.0718;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;29;-522.9017,2479.056;Float;False;Property;_Range4;Range 4;15;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;23;-203.6541,1489.039;Float;False;Property;_NewColor3;New Color 3;10;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;24;-220.0077,1664.999;Inherit;False;Color Mask;-1;;3;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;28;-534.7983,2255.065;Float;False;Property;_ColorDetect4;Color Detect 4;13;0;Create;True;0;0;False;2;Header(Color Set 4);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;27;-532.9035,2577.856;Float;False;Property;_SoftFalloff4;Soft-Falloff4;16;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;31;-101.1392,2322.326;Inherit;False;Color Mask;-1;;4;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;34;-472.6408,3076.886;Float;False;Property;_Range5;Range 5;19;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;30;-84.78553,2146.365;Float;False;Property;_NewColor4;New Color 4;14;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;35;-480.2989,2854.093;Float;False;Property;_ColorDetect5;Color Detect 5;17;0;Create;True;0;0;False;2;Header(Color Set 5);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;33;-481.2796,3174.009;Float;False;Property;_SoftFalloff5;Soft-Falloff5;20;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;26;732.6877,1510.725;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;-430.5681,2710.8;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-418.0605,3808.131;Float;False;Property;_SoftFalloff6;Soft-Falloff6;24;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;36;-46.63989,2921.354;Inherit;False;Color Mask;-1;;5;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-409.2561,3705.258;Float;False;Property;_Range6;Range 6;23;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;32;675.6876,2195.252;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;42;-419.9553,3482.465;Float;False;Property;_ColorDetect6;Color Detect 6;21;0;Create;True;0;0;False;2;Header(Color Set 6);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;37;-30.28618,2745.394;Float;False;Property;_NewColor5;New Color 5;18;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;57;-370.4019,3379.876;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;43;13.7038,3549.726;Inherit;False;Color Mask;-1;;6;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;38;816.8329,2788.443;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;49;-427.0494,4446.112;Float;False;Property;_SoftFalloff7;Soft-Falloff7;28;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;58;-312.8289,3985.359;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;44;30.0575,3373.765;Float;False;Property;_NewColor6;New Color 6;22;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;48;-419.9027,4346.114;Float;False;Property;_Range7;Range 7;27;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;47;-428.9443,4123.322;Float;False;Property;_ColorDetect7;Color Detect 7;25;0;Create;True;0;0;False;2;Header(Color Set 7);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;45;4.714692,4190.582;Inherit;False;Color Mask;-1;;7;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;59;-342.5983,4599.604;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-436.1931,5029.163;Float;False;Property;_SoftFalloff8;Soft-Falloff8;32;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;85;857.5529,3379.35;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-427.3889,4929.165;Float;False;Property;_Range8;Range 8;31;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;52;-440.0492,4705.513;Float;False;Property;_ColorDetect8;Color Detect 8;29;0;Create;True;0;0;False;2;Header(Color Set 8);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;46;21.06839,4014.622;Float;False;Property;_NewColor7;New Color 7;26;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;66;-453.9015,5538.85;Float;False;Property;_Range9;Range 9;35;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;51;11.92481,4597.672;Float;False;Property;_NewColor8;New Color 8;30;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;50;-4.428985,4773.633;Inherit;False;Color Mask;-1;;8;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;63;-341.9607,5237.734;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;86;829.4631,4017.598;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;62;-454.9486,5636.262;Float;False;Property;_SoftFalloff9;Soft-Falloff9;36;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;61;-437.4507,5343.643;Float;False;Property;_ColorDetect9;Color Detect 9;33;0;Create;True;0;0;False;2;Header(Color Set 9);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;72;-450.6594,6224.798;Float;False;Property;_SoftFalloff10;Soft-Falloff10;40;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;70;-433.1616,5934.14;Float;False;Property;_ColorDetect10;Color Detect 10;37;0;Create;True;0;0;False;2;Header(Color Set 10);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;64;-3.791381,5411.763;Inherit;False;Color Mask;-1;;9;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;65;12.5625,5235.802;Float;False;Property;_NewColor9;New Color 9;34;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;87;813.8791,4614.259;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-337.6715,5826.27;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;71;-449.6123,6127.386;Float;False;Property;_Range10;Range 10;39;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;73;-412.5078,6413.046;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;68;0.4976206,6000.299;Inherit;False;Color Mask;-1;;10;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;69;17.85141,5824.338;Float;False;Property;_NewColor10;New Color 10;38;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;77;-524.4487,6714.162;Float;False;Property;_Range11;Range 11;43;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;78;-525.4957,6811.574;Float;False;Property;_SoftFalloff11;Soft-Falloff11;44;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;76;-507.9979,6520.916;Float;False;Property;_ColorDetect11;Color Detect 11;41;0;Create;True;0;0;False;2;Header(Color Set 11);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;88;773.8039,5268.794;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;82;-468.2401,7199.664;Float;False;Property;_ColorDetect12;Color Detect 12;45;0;Create;True;0;0;False;2;Header(Color Set 12);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;75;-56.98492,6411.114;Float;False;Property;_NewColor11;New Color 11;42;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;83;-484.6909,7392.91;Float;False;Property;_Range12;Range 12;47;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-372.7501,7091.794;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;84;-481.2954,7490.322;Float;False;Property;_SoftFalloff12;Soft-Falloff12;48;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;74;-74.33872,6587.075;Inherit;False;Color Mask;-1;;11;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;89;776.0109,5895.867;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;80;-34.58092,7265.823;Inherit;False;Color Mask;-1;;12;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;81;-17.22696,7089.862;Float;False;Property;_NewColor12;New Color 12;46;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;90;672.9373,6479.953;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;95;-472.9955,7805.94;Float;False;Property;_ColorDetect13;Color Detect 13;49;0;Create;True;0;0;False;2;Header(Color Set 13);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;93;-490.8289,7999.187;Float;False;Property;_Range13;Range 13;51;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;94;-378.8881,7698.069;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;92;-491.8761,8096.597;Float;False;Property;_SoftFalloff13;Soft-Falloff13;52;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;99;-519.5539,8368.924;Float;False;Property;_ColorDetect14;Color Detect 14;53;0;Create;True;0;0;False;2;Header(Color Set 14);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;97;-40.71879,7872.098;Inherit;False;Color Mask;-1;;13;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;96;-23.36478,7696.137;Float;False;Property;_NewColor13;New Color 13;50;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;91;691.4374,7148.614;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;103;-425.4464,8261.053;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;102;-537.3873,8562.17;Float;False;Property;_Range14;Range 14;55;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;105;-535.5588,8656.706;Float;False;Property;_SoftFalloff14;Soft-Falloff14;56;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;107;-497.5849,8855.432;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;111;-609.5258,9156.548;Float;False;Property;_Range15;Range 15;59;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;112;-610.5729,9253.96;Float;False;Property;_SoftFalloff15;Soft-Falloff15;60;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;110;-591.6925,8965.263;Float;False;Property;_ColorDetect15;Color Detect 15;57;0;Create;True;0;0;False;2;Header(Color Set 15);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;98;685.3019,7754.889;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;100;-69.92332,8259.121;Float;False;Property;_NewColor14;New Color 14;54;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;104;-87.27734,8435.082;Inherit;False;Color Mask;-1;;14;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;101;638.7433,8317.873;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;116;-625.6086,9572.32;Float;False;Property;_ColorDetect16;Color Detect 16;61;0;Create;True;0;0;False;2;Header(Color Set 16);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;118;-644.489,9862.979;Float;False;Property;_SoftFalloff16;Soft-Falloff16;64;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;108;-159.4161,9029.46;Inherit;False;Color Mask;-1;;15;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;109;-142.0621,8853.5;Float;False;Property;_NewColor15;New Color 15;58;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;117;-643.4419,9765.566;Float;False;Property;_Range16;Range 16;63;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;113;-531.5012,9464.45;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;115;-175.9785,9462.519;Float;False;Property;_NewColor16;New Color 16;62;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;114;-193.3325,9638.479;Inherit;False;Color Mask;-1;;16;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;106;566.6042,8912.251;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;119;532.6883,9521.27;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;127;813.1411,9534.637;Inherit;False;Result16samples;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;131;211.0242,-693.8962;Inherit;False;AlphaFromTexture;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;60;1917.089,-1110.679;Inherit;False;1049.063;648.2329;Final Pass;6;39;17;2;18;130;132;Final OUTPUT;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;132;1932.37,-631.6699;Inherit;False;131;AlphaFromTexture;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;130;1938.449,-548.2185;Inherit;False;127;Result16samples;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;2299.119,-602.4457;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;951.3533,-976.8531;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;18;1968.875,-760.119;Float;False;Property;_OverallEffect;OverallEffect;0;0;Create;True;0;0;False;0;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;17;2405.684,-1029.853;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;2720.613,-1049.842;Float;False;True;-1;2;ASEMaterialInspector;0;4;ColorSwap/SpriteColorSwap16Color;5056123faa0c79b47ab6ad7e8bf059a4;True;Default;0;0;Default;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;True;2;False;-1;True;True;True;True;True;0;True;-9;True;True;0;True;-5;255;True;-8;255;True;-7;0;True;-4;0;True;-6;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;0;False;-1;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;0
WireConnection;3;0;1;0
WireConnection;56;0;3;0
WireConnection;4;1;259;0
WireConnection;4;3;5;0
WireConnection;4;4;8;0
WireConnection;4;5;9;0
WireConnection;12;1;258;0
WireConnection;12;3;10;0
WireConnection;12;4;11;0
WireConnection;12;5;14;0
WireConnection;7;0;259;0
WireConnection;7;1;6;0
WireConnection;7;2;4;0
WireConnection;15;0;7;0
WireConnection;15;1;13;0
WireConnection;15;2;12;0
WireConnection;24;1;257;0
WireConnection;24;3;22;0
WireConnection;24;4;20;0
WireConnection;24;5;21;0
WireConnection;31;1;256;0
WireConnection;31;3;28;0
WireConnection;31;4;29;0
WireConnection;31;5;27;0
WireConnection;26;0;15;0
WireConnection;26;1;23;0
WireConnection;26;2;24;0
WireConnection;36;1;255;0
WireConnection;36;3;35;0
WireConnection;36;4;34;0
WireConnection;36;5;33;0
WireConnection;32;0;26;0
WireConnection;32;1;30;0
WireConnection;32;2;31;0
WireConnection;43;1;57;0
WireConnection;43;3;42;0
WireConnection;43;4;40;0
WireConnection;43;5;41;0
WireConnection;38;0;32;0
WireConnection;38;1;37;0
WireConnection;38;2;36;0
WireConnection;45;1;58;0
WireConnection;45;3;47;0
WireConnection;45;4;48;0
WireConnection;45;5;49;0
WireConnection;85;0;38;0
WireConnection;85;1;44;0
WireConnection;85;2;43;0
WireConnection;50;1;59;0
WireConnection;50;3;52;0
WireConnection;50;4;53;0
WireConnection;50;5;54;0
WireConnection;86;0;85;0
WireConnection;86;1;46;0
WireConnection;86;2;45;0
WireConnection;64;1;63;0
WireConnection;64;3;61;0
WireConnection;64;4;66;0
WireConnection;64;5;62;0
WireConnection;87;0;86;0
WireConnection;87;1;51;0
WireConnection;87;2;50;0
WireConnection;68;1;67;0
WireConnection;68;3;70;0
WireConnection;68;4;71;0
WireConnection;68;5;72;0
WireConnection;88;0;87;0
WireConnection;88;1;65;0
WireConnection;88;2;64;0
WireConnection;74;1;73;0
WireConnection;74;3;76;0
WireConnection;74;4;77;0
WireConnection;74;5;78;0
WireConnection;89;0;88;0
WireConnection;89;1;69;0
WireConnection;89;2;68;0
WireConnection;80;1;79;0
WireConnection;80;3;82;0
WireConnection;80;4;83;0
WireConnection;80;5;84;0
WireConnection;90;0;89;0
WireConnection;90;1;75;0
WireConnection;90;2;74;0
WireConnection;97;1;94;0
WireConnection;97;3;95;0
WireConnection;97;4;93;0
WireConnection;97;5;92;0
WireConnection;91;0;90;0
WireConnection;91;1;81;0
WireConnection;91;2;80;0
WireConnection;98;0;91;0
WireConnection;98;1;96;0
WireConnection;98;2;97;0
WireConnection;104;1;103;0
WireConnection;104;3;99;0
WireConnection;104;4;102;0
WireConnection;104;5;105;0
WireConnection;101;0;98;0
WireConnection;101;1;100;0
WireConnection;101;2;104;0
WireConnection;108;1;107;0
WireConnection;108;3;110;0
WireConnection;108;4;111;0
WireConnection;108;5;112;0
WireConnection;114;1;113;0
WireConnection;114;3;116;0
WireConnection;114;4;117;0
WireConnection;114;5;118;0
WireConnection;106;0;101;0
WireConnection;106;1;109;0
WireConnection;106;2;108;0
WireConnection;119;0;106;0
WireConnection;119;1;115;0
WireConnection;119;2;114;0
WireConnection;127;0;119;0
WireConnection;131;0;3;4
WireConnection;39;0;132;0
WireConnection;39;1;130;0
WireConnection;19;0;3;0
WireConnection;19;1;3;4
WireConnection;17;0;19;0
WireConnection;17;1;39;0
WireConnection;17;2;18;0
WireConnection;2;0;17;0
ASEEND*/
//CHKSM=B68DDCDA72CF88EA3D03EC5193DC7BC9417A65C6
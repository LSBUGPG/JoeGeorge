// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/SpriteColorSwap40Color"
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
		[Header(Color Set 17)][Space(8)]_ColorDetect17("Color Detect 17", Color) = (0,0,0,0)
		_NewColor17("New Color 17", Color) = (1,1,1,1)
		_Range17("Range 17", Range( 0 , 1)) = 0.2
		_SoftFalloff17("Soft-Falloff17", Range( 0 , 1)) = 0.1
		[Header(Color Set 18)][Space(8)]_ColorDetect18("Color Detect 18", Color) = (0,0,0,0)
		_NewColor18("New Color 18", Color) = (1,1,1,1)
		_Range18("Range 18", Range( 0 , 1)) = 0.2
		_SoftFalloff18("Soft-Falloff18", Range( 0 , 1)) = 0.1
		[Header(Color Set 19)][Space(8)]_ColorDetect19("Color Detect 19", Color) = (0,0,0,0)
		_NewColor19("New Color 19", Color) = (1,1,1,1)
		_Range19("Range 19", Range( 0 , 1)) = 0.2
		_SoftFalloff19("Soft-Falloff19", Range( 0 , 1)) = 0.1
		[Header(Color Set 20)][Space(8)]_ColorDetect20("Color Detect 20", Color) = (0,0,0,0)
		_NewColor20("New Color 20", Color) = (1,1,1,1)
		_Range20("Range 20", Range( 0 , 1)) = 0.2
		_SoftFalloff20("Soft-Falloff20", Range( 0 , 1)) = 0.1
		[Header(Color Set 21)][Space(8)]_ColorDetect21("Color Detect 21", Color) = (0,0,0,0)
		_NewColor21("New Color 21", Color) = (1,1,1,1)
		_Range21("Range 21", Range( 0 , 1)) = 0.2
		_SoftFalloff21("Soft-Falloff21", Range( 0 , 1)) = 0.1
		[Header(Color Set 22)][Space(8)]_ColorDetect22("Color Detect 22", Color) = (0,0,0,0)
		_NewColor22("New Color 22", Color) = (1,1,1,1)
		_Range22("Range 22", Range( 0 , 1)) = 0.2
		_SoftFalloff22("Soft-Falloff22", Range( 0 , 1)) = 0.1
		[Header(Color Set 22)][Space(8)]_ColorDetect23("Color Detect 23", Color) = (0,0,0,0)
		_NewColor23("New Color 23", Color) = (1,1,1,1)
		_Range23("Range 23", Range( 0 , 1)) = 0.2
		_SoftFalloff23("Soft-Falloff23", Range( 0 , 1)) = 0.1
		[Header(Color Set 24)][Space(8)]_ColorDetect24("Color Detect 24", Color) = (0,0,0,0)
		_NewColor24("New Color 24", Color) = (1,1,1,1)
		_Range24("Range 24", Range( 0 , 1)) = 0.2
		_SoftFalloff24("Soft-Falloff24", Range( 0 , 1)) = 0.1
		[Header(Color Set 25)][Space(8)]_ColorDetect25("Color Detect25", Color) = (0,0,0,0)
		_NewColor25("New Color 25", Color) = (1,1,1,1)
		_Range25("Range 25", Range( 0 , 1)) = 0.2
		_SoftFalloff25("Soft-Falloff25", Range( 0 , 1)) = 0.1
		[Header(Color Set 26)][Space(8)]_ColorDetect26("Color Detect 26", Color) = (0,0,0,0)
		_NewColor26("New Color 26", Color) = (1,1,1,1)
		_Range26("Range 26", Range( 0 , 1)) = 0.2
		_SoftFalloff26("Soft-Falloff26", Range( 0 , 1)) = 0.1
		[Header(Color Set 27)][Space(8)]_ColorDetect27("Color Detect 27", Color) = (0,0,0,0)
		_NewColor27("New Color 27", Color) = (1,1,1,1)
		_Range27("Range 27", Range( 0 , 1)) = 0.2
		_SoftFalloff27("Soft-Falloff27", Range( 0 , 1)) = 0.1
		[Header(Color Set 28)][Space(8)]_ColorDetect28("Color Detect 28", Color) = (0,0,0,0)
		_NewColor28("New Color 28", Color) = (1,1,1,1)
		_Range28("Range 28", Range( 0 , 1)) = 0.2
		_SoftFalloff28("Soft-Falloff28", Range( 0 , 1)) = 0.1
		[Header(Color Set 29)][Space(8)]_ColorDetect29("Color Detect29", Color) = (0,0,0,0)
		_NewColor29("New Color 29", Color) = (1,1,1,1)
		_Range29("Range 29", Range( 0 , 1)) = 0.2
		_SoftFalloff29("Soft-Falloff29", Range( 0 , 1)) = 0.1
		[Header(Color Set 30)][Space(8)]_ColorDetect30("Color Detect 30", Color) = (0,0,0,0)
		_NewColor30("New Color 30", Color) = (1,1,1,1)
		_Range30("Range 30", Range( 0 , 1)) = 0.2
		_SoftFalloff30("Soft-Falloff30", Range( 0 , 1)) = 0.1
		[Header(Color Set 31)][Space(8)]_ColorDetect31("Color Detect 31", Color) = (0,0,0,0)
		_NewColor31("New Color 31", Color) = (1,1,1,1)
		_Range31("Range 31", Range( 0 , 1)) = 0.2
		_SoftFalloff31("Soft-Falloff31", Range( 0 , 1)) = 0.1
		[Header(Color Set 32)][Space(8)]_ColorDetect32("Color Detect 32", Color) = (0,0,0,0)
		_NewColor32("New Color 32", Color) = (1,1,1,1)
		_Range32("Range 32", Range( 0 , 1)) = 0.2
		_SoftFalloff32("Soft-Falloff32", Range( 0 , 1)) = 0.1
		[Header(Color Set 33)][Space(8)]_ColorDetect33("Color Detect 33", Color) = (0,0,0,0)
		_NewColor33("New Color 33", Color) = (1,1,1,1)
		_Range33("Range 33", Range( 0 , 1)) = 0.2
		_SoftFalloff33("Soft-Falloff33", Range( 0 , 1)) = 0.1
		[Header(Color Set 34)][Space(8)]_ColorDetect34("Color Detect 34", Color) = (0,0,0,0)
		_NewColor34("New Color 34", Color) = (1,1,1,1)
		_Range34("Range 34", Range( 0 , 1)) = 0.2
		_SoftFalloff34("Soft-Falloff34", Range( 0 , 1)) = 0.1
		[Header(Color Set 35)][Space(8)]_ColorDetect35("Color Detect 35", Color) = (0,0,0,0)
		_NewColor35("New Color 35", Color) = (1,1,1,1)
		_Range35("Range 35", Range( 0 , 1)) = 0.2
		_SoftFalloff35("Soft-Falloff35", Range( 0 , 1)) = 0.1
		[Header(Color Set 36)][Space(8)]_ColorDetect36("Color Detect 36", Color) = (0,0,0,0)
		_NewColor36("New Color 36", Color) = (1,1,1,1)
		_Range36("Range 36", Range( 0 , 1)) = 0.2
		_SoftFalloff36("Soft-Falloff36", Range( 0 , 1)) = 0.1
		[Header(Color Set 37)][Space(8)]_ColorDetect37("Color Detect 37", Color) = (0,0,0,0)
		_NewColor37("New Color 37", Color) = (1,1,1,1)
		_Range37("Range 37", Range( 0 , 1)) = 0.2
		_SoftFalloff37("Soft-Falloff37", Range( 0 , 1)) = 0.1
		[Header(Color Set 38)][Space(8)]_ColorDetect38("Color Detect 38", Color) = (0,0,0,0)
		_NewColor38("New Color 38", Color) = (1,1,1,1)
		_Range38("Range 38", Range( 0 , 1)) = 0.2
		_SoftFalloff38("Soft-Falloff38", Range( 0 , 1)) = 0.1
		[Header(Color Set 39)][Space(8)]_ColorDetect39("Color Detect 39", Color) = (0,0,0,0)
		_NewColor39("New Color 39", Color) = (1,1,1,1)
		_Range39("Range 39", Range( 0 , 1)) = 0.2
		_SoftFalloff39("Soft-Falloff39", Range( 0 , 1)) = 0.1
		[Header(Color Set 40)][Space(8)]_ColorDetect40("Color Detect 40", Color) = (0,0,0,0)
		_NewColor40("New Color 40", Color) = (1,1,1,1)
		_Range40("Range 40", Range( 0 , 1)) = 0.2
		_SoftFalloff40("Soft-Falloff40", Range( 0 , 1)) = 0.1
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
			uniform float4 _NewColor17;
			uniform float4 _ColorDetect17;
			uniform float _Range17;
			uniform float _SoftFalloff17;
			uniform float4 _NewColor18;
			uniform float4 _ColorDetect18;
			uniform float _Range18;
			uniform float _SoftFalloff18;
			uniform float4 _NewColor19;
			uniform float4 _ColorDetect19;
			uniform float _Range19;
			uniform float _SoftFalloff19;
			uniform float4 _NewColor20;
			uniform float4 _ColorDetect20;
			uniform float _Range20;
			uniform float _SoftFalloff20;
			uniform float4 _NewColor21;
			uniform float4 _ColorDetect21;
			uniform float _Range21;
			uniform float _SoftFalloff21;
			uniform float4 _NewColor22;
			uniform float4 _ColorDetect22;
			uniform float _Range22;
			uniform float _SoftFalloff22;
			uniform float4 _NewColor23;
			uniform float4 _ColorDetect23;
			uniform float _Range23;
			uniform float _SoftFalloff23;
			uniform float4 _NewColor24;
			uniform float4 _ColorDetect24;
			uniform float _Range24;
			uniform float _SoftFalloff24;
			uniform float4 _NewColor25;
			uniform float4 _ColorDetect25;
			uniform float _Range25;
			uniform float _SoftFalloff25;
			uniform float4 _NewColor26;
			uniform float4 _ColorDetect26;
			uniform float _Range26;
			uniform float _SoftFalloff26;
			uniform float4 _NewColor27;
			uniform float4 _ColorDetect27;
			uniform float _Range27;
			uniform float _SoftFalloff27;
			uniform float4 _NewColor28;
			uniform float4 _ColorDetect28;
			uniform float _Range28;
			uniform float _SoftFalloff28;
			uniform float4 _NewColor29;
			uniform float4 _ColorDetect29;
			uniform float _Range29;
			uniform float _SoftFalloff29;
			uniform float4 _NewColor30;
			uniform float4 _ColorDetect30;
			uniform float _Range30;
			uniform float _SoftFalloff30;
			uniform float4 _NewColor31;
			uniform float4 _ColorDetect31;
			uniform float _Range31;
			uniform float _SoftFalloff31;
			uniform float4 _NewColor32;
			uniform float4 _ColorDetect32;
			uniform float _Range32;
			uniform float _SoftFalloff32;
			uniform float4 _NewColor33;
			uniform float4 _ColorDetect33;
			uniform float _Range33;
			uniform float _SoftFalloff33;
			uniform float4 _NewColor34;
			uniform float4 _ColorDetect34;
			uniform float _Range34;
			uniform float _SoftFalloff34;
			uniform float4 _NewColor35;
			uniform float4 _ColorDetect35;
			uniform float _Range35;
			uniform float _SoftFalloff35;
			uniform float4 _NewColor36;
			uniform float4 _ColorDetect36;
			uniform float _Range36;
			uniform float _SoftFalloff36;
			uniform float4 _NewColor37;
			uniform float4 _ColorDetect37;
			uniform float _Range37;
			uniform float _SoftFalloff37;
			uniform float4 _NewColor38;
			uniform float4 _ColorDetect38;
			uniform float _Range38;
			uniform float _SoftFalloff38;
			uniform float4 _NewColor39;
			uniform float4 _ColorDetect39;
			uniform float _Range39;
			uniform float _SoftFalloff39;
			uniform float4 _NewColor40;
			uniform float4 _ColorDetect40;
			uniform float _Range40;
			uniform float _SoftFalloff40;
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
				float4 lerpResult123 = lerp( Result16samples127 , _NewColor17 , saturate( ( 1.0 - ( ( distance( _ColorDetect17.rgb , InputMask56.rgb ) - _Range17 ) / max( _SoftFalloff17 , 1E-05 ) ) ) ));
				float4 lerpResult136 = lerp( lerpResult123 , _NewColor18 , saturate( ( 1.0 - ( ( distance( _ColorDetect18.rgb , InputMask56.rgb ) - _Range18 ) / max( _SoftFalloff18 , 1E-05 ) ) ) ));
				float4 lerpResult144 = lerp( lerpResult136 , _NewColor19 , saturate( ( 1.0 - ( ( distance( _ColorDetect19.rgb , InputMask56.rgb ) - _Range19 ) / max( _SoftFalloff19 , 1E-05 ) ) ) ));
				float4 lerpResult152 = lerp( lerpResult144 , _NewColor20 , saturate( ( 1.0 - ( ( distance( _ColorDetect20.rgb , InputMask56.rgb ) - _Range20 ) / max( _SoftFalloff20 , 1E-05 ) ) ) ));
				float4 lerpResult160 = lerp( lerpResult152 , _NewColor21 , saturate( ( 1.0 - ( ( distance( _ColorDetect21.rgb , InputMask56.rgb ) - _Range21 ) / max( _SoftFalloff21 , 1E-05 ) ) ) ));
				float4 lerpResult168 = lerp( lerpResult160 , _NewColor22 , saturate( ( 1.0 - ( ( distance( _ColorDetect22.rgb , InputMask56.rgb ) - _Range22 ) / max( _SoftFalloff22 , 1E-05 ) ) ) ));
				float4 lerpResult177 = lerp( lerpResult168 , _NewColor23 , saturate( ( 1.0 - ( ( distance( _ColorDetect23.rgb , InputMask56.rgb ) - _Range23 ) / max( _SoftFalloff23 , 1E-05 ) ) ) ));
				float4 lerpResult185 = lerp( lerpResult177 , _NewColor24 , saturate( ( 1.0 - ( ( distance( _ColorDetect24.rgb , InputMask56.rgb ) - _Range24 ) / max( _SoftFalloff24 , 1E-05 ) ) ) ));
				float4 lerpResult193 = lerp( lerpResult185 , _NewColor25 , saturate( ( 1.0 - ( ( distance( _ColorDetect25.rgb , InputMask56.rgb ) - _Range25 ) / max( _SoftFalloff25 , 1E-05 ) ) ) ));
				float4 lerpResult201 = lerp( lerpResult193 , _NewColor26 , saturate( ( 1.0 - ( ( distance( _ColorDetect26.rgb , InputMask56.rgb ) - _Range26 ) / max( _SoftFalloff26 , 1E-05 ) ) ) ));
				float4 lerpResult209 = lerp( lerpResult201 , _NewColor27 , saturate( ( 1.0 - ( ( distance( _ColorDetect27.rgb , InputMask56.rgb ) - _Range27 ) / max( _SoftFalloff27 , 1E-05 ) ) ) ));
				float4 lerpResult217 = lerp( lerpResult209 , _NewColor28 , saturate( ( 1.0 - ( ( distance( _ColorDetect28.rgb , InputMask56.rgb ) - _Range28 ) / max( _SoftFalloff28 , 1E-05 ) ) ) ));
				float4 lerpResult224 = lerp( lerpResult217 , _NewColor29 , saturate( ( 1.0 - ( ( distance( _ColorDetect29.rgb , InputMask56.rgb ) - _Range29 ) / max( _SoftFalloff29 , 1E-05 ) ) ) ));
				float4 lerpResult228 = lerp( lerpResult224 , _NewColor30 , saturate( ( 1.0 - ( ( distance( _ColorDetect30.rgb , InputMask56.rgb ) - _Range30 ) / max( _SoftFalloff30 , 1E-05 ) ) ) ));
				float4 lerpResult232 = lerp( lerpResult228 , _NewColor31 , saturate( ( 1.0 - ( ( distance( _ColorDetect31.rgb , InputMask56.rgb ) - _Range31 ) / max( _SoftFalloff31 , 1E-05 ) ) ) ));
				float4 lerpResult236 = lerp( lerpResult232 , _NewColor32 , saturate( ( 1.0 - ( ( distance( _ColorDetect32.rgb , InputMask56.rgb ) - _Range32 ) / max( _SoftFalloff32 , 1E-05 ) ) ) ));
				float4 Result32Samples129 = lerpResult236;
				float4 lerpResult268 = lerp( Result32Samples129 , _NewColor33 , saturate( ( 1.0 - ( ( distance( _ColorDetect33.rgb , InputMask56.rgb ) - _Range33 ) / max( _SoftFalloff33 , 1E-05 ) ) ) ));
				float4 lerpResult277 = lerp( lerpResult268 , _NewColor34 , saturate( ( 1.0 - ( ( distance( _ColorDetect34.rgb , InputMask56.rgb ) - _Range34 ) / max( _SoftFalloff34 , 1E-05 ) ) ) ));
				float4 lerpResult281 = lerp( lerpResult277 , _NewColor35 , saturate( ( 1.0 - ( ( distance( _ColorDetect35.rgb , InputMask56.rgb ) - _Range35 ) / max( _SoftFalloff35 , 1E-05 ) ) ) ));
				float4 lerpResult288 = lerp( lerpResult281 , _NewColor36 , saturate( ( 1.0 - ( ( distance( _ColorDetect36.rgb , InputMask56.rgb ) - _Range36 ) / max( _SoftFalloff36 , 1E-05 ) ) ) ));
				float4 lerpResult298 = lerp( lerpResult288 , _NewColor37 , saturate( ( 1.0 - ( ( distance( _ColorDetect37.rgb , InputMask56.rgb ) - _Range37 ) / max( _SoftFalloff37 , 1E-05 ) ) ) ));
				float4 lerpResult299 = lerp( lerpResult298 , _NewColor38 , saturate( ( 1.0 - ( ( distance( _ColorDetect38.rgb , InputMask56.rgb ) - _Range38 ) / max( _SoftFalloff38 , 1E-05 ) ) ) ));
				float4 lerpResult307 = lerp( lerpResult299 , _NewColor39 , saturate( ( 1.0 - ( ( distance( _ColorDetect39.rgb , InputMask56.rgb ) - _Range39 ) / max( _SoftFalloff39 , 1E-05 ) ) ) ));
				float4 lerpResult317 = lerp( lerpResult307 , _NewColor40 , saturate( ( 1.0 - ( ( distance( _ColorDetect40.rgb , InputMask56.rgb ) - _Range40 ) / max( _SoftFalloff40 , 1E-05 ) ) ) ));
				float4 T_40Samples270 = lerpResult317;
				float4 lerpResult17 = lerp( ( tex2DNode3 * tex2DNode3.a ) , ( AlphaFromTexture131 * T_40Samples270 ) , _OverallEffect);
				
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
0;0;1920;1029;-1981.656;-4846.468;2.246992;True;False
Node;AmplifyShaderEditor.CommentaryNode;260;-568.0258,-1225.364;Inherit;False;1688.379;646.4675;Comment;5;1;3;131;56;19;Main sprite driver;1,1,1,1;0;0
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;1;-518.0258,-905.9178;Inherit;False;0;0;_MainTex;Shader;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;3;-249.3862,-1052.891;Inherit;True;Property;_TextureSample0;Texture Sample 0;0;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;261;-703.6667,136.9072;Inherit;False;1781.808;9841.072;Comment;113;8;9;5;14;10;11;6;4;13;22;7;21;12;20;29;27;15;24;28;23;30;31;33;26;34;35;41;40;36;42;32;37;49;43;38;58;48;47;44;46;59;54;45;85;53;52;51;66;62;63;50;61;86;70;64;67;72;65;87;71;69;73;78;68;88;76;77;75;89;82;79;83;74;84;92;95;93;94;90;80;81;96;105;103;99;91;97;102;112;111;98;107;104;110;100;116;109;117;113;108;118;101;106;114;115;119;127;57;255;256;257;258;259;First 16;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;56;602.6679,-1175.364;Inherit;False;InputMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;8;-553.051,618.0865;Float;False;Property;_Range1;Range1;3;0;Create;True;0;0;False;0;0.2;0.403;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;259;-577.4579,186.9072;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;5;-517.051,447.0865;Float;False;Property;_ColorDetect1;Color Detect 1;1;0;Create;True;0;0;False;2;Header(Color Set 1);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9;-555.8839,708.9188;Float;False;Property;_SoftFalloff1;Soft-Falloff1;4;0;Create;True;0;0;False;0;0.1;0.076;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;4;-137.5349,536.633;Inherit;False;Color Mask;-1;;1;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-567.9232,1192.71;Float;False;Property;_Range2;Range2;7;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;6;-108.7981,341.0656;Float;False;Property;_NewColor1;New Color 1;2;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;14;-567.7121,1283.542;Float;False;Property;_SoftFalloff2;Soft-Falloff2;8;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;258;-586.4229,864.7675;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;10;-579.7504,1001.612;Float;False;Property;_ColorDetect2;Color Detect 2;5;0;Create;True;0;0;False;2;Header(Color Set 2);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;20;-644.8109,1818.688;Float;False;Property;_Range3;Range 3;11;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;257;-586.4236,1465.754;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;22;-653.6665,1597.738;Float;False;Property;_ColorDetect3;Color Detect 3;9;0;Create;True;0;0;False;2;Header(Color Set 3);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;21;-647.6438,1909.52;Float;False;Property;_SoftFalloff3;Soft-Falloff3;12;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;12;-140.0757,1039.021;Inherit;False;Color Mask;-1;;2;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;13;-126.5086,863.0605;Float;False;Property;_NewColor2;New Color 2;6;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;7;245.9489,197.0866;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;27;-532.9035,2577.856;Float;False;Property;_SoftFalloff4;Soft-Falloff4;16;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;29;-522.9017,2479.056;Float;False;Property;_Range4;Range 4;15;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;23;-203.6541,1489.039;Float;False;Property;_NewColor3;New Color 3;10;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;15;521.0538,917.0718;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;28;-534.7983,2255.065;Float;False;Property;_ColorDetect4;Color Detect 4;13;0;Create;True;0;0;False;2;Header(Color Set 4);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;24;-220.0077,1664.999;Inherit;False;Color Mask;-1;;3;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;-529.9205,2094.992;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;-430.5681,2710.8;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;33;-481.2796,3174.009;Float;False;Property;_SoftFalloff5;Soft-Falloff5;20;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;26;732.6877,1510.725;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;31;-101.1392,2322.326;Inherit;False;Color Mask;-1;;4;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;35;-480.2989,2854.093;Float;False;Property;_ColorDetect5;Color Detect 5;17;0;Create;True;0;0;False;2;Header(Color Set 5);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;34;-472.6408,3076.886;Float;False;Property;_Range5;Range 5;19;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;30;-84.78553,2146.365;Float;False;Property;_NewColor4;New Color 4;14;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;36;-46.63989,2921.354;Inherit;False;Color Mask;-1;;5;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;32;675.6876,2195.252;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-409.2561,3705.258;Float;False;Property;_Range6;Range 6;23;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;37;-30.28618,2745.394;Float;False;Property;_NewColor5;New Color 5;18;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;42;-419.9553,3482.465;Float;False;Property;_ColorDetect6;Color Detect 6;21;0;Create;True;0;0;False;2;Header(Color Set 6);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;57;-370.4019,3379.876;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-418.0605,3808.131;Float;False;Property;_SoftFalloff6;Soft-Falloff6;24;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;58;-312.8289,3985.359;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;44;30.0575,3373.765;Float;False;Property;_NewColor6;New Color 6;22;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;48;-419.9027,4346.114;Float;False;Property;_Range7;Range 7;27;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;43;13.7038,3549.726;Inherit;False;Color Mask;-1;;6;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;49;-427.0494,4446.112;Float;False;Property;_SoftFalloff7;Soft-Falloff7;28;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;47;-428.9443,4123.322;Float;False;Property;_ColorDetect7;Color Detect 7;25;0;Create;True;0;0;False;2;Header(Color Set 7);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;38;816.8329,2788.443;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;85;857.5529,3379.35;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-436.1931,5029.163;Float;False;Property;_SoftFalloff8;Soft-Falloff8;32;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;52;-440.0492,4705.513;Float;False;Property;_ColorDetect8;Color Detect 8;29;0;Create;True;0;0;False;2;Header(Color Set 8);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;45;4.714692,4190.582;Inherit;False;Color Mask;-1;;7;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-427.3889,4929.165;Float;False;Property;_Range8;Range 8;31;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;46;21.06839,4014.622;Float;False;Property;_NewColor7;New Color 7;26;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;59;-342.5983,4599.604;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;86;829.4631,4017.598;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;61;-437.4507,5343.643;Float;False;Property;_ColorDetect9;Color Detect 9;33;0;Create;True;0;0;False;2;Header(Color Set 9);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;50;-4.428985,4773.633;Inherit;False;Color Mask;-1;;8;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;62;-454.9486,5636.262;Float;False;Property;_SoftFalloff9;Soft-Falloff9;36;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;63;-341.9607,5237.734;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;51;11.92481,4597.672;Float;False;Property;_NewColor8;New Color 8;30;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;66;-453.9015,5538.85;Float;False;Property;_Range9;Range 9;35;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;71;-449.6123,6127.386;Float;False;Property;_Range10;Range 10;39;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;64;-3.791381,5411.763;Inherit;False;Color Mask;-1;;9;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;72;-450.6594,6224.798;Float;False;Property;_SoftFalloff10;Soft-Falloff10;40;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;70;-433.1616,5934.14;Float;False;Property;_ColorDetect10;Color Detect 10;37;0;Create;True;0;0;False;2;Header(Color Set 10);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;65;12.5625,5235.802;Float;False;Property;_NewColor9;New Color 9;34;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;67;-337.6715,5826.27;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;87;813.8791,4614.259;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;73;-412.5078,6413.046;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;68;0.4976206,6000.299;Inherit;False;Color Mask;-1;;10;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;78;-525.4957,6811.574;Float;False;Property;_SoftFalloff11;Soft-Falloff11;44;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;88;773.8039,5268.794;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;69;17.85141,5824.338;Float;False;Property;_NewColor10;New Color 10;38;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;77;-524.4487,6714.162;Float;False;Property;_Range11;Range 11;43;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;76;-507.9979,6520.916;Float;False;Property;_ColorDetect11;Color Detect 11;41;0;Create;True;0;0;False;2;Header(Color Set 11);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;82;-468.2401,7199.664;Float;False;Property;_ColorDetect12;Color Detect 12;45;0;Create;True;0;0;False;2;Header(Color Set 12);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;75;-56.98492,6411.114;Float;False;Property;_NewColor11;New Color 11;42;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;79;-372.7501,7091.794;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;74;-74.33872,6587.075;Inherit;False;Color Mask;-1;;11;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;84;-481.2954,7490.322;Float;False;Property;_SoftFalloff12;Soft-Falloff12;48;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;89;776.0109,5895.867;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;83;-484.6909,7392.91;Float;False;Property;_Range12;Range 12;47;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;94;-378.8881,7698.069;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;93;-490.8289,7999.187;Float;False;Property;_Range13;Range 13;51;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;95;-472.9955,7805.94;Float;False;Property;_ColorDetect13;Color Detect 13;49;0;Create;True;0;0;False;2;Header(Color Set 13);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;92;-491.8761,8096.597;Float;False;Property;_SoftFalloff13;Soft-Falloff13;52;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;81;-17.22696,7089.862;Float;False;Property;_NewColor12;New Color 12;46;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;80;-34.58092,7265.823;Inherit;False;Color Mask;-1;;12;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;90;672.9373,6479.953;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;99;-519.5539,8368.924;Float;False;Property;_ColorDetect14;Color Detect 14;53;0;Create;True;0;0;False;2;Header(Color Set 14);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;91;691.4374,7148.614;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;96;-23.36478,7696.137;Float;False;Property;_NewColor13;New Color 13;50;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;97;-40.71879,7872.098;Inherit;False;Color Mask;-1;;13;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;102;-537.3873,8562.17;Float;False;Property;_Range14;Range 14;55;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;103;-425.4464,8261.053;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;105;-535.5588,8656.706;Float;False;Property;_SoftFalloff14;Soft-Falloff14;56;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;112;-610.5729,9253.96;Float;False;Property;_SoftFalloff15;Soft-Falloff15;60;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;98;685.3019,7754.889;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;100;-69.92332,8259.121;Float;False;Property;_NewColor14;New Color 14;54;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;111;-609.5258,9156.548;Float;False;Property;_Range15;Range 15;59;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;110;-591.6925,8965.263;Float;False;Property;_ColorDetect15;Color Detect 15;57;0;Create;True;0;0;False;2;Header(Color Set 15);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;107;-497.5849,8855.432;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;104;-87.27734,8435.082;Inherit;False;Color Mask;-1;;14;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;113;-531.5012,9464.45;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;118;-644.489,9862.979;Float;False;Property;_SoftFalloff16;Soft-Falloff16;64;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;108;-159.4161,9029.46;Inherit;False;Color Mask;-1;;15;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;117;-643.4419,9765.566;Float;False;Property;_Range16;Range 16;63;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;101;638.7433,8317.873;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;116;-625.6086,9572.32;Float;False;Property;_ColorDetect16;Color Detect 16;61;0;Create;True;0;0;False;2;Header(Color Set 16);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;109;-142.0621,8853.5;Float;False;Property;_NewColor15;New Color 15;58;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;114;-193.3325,9638.479;Inherit;False;Color Mask;-1;;16;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;106;566.6042,8912.251;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;115;-175.9785,9462.519;Float;False;Property;_NewColor16;New Color 16;62;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;254;1756.129,83.3298;Inherit;False;2034.149;10173.18;Comment;114;122;135;126;125;121;124;134;120;128;138;139;137;123;133;146;143;142;147;154;145;136;155;150;151;141;163;149;158;144;159;162;153;152;170;166;171;157;167;161;165;160;175;180;169;179;176;184;168;178;183;188;174;187;186;177;182;191;192;196;195;203;200;190;199;204;185;194;202;207;198;211;212;193;208;219;210;216;215;206;220;201;240;238;209;214;218;223;241;239;244;217;243;227;222;245;249;226;231;247;224;248;242;246;251;230;235;252;253;228;250;232;234;236;129;Second 16;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;119;532.6883,9521.27;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;125;1807.176,524.6577;Float;False;Property;_Range17;Range 17;67;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;126;1806.129,621.0699;Float;False;Property;_SoftFalloff17;Soft-Falloff17;68;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;121;1919.117,223.5407;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;122;1825.009,329.4114;Float;False;Property;_ColorDetect17;Color Detect 17;65;0;Create;True;0;0;False;2;Header(Color Set 17);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;127;813.1411,9534.637;Inherit;False;Result16samples;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;124;2274.639,221.6089;Float;False;Property;_NewColor17;New Color 17;66;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;120;2257.285,397.5696;Inherit;False;Color Mask;-1;;17;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;138;1816.327,1098.28;Float;False;Property;_Range18;Range 18;71;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;139;1815.28,1196.692;Float;False;Property;_SoftFalloff18;Soft-Falloff18;72;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;128;2620.409,133.3298;Inherit;False;127;Result16samples;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;134;1928.267,797.1634;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;135;1834.16,903.0342;Float;False;Property;_ColorDetect18;Color Detect 18;69;0;Create;True;0;0;False;2;Header(Color Set 18);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;146;1899.207,1771.573;Float;False;Property;_Range19;Range 19;75;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;133;2266.436,971.1921;Inherit;False;Color Mask;-1;;18;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;137;2283.79,795.2313;Float;False;Property;_NewColor18;New Color 18;70;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;147;1897.16,1868.984;Float;False;Property;_SoftFalloff19;Soft-Falloff19;76;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;143;1916.04,1577.327;Float;False;Property;_ColorDetect19;Color Detect 19;73;0;Create;True;0;0;False;2;Header(Color Set 19);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;123;2983.307,280.3601;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;142;2010.148,1469.456;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;141;2348.316,1643.485;Inherit;False;Color Mask;-1;;19;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;151;1925.191,2151.948;Float;False;Property;_ColorDetect20;Color Detect 20;77;0;Create;True;0;0;False;2;Header(Color Set 20);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;155;1908.586,2441.606;Float;False;Property;_SoftFalloff20;Soft-Falloff20;80;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;154;1907.357,2345.394;Float;False;Property;_Range20;Range 20;79;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;136;2992.458,853.9822;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;150;2019.298,2043.077;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;145;2365.67,1467.524;Float;False;Property;_NewColor19;New Color 19;74;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;162;1935.405,3040.917;Float;False;Property;_Range21;Range 21;83;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;149;2357.468,2217.106;Inherit;False;Color Mask;-1;;20;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;159;1953.238,2847.671;Float;False;Property;_ColorDetect21;Color Detect 21;81;0;Create;True;0;0;False;2;Header(Color Set 21);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;158;2047.346,2739.8;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;144;3074.339,1526.275;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;163;1934.358,3138.328;Float;False;Property;_SoftFalloff21;Soft-Falloff21;84;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;153;2374.821,2041.146;Float;False;Property;_NewColor20;New Color 20;78;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;167;1960.389,3423.292;Float;False;Property;_ColorDetect22;Color Detect 22;85;0;Create;True;0;0;False;2;Header(Color Set 22);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;166;2056.496,3313.42;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;157;2385.514,2913.829;Inherit;False;Color Mask;-1;;21;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;170;1944.555,3616.537;Float;False;Property;_Range22;Range 22;87;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;161;2402.868,2737.868;Float;False;Property;_NewColor21;New Color 21;82;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;171;1943.509,3714.225;Float;False;Property;_SoftFalloff22;Soft-Falloff22;88;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;152;3083.491,2099.896;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;175;2049.341,4002.761;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;160;3111.538,2796.619;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;179;1936.199,4303.878;Float;False;Property;_Range23;Range 23;91;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;169;2412.02,3311.489;Float;False;Property;_NewColor22;New Color 22;86;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;165;2394.666,3487.45;Inherit;False;Color Mask;-1;;22;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;176;1955.233,4110.632;Float;False;Property;_ColorDetect23;Color Detect 23;89;0;Create;True;0;0;False;2;Header(Color Set 22);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;180;1938.693,4401.29;Float;False;Property;_SoftFalloff23;Soft-Falloff23;92;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;188;1944.504,4973.912;Float;False;Property;_SoftFalloff24;Soft-Falloff24;96;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;178;2404.863,4000.829;Float;False;Property;_NewColor23;New Color 23;90;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;184;1961.384,4684.255;Float;False;Property;_ColorDetect24;Color Detect 24;93;0;Create;True;0;0;False;2;Header(Color Set 24);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;187;1944.149,4877.5;Float;False;Property;_Range24;Range 24;95;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;183;2058.491,4576.384;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;168;3120.691,3370.24;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;174;2387.509,4176.79;Inherit;False;Color Mask;-1;;23;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;191;2140.371,5248.677;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;186;2414.013,4574.451;Float;False;Property;_NewColor24;New Color 24;94;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;192;2046.264,5356.548;Float;False;Property;_ColorDetect25;Color Detect25;97;0;Create;True;0;0;False;2;Header(Color Set 25);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;195;2028.431,5549.794;Float;False;Property;_Range25;Range 25;99;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;196;2027.384,5647.205;Float;False;Property;_SoftFalloff25;Soft-Falloff25;100;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;177;3113.53,4059.58;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;182;2396.66,4750.412;Inherit;False;Color Mask;-1;;24;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;200;2055.415,5930.169;Float;False;Property;_ColorDetect26;Color Detect 26;101;0;Create;True;0;0;False;2;Header(Color Set 26);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;185;3122.681,4633.202;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;199;2149.521,5822.297;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;190;2478.54,5422.706;Inherit;False;Color Mask;-1;;25;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;203;2037.581,6123.414;Float;False;Property;_Range26;Range 26;103;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;204;2036.535,6220.827;Float;False;Property;_SoftFalloff26;Soft-Falloff26;104;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;194;2495.893,5246.745;Float;False;Property;_NewColor25;New Color 25;98;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;208;2083.461,6626.892;Float;False;Property;_ColorDetect27;Color Detect 27;105;0;Create;True;0;0;False;2;Header(Color Set 27);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;193;3204.562,5305.496;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;198;2487.692,5996.327;Inherit;False;Color Mask;-1;;26;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;207;2177.569,6519.021;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;202;2505.044,5820.366;Float;False;Property;_NewColor26;New Color 26;102;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;211;2065.628,6821.138;Float;False;Property;_Range27;Range 27;107;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;212;2064.582,6917.549;Float;False;Property;_SoftFalloff27;Soft-Falloff27;108;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;220;2073.732,7491.171;Float;False;Property;_SoftFalloff28;Soft-Falloff28;112;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;216;2091.612,7200.513;Float;False;Property;_ColorDetect28;Color Detect 28;109;0;Create;True;0;0;False;2;Header(Color Set 28);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;210;2533.092,6517.089;Float;False;Property;_NewColor27;New Color 27;106;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;215;2186.719,7092.641;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;201;3213.714,5879.117;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;206;2515.738,6693.05;Inherit;False;Color Mask;-1;;27;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;219;2074.778,7393.758;Float;False;Property;_Range28;Range 28;111;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;240;2057.441,8199.135;Float;False;Property;_Range29;Range 29;115;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;209;3241.761,6575.84;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;238;2074.274,8006.888;Float;False;Property;_ColorDetect29;Color Detect29;113;0;Create;True;0;0;False;2;Header(Color Set 29);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;218;2542.244,7090.71;Float;False;Property;_NewColor28;New Color 28;110;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;241;2055.394,8297.546;Float;False;Property;_SoftFalloff29;Soft-Falloff29;116;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;214;2524.89,7266.671;Inherit;False;Color Mask;-1;;28;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;223;2168.381,7899.018;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;222;2506.55,8073.046;Inherit;False;Color Mask;-1;;29;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;227;2177.531,8472.639;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;217;3250.914,7149.461;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;239;2523.903,7897.085;Float;False;Property;_NewColor29;New Color 29;114;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;243;2083.425,8580.511;Float;False;Property;_ColorDetect30;Color Detect 30;117;0;Create;True;0;0;False;2;Header(Color Set 30);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;245;2064.545,8871.168;Float;False;Property;_SoftFalloff30;Soft-Falloff30;120;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;244;2065.591,8773.755;Float;False;Property;_Range30;Range 30;119;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;247;2111.471,9277.232;Float;False;Property;_ColorDetect31;Color Detect 31;121;0;Create;True;0;0;False;2;Header(Color Set 31);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;226;2515.702,8646.668;Inherit;False;Color Mask;-1;;30;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;242;2530.677,8470.708;Float;False;Property;_NewColor30;New Color 30;118;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;248;2093.638,9472.681;Float;False;Property;_Range31;Range 31;123;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;249;2092.592,9567.89;Float;False;Property;_SoftFalloff31;Soft-Falloff31;124;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;224;3232.571,7955.836;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;231;2205.579,9169.361;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;228;3241.723,8529.459;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;246;2561.101,9167.431;Float;False;Property;_NewColor31;New Color 31;122;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;252;2102.788,10044.1;Float;False;Property;_Range32;Range 32;127;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;235;2214.729,9742.982;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;253;2101.742,10141.51;Float;False;Property;_SoftFalloff32;Soft-Falloff32;128;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;251;2121.729,9851.853;Float;False;Property;_ColorDetect32;Color Detect 32;125;0;Create;True;0;0;False;2;Header(Color Set 32);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;230;2543.748,9343.391;Inherit;False;Color Mask;-1;;31;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;250;2570.253,9741.052;Float;False;Property;_NewColor32;New Color 32;126;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;234;2552.899,9917.012;Inherit;False;Color Mask;-1;;32;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;232;3269.77,9226.181;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;236;3278.923,9799.802;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;129;3524.278,9794.223;Inherit;False;Result32Samples;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;263;4042.646,281.1865;Float;False;Property;_ColorDetect33;Color Detect 33;129;0;Create;True;0;0;False;2;Header(Color Set 33);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;265;4013.646,164.3163;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;262;4023.659,570.8437;Float;False;Property;_SoftFalloff33;Soft-Falloff33;132;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;264;4023.705,473.4335;Float;False;Property;_Range33;Range 33;131;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;266;4475.816,344.3456;Inherit;False;Color Mask;-1;;33;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;274;4114.426,1201.964;Float;False;Property;_Range34;Range 34;135;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;267;4483.17,171.3857;Float;False;Property;_NewColor33;New Color 33;130;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;273;4114.38,1299.374;Float;False;Property;_SoftFalloff34;Soft-Falloff34;136;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;269;4540.063,-147.4719;Inherit;False;129;Result32Samples;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;272;4132.225,1009.717;Float;False;Property;_ColorDetect34;Color Detect 34;133;0;Create;True;0;0;False;2;Header(Color Set 34);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;271;4104.368,892.8465;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;283;4071.708,1608.805;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;276;4566.537,1072.875;Inherit;False;Color Mask;-1;;34;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;282;4081.72,2015.332;Float;False;Property;_SoftFalloff35;Soft-Falloff35;140;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;284;4081.766,1917.922;Float;False;Property;_Range35;Range 35;139;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;268;5199.84,229.1357;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;275;4573.891,899.9158;Float;False;Property;_NewColor34;New Color 34;134;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;279;4099.564,1725.675;Float;False;Property;_ColorDetect35;Color Detect 35;137;0;Create;True;0;0;False;2;Header(Color Set 35);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;280;4541.23,1615.874;Float;False;Property;_NewColor35;New Color 35;138;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;278;4533.876,1788.833;Inherit;False;Color Mask;-1;;35;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;287;4086.585,2382.878;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;291;4114.441,2499.748;Float;False;Property;_ColorDetect36;Color Detect 36;141;0;Create;True;0;0;False;2;Header(Color Set 36);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;290;4096.597,2789.405;Float;False;Property;_SoftFalloff36;Soft-Falloff36;144;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;285;4096.644,2691.995;Float;False;Property;_Range36;Range 36;143;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;277;5290.561,957.6658;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;289;4548.753,2562.906;Inherit;False;Color Mask;-1;;36;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;286;4556.107,2389.947;Float;False;Property;_NewColor36;New Color 36;142;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;295;4096.277,3686.069;Float;False;Property;_SoftFalloff37;Soft-Falloff37;148;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;281;5257.9,1673.624;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;294;4086.265,3278.542;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;292;4114.121,3396.412;Float;False;Property;_ColorDetect37;Color Detect 37;145;0;Create;True;0;0;False;2;Header(Color Set 37);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;293;4096.324,3587.659;Float;False;Property;_Range37;Range 37;147;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;305;4190.351,4394.303;Float;False;Property;_SoftFalloff38;Soft-Falloff38;152;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;297;4555.787,3285.611;Float;False;Property;_NewColor37;New Color 37;146;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;301;4208.194,4104.646;Float;False;Property;_ColorDetect38;Color Detect 38;149;0;Create;True;0;0;False;2;Header(Color Set 38);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;288;5272.777,2447.697;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;302;4180.339,3986.775;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;296;4548.433,3458.57;Inherit;False;Color Mask;-1;;37;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;304;4190.397,4295.893;Float;False;Property;_Range38;Range 38;151;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;312;4203.415,5085.38;Float;False;Property;_Range39;Range 39;155;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;306;4203.369,5183.791;Float;False;Property;_SoftFalloff39;Soft-Falloff39;156;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;309;4193.356,4776.262;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;298;5214.808,3355.588;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;300;4642.507,4166.803;Inherit;False;Color Mask;-1;;38;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;303;4649.86,3993.844;Float;False;Property;_NewColor38;New Color 38;150;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;311;4221.212,4894.133;Float;False;Property;_ColorDetect39;Color Detect 39;153;0;Create;True;0;0;False;2;Header(Color Set 39);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;308;4655.524,4956.291;Inherit;False;Color Mask;-1;;39;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;310;4662.877,4783.332;Float;False;Property;_NewColor39;New Color 39;154;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;299;5308.882,4063.821;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;313;4238.721,6017.979;Float;False;Property;_Range40;Range 40;159;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;315;4228.662,5708.861;Inherit;False;56;InputMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;319;4238.675,6116.39;Float;False;Property;_SoftFalloff40;Soft-Falloff40;160;0;Create;True;0;0;False;0;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;318;4256.518,5826.732;Float;False;Property;_ColorDetect40;Color Detect 40;157;0;Create;True;0;0;False;2;Header(Color Set 40);Space(8);0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;316;4690.83,5888.89;Inherit;False;Color Mask;-1;;40;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;314;4698.183,5715.931;Float;False;Property;_NewColor40;New Color 40;158;0;Create;True;0;0;False;0;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;307;5321.899,4853.308;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;317;5357.205,5785.907;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;270;5674.324,5802.536;Inherit;False;T_40Samples;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;131;211.0242,-693.8962;Inherit;False;AlphaFromTexture;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;60;1326.028,-1110.679;Inherit;False;1640.124;646.1591;Final Pass;6;132;39;130;2;17;18;Final OUTPUT;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;132;1399.378,-896.2029;Inherit;False;131;AlphaFromTexture;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;130;1408.457,-792.7515;Inherit;False;270;T_40Samples;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;951.3533,-976.8531;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;1766.127,-869.9786;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;18;1968.875,-760.119;Float;False;Property;_OverallEffect;OverallEffect;0;0;Create;True;0;0;False;0;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;17;2405.684,-1029.853;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;2720.613,-1049.842;Float;False;True;-1;2;ASEMaterialInspector;0;4;ColorSwap/SpriteColorSwap40Color;5056123faa0c79b47ab6ad7e8bf059a4;True;Default;0;0;Default;2;True;2;5;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;True;2;False;-1;True;True;True;True;True;0;True;-9;True;True;0;True;-5;255;True;-8;255;True;-7;0;True;-4;0;True;-6;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;0;False;-1;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;0
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
WireConnection;26;0;15;0
WireConnection;26;1;23;0
WireConnection;26;2;24;0
WireConnection;31;1;256;0
WireConnection;31;3;28;0
WireConnection;31;4;29;0
WireConnection;31;5;27;0
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
WireConnection;85;0;38;0
WireConnection;85;1;44;0
WireConnection;85;2;43;0
WireConnection;45;1;58;0
WireConnection;45;3;47;0
WireConnection;45;4;48;0
WireConnection;45;5;49;0
WireConnection;86;0;85;0
WireConnection;86;1;46;0
WireConnection;86;2;45;0
WireConnection;50;1;59;0
WireConnection;50;3;52;0
WireConnection;50;4;53;0
WireConnection;50;5;54;0
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
WireConnection;91;0;90;0
WireConnection;91;1;81;0
WireConnection;91;2;80;0
WireConnection;97;1;94;0
WireConnection;97;3;95;0
WireConnection;97;4;93;0
WireConnection;97;5;92;0
WireConnection;98;0;91;0
WireConnection;98;1;96;0
WireConnection;98;2;97;0
WireConnection;104;1;103;0
WireConnection;104;3;99;0
WireConnection;104;4;102;0
WireConnection;104;5;105;0
WireConnection;108;1;107;0
WireConnection;108;3;110;0
WireConnection;108;4;111;0
WireConnection;108;5;112;0
WireConnection;101;0;98;0
WireConnection;101;1;100;0
WireConnection;101;2;104;0
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
WireConnection;120;1;121;0
WireConnection;120;3;122;0
WireConnection;120;4;125;0
WireConnection;120;5;126;0
WireConnection;133;1;134;0
WireConnection;133;3;135;0
WireConnection;133;4;138;0
WireConnection;133;5;139;0
WireConnection;123;0;128;0
WireConnection;123;1;124;0
WireConnection;123;2;120;0
WireConnection;141;1;142;0
WireConnection;141;3;143;0
WireConnection;141;4;146;0
WireConnection;141;5;147;0
WireConnection;136;0;123;0
WireConnection;136;1;137;0
WireConnection;136;2;133;0
WireConnection;149;1;150;0
WireConnection;149;3;151;0
WireConnection;149;4;154;0
WireConnection;149;5;155;0
WireConnection;144;0;136;0
WireConnection;144;1;145;0
WireConnection;144;2;141;0
WireConnection;157;1;158;0
WireConnection;157;3;159;0
WireConnection;157;4;162;0
WireConnection;157;5;163;0
WireConnection;152;0;144;0
WireConnection;152;1;153;0
WireConnection;152;2;149;0
WireConnection;160;0;152;0
WireConnection;160;1;161;0
WireConnection;160;2;157;0
WireConnection;165;1;166;0
WireConnection;165;3;167;0
WireConnection;165;4;170;0
WireConnection;165;5;171;0
WireConnection;168;0;160;0
WireConnection;168;1;169;0
WireConnection;168;2;165;0
WireConnection;174;1;175;0
WireConnection;174;3;176;0
WireConnection;174;4;179;0
WireConnection;174;5;180;0
WireConnection;177;0;168;0
WireConnection;177;1;178;0
WireConnection;177;2;174;0
WireConnection;182;1;183;0
WireConnection;182;3;184;0
WireConnection;182;4;187;0
WireConnection;182;5;188;0
WireConnection;185;0;177;0
WireConnection;185;1;186;0
WireConnection;185;2;182;0
WireConnection;190;1;191;0
WireConnection;190;3;192;0
WireConnection;190;4;195;0
WireConnection;190;5;196;0
WireConnection;193;0;185;0
WireConnection;193;1;194;0
WireConnection;193;2;190;0
WireConnection;198;1;199;0
WireConnection;198;3;200;0
WireConnection;198;4;203;0
WireConnection;198;5;204;0
WireConnection;201;0;193;0
WireConnection;201;1;202;0
WireConnection;201;2;198;0
WireConnection;206;1;207;0
WireConnection;206;3;208;0
WireConnection;206;4;211;0
WireConnection;206;5;212;0
WireConnection;209;0;201;0
WireConnection;209;1;210;0
WireConnection;209;2;206;0
WireConnection;214;1;215;0
WireConnection;214;3;216;0
WireConnection;214;4;219;0
WireConnection;214;5;220;0
WireConnection;222;1;223;0
WireConnection;222;3;238;0
WireConnection;222;4;240;0
WireConnection;222;5;241;0
WireConnection;217;0;209;0
WireConnection;217;1;218;0
WireConnection;217;2;214;0
WireConnection;226;1;227;0
WireConnection;226;3;243;0
WireConnection;226;4;244;0
WireConnection;226;5;245;0
WireConnection;224;0;217;0
WireConnection;224;1;239;0
WireConnection;224;2;222;0
WireConnection;228;0;224;0
WireConnection;228;1;242;0
WireConnection;228;2;226;0
WireConnection;230;1;231;0
WireConnection;230;3;247;0
WireConnection;230;4;248;0
WireConnection;230;5;249;0
WireConnection;234;1;235;0
WireConnection;234;3;251;0
WireConnection;234;4;252;0
WireConnection;234;5;253;0
WireConnection;232;0;228;0
WireConnection;232;1;246;0
WireConnection;232;2;230;0
WireConnection;236;0;232;0
WireConnection;236;1;250;0
WireConnection;236;2;234;0
WireConnection;129;0;236;0
WireConnection;266;1;265;0
WireConnection;266;3;263;0
WireConnection;266;4;264;0
WireConnection;266;5;262;0
WireConnection;276;1;271;0
WireConnection;276;3;272;0
WireConnection;276;4;274;0
WireConnection;276;5;273;0
WireConnection;268;0;269;0
WireConnection;268;1;267;0
WireConnection;268;2;266;0
WireConnection;278;1;283;0
WireConnection;278;3;279;0
WireConnection;278;4;284;0
WireConnection;278;5;282;0
WireConnection;277;0;268;0
WireConnection;277;1;275;0
WireConnection;277;2;276;0
WireConnection;289;1;287;0
WireConnection;289;3;291;0
WireConnection;289;4;285;0
WireConnection;289;5;290;0
WireConnection;281;0;277;0
WireConnection;281;1;280;0
WireConnection;281;2;278;0
WireConnection;288;0;281;0
WireConnection;288;1;286;0
WireConnection;288;2;289;0
WireConnection;296;1;294;0
WireConnection;296;3;292;0
WireConnection;296;4;293;0
WireConnection;296;5;295;0
WireConnection;298;0;288;0
WireConnection;298;1;297;0
WireConnection;298;2;296;0
WireConnection;300;1;302;0
WireConnection;300;3;301;0
WireConnection;300;4;304;0
WireConnection;300;5;305;0
WireConnection;308;1;309;0
WireConnection;308;3;311;0
WireConnection;308;4;312;0
WireConnection;308;5;306;0
WireConnection;299;0;298;0
WireConnection;299;1;303;0
WireConnection;299;2;300;0
WireConnection;316;1;315;0
WireConnection;316;3;318;0
WireConnection;316;4;313;0
WireConnection;316;5;319;0
WireConnection;307;0;299;0
WireConnection;307;1;310;0
WireConnection;307;2;308;0
WireConnection;317;0;307;0
WireConnection;317;1;314;0
WireConnection;317;2;316;0
WireConnection;270;0;317;0
WireConnection;131;0;3;4
WireConnection;19;0;3;0
WireConnection;19;1;3;4
WireConnection;39;0;132;0
WireConnection;39;1;130;0
WireConnection;17;0;19;0
WireConnection;17;1;39;0
WireConnection;17;2;18;0
WireConnection;2;0;17;0
ASEEND*/
//CHKSM=CE6C8C27475B2D05F9D1ADB1540135470B4C1E87
// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/ColorSwap_SMG_CutColor"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_OverallEffect("OverallEffect", Range( 0 , 1)) = 1
		[Header(Main Texture)][Space(10)]_AlbedoTextureCutoutAlpha("Albedo Texture - Cutout (Alpha)", 2D) = "black" {}
		[Header(Color Set 1)][Space(6)]_ColorDetect1("ColorDetect1", Color) = (0,0,0,1)
		_NewColor1("NewColor1", Color) = (1,0.8482759,0,1)
		_Range1("Range1", Range( 0 , 1)) = 0.2
		_Soft_FallOff1("Soft_FallOff1", Range( 0 , 1)) = 0.2
		[Header(Color Set 2)][Space(6)]_ColorDetect2("ColorDetect2", Color) = (0,1,0.213793,1)
		_NewColor2("NewColor2", Color) = (0,1,0.9172413,1)
		_Range2("Range2", Range( 0 , 1)) = 0.2
		_Soft_FallOff2("Soft_FallOff2", Range( 0 , 1)) = 0.2
		_MakeColor2Glow("MakeColor2Glow", Range( 0 , 1)) = 0
		[Header(Color Set 3)][Space(6)]_ColorDetect3("ColorDetect3", Color) = (0,0.5862067,1,1)
		_NewColor3("NewColor3", Color) = (0,0.1724138,1,0)
		_Range3("Range3", Range( 0 , 1)) = 0.2
		_Soft_FallOff3("Soft_FallOff3", Range( 0 , 1)) = 0.2
		_MakeColor3Vanish("MakeColor3Vanish", Range( 0 , 1)) = 0
		[Header(Color Set 4)][Space(6)]_ColorDetect4("ColorDetect4", Color) = (0.5310345,0,1,1)
		_NewColor4("NewColor4", Color) = (0.986207,0,1,1)
		_Range4("Range4", Range( 0 , 1)) = 0.2
		_Soft_FallOff4("Soft_FallOff4", Range( 0 , 1)) = 0.2
		_ExtraGloss_FromColor4("ExtraGloss_FromColor4", Range( 0 , 1)) = 0
		[Header(Color Set 5)][Space(6)]_ColorDetect5("ColorDetect5", Color) = (1,0,0.3517241,1)
		_NewColor5("NewColor5", Color) = (1,0.2689655,0,1)
		_Range5("Range5", Range( 0 , 1)) = 0.2
		_Soft_FallOff5("Soft_FallOff5", Range( 0 , 1)) = 0.2
		_ExtraMetal_FromColor5("ExtraMetal_FromColor5", Range( 0 , 1)) = 0
		_NormalMap("NormalMap", 2D) = "bump" {}
		_MetalGloss("Metal-Gloss", 2D) = "black" {}
		_AO_Map("AO_Map", 2D) = "white" {}
		_AO_Power("AO_Power", Range( 0 , 2)) = 0
		_ProtectionMaskR("ProtectionMask(R)", 2D) = "white" {}
		_ProtectionLevel("ProtectionLevel", Range( 0 , 1)) = 1
		_OverrideGloss("OverrideGloss", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _NormalMap;
		uniform float4 _NormalMap_ST;
		uniform sampler2D _AlbedoTextureCutoutAlpha;
		uniform float4 _AlbedoTextureCutoutAlpha_ST;
		uniform float4 _NewColor1;
		uniform sampler2D _ProtectionMaskR;
		uniform float4 _ProtectionMaskR_ST;
		uniform float4 _ColorDetect1;
		uniform float _Range1;
		uniform float _Soft_FallOff1;
		uniform float4 _NewColor2;
		uniform float4 _ColorDetect2;
		uniform float _Range2;
		uniform float _Soft_FallOff2;
		uniform float4 _NewColor3;
		uniform float4 _ColorDetect3;
		uniform float _Range3;
		uniform float _Soft_FallOff3;
		uniform float4 _NewColor4;
		uniform float _ProtectionLevel;
		uniform float4 _ColorDetect4;
		uniform float _Range4;
		uniform float _Soft_FallOff4;
		uniform float4 _NewColor5;
		uniform float4 _ColorDetect5;
		uniform float _Range5;
		uniform float _Soft_FallOff5;
		uniform float _OverallEffect;
		uniform sampler2D _AO_Map;
		uniform float4 _AO_Map_ST;
		uniform float _AO_Power;
		uniform float _MakeColor2Glow;
		uniform sampler2D _MetalGloss;
		uniform float4 _MetalGloss_ST;
		uniform float _ExtraMetal_FromColor5;
		uniform float _OverrideGloss;
		uniform float _ExtraGloss_FromColor4;
		uniform float _MakeColor3Vanish;
		uniform float _Cutoff = 0.5;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_NormalMap = i.uv_texcoord * _NormalMap_ST.xy + _NormalMap_ST.zw;
			o.Normal = UnpackNormal( tex2D( _NormalMap, uv_NormalMap ) );
			float2 uv_AlbedoTextureCutoutAlpha = i.uv_texcoord * _AlbedoTextureCutoutAlpha_ST.xy + _AlbedoTextureCutoutAlpha_ST.zw;
			float4 tex2DNode121 = tex2D( _AlbedoTextureCutoutAlpha, uv_AlbedoTextureCutoutAlpha );
			float2 uv_ProtectionMaskR = i.uv_texcoord * _ProtectionMaskR_ST.xy + _ProtectionMaskR_ST.zw;
			float4 tex2DNode119 = tex2D( _ProtectionMaskR, uv_ProtectionMaskR );
			float temp_output_70_0 = ( tex2DNode119.r * saturate( ( 1.0 - ( ( distance( _ColorDetect1.rgb , tex2DNode121.rgb ) - _Range1 ) / max( _Soft_FallOff1 , 1E-05 ) ) ) ) );
			float4 lerpResult120 = lerp( tex2DNode121 , _NewColor1 , temp_output_70_0);
			float temp_output_69_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect2.rgb , tex2DNode121.rgb ) - _Range2 ) / max( _Soft_FallOff2 , 1E-05 ) ) ) );
			float temp_output_71_0 = ( tex2DNode119.r * temp_output_69_0 );
			float4 lerpResult88 = lerp( lerpResult120 , _NewColor2 , temp_output_71_0);
			float temp_output_68_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect3.rgb , tex2DNode121.rgb ) - _Range3 ) / max( _Soft_FallOff3 , 1E-05 ) ) ) );
			float temp_output_72_0 = ( tex2DNode119.r * temp_output_68_0 );
			float4 lerpResult94 = lerp( lerpResult88 , _NewColor3 , temp_output_72_0);
			float3 temp_cast_6 = (tex2DNode119.r).xxx;
			float temp_output_2_0_g41 = _ProtectionLevel;
			float temp_output_3_0_g41 = ( 1.0 - temp_output_2_0_g41 );
			float3 appendResult7_g41 = (float3(temp_output_3_0_g41 , temp_output_3_0_g41 , temp_output_3_0_g41));
			float3 temp_output_86_0 = ( ( temp_cast_6 * temp_output_2_0_g41 ) + appendResult7_g41 );
			float temp_output_84_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect4.rgb , tex2DNode121.rgb ) - _Range4 ) / max( _Soft_FallOff4 , 1E-05 ) ) ) );
			float4 lerpResult98 = lerp( lerpResult94 , _NewColor4 , float4( ( temp_output_86_0 * temp_output_84_0 ) , 0.0 ));
			float temp_output_95_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect5.rgb , tex2DNode121.rgb ) - _Range5 ) / max( _Soft_FallOff5 , 1E-05 ) ) ) );
			float4 lerpResult102 = lerp( lerpResult98 , _NewColor5 , float4( ( temp_output_86_0 * temp_output_95_0 ) , 0.0 ));
			float4 lerpResult110 = lerp( tex2DNode121 , lerpResult102 , _OverallEffect);
			float2 uv_AO_Map = i.uv_texcoord * _AO_Map_ST.xy + _AO_Map_ST.zw;
			float4 temp_cast_13 = (_AO_Power).xxxx;
			o.Albedo = ( lerpResult110 * pow( tex2D( _AO_Map, uv_AO_Map ) , temp_cast_13 ) ).rgb;
			o.Emission = ( temp_output_69_0 * _MakeColor2Glow * _NewColor2 ).rgb;
			float2 uv_MetalGloss = i.uv_texcoord * _MetalGloss_ST.xy + _MetalGloss_ST.zw;
			float4 tex2DNode91 = tex2D( _MetalGloss, uv_MetalGloss );
			float3 clampResult123 = clamp( ( tex2DNode91.r + ( temp_output_86_0 * _ExtraMetal_FromColor5 * temp_output_95_0 ) ) , float3( 0,0,0 ) , float3( 1,1,1 ) );
			o.Metallic = clampResult123.x;
			float clampResult87 = clamp( ( temp_output_70_0 + temp_output_71_0 + temp_output_72_0 ) , 0.0 , 1.0 );
			float lerpResult99 = lerp( tex2DNode91.a , _OverrideGloss , ( clampResult87 * _OverrideGloss * tex2DNode119.r ));
			float3 temp_cast_17 = (lerpResult99).xxx;
			float3 temp_output_97_0 = ( temp_output_84_0 * _ExtraGloss_FromColor4 * temp_output_86_0 );
			float3 lerpResult109 = lerp( temp_cast_17 , temp_output_97_0 , temp_output_97_0);
			float3 temp_output_104_0 = ( temp_output_95_0 * temp_output_86_0 * _ExtraMetal_FromColor5 );
			float3 lerpResult114 = lerp( lerpResult109 , temp_output_104_0 , temp_output_104_0);
			float3 clampResult124 = clamp( lerpResult114 , float3( 0,0,0 ) , float3( 1,1,1 ) );
			o.Smoothness = clampResult124.x;
			o.Alpha = 1;
			float lerpResult134 = lerp( tex2DNode121.a , ( tex2DNode121.a * ( 1.0 - temp_output_68_0 ) ) , _MakeColor3Vanish);
			float FinalCutout129 = lerpResult134;
			clip( FinalCutout129 - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=17000
7;29;1906;1014;3018.884;1224.323;3.993194;True;True
Node;AmplifyShaderEditor.ColorNode;59;-2904.662,-125.689;Float;False;Property;_ColorDetect2;ColorDetect2;7;0;Create;True;0;0;False;2;Header(Color Set 2);Space(6);0,1,0.213793,1;0.3698097,0.6985294,0.4128833,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;65;-2926.321,-209.1363;Float;False;Property;_Range1;Range1;5;0;Create;True;0;0;False;0;0.2;0.09;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;63;-2921.036,315.1362;Float;False;Property;_Range2;Range2;9;0;Create;True;0;0;False;0;0.2;0.186;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;-2926.451,-450.704;Float;False;Property;_Soft_FallOff1;Soft_FallOff1;6;0;Create;True;0;0;False;0;0.2;0.139;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;62;-2906.303,55.55741;Float;False;Property;_Soft_FallOff2;Soft_FallOff2;10;0;Create;True;0;0;False;0;0.2;0.233;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;66;-2917.144,641.6444;Float;False;Property;_Soft_FallOff3;Soft_FallOff3;15;0;Create;True;0;0;False;0;0.2;0.355;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;61;-2894.882,422.6719;Float;False;Property;_ColorDetect3;ColorDetect3;12;0;Create;True;0;0;False;2;Header(Color Set 3);Space(6);0,0.5862067,1,1;0.2280494,0.2794118,0.05341696,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;64;-2906.813,889.6985;Float;False;Property;_Range3;Range3;14;0;Create;True;0;0;False;0;0.2;0.317;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;58;-2935.908,-614.2687;Float;False;Property;_ColorDetect1;ColorDetect1;3;0;Create;True;0;0;False;2;Header(Color Set 1);Space(6);0,0,0,1;0.1686275,0.1647059,0.1098039,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;121;-3003.153,-867.4347;Float;True;Property;_AlbedoTextureCutoutAlpha;Albedo Texture - Cutout (Alpha);2;0;Create;True;0;0;False;2;Header(Main Texture);Space(10);None;87ae3159010e2b14fb9aaa521344b200;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;69;-2351.308,-173.1122;Float;False;Color Mask;-1;;37;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;67;-2431.792,-490.4125;Float;False;Color Mask;-1;;38;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;68;-2374.375,212.9575;Float;False;Color Mask;-1;;39;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;119;-2959.261,-1183.777;Float;True;Property;_ProtectionMaskR;ProtectionMask(R);31;0;Create;True;0;0;False;0;None;6e4cb514e40c13a498d3132d787fcd75;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;70;-2090.459,-546.4093;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;71;-1958.91,-202.8869;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;73;-2897.975,-372.0543;Float;False;Property;_NewColor1;NewColor1;4;0;Create;True;0;0;False;0;1,0.8482759,0,1;0.07088018,0.1021015,0.4191176,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;72;-1868.853,31.17035;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;120;-1922.301,-746.7986;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;78;-2934.114,1472.873;Float;False;Property;_Range4;Range4;19;0;Create;True;0;0;False;0;0.2;0.102;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;76;-2904.533,961.8414;Float;False;Property;_ColorDetect4;ColorDetect4;17;0;Create;True;0;0;False;2;Header(Color Set 4);Space(6);0.5310345,0,1,1;0.51108,0.5735294,0.2066393,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;77;-2339.49,1246.854;Float;False;Property;_ProtectionLevel;ProtectionLevel;32;0;Create;True;0;0;False;0;1;0.856;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;79;-815.1159,358.7934;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;74;-2897.01,1138.159;Float;False;Property;_Soft_FallOff4;Soft_FallOff4;20;0;Create;True;0;0;False;0;0.2;0.185;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;75;-2899.609,152.6711;Float;False;Property;_NewColor2;NewColor2;8;0;Create;True;0;0;False;0;0,1,0.9172413,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;82;-2927.267,1555.281;Float;False;Property;_ColorDetect5;ColorDetect5;22;0;Create;True;0;0;False;2;Header(Color Set 5);Space(6);1,0,0.3517241,1;0.3705801,0.4191176,0.1602509,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;85;-698.2026,932.2345;Float;False;Property;_OverrideGloss;OverrideGloss;33;0;Create;True;0;0;False;0;0;0.518;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;88;-1715.833,-655.9371;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;84;-2280.18,883.7434;Float;False;Color Mask;-1;;40;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;81;-2899.935,2053.828;Float;False;Property;_Range5;Range5;24;0;Create;True;0;0;False;0;0.2;0.529;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;87;-416.5511,279.4138;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;86;-1947.87,1138.172;Float;False;Lerp White To;-1;;41;047d7c189c36a62438973bad9d37b1c2;0;2;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;80;-2920.418,1728.854;Float;False;Property;_Soft_FallOff5;Soft_FallOff5;25;0;Create;True;0;0;False;0;0.2;0.162;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;83;-2884.847,729.8324;Float;False;Property;_NewColor3;NewColor3;13;0;Create;True;0;0;False;0;0,0.1724138,1,0;0.9034483,1,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;91;-685.4776,659.8314;Float;True;Property;_MetalGloss;Metal-Gloss;28;0;Create;True;0;0;False;0;None;d415f222ceeabb84991e3e002808363e;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;95;-2236.657,1487.406;Float;False;Color Mask;-1;;42;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;89;-1565.485,563.7384;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;92;-2916.697,1391.471;Float;False;Property;_ExtraGloss_FromColor4;ExtraGloss_FromColor4;21;0;Create;True;0;0;False;0;0;0.738;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;94;-1525.333,-439.8527;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;133;-2040.358,248.1936;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;90;-249.9146,917.7235;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;93;-2920.686,1219.053;Float;False;Property;_NewColor4;NewColor4;18;0;Create;True;0;0;False;0;0.986207,0,1,1;0,0.3706895,0.6323529,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;101;-1627.778,919.6565;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;96;-2903.686,1805.294;Float;False;Property;_NewColor5;NewColor5;23;0;Create;True;0;0;False;0;1,0.2689655,0,1;0.08834343,0.5197991,0.6323529,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;100;-2908.024,1969.499;Float;False;Property;_ExtraMetal_FromColor5;ExtraMetal_FromColor5;26;0;Create;True;0;0;False;0;0;0.375;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;97;-1396.323,1295.815;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;126;-2394.402,449.0108;Float;False;Property;_MakeColor3Vanish;MakeColor3Vanish;16;0;Create;True;0;0;False;0;0;0.516;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;128;-1634.737,155.1868;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;99;-17.98342,862.5974;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;98;-1236.654,-443.6138;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;109;356.3346,932.5134;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;105;1203.681,612.9924;Float;True;Property;_AO_Map;AO_Map;29;0;Create;True;0;0;False;0;None;b1512e710af83424fb2193fb21241ecc;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;106;150.5156,692.2124;Float;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;104;-1333.152,1554.533;Float;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;134;-1391.631,183.6873;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;102;-1056.982,-255.7107;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;107;-972.4986,-158.1291;Float;False;Property;_OverallEffect;OverallEffect;1;0;Create;True;0;0;False;0;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;108;1216.368,888.3925;Float;False;Property;_AO_Power;AO_Power;30;0;Create;True;0;0;False;0;0;0.49;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;129;-1080.587,24.38966;Float;False;FinalCutout;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;122;1589.834,700.6255;Float;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;111;537.9825,583.2775;Float;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;131;-2395.111,30.47152;Float;False;Property;_MakeColor2Glow;MakeColor2Glow;11;0;Create;True;0;0;False;0;0;0.49;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;110;-610.4166,-437.1404;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;114;621.9246,952.5415;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;130;2312.753,625.2564;Float;False;129;FinalCutout;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;118;1474.993,396.4429;Float;True;Property;_NormalMap;NormalMap;27;0;Create;True;0;0;False;0;None;5ca6cfab780c1144dba9d5415ec814c7;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;132;-53.5893,7.076456;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;123;1863.478,522.2744;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;116;1861.094,289.0668;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;124;1923.001,597.3695;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2816.536,399.236;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;ColorSwap/ColorSwap_SMG_CutColor;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;69;1;121;0
WireConnection;69;3;59;0
WireConnection;69;4;63;0
WireConnection;69;5;62;0
WireConnection;67;1;121;0
WireConnection;67;3;58;0
WireConnection;67;4;65;0
WireConnection;67;5;60;0
WireConnection;68;1;121;0
WireConnection;68;3;61;0
WireConnection;68;4;64;0
WireConnection;68;5;66;0
WireConnection;70;0;119;1
WireConnection;70;1;67;0
WireConnection;71;0;119;1
WireConnection;71;1;69;0
WireConnection;72;0;119;1
WireConnection;72;1;68;0
WireConnection;120;0;121;0
WireConnection;120;1;73;0
WireConnection;120;2;70;0
WireConnection;79;0;70;0
WireConnection;79;1;71;0
WireConnection;79;2;72;0
WireConnection;88;0;120;0
WireConnection;88;1;75;0
WireConnection;88;2;71;0
WireConnection;84;1;121;0
WireConnection;84;3;76;0
WireConnection;84;4;78;0
WireConnection;84;5;74;0
WireConnection;87;0;79;0
WireConnection;86;1;119;1
WireConnection;86;2;77;0
WireConnection;95;1;121;0
WireConnection;95;3;82;0
WireConnection;95;4;81;0
WireConnection;95;5;80;0
WireConnection;89;0;86;0
WireConnection;89;1;84;0
WireConnection;94;0;88;0
WireConnection;94;1;83;0
WireConnection;94;2;72;0
WireConnection;133;0;68;0
WireConnection;90;0;87;0
WireConnection;90;1;85;0
WireConnection;90;2;119;1
WireConnection;101;0;86;0
WireConnection;101;1;95;0
WireConnection;97;0;84;0
WireConnection;97;1;92;0
WireConnection;97;2;86;0
WireConnection;128;0;121;4
WireConnection;128;1;133;0
WireConnection;99;0;91;4
WireConnection;99;1;85;0
WireConnection;99;2;90;0
WireConnection;98;0;94;0
WireConnection;98;1;93;0
WireConnection;98;2;89;0
WireConnection;109;0;99;0
WireConnection;109;1;97;0
WireConnection;109;2;97;0
WireConnection;106;0;86;0
WireConnection;106;1;100;0
WireConnection;106;2;95;0
WireConnection;104;0;95;0
WireConnection;104;1;86;0
WireConnection;104;2;100;0
WireConnection;134;0;121;4
WireConnection;134;1;128;0
WireConnection;134;2;126;0
WireConnection;102;0;98;0
WireConnection;102;1;96;0
WireConnection;102;2;101;0
WireConnection;129;0;134;0
WireConnection;122;0;105;0
WireConnection;122;1;108;0
WireConnection;111;0;91;1
WireConnection;111;1;106;0
WireConnection;110;0;121;0
WireConnection;110;1;102;0
WireConnection;110;2;107;0
WireConnection;114;0;109;0
WireConnection;114;1;104;0
WireConnection;114;2;104;0
WireConnection;132;0;69;0
WireConnection;132;1;131;0
WireConnection;132;2;75;0
WireConnection;123;0;111;0
WireConnection;116;0;110;0
WireConnection;116;1;122;0
WireConnection;124;0;114;0
WireConnection;0;0;116;0
WireConnection;0;1;118;0
WireConnection;0;2;132;0
WireConnection;0;3;123;0
WireConnection;0;4;124;0
WireConnection;0;10;130;0
ASEEND*/
//CHKSM=11E181A291D38CEF677DB6500B7ADA38D373DBA7
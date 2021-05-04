// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/ColorSwap_Basic"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_OverallEffect("OverallEffect", Range( 0 , 1)) = 1
		[Header(Base MetalGloss)][Space(10)]_BaseMetal("BaseMetal", Range( 0 , 1)) = 0
		_BaseGloss("BaseGloss", Range( 0 , 1)) = 0
		[Header(Main Texture)][Space(10)]_AlbedotextureCoutoutA("Albedo texture-Coutout(A)", 2D) = "black" {}
		[Header(Color Set1)][Space(6)]_ColorDetect1("ColorDetect1", Color) = (1,0,0,0)
		_NewColor1("NewColor1", Color) = (1,0.8482759,0,0)
		_Range1("Range1", Range( 0 , 1)) = 0.1
		_SoftFallOff1("Soft-FallOff1", Range( 0 , 1)) = 0.1
		_Gloss1("Gloss1", Range( 0 , 1)) = 0
		[Header(Color Set2)][Space(6)]_ColorDetect2("ColorDetect2", Color) = (0,1,0.213793,0.05882353)
		_NewColor2("NewColor2", Color) = (0,1,0.9172413,0)
		_Range2("Range2", Range( 0 , 1)) = 0.1
		_SoftFallOff2("Soft-FallOff2", Range( 0 , 1)) = 0.1
		_Gloss2("Gloss2", Range( 0 , 1)) = 0
		[Header(Color Set3)][Space(6)]_ColorDetect3("ColorDetect3", Color) = (0,1,0.213793,0.05882353)
		_NewColor3Metal("NewColor3-Metal", Color) = (0,1,0.9172413,0)
		_Range3("Range3", Range( 0 , 1)) = 0.1
		_SoftFallOff3("Soft-FallOff3", Range( 0 , 1)) = 0.1
		_Color3Metalness("Color3Metalness", Range( 0 , 1)) = 0.1
		[Header(Extras)][Space(6)]_OverallEmissive("OverallEmissive", Range( 0 , 1)) = 0.1
		_ProtectionMaskR("ProtectionMask(R)", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Transparent+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _AlbedotextureCoutoutA;
		uniform float4 _AlbedotextureCoutoutA_ST;
		uniform float4 _NewColor1;
		uniform sampler2D _ProtectionMaskR;
		uniform float4 _ProtectionMaskR_ST;
		uniform float4 _ColorDetect1;
		uniform float _Range1;
		uniform float _SoftFallOff1;
		uniform float4 _NewColor2;
		uniform float4 _ColorDetect2;
		uniform float _Range2;
		uniform float _SoftFallOff2;
		uniform float4 _NewColor3Metal;
		uniform float4 _ColorDetect3;
		uniform float _Range3;
		uniform float _SoftFallOff3;
		uniform float _OverallEffect;
		uniform float _OverallEmissive;
		uniform float _BaseMetal;
		uniform float _Color3Metalness;
		uniform float _BaseGloss;
		uniform float _Gloss1;
		uniform float _Gloss2;
		uniform float _Cutoff = 0.5;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_AlbedotextureCoutoutA = i.uv_texcoord * _AlbedotextureCoutoutA_ST.xy + _AlbedotextureCoutoutA_ST.zw;
			float4 tex2DNode1 = tex2D( _AlbedotextureCoutoutA, uv_AlbedotextureCoutoutA );
			float2 uv_ProtectionMaskR = i.uv_texcoord * _ProtectionMaskR_ST.xy + _ProtectionMaskR_ST.zw;
			float4 tex2DNode34 = tex2D( _ProtectionMaskR, uv_ProtectionMaskR );
			float temp_output_35_0 = ( tex2DNode34.r * saturate( ( 1.0 - ( ( distance( _ColorDetect1.rgb , tex2DNode1.rgb ) - _Range1 ) / max( _SoftFallOff1 , 1E-05 ) ) ) ) );
			float4 lerpResult12 = lerp( tex2DNode1 , _NewColor1 , temp_output_35_0);
			float temp_output_36_0 = ( tex2DNode34.r * saturate( ( 1.0 - ( ( distance( _ColorDetect2.rgb , tex2DNode1.rgb ) - _Range2 ) / max( _SoftFallOff2 , 1E-05 ) ) ) ) );
			float4 lerpResult17 = lerp( lerpResult12 , _NewColor2 , temp_output_36_0);
			float temp_output_37_0 = ( tex2DNode34.r * saturate( ( 1.0 - ( ( distance( _ColorDetect3.rgb , tex2DNode1.rgb ) - _Range3 ) / max( _SoftFallOff3 , 1E-05 ) ) ) ) );
			float4 lerpResult23 = lerp( lerpResult17 , _NewColor3Metal , temp_output_37_0);
			float4 lerpResult33 = lerp( tex2DNode1 , lerpResult23 , _OverallEffect);
			o.Albedo = lerpResult33.rgb;
			o.Emission = ( lerpResult33 * _OverallEmissive ).rgb;
			float lerpResult31 = lerp( _BaseMetal , _Color3Metalness , temp_output_37_0);
			o.Metallic = lerpResult31;
			float lerpResult24 = lerp( _BaseGloss , _Gloss1 , temp_output_35_0);
			float lerpResult25 = lerp( lerpResult24 , _Gloss2 , temp_output_36_0);
			float clampResult29 = clamp( lerpResult25 , 0.0 , 1.0 );
			o.Smoothness = clampResult29;
			o.Alpha = 1;
			clip( tex2DNode1.a - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16301
-12;120;1906;774;1631.228;749.8251;2.309098;True;False
Node;AmplifyShaderEditor.CommentaryNode;44;-1664,-256;Float;False;704.181;1960.987;Detecs and changes;15;38;11;3;14;16;40;4;20;42;19;15;39;21;41;43;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;45;-937.0266,-540.9468;Float;False;372.5887;513.9651;Main TYextures;2;1;34;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;38;-1600,80;Float;False;Property;_SoftFallOff1;Soft-FallOff1;8;0;Create;True;0;0;False;0;0.1;0.304;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-885.4379,-256.9818;Float;True;Property;_AlbedotextureCoutoutA;Albedo texture-Coutout(A);4;0;Create;True;0;0;False;2;Header(Main Texture);Space(10);None;58abbffd5580c8c4ca72949ced51bb90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;11;-1616,0;Float;False;Property;_Range1;Range1;7;0;Create;True;0;0;False;0;0.1;0.209;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;3;-1606.386,-195.5518;Float;False;Property;_ColorDetect1;ColorDetect1;5;0;Create;True;0;0;False;2;Header(Color Set1);Space(6);1,0,0,0;0.1240268,0.2279412,0.1677425,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;46;-462.0204,40.46365;Float;False;362.3872;811.0968;Color Mask nodes;3;10;13;18;;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;10;-412.0204,90.46365;Float;False;Color Mask;-1;;1;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;47;-60.32978,-317.0146;Float;False;1668.209;1529.299;Final gathering;14;35;36;37;17;23;32;24;26;33;25;27;29;31;12;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-1504,640;Float;False;Property;_SoftFallOff2;Soft-FallOff2;13;0;Create;True;0;0;False;0;0.1;0.39;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;34;-887.0266,-490.9468;Float;True;Property;_ProtectionMaskR;ProtectionMask(R);21;0;Create;True;0;0;False;0;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;14;-1600,400;Float;False;Property;_ColorDetect2;ColorDetect2;10;0;Create;True;0;0;False;2;Header(Color Set2);Space(6);0,1,0.213793,0.05882353;0.2615701,0.6029412,0.3345528,0.05882353;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;16;-1576.258,565.8839;Float;False;Property;_Range2;Range2;12;0;Create;True;0;0;False;0;0.1;0.177;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;35;-10.32978,-31.16654;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;13;-368.6332,376.9708;Float;False;Color Mask;-1;;2;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-1552,1376;Float;False;Property;_Range3;Range3;17;0;Create;True;0;0;False;0;0.1;0.356;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;4;-1616,160;Float;False;Property;_NewColor1;NewColor1;6;0;Create;True;0;0;False;0;1,0.8482759,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;20;-1504,1088;Float;False;Property;_ColorDetect3;ColorDetect3;15;0;Create;True;0;0;False;2;Header(Color Set3);Space(6);0,1,0.213793,0.05882353;0.58391,0.9926471,0.6712952,0.05882353;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;42;-1552,1280;Float;False;Property;_SoftFallOff3;Soft-FallOff3;18;0;Create;True;0;0;False;0;0.1;0.396;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;18;-406.0286,672.5604;Float;False;Color Mask;-1;;3;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;36;82.93448,313.4577;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;15;-1488,736;Float;False;Property;_NewColor2;NewColor2;11;0;Create;True;0;0;False;0;0,1,0.9172413,0;0.4411765,0.1557093,0.2679275,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;12;144.2521,-173.3199;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;37;149.736,1050.598;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;17;264.3708,102.1278;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;28;-409.6636,-503.9178;Float;False;Property;_BaseGloss;BaseGloss;3;0;Create;True;0;0;False;0;0;0.254;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;21;-1504,1488;Float;False;Property;_NewColor3Metal;NewColor3-Metal;16;0;Create;True;0;0;False;0;0,1,0.9172413,0;0.8970588,0.6787078,0.4023573,0.203;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;39;-1600,320;Float;False;Property;_Gloss1;Gloss1;9;0;Create;True;0;0;False;0;0;0.122;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;32;353.4681,-112.5172;Float;False;Property;_OverallEffect;OverallEffect;1;0;Create;True;0;0;False;0;1;0.812;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;24;454.1507,-8.696861;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;23;386.5178,452.807;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-1536,912;Float;False;Property;_Gloss2;Gloss2;14;0;Create;True;0;0;False;0;0;0.624;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-1264,1584;Float;False;Property;_Color3Metalness;Color3Metalness;19;0;Create;True;0;0;False;0;0.1;0.345;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;25;733.5909,165.4421;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;33;1132.673,-267.0146;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;30;-409.5921,-423.858;Float;False;Property;_BaseMetal;BaseMetal;2;0;Create;True;0;0;False;2;Header(Base MetalGloss);Space(10);0;0.139;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;26;515.0352,614.448;Float;False;Property;_OverallEmissive;OverallEmissive;20;0;Create;True;0;0;False;2;Header(Extras);Space(6);0.1;0.462;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;27;1438.879,28.3671;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;29;996.2833,176.5414;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;31;785.8419,1056.284;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2100.532,-3.672653;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;ColorSwap/ColorSwap_Basic;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;Transparent;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;10;1;1;0
WireConnection;10;3;3;0
WireConnection;10;4;11;0
WireConnection;10;5;38;0
WireConnection;35;0;34;1
WireConnection;35;1;10;0
WireConnection;13;1;1;0
WireConnection;13;3;14;0
WireConnection;13;4;16;0
WireConnection;13;5;40;0
WireConnection;18;1;1;0
WireConnection;18;3;20;0
WireConnection;18;4;19;0
WireConnection;18;5;42;0
WireConnection;36;0;34;1
WireConnection;36;1;13;0
WireConnection;12;0;1;0
WireConnection;12;1;4;0
WireConnection;12;2;35;0
WireConnection;37;0;34;1
WireConnection;37;1;18;0
WireConnection;17;0;12;0
WireConnection;17;1;15;0
WireConnection;17;2;36;0
WireConnection;24;0;28;0
WireConnection;24;1;39;0
WireConnection;24;2;35;0
WireConnection;23;0;17;0
WireConnection;23;1;21;0
WireConnection;23;2;37;0
WireConnection;25;0;24;0
WireConnection;25;1;41;0
WireConnection;25;2;36;0
WireConnection;33;0;1;0
WireConnection;33;1;23;0
WireConnection;33;2;32;0
WireConnection;27;0;33;0
WireConnection;27;1;26;0
WireConnection;29;0;25;0
WireConnection;31;0;30;0
WireConnection;31;1;43;0
WireConnection;31;2;37;0
WireConnection;0;0;33;0
WireConnection;0;2;27;0
WireConnection;0;3;31;0
WireConnection;0;4;29;0
WireConnection;0;10;1;4
ASEEND*/
//CHKSM=9C5D12D709D4B26575AAAFA4146454474528F871
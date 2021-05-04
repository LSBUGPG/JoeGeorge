// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ColorSwap/ColorSwap_StandardMetalGloss"
{
	Properties
	{
		_OverallEffect("OverallEffect", Range( 0 , 1)) = 1
		_AlbedoTexture("Albedo Texture", 2D) = "black" {}
		_ColorDetect1("ColorDetect1", Color) = (0,0,0,1)
		_NewColor1("NewColor1", Color) = (1,0.8482759,0,1)
		_Range1("Range1", Range( 0 , 1)) = 0.2
		_Soft_FallOff1("Soft_FallOff1", Range( 0 , 1)) = 0.2
		_ColorDetect2("ColorDetect2", Color) = (0,1,0.213793,1)
		_NewColor2("NewColor2", Color) = (0,1,0.9172413,1)
		_Range2("Range2", Range( 0 , 1)) = 0.2
		_Soft_FallOff2("Soft_FallOff2", Range( 0 , 1)) = 0.2
		_ColorDetect3("ColorDetect3", Color) = (0,0.5862067,1,1)
		_NewColor3("NewColor3", Color) = (0,0.1724138,1,0)
		_Range3("Range3", Range( 0 , 1)) = 0.2
		_Soft_FallOff3("Soft_FallOff3", Range( 0 , 1)) = 0.2
		_ColorDetect4("ColorDetect4", Color) = (0.5310345,0,1,1)
		_NewColor4("NewColor4", Color) = (0.986207,0,1,1)
		_Range4("Range4", Range( 0 , 1)) = 0.2
		_Soft_FallOff4("Soft_FallOff4", Range( 0 , 1)) = 0.2
		_ExtraGloss_FromColor4("ExtraGloss_FromColor4", Range( 0 , 1)) = 0
		_ColorDetect5("ColorDetect5", Color) = (1,0,0.3517241,1)
		_NewColor5("NewColor5", Color) = (1,0.2689655,0,1)
		_Range5("Range5", Range( 0 , 1)) = 0.2
		_Soft_FallOff5("Soft_FallOff5", Range( 0 , 1)) = 0.2
		_ExtraMetal_FromColor5("ExtraMetal_FromColor5", Range( 0 , 1)) = 0
		_OverallEmissive("OverallEmissive", Range( 0 , 1)) = 0.1
		_NormalMap("NormalMap", 2D) = "bump" {}
		_MetalGloss("Metal-Gloss", 2D) = "black" {}
		_AO_Map("AO_Map", 2D) = "white" {}
		_AO_Power("AO_Power", Range( 0 , 2)) = 0
		_ProtectionMaskR("ProtectionMask(R)", 2D) = "white" {}
		_ProtectionLevel("ProtectionLevel", Range( 0 , 1)) = 1
		_OverrideGloss("OverrideGloss", Range( 0 , 1)) = 0
		_OutlineWidth("OutlineWidth", Range( 0 , 3)) = 0
		_OutlineColor("OutlineColor", Color) = (0,0,0,0)
		_FresnelColor_AmountA("FresnelColor_Amount(A)", Color) = (0,0,0,0)
		_FresnelScale("FresnelScale", Range( 0 , 10)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ }
		ZWrite On
		Cull Front
		CGPROGRAM
		#pragma target 3.0
		#pragma surface outlineSurf Outline nofog  keepalpha noshadow noambient novertexlights nolightmap nodynlightmap nodirlightmap nometa noforwardadd vertex:outlineVertexDataFunc 
		void outlineVertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float outlineVar = _OutlineWidth;
			v.vertex.xyz += ( v.normal * outlineVar );
		}
		inline half4 LightingOutline( SurfaceOutput s, half3 lightDir, half atten ) { return half4 ( 0,0,0, s.Alpha); }
		void outlineSurf( Input i, inout SurfaceOutput o )
		{
			o.Emission = _OutlineColor.rgb;
		}
		ENDCG
		

		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		ZWrite On
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
		};

		uniform sampler2D _NormalMap;
		uniform float4 _NormalMap_ST;
		uniform sampler2D _AlbedoTexture;
		uniform float4 _AlbedoTexture_ST;
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
		uniform float4 _FresnelColor_AmountA;
		uniform float _FresnelScale;
		uniform float _OverallEmissive;
		uniform sampler2D _MetalGloss;
		uniform float4 _MetalGloss_ST;
		uniform float _ExtraMetal_FromColor5;
		uniform float _OverrideGloss;
		uniform float _ExtraGloss_FromColor4;
		uniform float _OutlineWidth;
		uniform float4 _OutlineColor;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			v.vertex.xyz += 0;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_NormalMap = i.uv_texcoord * _NormalMap_ST.xy + _NormalMap_ST.zw;
			o.Normal = UnpackNormal( tex2D( _NormalMap, uv_NormalMap ) );
			float2 uv_AlbedoTexture = i.uv_texcoord * _AlbedoTexture_ST.xy + _AlbedoTexture_ST.zw;
			float4 tex2DNode121 = tex2D( _AlbedoTexture, uv_AlbedoTexture );
			float2 uv_ProtectionMaskR = i.uv_texcoord * _ProtectionMaskR_ST.xy + _ProtectionMaskR_ST.zw;
			float4 tex2DNode119 = tex2D( _ProtectionMaskR, uv_ProtectionMaskR );
			float temp_output_70_0 = ( tex2DNode119.r * saturate( ( 1.0 - ( ( distance( _ColorDetect1.rgb , tex2DNode121.rgb ) - _Range1 ) / max( _Soft_FallOff1 , 1E-05 ) ) ) ) );
			float4 lerpResult120 = lerp( tex2DNode121 , _NewColor1 , temp_output_70_0);
			float temp_output_71_0 = ( tex2DNode119.r * saturate( ( 1.0 - ( ( distance( _ColorDetect2.rgb , tex2DNode121.rgb ) - _Range2 ) / max( _Soft_FallOff2 , 1E-05 ) ) ) ) );
			float4 lerpResult88 = lerp( lerpResult120 , _NewColor2 , temp_output_71_0);
			float temp_output_72_0 = ( tex2DNode119.r * saturate( ( 1.0 - ( ( distance( _ColorDetect3.rgb , tex2DNode121.rgb ) - _Range3 ) / max( _Soft_FallOff3 , 1E-05 ) ) ) ) );
			float4 lerpResult94 = lerp( lerpResult88 , _NewColor3 , temp_output_72_0);
			float3 temp_cast_6 = (tex2DNode119.r).xxx;
			float temp_output_2_0_g45 = _ProtectionLevel;
			float temp_output_3_0_g45 = ( 1.0 - temp_output_2_0_g45 );
			float3 appendResult7_g45 = (float3(temp_output_3_0_g45 , temp_output_3_0_g45 , temp_output_3_0_g45));
			float3 temp_output_86_0 = ( ( temp_cast_6 * temp_output_2_0_g45 ) + appendResult7_g45 );
			float temp_output_84_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect4.rgb , tex2DNode121.rgb ) - _Range4 ) / max( _Soft_FallOff4 , 1E-05 ) ) ) );
			float4 lerpResult98 = lerp( lerpResult94 , _NewColor4 , float4( ( temp_output_86_0 * temp_output_84_0 ) , 0.0 ));
			float temp_output_95_0 = saturate( ( 1.0 - ( ( distance( _ColorDetect5.rgb , tex2DNode121.rgb ) - _Range5 ) / max( _Soft_FallOff5 , 1E-05 ) ) ) );
			float4 lerpResult102 = lerp( lerpResult98 , _NewColor5 , float4( ( temp_output_86_0 * temp_output_95_0 ) , 0.0 ));
			float4 lerpResult110 = lerp( tex2DNode121 , lerpResult102 , _OverallEffect);
			float2 uv_AO_Map = i.uv_texcoord * _AO_Map_ST.xy + _AO_Map_ST.zw;
			float4 temp_cast_13 = (_AO_Power).xxxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float fresnelNdotV142 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode142 = ( 0.0 + _FresnelScale * pow( 1.0 - fresnelNdotV142, 5.0 ) );
			float4 lerpResult143 = lerp( ( lerpResult110 * pow( tex2D( _AO_Map, uv_AO_Map ) , temp_cast_13 ) ) , _FresnelColor_AmountA , ( _FresnelColor_AmountA.a * fresnelNode142 ));
			float4 clampResult147 = clamp( lerpResult143 , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
			o.Albedo = clampResult147.rgb;
			float4 clampResult148 = clamp( ( lerpResult143 * _OverallEmissive ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
			o.Emission = clampResult148.rgb;
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
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.6
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16400
-125;587;1906;705;13529.08;911.4391;11.36657;True;False
Node;AmplifyShaderEditor.ColorNode;58;-2937.593,-614.2687;Float;False;Property;_ColorDetect1;ColorDetect1;2;0;Create;True;0;0;False;0;0,0,0,1;0.9921569,0.8588236,0.7490196,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;65;-2926.321,-209.1363;Float;False;Property;_Range1;Range1;4;0;Create;True;0;0;False;0;0.2;0.181;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;121;-3023.289,-841.6754;Float;True;Property;_AlbedoTexture;Albedo Texture;1;0;Create;True;0;0;False;0;None;5dab8b5d7a5db2b4aacf7b82c82b9e31;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;60;-2926.451,-450.704;Float;False;Property;_Soft_FallOff1;Soft_FallOff1;5;0;Create;True;0;0;False;0;0.2;0.214;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;63;-2921.036,315.1362;Float;False;Property;_Range2;Range2;8;0;Create;True;0;0;False;0;0.2;0.41;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;59;-2904.662,-125.689;Float;False;Property;_ColorDetect2;ColorDetect2;6;0;Create;True;0;0;False;0;0,1,0.213793,1;0.5943396,0.4065059,0.4065059,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;62;-2906.303,55.55741;Float;False;Property;_Soft_FallOff2;Soft_FallOff2;9;0;Create;True;0;0;False;0;0.2;0.27;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;119;-2959.261,-1183.777;Float;True;Property;_ProtectionMaskR;ProtectionMask(R);29;0;Create;True;0;0;False;0;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;67;-2431.792,-490.4125;Float;False;Color Mask;-1;;38;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;64;-2906.813,889.6985;Float;False;Property;_Range3;Range3;12;0;Create;True;0;0;False;0;0.2;0.25;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;61;-2913.635,465.2935;Float;False;Property;_ColorDetect3;ColorDetect3;10;0;Create;True;0;0;False;0;0,0.5862067,1,1;0.1397059,0.1804668,0.25,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;69;-2372.131,-114.8091;Float;False;Color Mask;-1;;39;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;73;-2897.975,-372.0543;Float;False;Property;_NewColor1;NewColor1;3;0;Create;True;0;0;False;0;1,0.8482759,0,1;1,0.8182556,0.7647059,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;70;-2090.459,-546.4093;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;66;-2917.144,641.6444;Float;False;Property;_Soft_FallOff3;Soft_FallOff3;13;0;Create;True;0;0;False;0;0.2;0.18;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;71;-1958.91,-202.8869;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;120;-1922.301,-746.7986;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;78;-2934.114,1472.873;Float;False;Property;_Range4;Range4;16;0;Create;True;0;0;False;0;0.2;0.107;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;68;-2355.622,117.4854;Float;False;Color Mask;-1;;40;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;77;-2339.49,1246.854;Float;False;Property;_ProtectionLevel;ProtectionLevel;30;0;Create;True;0;0;False;0;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;74;-2897.01,1138.159;Float;False;Property;_Soft_FallOff4;Soft_FallOff4;17;0;Create;True;0;0;False;0;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;75;-2899.609,152.6711;Float;False;Property;_NewColor2;NewColor2;7;0;Create;True;0;0;False;0;0,1,0.9172413,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;76;-2904.533,961.8414;Float;False;Property;_ColorDetect4;ColorDetect4;14;0;Create;True;0;0;False;0;0.5310345,0,1,1;0.6,0.6627451,0.3372549,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;72;-1947.353,102.6882;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;86;-1947.87,1138.172;Float;False;Lerp White To;-1;;45;047d7c189c36a62438973bad9d37b1c2;0;2;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;83;-2884.847,729.8324;Float;False;Property;_NewColor3;NewColor3;11;0;Create;True;0;0;False;0;0,0.1724138,1,0;0.2661257,0.9411765,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;81;-2899.935,2053.828;Float;False;Property;_Range5;Range5;21;0;Create;True;0;0;False;0;0.2;0.28;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;84;-2280.18,883.7434;Float;False;Color Mask;-1;;46;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;80;-2920.418,1728.854;Float;False;Property;_Soft_FallOff5;Soft_FallOff5;22;0;Create;True;0;0;False;0;0.2;0.11;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;82;-2927.267,1555.281;Float;False;Property;_ColorDetect5;ColorDetect5;19;0;Create;True;0;0;False;0;1,0,0.3517241,1;0.8490566,0.1401744,0.1735338,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;88;-1715.833,-655.9371;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;94;-1479.462,-543.5607;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;93;-2920.686,1219.053;Float;False;Property;_NewColor4;NewColor4;15;0;Create;True;0;0;False;0;0.986207,0,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;89;-1565.485,563.7384;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;95;-2236.657,1487.406;Float;False;Color Mask;-1;;47;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;98;-1236.654,-443.6138;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;96;-2903.686,1805.294;Float;False;Property;_NewColor5;NewColor5;20;0;Create;True;0;0;False;0;1,0.2689655,0,1;0.08897728,0.3602941,0.002649224,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;101;-1627.778,919.6565;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;79;-762.9836,239.323;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;102;-1056.982,-255.7107;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;146;-190.1444,197.1673;Float;False;Property;_FresnelScale;FresnelScale;35;0;Create;True;0;0;False;0;1;6.8;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;107;-972.4986,-158.1291;Float;False;Property;_OverallEffect;OverallEffect;0;0;Create;True;0;0;False;0;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;105;1203.681,612.9924;Float;True;Property;_AO_Map;AO_Map;27;0;Create;True;0;0;False;0;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;87;-466.5116,225.1089;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;85;-698.2026,932.2345;Float;False;Property;_OverrideGloss;OverrideGloss;31;0;Create;True;0;0;False;0;0;0.67;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;108;1216.368,888.3925;Float;False;Property;_AO_Power;AO_Power;28;0;Create;True;0;0;False;0;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;122;1589.834,700.6255;Float;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;142;154.1581,125.2096;Float;True;Standard;WorldNormal;ViewDir;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1.1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;144;173.8983,-51.98966;Float;False;Property;_FresnelColor_AmountA;FresnelColor_Amount(A);34;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,0.634;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;110;-610.4166,-437.1404;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;91;-685.4776,659.8314;Float;True;Property;_MetalGloss;Metal-Gloss;26;0;Create;True;0;0;False;0;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;90;-249.9146,917.7235;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;92;-2916.697,1391.471;Float;False;Property;_ExtraGloss_FromColor4;ExtraGloss_FromColor4;18;0;Create;True;0;0;False;0;0;0.293;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;145;511.4572,97.683;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;116;1658.695,201.0668;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;97;-1396.323,1295.815;Float;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;100;-2908.024,1969.499;Float;False;Property;_ExtraMetal_FromColor5;ExtraMetal_FromColor5;23;0;Create;True;0;0;False;0;0;0.23;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;99;-17.98342,862.5974;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;113;1759.731,417.9238;Float;False;Property;_OverallEmissive;OverallEmissive;24;0;Create;True;0;0;False;0;0.1;0.23;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;143;2029.524,278.4007;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;106;150.5156,692.2124;Float;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;104;-1333.152,1554.533;Float;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;109;356.3346,932.5134;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;125;2253.668,519.3082;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;111;373.1758,551.8857;Float;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;114;621.9246,952.5415;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;112;308.4402,1265.84;Float;False;Property;_OutlineColor;OutlineColor;33;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;103;288.4608,1481.279;Float;False;Property;_OutlineWidth;OutlineWidth;32;0;Create;True;0;0;False;0;0;2.07;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;148;2500.979,585.4343;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;147;2518.39,358.827;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;123;1863.478,522.2744;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;124;1923.001,597.3695;Float;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OutlineNode;117;1199.171,1241.92;Float;False;0;True;None;1;0;Front;3;0;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;118;2057.392,780.4421;Float;True;Property;_NormalMap;NormalMap;25;0;Create;True;0;0;False;0;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2849.554,731.6284;Float;False;True;6;Float;ASEMaterialInspector;0;0;Standard;ColorSwap/ColorSwap_StandardMetalGloss;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;ForwardOnly;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;1;0,0,0,0;VertexScale;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;67;1;121;0
WireConnection;67;3;58;0
WireConnection;67;4;65;0
WireConnection;67;5;60;0
WireConnection;69;1;121;0
WireConnection;69;3;59;0
WireConnection;69;4;63;0
WireConnection;69;5;62;0
WireConnection;70;0;119;1
WireConnection;70;1;67;0
WireConnection;71;0;119;1
WireConnection;71;1;69;0
WireConnection;120;0;121;0
WireConnection;120;1;73;0
WireConnection;120;2;70;0
WireConnection;68;1;121;0
WireConnection;68;3;61;0
WireConnection;68;4;64;0
WireConnection;68;5;66;0
WireConnection;72;0;119;1
WireConnection;72;1;68;0
WireConnection;86;1;119;1
WireConnection;86;2;77;0
WireConnection;84;1;121;0
WireConnection;84;3;76;0
WireConnection;84;4;78;0
WireConnection;84;5;74;0
WireConnection;88;0;120;0
WireConnection;88;1;75;0
WireConnection;88;2;71;0
WireConnection;94;0;88;0
WireConnection;94;1;83;0
WireConnection;94;2;72;0
WireConnection;89;0;86;0
WireConnection;89;1;84;0
WireConnection;95;1;121;0
WireConnection;95;3;82;0
WireConnection;95;4;81;0
WireConnection;95;5;80;0
WireConnection;98;0;94;0
WireConnection;98;1;93;0
WireConnection;98;2;89;0
WireConnection;101;0;86;0
WireConnection;101;1;95;0
WireConnection;79;0;70;0
WireConnection;79;1;71;0
WireConnection;79;2;72;0
WireConnection;102;0;98;0
WireConnection;102;1;96;0
WireConnection;102;2;101;0
WireConnection;87;0;79;0
WireConnection;122;0;105;0
WireConnection;122;1;108;0
WireConnection;142;2;146;0
WireConnection;110;0;121;0
WireConnection;110;1;102;0
WireConnection;110;2;107;0
WireConnection;90;0;87;0
WireConnection;90;1;85;0
WireConnection;90;2;119;1
WireConnection;145;0;144;4
WireConnection;145;1;142;0
WireConnection;116;0;110;0
WireConnection;116;1;122;0
WireConnection;97;0;84;0
WireConnection;97;1;92;0
WireConnection;97;2;86;0
WireConnection;99;0;91;4
WireConnection;99;1;85;0
WireConnection;99;2;90;0
WireConnection;143;0;116;0
WireConnection;143;1;144;0
WireConnection;143;2;145;0
WireConnection;106;0;86;0
WireConnection;106;1;100;0
WireConnection;106;2;95;0
WireConnection;104;0;95;0
WireConnection;104;1;86;0
WireConnection;104;2;100;0
WireConnection;109;0;99;0
WireConnection;109;1;97;0
WireConnection;109;2;97;0
WireConnection;125;0;143;0
WireConnection;125;1;113;0
WireConnection;111;0;91;1
WireConnection;111;1;106;0
WireConnection;114;0;109;0
WireConnection;114;1;104;0
WireConnection;114;2;104;0
WireConnection;148;0;125;0
WireConnection;147;0;143;0
WireConnection;123;0;111;0
WireConnection;124;0;114;0
WireConnection;117;0;112;0
WireConnection;117;1;103;0
WireConnection;0;0;147;0
WireConnection;0;1;118;0
WireConnection;0;2;148;0
WireConnection;0;3;123;0
WireConnection;0;4;124;0
WireConnection;0;11;117;0
ASEEND*/
//CHKSM=A828EA5B2F48EA46D5C8637AF38AA0F576A88911
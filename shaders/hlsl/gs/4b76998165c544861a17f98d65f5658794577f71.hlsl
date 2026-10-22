// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[61];
}




// 3Dmigoto declarations
#define cmp -


[maxvertexcount(12)]
void main(
  inout TriangleStream<float> m0,
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_siv v[1][0].xyzw, position
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[9];
// Needs manual fix for instruction:
// unknown dcl_: dcl_inputprimitive point 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction:
// unknown dcl_: dcl_outputtopology trianglestrip 
  x0[0].xyz = float3(1,0,0);
  x0[1].xyz = float3(0,1,0);
  x0[2].xyz = float3(0,0,1);
  x0[3].xyz = float3(0,1,0);
  x0[4].xyz = float3(1,0,0);
  x0[5].xyz = float3(0,0,1);
  x0[6].xyz = float3(1,0,0);
  x0[7].xyz = float3(0,0,1);
  x0[8].xyz = float3(0,1,0);
  r0.x = (int)v[0][1].y;
  r0.x = (int)r0.x * 3;
  r0.yzw = x0[r0.x+0].xyz;
  r1.xyz = x0[r0.x+1].xyz;
  r2.xyz = x0[r0.x+2].xyz;
  r3.xyz = v[0][0].xyz + float3(-1,0,-1);
  r4.xyz = r3.yyy * r1.xyz;
  r3.xyw = r3.xxx * r0.yzw + r4.xyz;
  r3.xyz = r3.zzz * r2.xyz + r3.xyw;
  r4.xyz = float3(100,100,100) * cb0[60].xyz;
  r5.xyz = r3.xyz * float3(40,40,40) + r4.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r6.xyzw = cb0[1].xyzw * r5.yyyy;
  r6.xyzw = r5.xxxx * cb0[0].xyzw + r6.xyzw;
  r5.xyzw = r5.zzzz * cb0[2].xyzw + r6.xyzw;
  r5.xyzw = cb0[3].xyzw + r5.xyzw;
  o0.xyzw = r5.xyzw;
  o1.xyz = r3.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  r6.xyz = v[0][0].xyz + float3(1,0,-1);
  r7.xyz = r6.yyy * r1.xyz;
  r6.xyw = r6.xxx * r0.yzw + r7.xyz;
  r6.xyz = r6.zzz * r2.xyz + r6.xyw;
  r7.xyz = r6.xyz * float3(40,40,40) + r4.xyz;
  r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r8.xyzw = cb0[1].xyzw * r7.yyyy;
  r8.xyzw = r7.xxxx * cb0[0].xyzw + r8.xyzw;
  r7.xyzw = r7.zzzz * cb0[2].xyzw + r8.xyzw;
  r7.xyzw = cb0[3].xyzw + r7.xyzw;
  o0.xyzw = r7.xyzw;
  o1.xyz = r6.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  r6.xyz = v[0][0].xyz + float3(1,0,1);
  r7.xyz = r6.yyy * r1.xyz;
  r6.xyw = r6.xxx * r0.yzw + r7.xyz;
  r6.xyz = r6.zzz * r2.xyz + r6.xyw;
  r7.xyz = r6.xyz * float3(40,40,40) + r4.xyz;
  r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r8.xyzw = cb0[1].xyzw * r7.yyyy;
  r8.xyzw = r7.xxxx * cb0[0].xyzw + r8.xyzw;
  r7.xyzw = r7.zzzz * cb0[2].xyzw + r8.xyzw;
  r7.xyzw = cb0[3].xyzw + r7.xyzw;
  o0.xyzw = r7.xyzw;
  o1.xyz = r6.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xyzw = r7.xyzw;
  o1.xyz = r6.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  r6.xyz = v[0][0].xyz + float3(-1,0,1);
  r1.xyz = r6.yyy * r1.xyz;
  r0.xyz = r6.xxx * r0.yzw + r1.xyz;
  r0.xyz = r6.zzz * r2.xyz + r0.xyz;
  r1.xyz = r0.xyz * float3(40,40,40) + r4.xyz;
  r0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  o0.xyzw = r1.xyzw;
  o1.xyz = r0.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xyzw = r5.xyzw;
  o1.xyz = r3.xyz;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  return;
}
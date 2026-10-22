// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[53];
}




// 3Dmigoto declarations
#define cmp -


[maxvertexcount(18)]
void main(
  inout TriangleStream<float> m0,
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD7,
  float4 v4 : TEXCOORD6,
  float3 v5 : TEXCOORD8,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0,
  out uint o5 : SV_RenderTargetArrayIndex0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_inputprimitive triangle 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction:
// unknown dcl_: dcl_outputtopology trianglestrip 
  r0.xyzw = v[0][4].yyyy * cb0[30].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[29].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[31].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[32].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[30].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[29].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[31].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[32].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[30].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[29].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[31].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[32].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  r0.xyzw = v[0][4].yyyy * cb0[34].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[33].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[35].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[36].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[34].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[33].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[35].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[36].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[34].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[33].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[35].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[36].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  r0.xyzw = v[0][4].yyyy * cb0[38].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[37].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[39].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[40].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[38].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[37].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[39].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[40].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[38].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[37].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[39].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[40].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 2;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 2;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 2;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  r0.xyzw = v[0][4].yyyy * cb0[42].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[41].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[43].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[44].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[42].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[41].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[43].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[44].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[42].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[41].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[43].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[44].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 3;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 3;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 3;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  r0.xyzw = v[0][4].yyyy * cb0[46].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[45].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[47].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[48].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[46].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[45].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[47].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[48].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[46].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[45].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[47].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[48].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 4;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 4;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 4;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  r0.xyzw = v[0][4].yyyy * cb0[50].xyzw;
  r0.xyzw = v[0][4].xxxx * cb0[49].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].zzzz * cb0[51].xyzw + r0.xyzw;
  r0.xyzw = v[0][4].wwww * cb0[52].xyzw + r0.xyzw;
  r1.xyzw = v[1][4].yyyy * cb0[50].xyzw;
  r1.xyzw = v[1][4].xxxx * cb0[49].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].zzzz * cb0[51].xyzw + r1.xyzw;
  r1.xyzw = v[1][4].wwww * cb0[52].xyzw + r1.xyzw;
  r2.xyzw = v[2][4].yyyy * cb0[50].xyzw;
  r2.xyzw = v[2][4].xxxx * cb0[49].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].zzzz * cb0[51].xyzw + r2.xyzw;
  r2.xyzw = v[2][4].wwww * cb0[52].xyzw + r2.xyzw;
  r3.xyzw = saturate(r0.xyxy * float4(-1,-1,1,1) + -r0.wwww);
  r4.xyzw = saturate(r1.xyxy * float4(-1,-1,1,1) + -r1.wwww);
  r5.xyzw = saturate(r2.xyxy * float4(-1,-1,1,1) + -r2.wwww);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r5.xyzw;
  r4.xy = saturate(r0.zz * float2(-1,1) + -r0.ww);
  r4.zw = saturate(r1.zz * float2(-1,1) + -r1.ww);
  r5.xy = saturate(r2.zz * float2(-1,1) + -r2.ww);
  r4.xy = r4.xy * r4.zw;
  r4.xy = r4.xy * r5.xy;
  r3.xyzw = cmp(r3.xyzw != float4(0,0,0,0));
  r3.xy = (int2)r3.zw | (int2)r3.xy;
  r3.x = (int)r3.y | (int)r3.x;
  r3.yz = cmp(r4.xy != float2(0,0));
  r3.y = (int)r3.z | (int)r3.y;
  r3.x = (int)r3.y | (int)r3.x;
  if (r3.x == 0) {
    o0.xy = v[0][0].xy;
    o1.xyzw = v[0][1].xyzw;
    o2.xyzw = v[0][2].xyzw;
    o3.xyz = v[0][4].xyz;
    o4.xyzw = r0.xyzw;
    o5.x = 5;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[1][0].xy;
    o1.xyzw = v[1][1].xyzw;
    o2.xyzw = v[1][2].xyzw;
    o3.xyz = v[1][4].xyz;
    o4.xyzw = r1.xyzw;
    o5.x = 5;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
    o0.xy = v[2][0].xy;
    o1.xyzw = v[2][1].xyzw;
    o2.xyzw = v[2][2].xyzw;
    o3.xyz = v[2][4].xyz;
    o4.xyzw = r2.xyzw;
    o5.x = 5;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0);
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip();
  }
  return;
}
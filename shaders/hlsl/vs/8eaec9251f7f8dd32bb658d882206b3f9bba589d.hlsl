// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[37];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  uiDest.x = (uint)v0.x / 6;
  r1.x = (uint)v0.x % 6;
  r0.x = uiDest.x;
  r0.y = cmp(1 < (uint)r1.x);
  r0.z = cmp((uint)r1.x < 5);
  r0.y = r0.z ? r0.y : 0;
  r2.y = r0.y ? 1.000000 : 0;
  r0.y = (int)r1.x & 1;
  r2.x = (uint)r0.y;
  o0.xy = r2.xy;
  r0.yz = float2(-0.5,-0.5) + r2.xy;
  r0.yz = cb0[30].zw * r0.yz;
  r0.yz = cb0[35].ww * r0.yz;
  r0.yz = r0.yz + r0.yz;
  r0.w = (uint)v1.x << 2;
  r0.x = (int)r0.x + (int)r0.w;
  uiDest.x = (uint)r0.x / asuint(cb0[35].x);
  r1.x = (uint)r0.x % asuint(cb0[35].x);
  r0.x = uiDest.x;
  r1.x = (uint)r1.x;
  r1.y = (uint)r0.x;
  r0.xw = asuint(cb0[29].xy);
  r0.xw = r1.xy + r0.xw;
  r1.x = asuint(cb0[35].z);
  r1.yz = r0.xw * r1.xx + -cb0[28].zw;
  r0.xw = cb0[27].zw * r0.xw;
  r0.xw = r0.xw * r1.xx;
  r0.xw = max(cb0[33].xy, r0.xw);
  r0.xw = min(cb0[33].zw, r0.xw);
  r2.xyzw = t0.SampleLevel(s0_s, r0.xw, 0).xyzw;
  r0.xw = r1.yz / cb0[28].xy;
  r1.xy = cb0[36].ww * r0.xw;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = r1.x * r1.x;
  r2.xyz = r2.xyz * r1.xxx;
  o1.xyzw = cb0[36].xxxx * r2.xyzw;
  r1.x = dot(r2.xyz, float3(1,1,1));
  r1.x = cmp(r1.x < cb0[36].y);
  r0.yz = r1.xx ? float2(0,0) : r0.yz;
  o2.xy = r0.xw * cb0[36].ww + r0.yz;
  o2.zw = float2(0,1);
  return;
}
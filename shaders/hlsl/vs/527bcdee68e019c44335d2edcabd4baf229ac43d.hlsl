// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 3;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  uiDest.y = (uint)r0.x / asuint(cb0[10].z);
  r1.y = uiDest.y;
  r0.y = cmp((uint)r1.y >= asuint(cb0[10].w));
  if (r0.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,1);
    return;
  }
  r0.y = (int)v0.x & 1;
  if (1 == 0) r0.z = 0; else if (1+1 < 32) {   r0.z = (uint)v0.x << (32-(1 + 1)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)v0.x >> 1;
  r2.xy = (uint2)r0.yz;
  r0.yz = r2.xy * float2(2,2) + float2(-1,-1);
  r1.x = (uint)r0.x % asuint(cb0[10].z);
  r0.xw = (uint2)r1.xy;
  r0.xw = float2(0.5,0.5) + r0.xw;
  r1.zw = float2(0,0);
  r1.xyzw = t0.Load(r1.xyz).xyzw;
  r2.xyzw = cb0[0].zzzz * r1.xyzw;
  r3.x = dot(r2.zw, r2.zw);
  r3.y = cmp(0.0009765625 >= r3.x);
  if (r3.y != 0) {
    r3.yz = r0.yz * float2(0.5,0.5) + r0.xw;
    r3.yz = -cb0[9].zw + r3.yz;
    o1.xy = r3.yz / cb0[9].xy;
    o0.xyzw = r1.xyzw;
    o1.zw = float2(0.000199999995,1);
    return;
  }
  r3.y = (uint)r3.x >> 1;
  r3.y = (int)-r3.y + 0x5f3759df;
  r4.x = r3.x * r3.y;
  r3.xy = r3.yy * r2.zw;
  r2.z = abs(r3.x) + abs(r3.y);
  r4.y = 0;
  r2.zw = r2.zz * float2(0.99000001,0.99000001) + r4.xy;
  r0.yz = r2.zw * r0.yz;
  r3.z = -r3.y;
  r3.xyzw = r3.xyzx * r0.yyzz;
  r0.yz = r3.xy + r3.zw;
  r0.xy = r0.xw + r0.yz;
  r0.xy = -cb0[9].zw + r0.xy;
  r0.w = cmp(asint(cb0[15].x) == 1);
  r2.x = dot(r2.xy, r2.xy);
  r2.x = sqrt(r2.x);
  r0.w = r0.w ? r4.x : r2.x;
  r0.xyw = r0.xyw / cb0[9].xyx;
  r0.w = 0.5 * r0.w;
  r0.w = max(0.000199999995, r0.w);
  r0.z = min(0.999000013, r0.w);
  o0.xyzw = r1.xyzw;
  o1.xyz = r0.xyz;
  o1.w = 1;
  return;
}
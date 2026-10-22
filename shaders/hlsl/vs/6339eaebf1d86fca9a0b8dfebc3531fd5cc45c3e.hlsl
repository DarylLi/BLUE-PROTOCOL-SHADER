// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out uint o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 3;
  r0.x = (int)r0.x + asint(cb0[0].y);
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.y = (int)r0.x + asint(-cb0[0].y);
  r0.y = cmp((uint)r0.y >= asuint(cb0[0].z));
  if (r0.y != 0) {
    o1.xyzw = float4(0,0,0,1);
    o0.x = 0;
    return;
  }
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.x = (int)r0.w & 255;
  r1.yz = (uint2)r0.wz >> int2(8,8);
  r0.w = 1 << (int)r1.y;
  r0.y = (uint)r0.y << 16;
  r0.x = (int)r0.y | (int)r0.x;
  r0.y = (int)r0.x & 0x55555555;
  r1.y = (uint)r0.y >> 1;
  r0.y = (int)r0.y ^ (int)r1.y;
  r0.y = (int)r0.y & 0x33333333;
  r1.y = (uint)r0.y >> 2;
  r0.y = (int)r0.y ^ (int)r1.y;
  r0.y = (int)r0.y & 0x0f0f0f0f;
  r1.y = (uint)r0.y >> 4;
  r0.y = (int)r0.y ^ (int)r1.y;
  r0.y = (int)r0.y & 0x00ff00ff;
  r1.y = (uint)r0.y >> 8;
  r0.y = (int)r0.y ^ (int)r1.y;
  r2.x = (int)r0.y & 0x0000ffff;
  r0.x = (uint)r0.x >> 1;
  r0.x = (int)r0.x & 0x55555555;
  r0.y = (uint)r0.x >> 1;
  r0.x = (int)r0.y ^ (int)r0.x;
  r0.x = (int)r0.x & 0x33333333;
  r0.y = (uint)r0.x >> 2;
  r0.x = (int)r0.y ^ (int)r0.x;
  r0.x = (int)r0.x & 0x0f0f0f0f;
  r0.y = (uint)r0.x >> 4;
  r0.x = (int)r0.y ^ (int)r0.x;
  r0.x = (int)r0.x & 0x00ff00ff;
  r0.y = (uint)r0.x >> 8;
  r0.x = (int)r0.y ^ (int)r0.x;
  r2.y = (int)r0.x & 0x0000ffff;
  r0.x = (int)v0.x & 1;
  if (1 == 0) r0.y = 0; else if (1+1 < 32) {   r0.y = (uint)v0.x << (32-(1 + 1)); r0.y = (uint)r0.y >> (32-1);  } else r0.y = (uint)v0.x >> 1;
  r0.xy = mad((int2)r0.ww, (int2)r0.xy, (int2)r2.xy);
  r0.xy = (uint2)r0.xy;
  r0.w = asuint(cb0[0].x);
  r0.xy = r0.xy / r0.ww;
  o1.xy = r0.xy * float2(2,-2) + float2(-1,1);
  bitmask.x = ((~(-1 << 8)) << 4) & 0xffffffff;  r0.x = (((uint)r0.z << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.x = (int)r0.x | (int)r1.x;
  bitmask.y = ((~(-1 << 8)) << 10) & 0xffffffff;  r0.y = (((uint)r1.z << 10) & bitmask.y) | ((uint)0 & ~bitmask.y);
  o0.x = (int)r0.y | (int)r0.x;
  o1.zw = float2(0,1);
  return;
}
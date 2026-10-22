// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[133];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out uint4 o0 : SV_Target0,
  out float o1 : SV_Target1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].xy * v0.xy;
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).y;
  r0.yzw = (uint3)r0.xxx >> int3(4,2,3);
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)r0.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)r0.x >> 1;
  o1.x = r0.x ? 0 : 1;
  r0.x = (int)r0.y & 6;
  r0.y = ~(int)r0.y;
  bitmask.z = ((~(-1 << 1)) << 3) & 0xffffffff;  r0.z = (((uint)r0.z << 3) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r0.w = (((uint)r0.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.x = (((uint)r0.y << 0) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
  r0.x = (int)r0.z + (int)r0.x;
  o0.xyzw = (int4)r0.wwww + (int4)r0.xxxx;
  return;
}
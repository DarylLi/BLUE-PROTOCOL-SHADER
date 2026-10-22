// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[1];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asint(cb0[0].xy);
  r0.xy = v0.xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.z = (int)r0.y * asint(cb0[0].x);
  r0.yz = (uint2)r0.yz << int2(2,2);
  r0.x = (int)r0.x + (int)r0.z;
  r0.x = (int)r0.x + (int)r0.y;
  r0.x = (int)r0.x + 4;
  r0.z = max((int)-r0.x, (int)r0.x);
  r0.yz = (int2)r0.xz & int2(0x80000000,1);
  r0.w = -(int)r0.z;
  r0.y = r0.y ? r0.w : r0.z;
  r0.x = (int)-r0.y + (int)r0.x;
  r0.y = (uint)r0.y << 4;
  r0.x = (uint)r0.x >> 1;
  r0.x = t0[r0.x].val[0/4];
  r0.x = (uint)r0.x >> (uint)r0.y;
  if (1 == 0) r0.y = 0; else if (1+15 < 32) {   r0.y = (uint)r0.x << (32-(1 + 15)); r0.y = (uint)r0.y >> (32-1);  } else r0.y = (uint)r0.x >> 15;
  if (6 == 0) r0.z = 0; else if (6+10 < 32) {   r0.z = (uint)r0.x << (32-(6 + 10)); r0.z = (uint)r0.z >> (32-6);  } else r0.z = (uint)r0.x >> 10;
  bitmask.x = ((~(-1 << 10)) << 13) & 0xffffffff;  r0.x = (((uint)r0.x << 13) & bitmask.x) | ((uint)0 & ~bitmask.x);
  bitmask.z = ((~(-1 << 5)) << 23) & 0xffffffff;  r0.z = (((uint)r0.z << 23) & bitmask.z) | ((uint)0 & ~bitmask.z);
  r0.z = (int)r0.z + 0x38000000;
  r0.y = mad((int)r0.y, 0x80000000, (int)r0.z);
  o0.xyz = (int3)r0.yyy + (int3)r0.xxx;
  o0.w = 1;
  return;
}
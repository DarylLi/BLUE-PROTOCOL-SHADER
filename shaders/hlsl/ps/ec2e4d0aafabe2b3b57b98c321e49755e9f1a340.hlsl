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
  float4 r0,r1;
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
  r0.y = max((int)-r0.x, (int)r0.x);
  r0.yw = (int2)r0.yx & int2(1,0x80000000);
  r0.z = -(int)r0.y;
  r0.y = r0.w ? r0.z : r0.y;
  r0.z = (int)-r0.y + (int)r0.x;
  r0.y = (uint)r0.y << 4;
  r0.z = (uint)r0.z >> 1;
  r0.z = t0[r0.z].val[0/4];
  r0.y = (uint)r0.z >> (uint)r0.y;
  if (1 == 0) r0.z = 0; else if (1+15 < 32) {   r0.z = (uint)r0.y << (32-(1 + 15)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)r0.y >> 15;
  if (6 == 0) r0.w = 0; else if (6+10 < 32) {   r0.w = (uint)r0.y << (32-(6 + 10)); r0.w = (uint)r0.w >> (32-6);  } else r0.w = (uint)r0.y >> 10;
  bitmask.y = ((~(-1 << 10)) << 13) & 0xffffffff;  r0.y = (((uint)r0.y << 13) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.w = ((~(-1 << 5)) << 23) & 0xffffffff;  r0.w = (((uint)r0.w << 23) & bitmask.w) | ((uint)0 & ~bitmask.w);
  r0.w = (int)r0.w + 0x38000000;
  r0.z = mad((int)r0.z, 0x80000000, (int)r0.w);
  o0.w = (int)r0.z + (int)r0.y;
  r0.y = asuint(cb0[0].x) << 1;
  r0.y = (int)r0.y + (int)r0.x;
  r0.w = max((int)-r0.y, (int)r0.y);
  r0.zw = (int2)r0.yw & int2(0x80000000,1);
  r1.x = -(int)r0.w;
  r0.z = r0.z ? r1.x : r0.w;
  r0.y = (int)-r0.z + (int)r0.y;
  r0.z = (uint)r0.z << 4;
  r0.y = (uint)r0.y >> 1;
  r0.y = t0[r0.y].val[0/4];
  r0.y = (uint)r0.y >> (uint)r0.z;
  if (1 == 0) r0.z = 0; else if (1+15 < 32) {   r0.z = (uint)r0.y << (32-(1 + 15)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)r0.y >> 15;
  if (6 == 0) r0.w = 0; else if (6+10 < 32) {   r0.w = (uint)r0.y << (32-(6 + 10)); r0.w = (uint)r0.w >> (32-6);  } else r0.w = (uint)r0.y >> 10;
  bitmask.y = ((~(-1 << 10)) << 13) & 0xffffffff;  r0.y = (((uint)r0.y << 13) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.w = ((~(-1 << 5)) << 23) & 0xffffffff;  r0.w = (((uint)r0.w << 23) & bitmask.w) | ((uint)0 & ~bitmask.w);
  r0.w = (int)r0.w + 0x38000000;
  r0.z = mad((int)r0.z, 0x80000000, (int)r0.w);
  o0.y = (int)r0.z + (int)r0.y;
  r0.y = (int)r0.x + asint(cb0[0].x);
  r0.x = mad(asint(cb0[0].x), 3, (int)r0.x);
  r0.w = max((int)-r0.y, (int)r0.y);
  r0.zw = (int2)r0.yw & int2(0x80000000,1);
  r1.x = -(int)r0.w;
  r0.z = r0.z ? r1.x : r0.w;
  r0.y = (int)-r0.z + (int)r0.y;
  r0.z = (uint)r0.z << 4;
  r0.y = (uint)r0.y >> 1;
  r0.y = t0[r0.y].val[0/4];
  r0.y = (uint)r0.y >> (uint)r0.z;
  if (1 == 0) r0.z = 0; else if (1+15 < 32) {   r0.z = (uint)r0.y << (32-(1 + 15)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)r0.y >> 15;
  if (6 == 0) r0.w = 0; else if (6+10 < 32) {   r0.w = (uint)r0.y << (32-(6 + 10)); r0.w = (uint)r0.w >> (32-6);  } else r0.w = (uint)r0.y >> 10;
  bitmask.y = ((~(-1 << 10)) << 13) & 0xffffffff;  r0.y = (((uint)r0.y << 13) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.w = ((~(-1 << 5)) << 23) & 0xffffffff;  r0.w = (((uint)r0.w << 23) & bitmask.w) | ((uint)0 & ~bitmask.w);
  r0.w = (int)r0.w + 0x38000000;
  r0.z = mad((int)r0.z, 0x80000000, (int)r0.w);
  o0.z = (int)r0.z + (int)r0.y;
  r0.z = max((int)-r0.x, (int)r0.x);
  r0.yz = (int2)r0.xz & int2(0x80000000,1);
  r0.w = -(int)r0.z;
  r0.y = r0.y ? r0.w : r0.z;
  r0.x = (int)-r0.y + (int)r0.x;
  r0.y = (uint)r0.y << 4;
  r0.x = (uint)r0.x >> 1;
  r0.x = t0[r0.x].val[0/4];
  r0.x = (uint)r0.x >> (uint)r0.y;
  bitmask.y = ((~(-1 << 10)) << 13) & 0xffffffff;  r0.y = (((uint)r0.x << 13) & bitmask.y) | ((uint)0 & ~bitmask.y);
  if (1 == 0) r0.x = 0; else if (1+15 < 32) {   r0.x = (uint)r0.x << (32-(1 + 15)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)r0.x >> 15;
  if (6 == 0) r0.z = 0; else if (6+10 < 32) {   r0.z = (uint)r0.x << (32-(6 + 10)); r0.z = (uint)r0.z >> (32-6);  } else r0.z = (uint)r0.x >> 10;
  bitmask.z = ((~(-1 << 5)) << 23) & 0xffffffff;  r0.z = (((uint)r0.z << 23) & bitmask.z) | ((uint)0 & ~bitmask.z);
  r0.z = (int)r0.z + 0x38000000;
  r0.x = mad((int)r0.x, 0x80000000, (int)r0.z);
  o0.x = (int)r0.x + (int)r0.y;
  return;
}
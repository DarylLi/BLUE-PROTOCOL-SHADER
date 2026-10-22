// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[4].yz);
  r0.xy = v1.xy * r0.xy;
  r0.xy = (uint2)r0.xy;
  uiDest.x = (uint)r0.x / 6;
  r1.x = (uint)r0.x % 6;
  r0.x = uiDest.x;
  r0.z = r0.x;
  r0.w = 0;
  r0.xyzw = t0.Load(r0.zyw).xyzw;
  if (r1.x == 0) {
    if (10 == 0) r1.y = 0; else if (10+10 < 32) {     r1.y = (uint)r0.x << (32-(10 + 10)); r1.y = (uint)r1.y >> (32-10);    } else r1.y = (uint)r0.x >> 10;
    if (10 == 0) r1.z = 0; else if (10+20 < 32) {     r1.z = (uint)r0.x << (32-(10 + 20)); r1.z = (uint)r1.z >> (32-10);    } else r1.z = (uint)r0.x >> 20;
    r1.w = (int)r0.x & 1023;
    r2.xyz = (uint3)r1.ywz;
  } else {
    r1.y = cmp((int)r1.x == 1);
    if (r1.y != 0) {
      r1.yz = (int2)r0.yx & int2(1023,1023);
      r2.xy = (uint2)r1.yz;
      if (10 == 0) r0.x = 0; else if (10+20 < 32) {       r0.x = (uint)r0.x << (32-(10 + 20)); r0.x = (uint)r0.x >> (32-10);      } else r0.x = (uint)r0.x >> 20;
      r2.z = (uint)r0.x;
    } else {
      if (10 == 0) r3.x = 0; else if (10+20 < 32) {       r3.x = (uint)r0.y << (32-(10 + 20)); r3.x = (uint)r3.x >> (32-10);      } else r3.x = (uint)r0.y >> 20;
      if (10 == 0) r3.y = 0; else if (10+10 < 32) {       r3.y = (uint)r0.y << (32-(10 + 10)); r3.y = (uint)r3.y >> (32-10);      } else r3.y = (uint)r0.y >> 10;
      if (10 == 0) r3.z = 0; else if (10+10 < 32) {       r3.z = (uint)r0.z << (32-(10 + 10)); r3.z = (uint)r3.z >> (32-10);      } else r3.z = (uint)r0.z >> 10;
      if (10 == 0) r3.w = 0; else if (10+20 < 32) {       r3.w = (uint)r0.z << (32-(10 + 20)); r3.w = (uint)r3.w >> (32-10);      } else r3.w = (uint)r0.z >> 20;
      r0.xy = (int2)r0.zw & int2(1023,1023);
      r1.xyz = cmp((int3)r1.xxx == int3(2,3,4));
      r4.xz = (uint2)r0.yx;
      r3.xyzw = (uint4)r3.xyzw;
      if (10 == 0) r0.x = 0; else if (10+20 < 32) {       r0.x = (uint)r0.w << (32-(10 + 20)); r0.x = (uint)r0.x >> (32-10);      } else r0.x = (uint)r0.w >> 20;
      if (10 == 0) r0.y = 0; else if (10+10 < 32) {       r0.y = (uint)r0.w << (32-(10 + 10)); r0.y = (uint)r0.y >> (32-10);      } else r0.y = (uint)r0.w >> 10;
      r0.xz = (uint2)r0.xy;
      r4.y = r3.w;
      r4.w = r0.z;
      r0.y = r4.y;
      r0.xyz = r1.zzz ? r4.xyw : r0.xyz;
      r4.xy = r3.zy;
      r0.xyz = r1.yyy ? r4.xyz : r0.xyz;
      r4.xy = r3.xy;
      r2.xyz = r1.xxx ? r4.xyz : r0.xyz;
    }
  }
  r0.x = -cb0[0].w;
  r0.y = -cb0[1].w;
  r0.z = -cb0[2].w;
  r0.xyz = r2.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + r0.xyz;
  r1.x = dot(cb0[0].xyz, r0.xyz);
  r1.y = dot(cb0[1].xyz, r0.xyz);
  r1.z = dot(cb0[2].xyz, r0.xyz);
  r0.x = cmp(asint(cb0[4].x) == 1);
  r0.yzw = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r1.xyz);
  r2.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) < r0.yzw);
  r3.xyz = r0.yzw * float3(0.947867274,0.947867274,0.947867274) + float3(0.0521326996,0.0521326996,0.0521326996);
  r3.xyz = log2(r3.xyz);
  r3.xyz = float3(2.4000001,2.4000001,2.4000001) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r0.yzw = float3(0.0773993805,0.0773993805,0.0773993805) * r0.yzw;
  r0.yzw = r2.xyz ? r3.xyz : r0.yzw;
  o0.xyz = r0.xxx ? r0.yzw : r1.xyz;
  o0.w = 1;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadIDInGroup.x >> 3;
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)r0.x & ~bitmask.y);
  if (3 == 0) r0.x = 0; else if (3+1 < 32) {   r0.x = (uint)vThreadIDInGroup.x << (32-(3 + 1)); r0.x = (uint)r0.x >> (32-3);  } else r0.x = (uint)vThreadIDInGroup.x >> 1;
  r0.xz = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r0.xy);
  r0.yw = float2(0,0);
  r1.xyzw = t1.Load(r0.xzy).xyzw;
  r2.xyz = log2(r1.xyz);
  r2.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r2.xyz;
  r2.xyz = -r2.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.xyz = r3.xyz / r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(6.27739477,6.27739477,6.27739477) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = float3(1,1,1) * r2.xyz;
  r3.xyz = sqrt(r3.xyz);
  r3.xyz = float3(1023,1023,1023) * r3.xyz;
  r3.xyz = floor(r3.xyz);
  r4.xyz = r3.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + float3(0.000977517106,0.000977517106,0.000977517106);
  r3.xyz = float3(0.000977517106,0.000977517106,0.000977517106) * r3.xyz;
  r4.xyz = r4.xyz * r4.xyz;
  r5.xyz = r3.xyz * r3.xyz + -r4.xyz;
  r2.xyz = r2.xyz * float3(1,1,1) + -r4.xyz;
  r4.xyz = (int3)-r5.xyz + int3(0x7ef19fff,0x7ef19fff,0x7ef19fff);
  r5.xyz = -r4.xyz * r5.xyz + float3(2,2,2);
  r4.xyz = r5.xyz * r4.xyz;
  r2.xyz = r4.xyz * r2.xyz;
  r4.xy = (uint2)r0.xz % asuint(cb1[0].xy);
  r4.zw = float2(0,0);
  r2.w = t0.Load(r4.xyz).x;
  r2.xyz = r2.www * cb0[0].xxx + -r2.xyz;
  r2.xyz = saturate(float3(1,1,1) * r2.xyz);
  r2.xyz = r2.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + r3.xyz;
  r1.xyz = min(float3(1,1,1), r2.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xzzz, r1.xyzw
  r0.xy = (int2)r0.xz + int2(8,8);
  r1.xyzw = t1.Load(r0.xzw).xyzw;
  r2.xyz = log2(r1.xyz);
  r2.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r2.xyz;
  r2.xyz = -r2.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.xyz = r3.xyz / r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(6.27739477,6.27739477,6.27739477) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = float3(1,1,1) * r2.xyz;
  r3.xyz = sqrt(r3.xyz);
  r3.xyz = float3(1023,1023,1023) * r3.xyz;
  r3.xyz = floor(r3.xyz);
  r4.xyz = r3.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + float3(0.000977517106,0.000977517106,0.000977517106);
  r3.xyz = float3(0.000977517106,0.000977517106,0.000977517106) * r3.xyz;
  r4.xyz = r4.xyz * r4.xyz;
  r5.xyz = r3.xyz * r3.xyz + -r4.xyz;
  r2.xyz = r2.xyz * float3(1,1,1) + -r4.xyz;
  r4.xyz = (int3)-r5.xyz + int3(0x7ef19fff,0x7ef19fff,0x7ef19fff);
  r5.xyz = -r4.xyz * r5.xyz + float3(2,2,2);
  r4.xyz = r5.xyz * r4.xyz;
  r2.xyz = r4.xyz * r2.xyz;
  r4.zw = float2(0,0);
  r4.xy = (uint2)r0.xz % asuint(cb1[0].xy);
  r2.w = t0.Load(r4.xyz).x;
  r2.xyz = r2.www * cb0[0].xxx + -r2.xyz;
  r2.xyz = saturate(float3(1,1,1) * r2.xyz);
  r2.xyz = r2.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + r3.xyz;
  r1.xyz = min(float3(1,1,1), r2.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xzzz, r1.xyzw
  r1.xyzw = t1.Load(r0.xyw).xyzw;
  r2.yzw = r0.yww;
  r3.xyz = log2(r1.xyz);
  r3.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r4.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r3.xyz;
  r3.xyz = -r3.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.xyz = r4.xyz / r3.xyz;
  r3.xyz = log2(r3.xyz);
  r3.xyz = float3(6.27739477,6.27739477,6.27739477) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r4.xyz = float3(1,1,1) * r3.xyz;
  r4.xyz = sqrt(r4.xyz);
  r4.xyz = float3(1023,1023,1023) * r4.xyz;
  r4.xyz = floor(r4.xyz);
  r5.xyz = r4.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + float3(0.000977517106,0.000977517106,0.000977517106);
  r4.xyz = float3(0.000977517106,0.000977517106,0.000977517106) * r4.xyz;
  r5.xyz = r5.xyz * r5.xyz;
  r6.xyz = r4.xyz * r4.xyz + -r5.xyz;
  r3.xyz = r3.xyz * float3(1,1,1) + -r5.xyz;
  r5.xyz = (int3)-r6.xyz + int3(0x7ef19fff,0x7ef19fff,0x7ef19fff);
  r6.xyz = -r5.xyz * r6.xyz + float3(2,2,2);
  r5.xyz = r6.xyz * r5.xyz;
  r3.xyz = r5.xyz * r3.xyz;
  r5.xy = (uint2)r0.xy % asuint(cb1[0].xy);
  r5.zw = float2(0,0);
  r0.z = t0.Load(r5.xyz).x;
  r3.xyz = r0.zzz * cb0[0].xxx + -r3.xyz;
  r3.xyz = saturate(float3(1,1,1) * r3.xyz);
  r3.xyz = r3.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + r4.xyz;
  r1.xyz = min(float3(1,1,1), r3.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  r2.x = (int)r0.x + -8;
  r0.xyzw = t1.Load(r2.xyz).xyzw;
  r1.xyz = log2(r0.xyz);
  r1.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r3.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r1.xyz;
  r1.xyz = -r1.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.xyz = r3.xyz / r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(6.27739477,6.27739477,6.27739477) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r3.xyz = float3(1,1,1) * r1.xyz;
  r3.xyz = sqrt(r3.xyz);
  r3.xyz = float3(1023,1023,1023) * r3.xyz;
  r3.xyz = floor(r3.xyz);
  r4.xyz = r3.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + float3(0.000977517106,0.000977517106,0.000977517106);
  r3.xyz = float3(0.000977517106,0.000977517106,0.000977517106) * r3.xyz;
  r4.xyz = r4.xyz * r4.xyz;
  r1.xyz = r1.xyz * float3(1,1,1) + -r4.xyz;
  r4.xyz = r3.xyz * r3.xyz + -r4.xyz;
  r5.xyz = (int3)-r4.xyz + int3(0x7ef19fff,0x7ef19fff,0x7ef19fff);
  r4.xyz = -r5.xyz * r4.xyz + float3(2,2,2);
  r4.xyz = r5.xyz * r4.xyz;
  r1.xyz = r4.xyz * r1.xyz;
  r4.xy = (uint2)r2.xy % asuint(cb1[0].xy);
  r4.zw = float2(0,0);
  r1.w = t0.Load(r4.xyz).x;
  r1.xyz = r1.www * cb0[0].xxx + -r1.xyz;
  r1.xyz = saturate(float3(1,1,1) * r1.xyz);
  r1.xyz = r1.xyz * float3(0.000977517106,0.000977517106,0.000977517106) + r3.xyz;
  r0.xyz = min(float3(1,1,1), r1.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyyy, r0.xyzw
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[144].y;
  r0.xy = (int2)v0.xy;
  r1.xyz = mad((int3)r0.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.z = mad((int)r1.y, (int)r1.z, (int)r1.x);
  r1.x = mad((int)r1.z, (int)r0.z, (int)r1.y);
  r1.y = mad((int)r0.z, (int)r1.x, (int)r1.z);
  r2.x = mad((int)r1.x, (int)r1.y, (int)r0.z);
  r2.y = mad((int)r1.y, (int)r2.x, (int)r1.x);
  r1.xy = (uint2)r2.xy >> int2(16,16);
  r1.xy = (uint2)r1.xy;
  r1.xy = r1.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = rsqrt(r0.z);
  r1.xy = r1.xy * r0.zz;
  r2.y = cb1[132].w * cb1[132].w;
  r2.x = 1;
  r1.zw = cb1[132].zx * r2.xy;
  r1.zw = cb0[6].zz * r1.zw;
  r1.xy = r1.xy * r1.zw;
  r2.xy = -cb1[129].xy + v0.xy;
  r2.xy = cb1[132].zw * r2.xy;
  r2.xy = cb1[132].xy * r2.xy;
  r2.xy = cb0[5].zw * r2.xy;
  r2.xy = cb0[6].yy * r2.xy;
  r1.xy = r1.xy * cb0[6].xx + r2.xy;
  r1.xy = max(cb0[2].xy, r1.xy);
  r1.xy = min(cb0[2].zw, r1.xy);
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r4.xzw = asint(cb1[144].yyy) + int3(8,16,32);
  r0.w = r4.x;
  r5.xyz = mad((int3)r0.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r4.xy = r0.xy;
  r0.x = mad((int)r5.y, (int)r5.z, (int)r5.x);
  r0.y = mad((int)r5.z, (int)r0.x, (int)r5.y);
  r0.z = mad((int)r0.x, (int)r0.y, (int)r5.z);
  r1.x = mad((int)r0.y, (int)r0.z, (int)r0.x);
  r1.y = mad((int)r0.z, (int)r1.x, (int)r0.y);
  r0.xy = (uint2)r1.xy >> int2(16,16);
  r0.xy = (uint2)r0.xy;
  r0.xy = r0.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.xy = r0.xy * r1.zw;
  r0.xy = r0.xy * cb0[6].xx + r2.xy;
  r0.xy = max(cb0[2].xy, r0.xy);
  r0.xy = min(cb0[2].zw, r0.xy);
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.xyzw = r3.xyzw + r0.xyzw;
  r3.xyz = mad((int3)r4.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r4.xyz = mad((int3)r4.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r1.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
  r1.y = mad((int)r3.z, (int)r1.x, (int)r3.y);
  r2.z = mad((int)r1.x, (int)r1.y, (int)r3.z);
  r3.x = mad((int)r1.y, (int)r2.z, (int)r1.x);
  r3.y = mad((int)r2.z, (int)r3.x, (int)r1.y);
  r1.xy = (uint2)r3.xy >> int2(16,16);
  r1.xy = (uint2)r1.xy;
  r1.xy = r1.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r2.z = dot(r1.xy, r1.xy);
  r2.z = rsqrt(r2.z);
  r1.xy = r2.zz * r1.xy;
  r1.xy = r1.xy * r1.zw;
  r1.xy = r1.xy * cb0[6].xx + r2.xy;
  r1.xy = max(cb0[2].xy, r1.xy);
  r1.xy = min(cb0[2].zw, r1.xy);
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.xyzw = r3.xyzw + r0.xyzw;
  r1.x = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r1.y = mad((int)r4.z, (int)r1.x, (int)r4.y);
  r2.z = mad((int)r1.x, (int)r1.y, (int)r4.z);
  r3.x = mad((int)r1.y, (int)r2.z, (int)r1.x);
  r3.y = mad((int)r2.z, (int)r3.x, (int)r1.y);
  r1.xy = (uint2)r3.xy >> int2(16,16);
  r1.xy = (uint2)r1.xy;
  r1.xy = r1.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r2.z = dot(r1.xy, r1.xy);
  r2.z = rsqrt(r2.z);
  r1.xy = r2.zz * r1.xy;
  r1.xy = r1.xy * r1.zw;
  r1.xy = r1.xy * cb0[6].xx + r2.xy;
  r1.xy = max(cb0[2].xy, r1.xy);
  r1.xy = min(cb0[2].zw, r1.xy);
  r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
  return;
}
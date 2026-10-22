// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)vThreadID.x % asuint(cb0[5].x);
  r0.y = vThreadID.y;
  r1.xy = cmp((uint2)r0.xy >= asuint(cb0[5].yz));
  r1.x = (int)r1.y | (int)r1.x;
  if (r1.x != 0) {
    return;
  }
  r1.x = (int)vThreadID.x ^ asint(cb0[5].x);
  r1.y = max(asint(-cb0[5].x), asint(cb0[5].x));
  uiDest.y = (uint)vThreadID.x / (uint)r1.y;
  r1.y = uiDest.y;
  r1.z = -(int)r1.y;
  r1.x = r1.x ? -0.000000 : 0;
  r1.x = r1.x ? r1.z : r1.y;
  r0.zw = (int2)r1.xx + asint(cb0[7].zz);
  r1.xy = (uint2)r0.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = asint(cb0[5].yz);
  r1.xy = r1.xy / r1.zw;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xyzw = cmp((int4)r0.wwww == int4(1,2,3,4));
  r1.z = -r1.y;
  r1.w = 1;
  r3.xy = float2(-1,1) * r1.xz;
  r3.z = -1;
  r3.xyz = r2.www ? r1.xzw : r3.xyz;
  r4.yz = r1.zx;
  r4.x = -1;
  r3.xyz = r2.zzz ? r4.zxy : r3.xyz;
  r2.yzw = r2.yyy ? r1.xwy : r3.xyz;
  r2.xyz = r2.xxx ? r4.xyz : r2.yzw;
  r1.xyz = float3(1,1,-1) * r1.wzx;
  r1.xyz = r0.www ? r2.xyz : r1.xyz;
  r1.w = asuint(cb0[4].z);
  r2.x = asint(cb0[4].w) + -1;
  r2.y = (uint)r2.x;
  r2.y = -1 + r2.y;
  r1.w = r2.y + -r1.w;
  r1.w = 1 + -r1.w;
  r1.w = 0.833333313 * r1.w;
  r1.w = exp2(r1.w);
  r2.y = cmp(r1.w < 0.00999999978);
  if (r2.y != 0) {
    r3.xyzw = t0.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyww, r3.xyzw
    return;
  }
  r2.y = dot(r1.xyz, r1.xyz);
  r2.y = rsqrt(r2.y);
  r3.xyz = r2.yyy * r1.xyz;
  r1.x = cmp(r3.z >= 0);
  r1.xy = r1.xx ? float2(1,-1) : float2(-1,1);
  r1.z = r1.z * r2.y + r1.x;
  r1.z = rcp(r1.z);
  r2.yzw = r3.xxy * r3.yxy;
  r4.y = r2.y * -r1.z;
  r2.y = r1.x * -r1.z;
  r4.x = r2.y * r2.z + 1;
  r5.x = r4.y * r1.x;
  r6.x = r1.y * r3.x;
  r5.y = r2.w * -r1.z + r1.x;
  r1.xy = int2(1,6) << (int2)r2.xx;
  r1.x = (int)r1.x * (int)r1.y;
  r1.x = (uint)r1.x;
  r1.x = 12.566371 / r1.x;
  r1.x = r1.x + r1.x;
  r1.y = cmp(r1.w < 0.100000001);
  r1.z = r1.y ? 32 : 64;
  r2.x = cmp(0.99000001 < r1.w);
  if (r2.x != 0) {
    r4.w = r3.x;
    r5.z = r3.y;
    r6.yz = float2(-1,1) * r3.yz;
    r2.xyzw = float4(0,0,0,0);
    r3.w = 0;
    while (true) {
      r6.w = cmp((uint)r3.w >= (uint)r1.z);
      if (r6.w != 0) break;
      r6.w = (uint)r3.w;
      r6.w = 0.015625 * r6.w;
      r6.w = frac(r6.w);
      r7.x = reversebits((uint)r3.w);
      r7.x = (int)r7.x ^ 0;
      r7.x = (uint)r7.x;
      r7.x = 2.32830644e-010 * r7.x;
      r6.w = 6.28318548 * r6.w;
      r7.z = sqrt(r7.x);
      r7.w = 1 + -r7.z;
      r7.w = sqrt(r7.w);
      sincos(r6.w, r8.x, r9.x);
      r7.x = r9.x * r7.w;
      r7.y = r8.x * r7.w;
      r6.w = 20.3718319 * r7.z;
      r6.w = 1 / r6.w;
      r6.w = r6.w / r1.x;
      r6.w = log2(r6.w);
      r6.w = 0.5 * r6.w;
      r8.x = dot(r7.xyz, r4.xyw);
      r8.y = dot(r7.xyz, r5.xyz);
      r8.z = dot(r7.xyz, r6.xyz);
      r7.xyzw = t0.SampleLevel(s0_s, r8.xyz, r6.w).xyzw;
      r2.xyzw = r7.xyzw + r2.xyzw;
      r3.w = (int)r3.w + 1;
    }
    r2.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r2.xyzw;
  } else {
    r1.y = r1.y ? 32 : 64;
    r1.w = r1.w * r1.w;
    r3.w = r1.w * r1.w;
    r1.w = r1.w * r1.w + -1;
    r4.z = r3.x;
    r5.w = r3.y;
    r6.yz = float2(-1,1) * r3.yz;
    r7.xyzw = float4(0,0,0,0);
    r3.xy = float2(0,0);
    while (true) {
      r3.z = cmp((uint)r3.y >= (uint)r1.z);
      if (r3.z != 0) break;
      r3.z = (uint)r3.y;
      r3.z = r3.z / r1.y;
      r3.z = frac(r3.z);
      r4.w = reversebits((uint)r3.y);
      r4.w = (int)r4.w ^ 0;
      r4.w = (uint)r4.w;
      r5.z = 2.31666492e-010 * r4.w;
      r3.z = 6.28318548 * r3.z;
      r4.w = -r4.w * 2.31666492e-010 + 1;
      r5.z = r1.w * r5.z + 1;
      r4.w = r4.w / r5.z;
      r8.z = sqrt(r4.w);
      r4.w = 1 + -r4.w;
      r4.w = sqrt(r4.w);
      sincos(r3.z, r9.x, r10.x);
      r8.x = r10.x * r4.w;
      r8.y = r9.x * r4.w;
      r3.z = r8.z + r8.z;
      r8.xyw = r3.zzz * r8.xyz + float3(-0,-0,-1);
      r3.z = cmp(0 < r8.w);
      if (r3.z != 0) {
        r3.z = r8.z * r3.w + -r8.z;
        r3.z = r3.z * r8.z + 1;
        r3.z = r3.z * r3.z;
        r3.z = 3.14159274 * r3.z;
        r3.z = r3.w / r3.z;
        r3.z = r3.z * r1.y;
        r3.z = 0.25 * r3.z;
        r3.z = 1 / r3.z;
        r3.z = r3.z / r1.x;
        r3.z = log2(r3.z);
        r3.z = 0.5 * r3.z;
        r9.x = dot(r8.xyw, r4.xyz);
        r9.y = dot(r8.xyw, r5.xyw);
        r9.z = dot(r8.xyw, r6.xyz);
        r9.xyzw = t0.SampleLevel(s0_s, r9.xyz, r3.z).xyzw;
        r7.xyzw = r9.xyzw * r8.wwww + r7.xyzw;
        r3.x = r8.w + r3.x;
      }
      r3.y = (int)r3.y + 1;
    }
    r2.xyzw = r7.xyzw / r3.xxxx;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  return;
}
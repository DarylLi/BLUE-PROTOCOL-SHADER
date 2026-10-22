// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cmp(asint(cb0[2].xxxx) == int4(1,2,3,4));
  r1.xy = v0.xy * float2(2,-2) + float2(-1,1);
  r1.z = 1;
  r2.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r2.z = -1;
  r2.xyz = r0.www ? r1.xyz : r2.xyz;
  r3.yz = v0.yx * float2(-2,2) + float2(1,-1);
  r3.x = -1;
  r2.xyz = r0.zzz ? r3.zxy : r2.xyz;
  r4.xz = v0.xy * float2(2,2) + float2(-1,-1);
  r4.y = 1;
  r0.yzw = r0.yyy ? r4.xyz : r2.xyz;
  r0.xyz = r0.xxx ? r3.xyz : r0.yzw;
  r1.w = v0.x * -2 + 1;
  r0.xyz = cb0[2].xxx ? r0.xyz : r1.zyw;
  r0.w = asuint(cb0[4].z);
  r1.x = asint(cb0[4].w) + -1;
  r1.y = (uint)r1.x;
  r1.y = -1 + r1.y;
  r0.w = r1.y + -r0.w;
  r0.w = 1 + -r0.w;
  r0.w = 0.833333313 * r0.w;
  r0.w = exp2(r0.w);
  r1.y = cmp(r0.w < 0.00999999978);
  if (r1.y != 0) {
    o0.xyzw = t0.SampleLevel(s0_s, r0.xyz, 0).xyzw;
    return;
  }
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = r1.yyy * r0.xyz;
  r0.x = cmp(r2.z >= 0);
  r0.xy = r0.xx ? float2(1,-1) : float2(-1,1);
  r0.z = r0.z * r1.y + r0.x;
  r0.z = rcp(r0.z);
  r1.yzw = r2.xxy * r2.yxy;
  r3.y = r1.y * -r0.z;
  r1.y = r0.x * -r0.z;
  r3.x = r1.y * r1.z + 1;
  r4.x = r3.y * r0.x;
  r5.x = r0.y * r2.x;
  r4.y = r1.w * -r0.z + r0.x;
  r0.xy = int2(1,6) << (int2)r1.xx;
  r0.x = (int)r0.x * (int)r0.y;
  r0.x = (uint)r0.x;
  r0.x = 12.566371 / r0.x;
  r0.x = r0.x + r0.x;
  r0.y = cmp(r0.w < 0.100000001);
  r0.z = r0.y ? 32 : 64;
  r1.x = cmp(0.99000001 < r0.w);
  if (r1.x != 0) {
    r3.w = r2.x;
    r4.z = r2.y;
    r5.yz = float2(-1,1) * r2.yz;
    r1.xyzw = float4(0,0,0,0);
    r2.w = 0;
    while (true) {
      r5.w = cmp((uint)r2.w >= (uint)r0.z);
      if (r5.w != 0) break;
      r5.w = (uint)r2.w;
      r5.w = 0.015625 * r5.w;
      r5.w = frac(r5.w);
      r6.x = reversebits((uint)r2.w);
      r6.x = (int)r6.x ^ 0;
      r6.x = (uint)r6.x;
      r6.x = 2.32830644e-010 * r6.x;
      r5.w = 6.28318548 * r5.w;
      r6.z = sqrt(r6.x);
      r6.w = 1 + -r6.z;
      r6.w = sqrt(r6.w);
      sincos(r5.w, r7.x, r8.x);
      r6.x = r8.x * r6.w;
      r6.y = r7.x * r6.w;
      r5.w = 20.3718319 * r6.z;
      r5.w = 1 / r5.w;
      r5.w = r5.w / r0.x;
      r5.w = log2(r5.w);
      r5.w = 0.5 * r5.w;
      r7.x = dot(r6.xyz, r3.xyw);
      r7.y = dot(r6.xyz, r4.xyz);
      r7.z = dot(r6.xyz, r5.xyz);
      r6.xyzw = t0.SampleLevel(s0_s, r7.xyz, r5.w).xyzw;
      r1.xyzw = r6.xyzw + r1.xyzw;
      r2.w = (int)r2.w + 1;
    }
    o0.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r1.xyzw;
  } else {
    r0.y = r0.y ? 32 : 64;
    r0.w = r0.w * r0.w;
    r1.x = r0.w * r0.w;
    r0.w = r0.w * r0.w + -1;
    r3.z = r2.x;
    r4.w = r2.y;
    r5.yz = float2(-1,1) * r2.yz;
    r2.xyzw = float4(0,0,0,0);
    r1.yz = float2(0,0);
    while (true) {
      r1.w = cmp((uint)r1.z >= (uint)r0.z);
      if (r1.w != 0) break;
      r1.w = (uint)r1.z;
      r1.w = r1.w / r0.y;
      r1.w = frac(r1.w);
      r3.w = reversebits((uint)r1.z);
      r3.w = (int)r3.w ^ 0;
      r3.w = (uint)r3.w;
      r4.z = 2.31666492e-010 * r3.w;
      r1.w = 6.28318548 * r1.w;
      r3.w = -r3.w * 2.31666492e-010 + 1;
      r4.z = r0.w * r4.z + 1;
      r3.w = r3.w / r4.z;
      r6.z = sqrt(r3.w);
      r3.w = 1 + -r3.w;
      r3.w = sqrt(r3.w);
      sincos(r1.w, r7.x, r8.x);
      r6.x = r8.x * r3.w;
      r6.y = r7.x * r3.w;
      r1.w = r6.z + r6.z;
      r6.xyw = r1.www * r6.xyz + float3(-0,-0,-1);
      r1.w = cmp(0 < r6.w);
      if (r1.w != 0) {
        r1.w = r6.z * r1.x + -r6.z;
        r1.w = r1.w * r6.z + 1;
        r1.w = r1.w * r1.w;
        r1.w = 3.14159274 * r1.w;
        r1.w = r1.x / r1.w;
        r1.w = r1.w * r0.y;
        r1.w = 0.25 * r1.w;
        r1.w = 1 / r1.w;
        r1.w = r1.w / r0.x;
        r1.w = log2(r1.w);
        r1.w = 0.5 * r1.w;
        r7.x = dot(r6.xyw, r3.xyz);
        r7.y = dot(r6.xyw, r4.xyw);
        r7.z = dot(r6.xyw, r5.xyz);
        r7.xyzw = t0.SampleLevel(s0_s, r7.xyz, r1.w).xyzw;
        r2.xyzw = r7.xyzw * r6.wwww + r2.xyzw;
        r1.y = r6.w + r1.y;
      }
      r1.z = (int)r1.z + 1;
    }
    o0.xyzw = r2.xyzw / r1.yyyy;
  }
  return;
}
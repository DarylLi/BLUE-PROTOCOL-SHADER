// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[145];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy / v0.ww;
  r0.zw = r0.xy * cb0[66].xy + cb0[66].wz;
  r1.x = t2.SampleLevel(s0_s, r0.zw, 0).w;
  r1.x = 255 * r1.x;
  r1.x = round(r1.x);
  r1.x = (uint)r1.x;
  r1.y = (int)r1.x & 15;
  r1.zw = cmp((int2)r1.yy == int2(12,13));
  r2.x = (int)r1.w | (int)r1.z;
  if (r2.x != 0) {
    r3.x = 1;
  } else {
    r3.x = t5.SampleLevel(s0_s, r0.zw, 0).x;
  }
  r2.y = cmp(0 < (uint)r1.y);
  r2.z = cmp((int)r1.y != 14);
  r2.y = r2.z ? r2.y : 0;
  r2.zw = cb0[132].xy * r0.zw;
  r4.xy = (uint2)r2.zw;
  r4.zw = float2(0,0);
  r2.z = t7.Load(r4.xyz).x;
  r2.z = (int)r2.z & asint(cb1[2].z);
  r2.z = cmp((int)r2.z != 0);
  r2.y = r2.z ? r2.y : 0;
  if (r2.y != 0) {
    r2.y = t0.SampleLevel(s0_s, r0.zw, 0).x;
    r2.z = r2.y * cb0[65].x + cb0[65].y;
    r2.y = r2.y * cb0[65].z + -cb0[65].w;
    r2.y = 1 / r2.y;
    r2.y = r2.z + r2.y;
    r2.z = cmp(cb0[31].w < 1);
    r2.z = r2.z ? r2.y : 1;
    r0.xy = r2.zz * r0.xy;
    r4.xyz = cb0[49].xyz * r0.yyy;
    r4.xyz = r0.xxx * cb0[48].xyz + r4.xyz;
    r4.xyz = r2.yyy * cb0[50].xyz + r4.xyz;
    r4.xyz = cb0[51].xyz + r4.xyz;
    r0.x = cmp(cb1[1].z < 0);
    r0.y = asuint(cb0[144].y);
    r2.zw = r0.yy * float2(32.6650009,11.8149996) + v1.xy;
    r0.y = dot(r2.zw, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.y = frac(r0.y);
    r2.zw = t6.SampleLevel(s1_s, r0.zw, 0).zw;
    r2.zw = r2.zw * r2.zw;
    r5.xyz = cb1[6].xyz + -r4.xyz;
    r3.z = dot(r5.xyz, r5.xyz);
    r3.z = rsqrt(r3.z);
    r6.xyz = r5.xyz * r3.zzz;
    r5.xyz = cb1[6].www * r5.xyz;
    r3.z = dot(r5.xyz, r5.xyz);
    r3.z = min(1, r3.z);
    r3.z = 1 + -r3.z;
    r3.z = log2(r3.z);
    r3.z = cb1[7].w * r3.z;
    r3.z = exp2(r3.z);
    r3.w = dot(r6.xyz, cb1[8].xyz);
    r3.w = -cb1[10].x + r3.w;
    r3.w = saturate(cb1[10].y * r3.w);
    r3.w = r3.w * r3.w;
    r3.z = r3.z * r3.w;
    r3.z = cmp(0 < r3.z);
    if (r3.z != 0) {
      r3.zw = cmp((int2)r1.yy == int2(7,9));
      r2.y = cb0[37].y * r2.y;
      if (cb1[2].y != 0) {
        r5.xyzw = t4.SampleLevel(s0_s, r0.zw, 0).xyzw;
        r7.xy = (int2)r1.xx & int2(32,64);
        r1.x = r7.y ? 0 : 1;
        r5.xyzw = r7.xxxx ? r1.xxxx : r5.xyzw;
        r5.xyzw = r2.xxxx ? float4(1,1,1,1) : r5.xyzw;
        r1.x = dot(cb1[0].xyzw, float4(1,1,1,1));
        r4.w = dot(r5.xyzw, cb1[0].xyzw);
        r4.w = -1 + r4.w;
        r1.x = r1.x * r4.w + 1;
        r3.xy = r2.zw * r1.xx;
        r1.x = cmp(1 < asuint(cb1[2].y));
        r2.z = cmp(0 < abs(cb1[1].z));
        r1.x = r1.x ? r2.z : 0;
        r0.x = r0.x ? 1 : r2.y;
        r0.x = abs(cb1[1].z) * r0.x;
        r0.x = r1.x ? r0.x : 0;
      } else {
        r3.y = 1;
        r0.x = 0;
      }
      r1.x = cmp(asuint(cb1[2].y) < 2);
      r1.x = r3.z ? r1.x : 0;
      r2.y = 0.200000003 * r2.y;
      r0.x = r1.x ? r2.y : r0.x;
      r0.x = r3.w ? 0.5 : r0.x;
      r1.x = cmp(0 < r0.x);
      if (r1.x != 0) {
        r5.xyzw = cmp((int4)r1.yyyy == int4(2,3,5,6));
        r1.x = (int)r5.y | (int)r5.x;
        r0.y = -0.5 + r0.y;
        r2.yzw = cb0[70].xyz + r4.xyz;
        r4.xyzw = cb0[1].xyzw * r2.zzzz;
        r4.xyzw = r2.yyyy * cb0[0].xyzw + r4.xyzw;
        r4.xyzw = r2.wwww * cb0[2].xyzw + r4.xyzw;
        r4.xyzw = cb0[3].xyzw + r4.xyzw;
        r2.yzw = r6.xyz * r0.xxx;
        r6.xyzw = cb0[1].xyzw * r2.zzzz;
        r6.xyzw = r2.yyyy * cb0[0].xyzw + r6.xyzw;
        r6.xyzw = r2.wwww * cb0[2].xyzw + r6.xyzw;
        r6.xyzw = r6.xyzw + r4.xyzw;
        r2.yzw = r4.xyz / r4.www;
        r6.xyz = r6.xyz / r6.www;
        r6.xyz = r6.xyz + -r2.yzw;
        r2.yz = r2.yz * cb0[66].xy + cb0[66].wz;
        r6.xy = cb0[66].xy * r6.xy;
        r4.xy = r0.xx * cb0[30].zw + r4.zw;
        r4.x = r4.x / r4.y;
        r4.x = r4.x + -r2.w;
        r4.y = 0.25 * abs(r4.x);
        r7.xyzw = r0.yyyy * float4(0.125,0.125,0.125,0.125) + float4(0.125,0.25,0.375,0.5);
        r8.xyz = r6.xyz * r7.xxx + r2.yzw;
        r4.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r4.z = r8.z + -r4.z;
        r4.z = abs(r4.x) * 0.25 + r4.z;
        r4.z = cmp(abs(r4.z) < r4.y);
        r4.z = r4.z ? r7.x : -1;
        r8.xyz = r6.xyz * r7.yyy + r2.yzw;
        r4.w = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r4.w = r8.z + -r4.w;
        r4.w = abs(r4.x) * 0.25 + r4.w;
        r4.w = cmp(abs(r4.w) < r4.y);
        r5.x = cmp(r4.z < 0);
        r4.w = r4.w ? r5.x : 0;
        r4.z = r4.w ? r7.y : r4.z;
        r8.xyz = r6.xyz * r7.zzz + r2.yzw;
        r4.w = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r4.w = r8.z + -r4.w;
        r4.w = abs(r4.x) * 0.25 + r4.w;
        r4.w = cmp(abs(r4.w) < r4.y);
        r5.x = cmp(r4.z < 0);
        r4.w = r4.w ? r5.x : 0;
        r4.z = r4.w ? r7.z : r4.z;
        r7.xyz = r6.xyz * r7.www + r2.yzw;
        r4.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
        r4.w = r7.z + -r4.w;
        r4.w = abs(r4.x) * 0.25 + r4.w;
        r4.w = cmp(abs(r4.w) < r4.y);
        r5.x = cmp(r4.z < 0);
        r4.w = r4.w ? r5.x : 0;
        r4.z = r4.w ? r7.w : r4.z;
        r7.xyzw = r0.yyyy * float4(0.125,0.125,0.125,0.125) + float4(0.625,0.75,0.875,1);
        r8.xyz = r6.xyz * r7.xxx + r2.yzw;
        r0.y = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r0.y = r8.z + -r0.y;
        r0.y = abs(r4.x) * 0.25 + r0.y;
        r0.y = cmp(abs(r0.y) < r4.y);
        r4.w = cmp(r4.z < 0);
        r0.y = r0.y ? r4.w : 0;
        r0.y = r0.y ? r7.x : r4.z;
        r8.xyz = r6.xyz * r7.yyy + r2.yzw;
        r4.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r4.z = r8.z + -r4.z;
        r4.z = abs(r4.x) * 0.25 + r4.z;
        r4.z = cmp(abs(r4.z) < r4.y);
        r4.w = cmp(r0.y < 0);
        r4.z = r4.w ? r4.z : 0;
        r0.y = r4.z ? r7.y : r0.y;
        r8.xyz = r6.xyz * r7.zzz + r2.yzw;
        r4.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
        r4.z = r8.z + -r4.z;
        r4.z = abs(r4.x) * 0.25 + r4.z;
        r4.z = cmp(abs(r4.z) < r4.y);
        r4.w = cmp(r0.y < 0);
        r4.z = r4.w ? r4.z : 0;
        r0.y = r4.z ? r7.z : r0.y;
        r7.xyz = r6.xyz * r7.www + r2.yzw;
        r2.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
        r2.w = r7.z + -r2.w;
        r2.w = abs(r4.x) * 0.25 + r2.w;
        r2.w = cmp(abs(r2.w) < r4.y);
        r4.x = cmp(r0.y < 0);
        r2.w = r2.w ? r4.x : 0;
        r0.y = r2.w ? r7.w : r0.y;
        r2.w = cmp(0 < r0.y);
        if (r2.w != 0) {
          r2.yz = r6.xy * r0.yy + r2.yz;
          r2.w = t1.SampleLevel(s0_s, r2.yz, 0).w;
          r4.x = t2.SampleLevel(s0_s, r2.yz, 0).w;
          r4.x = 255 * r4.x;
          r4.x = round(r4.x);
          r4.x = (uint)r4.x;
          r4.x = (int)r4.x & 15;
          r2.w = 3.99900007 * r2.w;
          r2.w = (uint)r2.w;
          r2.w = (int)r2.w & 1;
          r2.w = cmp((int)r2.w != 0);
          r4.x = cmp((int)r4.x != 9);
          r2.w = r2.w ? r4.x : 0;
          r4.xy = cmp(float2(0,0) < r2.yz);
          r2.yz = cmp(r2.yz < float2(1,1));
          r2.yz = r2.yz ? r4.xy : 0;
          r2.y = r2.z ? r2.y : 0;
          r0.x = r0.y * r0.x;
          r0.x = r2.y ? r0.x : -1;
        } else {
          r2.w = 0;
          r0.x = -1;
        }
        r0.y = cmp(0 < r0.x);
        r2.y = r2.w ? 1 : cb1[1].w;
        r2.z = cmp(0 < r2.y);
        r2.w = (int)r5.z | (int)r1.x;
        r2.w = (int)r5.w | (int)r2.w;
        r2.w = (int)r3.z | (int)r2.w;
        r2.w = (int)r3.w | (int)r2.w;
        r2.z = r2.z ? r2.w : 0;
        r4.xyz = cmp((int3)r1.yyy != int3(7,9,5));
        r2.z = r2.z ? r4.x : 0;
        r2.z = r4.y ? r2.z : 0;
        r2.z = r4.z ? r2.z : 0;
        if (r2.z != 0) {
          r0.z = t3.SampleLevel(s0_s, r0.zw, 0).w;
          r2.zw = cmp((int2)r1.yy == int2(4,8));
          r0.w = (int)r1.x | (int)r2.z;
          r0.w = (int)r5.z | (int)r0.w;
          r0.w = (int)r5.w | (int)r0.w;
          r0.w = (int)r3.z | (int)r0.w;
          r0.w = (int)r2.w | (int)r0.w;
          r0.w = (int)r1.z | (int)r0.w;
          r0.w = (int)r1.w | (int)r0.w;
          r0.w = (int)r3.w | (int)r0.w;
          r0.z = (int)r0.z & (int)r0.w;
          r0.z = min(0.999000013, r0.z);
          r0.z = 1 + -r0.z;
          r0.z = log2(r0.z);
          r0.z = -0.0346573591 * r0.z;
          r0.x = -r0.z * r0.x;
          r0.x = 1.44269502 * r0.x;
          r0.x = exp2(r0.x);
          r0.x = min(1, r0.x);
          r0.x = 1 + -r0.x;
          r2.y = r2.y * r0.x;
        }
        r0.x = 1 + -r2.y;
        r0.xz = r3.xy * r0.xx;
        r3.xy = r0.yy ? r0.xz : r3.xy;
      }
      r0.x = 1 + -r3.x;
      r0.y = r3.x + r3.y;
      r0.y = cmp(0 < r0.y);
      if (r0.y != 0) {
        r0.y = 1;
      } else {
        r0.y = 0.600000024;
      }
    } else {
      r0.xy = float2(0,0.300000012);
    }
    r1.yzw = float3(0.100000001,0.0250000004,0.00749999983) * r0.yyy;
    r1.x = cb1[2].w * r0.x;
    if (r2.x != 0) {
      r0.x = dot(cb1[7].xyz, float3(0.300000012,0.589999974,0.109999999));
      r0.x = min(1, r0.x);
      r1.x = r1.x * r0.x;
    }
    r0.xyzw = r0.yyyy * float4(0.100000001,0.0250000004,0.00749999983,0) + r1.yzwx;
  } else {
    r0.xyzw = float4(0,0,0,0);
  }
  o0.xyzw = cb0[135].yyyy * r0.xyzw;
  return;
}
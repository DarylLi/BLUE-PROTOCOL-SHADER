// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[328];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t2.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.y = (int)r0.x & 15;
  r0.zw = cmp((int2)r0.yy == int2(12,13));
  r1.x = (int)r0.w | (int)r0.z;
  if (r1.x != 0) {
    r2.x = 1;
  } else {
    r2.x = t5.SampleLevel(s0_s, v0.xy, 0).x;
  }
  r1.y = cmp(0 < (uint)r0.y);
  r1.z = cmp((int)r0.y != 14);
  r1.y = r1.z ? r1.y : 0;
  if (r1.y != 0) {
    r1.y = t0.SampleLevel(s0_s, v0.xy, 0).x;
    r1.z = r1.y * cb0[65].x + cb0[65].y;
    r1.y = r1.y * cb0[65].z + -cb0[65].w;
    r1.y = 1 / r1.y;
    r1.y = r1.z + r1.y;
    r1.zw = cmp((int2)r0.yy == int2(7,9));
    r3.xyz = v1.xyz * r1.yyy + cb0[67].xyz;
    r2.z = cmp(cb1[1].z < 0);
    r2.w = asuint(cb0[144].y);
    r4.xy = r2.ww * float2(32.6650009,11.8149996) + v2.xy;
    r2.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
    r2.w = frac(r2.w);
    r2.w = 52.9829178 * r2.w;
    r2.w = frac(r2.w);
    r4.xyzw = t6.SampleLevel(s1_s, v0.xy, 0).xyzw;
    r5.xyzw = r4.xyzw * r4.xyzw;
    r3.w = cb0[37].y * r1.y;
    if (cb1[2].y != 0) {
      r6.xyzw = t4.SampleLevel(s0_s, v0.xy, 0).xyzw;
      r4.zw = (int2)r0.xx & int2(32,64);
      r0.x = r4.w ? 0 : 1;
      r6.xyzw = r4.zzzz ? r0.xxxx : r6.xyzw;
      r6.xyzw = r1.xxxx ? float4(1,1,1,1) : r6.xyzw;
      r0.x = dot(cb1[0].xyzw, float4(1,1,1,1));
      r4.z = dot(r6.xyzw, cb1[0].xyzw);
      r4.z = -1 + r4.z;
      r0.x = r0.x * r4.z + 1;
      r1.y = saturate(r1.y * cb1[1].x + cb1[1].y);
      r1.y = r1.y * r1.y;
      r4.xy = -r4.xy * r4.xy + r0.xx;
      r4.xy = r1.yy * r4.xy + r5.xy;
      r0.x = min(r4.y, r5.w);
      r2.x = r4.x * r5.z;
      r2.y = r0.x * r5.z;
      r0.x = cmp(1 < asuint(cb1[2].y));
      r1.y = cmp(0 < abs(cb1[1].z));
      r0.x = r0.x ? r1.y : 0;
      r1.y = r2.z ? 1 : r3.w;
      r1.y = abs(cb1[1].z) * r1.y;
      r0.x = r0.x ? r1.y : 0;
    } else {
      r2.y = 1;
      r0.x = 0;
    }
    r1.y = cmp(asuint(cb1[2].y) < 2);
    r1.y = r1.z ? r1.y : 0;
    r2.z = 0.200000003 * r3.w;
    r0.x = r1.y ? r2.z : r0.x;
    r0.x = r1.w ? 0.5 : r0.x;
    r1.y = cmp(0 < r0.x);
    if (r1.y != 0) {
      r4.xyzw = cmp((int4)r0.yyyy == int4(2,3,5,6));
      r1.y = (int)r4.y | (int)r4.x;
      r2.z = -0.5 + r2.w;
      r3.xyz = cb0[70].xyz + r3.xyz;
      r5.xyzw = cb0[1].xyzw * r3.yyyy;
      r5.xyzw = r3.xxxx * cb0[0].xyzw + r5.xyzw;
      r3.xyzw = r3.zzzz * cb0[2].xyzw + r5.xyzw;
      r3.xyzw = cb0[3].xyzw + r3.xyzw;
      r5.xyz = cb1[8].xyz * r0.xxx;
      r6.xyzw = cb0[1].xyzw * r5.yyyy;
      r6.xyzw = r5.xxxx * cb0[0].xyzw + r6.xyzw;
      r5.xyzw = r5.zzzz * cb0[2].xyzw + r6.xyzw;
      r5.xyzw = r5.xyzw + r3.xyzw;
      r6.xyz = r3.xyz / r3.www;
      r5.xyz = r5.xyz / r5.www;
      r5.xyz = r5.xyz + -r6.xyz;
      r6.xy = r6.xy * cb0[66].xy + cb0[66].wz;
      r5.xy = cb0[66].xy * r5.xy;
      r3.xy = r0.xx * cb0[30].zw + r3.zw;
      r2.w = r3.x / r3.y;
      r2.w = r2.w + -r6.z;
      r3.x = 0.25 * abs(r2.w);
      r7.xyzw = r2.zzzz * float4(0.125,0.125,0.125,0.125) + float4(0.125,0.25,0.375,0.5);
      r3.yzw = r5.xyz * r7.xxx + r6.xyz;
      r3.y = t0.SampleLevel(s0_s, r3.yz, 0).x;
      r3.y = r3.w + -r3.y;
      r3.y = abs(r2.w) * 0.25 + r3.y;
      r3.y = cmp(abs(r3.y) < r3.x);
      r3.y = r3.y ? r7.x : -1;
      r8.xyz = r5.xyz * r7.yyy + r6.xyz;
      r3.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
      r3.z = r8.z + -r3.z;
      r3.z = abs(r2.w) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.x);
      r3.w = cmp(r3.y < 0);
      r3.z = r3.w ? r3.z : 0;
      r3.y = r3.z ? r7.y : r3.y;
      r8.xyz = r5.xyz * r7.zzz + r6.xyz;
      r3.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
      r3.z = r8.z + -r3.z;
      r3.z = abs(r2.w) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.x);
      r3.w = cmp(r3.y < 0);
      r3.z = r3.w ? r3.z : 0;
      r3.y = r3.z ? r7.z : r3.y;
      r7.xyz = r5.xyz * r7.www + r6.xyz;
      r3.z = t0.SampleLevel(s0_s, r7.xy, 0).x;
      r3.z = r7.z + -r3.z;
      r3.z = abs(r2.w) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.x);
      r3.w = cmp(r3.y < 0);
      r3.z = r3.w ? r3.z : 0;
      r3.y = r3.z ? r7.w : r3.y;
      r7.xyzw = r2.zzzz * float4(0.125,0.125,0.125,0.125) + float4(0.625,0.75,0.875,1);
      r8.xyz = r5.xyz * r7.xxx + r6.xyz;
      r2.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
      r2.z = r8.z + -r2.z;
      r2.z = abs(r2.w) * 0.25 + r2.z;
      r2.z = cmp(abs(r2.z) < r3.x);
      r3.z = cmp(r3.y < 0);
      r2.z = r2.z ? r3.z : 0;
      r2.z = r2.z ? r7.x : r3.y;
      r3.yzw = r5.xyz * r7.yyy + r6.xyz;
      r3.y = t0.SampleLevel(s0_s, r3.yz, 0).x;
      r3.y = r3.w + -r3.y;
      r3.y = abs(r2.w) * 0.25 + r3.y;
      r3.y = cmp(abs(r3.y) < r3.x);
      r3.z = cmp(r2.z < 0);
      r3.y = r3.z ? r3.y : 0;
      r2.z = r3.y ? r7.y : r2.z;
      r3.yzw = r5.xyz * r7.zzz + r6.xyz;
      r3.y = t0.SampleLevel(s0_s, r3.yz, 0).x;
      r3.y = r3.w + -r3.y;
      r3.y = abs(r2.w) * 0.25 + r3.y;
      r3.y = cmp(abs(r3.y) < r3.x);
      r3.z = cmp(r2.z < 0);
      r3.y = r3.z ? r3.y : 0;
      r2.z = r3.y ? r7.z : r2.z;
      r3.yzw = r5.xyz * r7.www + r6.xyz;
      r3.y = t0.SampleLevel(s0_s, r3.yz, 0).x;
      r3.y = r3.w + -r3.y;
      r2.w = abs(r2.w) * 0.25 + r3.y;
      r2.w = cmp(abs(r2.w) < r3.x);
      r3.x = cmp(r2.z < 0);
      r2.w = r2.w ? r3.x : 0;
      r2.z = r2.w ? r7.w : r2.z;
      r2.w = cmp(0 < r2.z);
      if (r2.w != 0) {
        r3.xy = r5.xy * r2.zz + r6.xy;
        r2.w = t1.SampleLevel(s0_s, r3.xy, 0).w;
        r3.z = t2.SampleLevel(s0_s, r3.xy, 0).w;
        r3.z = 255 * r3.z;
        r3.z = round(r3.z);
        r3.z = (uint)r3.z;
        r3.z = (int)r3.z & 15;
        r2.w = 3.99900007 * r2.w;
        r2.w = (uint)r2.w;
        r2.w = (int)r2.w & 1;
        r2.w = cmp((int)r2.w != 0);
        r3.z = cmp((int)r3.z != 9);
        r2.w = r2.w ? r3.z : 0;
        r3.zw = cmp(float2(0,0) < r3.xy);
        r3.xy = cmp(r3.xy < float2(1,1));
        r3.xy = r3.xy ? r3.zw : 0;
        r3.x = r3.y ? r3.x : 0;
        r0.x = r2.z * r0.x;
        r0.x = r3.x ? r0.x : -1;
      } else {
        r2.w = 0;
        r0.x = -1;
      }
      r2.z = cmp(0 < r0.x);
      r2.w = r2.w ? 1 : cb1[1].w;
      r3.x = cmp(0 < r2.w);
      r3.y = (int)r4.z | (int)r1.y;
      r3.y = (int)r4.w | (int)r3.y;
      r3.y = (int)r1.z | (int)r3.y;
      r3.y = (int)r1.w | (int)r3.y;
      r3.x = r3.y ? r3.x : 0;
      r3.yzw = cmp((int3)r0.yyy != int3(7,9,5));
      r3.x = r3.y ? r3.x : 0;
      r3.x = r3.z ? r3.x : 0;
      r3.x = r3.w ? r3.x : 0;
      if (r3.x != 0) {
        r3.x = t3.SampleLevel(s0_s, v0.xy, 0).w;
        r3.yz = cmp((int2)r0.yy == int2(4,8));
        r0.y = (int)r1.y | (int)r3.y;
        r0.y = (int)r4.z | (int)r0.y;
        r0.y = (int)r4.w | (int)r0.y;
        r0.y = (int)r1.z | (int)r0.y;
        r0.y = (int)r3.z | (int)r0.y;
        r0.y = (int)r0.z | (int)r0.y;
        r0.y = (int)r0.w | (int)r0.y;
        r0.y = (int)r1.w | (int)r0.y;
        r0.y = (int)r3.x & (int)r0.y;
        r0.y = min(0.999000013, r0.y);
        r0.y = 1 + -r0.y;
        r0.y = log2(r0.y);
        r0.y = -0.0346573591 * r0.y;
        r0.x = -r0.y * r0.x;
        r0.x = 1.44269502 * r0.x;
        r0.x = exp2(r0.x);
        r0.x = min(1, r0.x);
        r0.x = 1 + -r0.x;
        r2.w = r2.w * r0.x;
      }
      r0.x = 1 + -r2.w;
      r0.xy = r2.xy * r0.xx;
      r2.xy = r2.zz ? r0.xy : r2.xy;
    }
    r0.x = 1 + -r2.x;
    if (r1.x != 0) {
      r0.y = cmp(r2.x >= cb0[327].x);
      r2.xy = r0.yy ? float2(1,1) : 0;
    }
    r0.y = r2.x + r2.y;
    r0.y = cmp(0 < r0.y);
    if (r0.y != 0) {
      r0.y = 1;
    } else {
      r0.y = 0.600000024;
    }
    r2.yzw = float3(0.100000001,0.0250000004,0.00749999983) * r0.yyy;
    r2.x = cb1[2].w * r0.x;
    if (r1.x != 0) {
      r0.x = dot(cb1[7].xyz, float3(0.300000012,0.589999974,0.109999999));
      r0.x = min(1, r0.x);
      r2.x = r2.x * r0.x;
    }
    r0.xyzw = r0.yyyy * float4(0.100000001,0.0250000004,0.00749999983,0) + r2.yzwx;
  } else {
    r0.xyzw = float4(0,0,0,0);
  }
  o0.xyzw = cb0[135].yyyy * r0.xyzw;
  return;
}
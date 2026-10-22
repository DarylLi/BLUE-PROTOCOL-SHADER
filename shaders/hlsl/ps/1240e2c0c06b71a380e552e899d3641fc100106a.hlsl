// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[328];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
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

  r0.x = t3.SampleLevel(s1_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.y = (int)r0.x & 15;
  r0.zw = cmp((int2)r0.yy == int2(12,13));
  r1.x = (int)r0.w | (int)r0.z;
  if (r1.x != 0) {
    r2.x = 1;
  } else {
    r2.x = t6.SampleLevel(s1_s, v0.xy, 0).x;
  }
  r1.y = cmp(0 < (uint)r0.y);
  r1.z = cmp((int)r0.y != 14);
  r1.y = r1.z ? r1.y : 0;
  r1.zw = cb1[132].xy * v0.xy;
  r3.xy = (uint2)r1.zw;
  r3.zw = float2(0,0);
  r1.z = t9.Load(r3.xyz).x;
  r1.z = (int)r1.z & asint(cb2[2].z);
  r1.z = cmp((int)r1.z != 0);
  r1.y = r1.z ? r1.y : 0;
  if (r1.y != 0) {
    r1.y = t1.SampleLevel(s1_s, v0.xy, 0).x;
    r1.z = r1.y * cb1[65].x + cb1[65].y;
    r1.w = r1.y * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r1.z = r1.z + r1.w;
    r2.zw = cmp((int2)r0.yy == int2(7,9));
    r3.xyz = v1.xyz * r1.zzz + cb1[67].xyz;
    r1.w = cmp(cb2[1].z < 0);
    r3.w = asuint(cb1[144].y);
    r4.xy = r3.ww * float2(32.6650009,11.8149996) + v2.xy;
    r3.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r4.xyzw = t7.SampleLevel(s2_s, v0.xy, 0).xyzw;
    r5.xyzw = r4.xyzw * r4.xyzw;
    r4.z = cb1[37].y * r1.z;
    if (cb2[2].y != 0) {
      r6.xyzw = t5.SampleLevel(s1_s, v0.xy, 0).xyzw;
      r7.xy = (int2)r0.xx & int2(32,64);
      r0.x = r7.y ? 0 : 1;
      r6.xyzw = r7.xxxx ? r0.xxxx : r6.xyzw;
      r6.xyzw = r1.xxxx ? float4(1,1,1,1) : r6.xyzw;
      r0.x = dot(cb2[0].xyzw, float4(1,1,1,1));
      r4.w = dot(r6.xyzw, cb2[0].xyzw);
      r4.w = -1 + r4.w;
      r0.x = r0.x * r4.w + 1;
      r1.z = saturate(r1.z * cb2[1].x + cb2[1].y);
      r1.z = r1.z * r1.z;
      r4.xy = -r4.xy * r4.xy + r0.xx;
      r4.xy = r1.zz * r4.xy + r5.xy;
      r0.x = min(r4.y, r5.w);
      r2.x = r4.x * r5.z;
      r2.y = r0.x * r5.z;
      r0.x = cmp(1 < asuint(cb2[2].y));
      r1.z = cmp(0 < abs(cb2[1].z));
      r0.x = r0.x ? r1.z : 0;
      r1.z = r1.w ? 1 : r4.z;
      r1.z = abs(cb2[1].z) * r1.z;
      r0.x = r0.x ? r1.z : 0;
    } else {
      r2.y = 1;
      r0.x = 0;
    }
    r1.z = cmp(asuint(cb2[2].y) < 2);
    r1.z = r2.z ? r1.z : 0;
    r1.w = 0.200000003 * r4.z;
    r0.x = r1.z ? r1.w : r0.x;
    r0.x = r2.w ? 0.5 : r0.x;
    r1.z = cmp(0 < r0.x);
    if (r1.z != 0) {
      r4.xyzw = cmp((int4)r0.yyyy == int4(2,3,5,6));
      r1.z = (int)r4.y | (int)r4.x;
      r1.w = -0.5 + r3.w;
      r3.xyz = cb1[70].xyz + r3.xyz;
      r5.xyzw = cb1[1].xyzw * r3.yyyy;
      r5.xyzw = r3.xxxx * cb1[0].xyzw + r5.xyzw;
      r3.xyzw = r3.zzzz * cb1[2].xyzw + r5.xyzw;
      r3.xyzw = cb1[3].xyzw + r3.xyzw;
      r5.xyz = cb2[8].xyz * r0.xxx;
      r6.xyzw = cb1[1].xyzw * r5.yyyy;
      r6.xyzw = r5.xxxx * cb1[0].xyzw + r6.xyzw;
      r5.xyzw = r5.zzzz * cb1[2].xyzw + r6.xyzw;
      r5.xyzw = r5.xyzw + r3.xyzw;
      r6.xyz = r3.xyz / r3.www;
      r5.xyz = r5.xyz / r5.www;
      r5.xyz = r5.xyz + -r6.xyz;
      r6.xy = r6.xy * cb1[66].xy + cb1[66].wz;
      r5.xy = cb1[66].xy * r5.xy;
      r3.xy = r0.xx * cb1[30].zw + r3.zw;
      r3.x = r3.x / r3.y;
      r3.x = r3.x + -r6.z;
      r3.y = 0.25 * abs(r3.x);
      r7.xyzw = r1.wwww * float4(0.125,0.125,0.125,0.125) + float4(0.125,0.25,0.375,0.5);
      r8.xyz = r5.xyz * r7.xxx + r6.xyz;
      r3.z = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.z = r8.z + -r3.z;
      r3.z = abs(r3.x) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.y);
      r3.z = r3.z ? r7.x : -1;
      r8.xyz = r5.xyz * r7.yyy + r6.xyz;
      r3.w = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.w = r8.z + -r3.w;
      r3.w = abs(r3.x) * 0.25 + r3.w;
      r3.w = cmp(abs(r3.w) < r3.y);
      r4.x = cmp(r3.z < 0);
      r3.w = r3.w ? r4.x : 0;
      r3.z = r3.w ? r7.y : r3.z;
      r8.xyz = r5.xyz * r7.zzz + r6.xyz;
      r3.w = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.w = r8.z + -r3.w;
      r3.w = abs(r3.x) * 0.25 + r3.w;
      r3.w = cmp(abs(r3.w) < r3.y);
      r4.x = cmp(r3.z < 0);
      r3.w = r3.w ? r4.x : 0;
      r3.z = r3.w ? r7.z : r3.z;
      r7.xyz = r5.xyz * r7.www + r6.xyz;
      r3.w = t1.SampleLevel(s1_s, r7.xy, 0).x;
      r3.w = r7.z + -r3.w;
      r3.w = abs(r3.x) * 0.25 + r3.w;
      r3.w = cmp(abs(r3.w) < r3.y);
      r4.x = cmp(r3.z < 0);
      r3.w = r3.w ? r4.x : 0;
      r3.z = r3.w ? r7.w : r3.z;
      r7.xyzw = r1.wwww * float4(0.125,0.125,0.125,0.125) + float4(0.625,0.75,0.875,1);
      r8.xyz = r5.xyz * r7.xxx + r6.xyz;
      r1.w = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r1.w = r8.z + -r1.w;
      r1.w = abs(r3.x) * 0.25 + r1.w;
      r1.w = cmp(abs(r1.w) < r3.y);
      r3.w = cmp(r3.z < 0);
      r1.w = r1.w ? r3.w : 0;
      r1.w = r1.w ? r7.x : r3.z;
      r8.xyz = r5.xyz * r7.yyy + r6.xyz;
      r3.z = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.z = r8.z + -r3.z;
      r3.z = abs(r3.x) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.y);
      r3.w = cmp(r1.w < 0);
      r3.z = r3.w ? r3.z : 0;
      r1.w = r3.z ? r7.y : r1.w;
      r8.xyz = r5.xyz * r7.zzz + r6.xyz;
      r3.z = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.z = r8.z + -r3.z;
      r3.z = abs(r3.x) * 0.25 + r3.z;
      r3.z = cmp(abs(r3.z) < r3.y);
      r3.w = cmp(r1.w < 0);
      r3.z = r3.w ? r3.z : 0;
      r1.w = r3.z ? r7.z : r1.w;
      r7.xyz = r5.xyz * r7.www + r6.xyz;
      r3.z = t1.SampleLevel(s1_s, r7.xy, 0).x;
      r3.z = r7.z + -r3.z;
      r3.x = abs(r3.x) * 0.25 + r3.z;
      r3.x = cmp(abs(r3.x) < r3.y);
      r3.y = cmp(r1.w < 0);
      r3.x = r3.y ? r3.x : 0;
      r1.w = r3.x ? r7.w : r1.w;
      r3.x = cmp(0 < r1.w);
      if (r3.x != 0) {
        r3.xy = r5.xy * r1.ww + r6.xy;
        r3.z = t2.SampleLevel(s1_s, r3.xy, 0).w;
        r3.w = t3.SampleLevel(s1_s, r3.xy, 0).w;
        r3.zw = float2(3.99900007,255) * r3.zw;
        r3.w = round(r3.w);
        r3.zw = (uint2)r3.zw;
        r3.zw = (int2)r3.zw & int2(1,15);
        r3.zw = cmp((int2)r3.zw != int2(0,9));
        r4.xy = cmp(float2(0,0) < r3.xy);
        r3.xy = cmp(r3.xy < float2(1,1));
        r3.xy = r3.xy ? r4.xy : 0;
        r3.xz = r3.yw ? r3.xz : 0;
        r0.x = r1.w * r0.x;
        r0.x = r3.x ? r0.x : -1;
      } else {
        r3.z = 0;
        r0.x = -1;
      }
      r1.w = cmp(0 < r0.x);
      r3.x = r3.z ? 1 : cb2[1].w;
      r3.y = cmp(0 < r3.x);
      r3.z = (int)r4.z | (int)r1.z;
      r3.z = (int)r4.w | (int)r3.z;
      r3.z = (int)r2.z | (int)r3.z;
      r3.z = (int)r2.w | (int)r3.z;
      r3.y = r3.y ? r3.z : 0;
      r5.xyz = cmp((int3)r0.yyy != int3(7,9,5));
      r3.y = r3.y ? r5.x : 0;
      r3.y = r5.y ? r3.y : 0;
      r3.y = r5.z ? r3.y : 0;
      if (r3.y != 0) {
        r3.y = t4.SampleLevel(s1_s, v0.xy, 0).w;
        r3.zw = cmp((int2)r0.yy == int2(4,8));
        r0.y = (int)r1.z | (int)r3.z;
        r0.y = (int)r4.z | (int)r0.y;
        r0.y = (int)r4.w | (int)r0.y;
        r0.y = (int)r2.z | (int)r0.y;
        r0.y = (int)r3.w | (int)r0.y;
        r0.y = (int)r0.z | (int)r0.y;
        r0.y = (int)r0.w | (int)r0.y;
        r0.y = (int)r2.w | (int)r0.y;
        r0.y = (int)r3.y & (int)r0.y;
        r0.y = min(0.999000013, r0.y);
        r0.y = 1 + -r0.y;
        r0.y = log2(r0.y);
        r0.y = -0.0346573591 * r0.y;
        r0.x = -r0.y * r0.x;
        r0.x = 1.44269502 * r0.x;
        r0.x = exp2(r0.x);
        r0.x = min(1, r0.x);
        r0.x = 1 + -r0.x;
        r3.x = r3.x * r0.x;
      }
      r0.x = 1 + -r3.x;
      r0.xy = r2.xy * r0.xx;
      r2.xy = r1.ww ? r0.xy : r2.xy;
    }
    r0.x = 1 + -r2.x;
    if (r1.x != 0) {
      r0.y = cmp(r2.x >= cb1[327].x);
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
    r2.x = cb2[2].w * r0.x;
    if (r1.x != 0) {
      r0.x = dot(cb2[7].xyz, float3(0.300000012,0.589999974,0.109999999));
      r0.x = min(1, r0.x);
      r2.x = r2.x * r0.x;
    }
    r0.xyzw = r0.yyyy * float4(0.100000001,0.0250000004,0.00749999983,0) + r2.yzwx;
    r2.xyzw = cb1[45].xyzw * v2.yyyy;
    r2.xyzw = v2.xxxx * cb1[44].xyzw + r2.xyzw;
    r1.xyzw = r1.yyyy * cb1[46].xyzw + r2.xyzw;
    r1.xyzw = cb1[47].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xyz = -cb1[70].xyz + r1.xyz;
    r2.xyz = -cb1[173].xyz + r1.xyz;
    r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r2.xyz;
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = dot(cb2[8].xyz, cb2[8].xyz);
    r3.x = dot(cb2[8].xyz, r2.xyz);
    r3.x = r3.x + r3.x;
    r3.y = cb1[179].z * cb1[179].z;
    r3.z = -cb1[179].z * cb1[179].z + r1.w;
    r3.w = r3.z * r2.w;
    r3.w = 4 * r3.w;
    r3.w = r3.x * r3.x + -r3.w;
    r4.x = cmp(r3.w >= 0);
    r3.w = sqrt(r3.w);
    r3.xw = r3.ww * float2(-1,1) + -r3.xx;
    r2.w = r2.w + r2.w;
    r3.xw = r3.xw / r2.ww;
    r3.xw = r4.xx ? r3.xw : float2(-1,-1);
    r3.xw = cmp(float2(0,0) < r3.xw);
    r2.w = (int)r3.w | (int)r3.x;
    if (r2.w == 0) {
      r2.w = sqrt(r1.w);
      r2.xyz = r2.xyz / r2.www;
      r2.x = dot(cb2[8].xyz, r2.xyz);
      r2.y = cb1[179].w * cb1[179].w;
      r2.z = cb1[179].w * cb1[179].w + -r3.y;
      r2.z = max(0, r2.z);
      r2.z = sqrt(r2.z);
      r3.x = max(0, r3.z);
      r3.x = sqrt(r3.x);
      r3.y = r2.x * r2.x + -1;
      r1.w = r1.w * r3.y + r2.y;
      r1.w = sqrt(r1.w);
      r1.w = -r2.w * r2.x + r1.w;
      r1.w = max(0, r1.w);
      r2.x = cb1[179].w + -r2.w;
      r2.y = r3.x + r2.z;
      r1.w = -r2.x + r1.w;
      r2.x = r2.y + -r2.x;
      r2.x = r1.w / r2.x;
      r2.y = r3.x / r2.z;
      r2.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
    } else {
      r2.xyz = float3(0,0,0);
    }
    r2.xyz = r2.xyz * r0.xyz;
    r3.xyzw = cb0[2].xyzw * r1.yyyy;
    r3.xyzw = r1.xxxx * cb0[1].xyzw + r3.xyzw;
    r1.xyzw = r1.zzzz * cb0[3].xyzw + r3.xyzw;
    r1.xyzw = cb0[4].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyw = t8.SampleLevel(s3_s, r1.xy, 0).xyz;
    r1.z = saturate(1 + -r1.z);
    r1.x = r1.z * cb0[0].x + -r1.x;
    r1.x = max(0, r1.x);
    r1.x = r1.x * r1.y;
    r1.x = 1000 * r1.x;
    r1.x = min(r1.w, r1.x);
    r1.x = -1.44269502 * r1.x;
    r1.x = exp2(r1.x);
    r1.x = min(1, r1.x);
    r1.x = -1 + r1.x;
    r1.x = cb0[5].x * r1.x + 1;
    r0.xyz = r2.xyz * r1.xxx;
  } else {
    r0.xyzw = float4(0,0,0,0);
  }
  o0.xyzw = cb1[135].yyyy * r0.xyzw;
  return;
}
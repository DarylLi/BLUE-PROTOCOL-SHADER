// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[83];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[151];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float2 v8 : ATTRIBUTE6,
  float3 v9 : ATTRIBUTE11,
  float3 v10 : ATTRIBUTE12,
  float4 v11 : ATTRIBUTE13,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t2.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t2.Load(r2.x).xyzw;
  r4.xyzw = t2.Load(r2.y).xyzw;
  r5.xyzw = t2.Load(r0.y).xyzw;
  r6.xyzw = t2.Load(r2.z).xyzw;
  r2.xyzw = t2.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r2.xyzw = v5.yyyy * r2.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r2.xyzw = v5.xxxx * r4.xyzw + r2.xyzw;
  r4.xyzw = t2.Load(r0.z).xyzw;
  r5.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r6.xyzw = t2.Load(r5.x).xyzw;
  r7.xyzw = t2.Load(r5.y).xyzw;
  r1.xyzw = v5.zzzz * r4.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r6.xyzw + r3.xyzw;
  r2.xyzw = v5.zzzz * r7.xyzw + r2.xyzw;
  r0.xyzw = t2.Load(r0.w).xyzw;
  r4.xyzw = t2.Load(r5.z).xyzw;
  r5.xyzw = t2.Load(r5.w).xyzw;
  r0.xyzw = v5.wwww * r0.xyzw + r1.xyzw;
  r1.xyzw = v5.wwww * r4.xyzw + r3.xyzw;
  r2.xyzw = v5.wwww * r5.xyzw + r2.xyzw;
  r3.x = cmp(4 < asuint(cb0[1].y));
  if (r3.x != 0) {
    r3.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r4.xyzw = t2.Load(r3.x).xyzw;
    r5.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r6.xyzw = t2.Load(r5.x).xyzw;
    r7.xyzw = t2.Load(r5.y).xyzw;
    r4.xyzw = v6.xxxx * r4.xyzw + r0.xyzw;
    r6.xyzw = v6.xxxx * r6.xyzw + r1.xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r2.xyzw;
    r8.xyzw = t2.Load(r3.y).xyzw;
    r9.xyzw = t2.Load(r5.z).xyzw;
    r5.xyzw = t2.Load(r5.w).xyzw;
    r4.xyzw = v6.yyyy * r8.xyzw + r4.xyzw;
    r6.xyzw = v6.yyyy * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.yyyy * r5.xyzw + r7.xyzw;
    r7.xyzw = t2.Load(r3.z).xyzw;
    r8.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r9.xyzw = t2.Load(r8.x).xyzw;
    r10.xyzw = t2.Load(r8.y).xyzw;
    r4.xyzw = v6.zzzz * r7.xyzw + r4.xyzw;
    r6.xyzw = v6.zzzz * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.zzzz * r10.xyzw + r5.xyzw;
    r3.xyzw = t2.Load(r3.w).xyzw;
    r7.xyzw = t2.Load(r8.z).xyzw;
    r8.xyzw = t2.Load(r8.w).xyzw;
    r0.xyzw = v6.wwww * r3.xyzw + r4.xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r6.xyzw;
    r2.xyzw = v6.wwww * r8.xyzw + r5.xyzw;
  }
  r3.x = dot(r0.xyz, v1.xyz);
  r3.y = dot(r1.xyz, v1.xyz);
  r3.z = dot(r2.xyz, v1.xyz);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r4.x = dot(r0.xyz, v2.xyz);
  r4.y = dot(r1.xyz, v2.xyz);
  r4.z = dot(r2.xyz, v2.xyz);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r5.xyz = v9.xyz + v0.xyz;
  r5.w = 1;
  r0.x = dot(r0.xyzw, r5.xyzw);
  r0.y = dot(r1.xyzw, r5.xyzw);
  r0.z = dot(r2.xyzw, r5.xyzw);
  r0.xyz = v10.xyz + r0.xyz;
  r1.xyz = cb3[1].xyz * r0.yyy;
  r0.xyw = cb3[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb3[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb3[3].xyz + cb2[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb3[1].xyz * r4.yyy;
  r1.xyz = r4.xxx * cb3[0].xyz + r1.xyz;
  r1.xyz = r4.zzz * cb3[2].xyz + r1.xyz;
  r2.xyz = -cb2[70].xyz + r0.xyz;
  r5.xyz = -cb4[46].xyz + r2.xyz;
  r0.w = cb3[7].z * r5.y;
  r0.w = r5.x * cb3[6].z + r0.w;
  r0.w = saturate(r5.z * cb3[8].z + r0.w);
  r0.w = ceil(r0.w);
  r6.xyz = cb4[46].xyz + -r2.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb4[82].y;
  r1.w = cb4[82].z * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  r1.w = dot(cb3[1].xyz, r5.xyz);
  r5.xyz = cb3[1].xyz * r1.www + cb4[46].xyz;
  r6.xyz = -r5.xyz + r2.xyz;
  r7.xyz = cb3[1].zxy * r6.yzx;
  r7.xyz = cb3[1].yzx * r6.zxy + -r7.xyz;
  sincos(r0.w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r2.xyz = r5.xyz + -r2.xyz;
  r0.xyz = r2.xyz * cb4[82].www + r0.xyz;
  r2.xyzw = cb2[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb2[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb2[2].xyzw + r2.xyzw;
  r2.xyzw = cb2[3].xyzw + r2.xyzw;
  r5.xyz = cb2[21].xyz * r1.yyy;
  r1.xyw = r1.xxx * cb2[20].xyz + r5.xyz;
  r1.xyz = r1.zzz * cb2[22].xyz + r1.xyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xy = r1.xy / r0.ww;
  o4.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r1.xyz = cb3[4].xxx * cb3[0].xyz;
  r5.xyz = cb3[4].yyy * cb3[1].xyz;
  r6.xyz = cb3[4].zzz * cb3[2].xyz;
  r7.xyz = r5.xyz * r3.yyy;
  r3.xyw = r3.xxx * r1.xyz + r7.xyz;
  o0.xyz = r3.zzz * r6.xyz + r3.xyw;
  r3.xyz = r5.xyz * r4.yyy;
  r1.xyz = r4.xxx * r1.xyz + r3.xyz;
  o1.xyz = r4.zzz * r6.xyz + r1.xyz;
  o1.w = cb3[4].w * v2.w;
  r1.xyz = -cb2[68].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r3.x = dot(r1.xyz, cb2[60].xyz);
  r0.w = r0.w / r3.x;
  r0.w = cb2[210].z * r0.w;
  r0.w = max(0, r0.w);
  r3.x = min(cb2[67].z, cb1[143].z);
  r3.y = cb2[67].z + -r3.x;
  r1.w = r3.y + r1.z;
  r1.z = dot(r1.xyw, r1.xyw);
  r3.y = rsqrt(r1.z);
  r1.z = r3.y * r1.z;
  r0.w = max(cb1[143].w, r0.w);
  r3.z = cmp(0 < r0.w);
  r3.w = r0.w * r3.y;
  r3.x = r3.w * r1.w + r3.x;
  r3.w = -r3.w * r1.w + r1.w;
  r0.w = -r0.w * r3.y + 1;
  r0.w = r0.w * r1.z;
  r4.x = -cb1[146].y + r3.x;
  r4.x = cb1[143].y * r4.x;
  r4.x = max(-127, r4.x);
  r4.x = exp2(-r4.x);
  r4.x = cb1[146].x * r4.x;
  r3.x = -cb1[144].w + r3.x;
  r3.x = cb1[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb1[144].z * r3.x;
  r4.x = r3.z ? r4.x : cb1[143].x;
  r3.x = r3.z ? r3.x : cb1[144].x;
  r0.w = r3.z ? r0.w : r1.z;
  r3.z = r3.z ? r3.w : r1.w;
  r3.w = cb1[143].y * r3.z;
  r3.w = max(-127, r3.w);
  r4.y = exp2(-r3.w);
  r4.y = 1 + -r4.y;
  r4.y = r4.y / r3.w;
  r4.z = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r4.y : r4.z;
  r3.z = cb1[144].y * r3.z;
  r3.z = max(-127, r3.z);
  r4.y = exp2(-r3.z);
  r4.y = 1 + -r4.y;
  r4.y = r4.y / r3.z;
  r4.z = -r3.z * 0.240226507 + 0.693147182;
  r3.z = cmp(0.00999999978 < abs(r3.z));
  r3.z = r3.z ? r4.y : r4.z;
  r3.x = r3.x * r3.z;
  r3.x = r4.x * r3.w + r3.x;
  r3.z = r3.x * r0.w;
  r4.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r4.x != 0) {
    r3.w = saturate(r1.z * cb1[150].x + cb1[150].y);
    r4.xz = float2(1,-1) * cb1[149].yx;
    r5.x = dot(r1.xy, r4.xz);
    r5.y = dot(r1.xy, cb1[149].xy);
    r5.z = r1.w;
    r4.xzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = t0.SampleLevel(s0_s, r5.xyz, cb1[150].z).xyz;
    r4.xzw = -r5.xyz + r4.xzw;
    r4.xzw = r3.www * r4.xzw + r5.xyz;
    r4.xzw = cb1[145].xyz * r4.xzw;
  } else {
    r4.xzw = cb1[145].xyz;
  }
  r3.w = cmp(cb1[147].w >= 0);
  r5.x = cmp(cb1[146].z == 0.000000);
  r3.w = r3.w ? r5.x : 0;
  if (r3.w != 0) {
    r1.xyw = r3.yyy * r1.xyw;
    r1.x = saturate(dot(r1.xyw, cb1[147].xyz));
    r1.x = log2(r1.x);
    r1.x = cb1[148].w * r1.x;
    r1.x = exp2(r1.x);
    r1.xyw = cb1[148].xyz * r1.xxx;
    r0.w = -cb1[147].w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = r3.x * r0.w;
    r0.w = exp2(-r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r5.xyz = r1.xyw * r0.www;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.w = exp2(-r3.z);
  r0.w = min(1, r0.w);
  r5.w = max(cb1[145].w, r0.w);
  r0.w = cmp(cb1[146].w < r1.z);
  r0.w = r0.w ? r4.y : 0;
  r1.xyzw = r0.wwww ? float4(0,0,0,1) : r5.xyzw;
  r0.w = 1 + -r1.w;
  r1.xyz = r4.xzw * r0.www + r1.xyz;
  r0.w = cmp(0 < cb2[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb2[184].x);
    r3.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r4.xy = r2.xy / r2.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.xyz;
    r3.x = dot(r0.xyz, r0.xyz);
    r3.y = sqrt(r3.x);
    r3.y = -cb2[181].x + r3.y;
    r3.y = max(0, r3.y);
    r3.y = cb2[182].x * r3.y;
    r3.y = cb2[181].z * r3.y;
    r5.z = sqrt(r3.y);
    r3.y = cb2[181].y * r5.z;
    r3.z = cmp(r3.y < 0.707106769);
    r3.y = dot(r3.yy, r3.yy);
    r3.y = min(1, r3.y);
    r3.y = r3.z ? r3.y : 1;
    r3.x = rsqrt(r3.x);
    r0.xyz = r3.xxx * r0.xyz;
    r3.x = -r0.z * r0.z + 1;
    r3.x = sqrt(r3.x);
    r6.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r3.xx;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r3.x = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r3.x = r3.x * abs(r0.x) + -0.212114394;
    r3.x = r3.x * abs(r0.x) + 1.57072878;
    r3.z = r3.x * r0.z;
    r3.z = r3.z * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r3.z : 0;
    r0.x = r3.x * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r6.x = 0.159154937 * r0.x;
    r0.xy = cb2[180].zw * float2(0.5,0.5) + r6.xy;
    r3.xz = float2(1,1) + cb2[180].xy;
    r3.xz = cb2[180].xy / r3.xz;
    r0.xy = r3.xz * r0.xy;
    r5.xy = r0.ww ? r0.xy : r4.xy;
    r0.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r0.xyz = r0.xyz * r3.yyy;
    r0.w = 1 + -r0.w;
    r0.w = -r3.y * r0.w + 1;
    r0.xyz = cb2[135].zzz * r0.xyz;
    o5.xyz = r0.xyz * r1.www + r1.xyz;
    o5.w = r1.w * r0.w;
  } else {
    o5.xyzw = r1.xyzw;
  }
  o0.w = 0;
  o2.xyzw = v11.xyzw;
  o3.xy = v7.xy;
  o3.zw = v8.xy;
  o4.zw = float2(0,0);
  o6.xyzw = r2.xyzw;
  return;
}
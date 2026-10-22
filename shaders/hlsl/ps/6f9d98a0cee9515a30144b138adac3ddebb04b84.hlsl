// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r1.zw = t3.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[2].xxx * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb3[2].yyy * cb3[1].xyz;
  r4.xyz = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xyz;
  r0.w = cb3[3].x * cb2[1].w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = cb3[3].y + r1.x;
  r1.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r2.w / r1.w);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r1.z = r1.w * r2.w + r1.z;
  r1.y = r1.y / r1.z;
  r1.x = r1.x / cb3[3].y;
  r1.z = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r1.z ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[3].x));
  r1.y = 1 + cb3[3].x;
  r1.x = r1.x ? r1.y : 1.39999998;
  r1.yzw = -cb0[129].xxy + v4.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.x = r1.x + -r1.y;
  r5.xy = cb0[152].xx + r1.zw;
  r5.xy = (uint2)r5.xy;
  r1.y = (uint)r5.y << 1;
  r1.y = (int)r1.y + (int)r5.x;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t5.SampleBias(s3_s, r1.zw, cb0[143].y).x;
  r1.y = r1.y + r1.z;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r1.x = cmp(cb1[0].x != 0.000000);
  r1.y = cmp(0.00100000005 < abs(cb1[0].x));
  r1.x = r1.y ? r1.x : 0;
  r1.yz = floor(v4.xy);
  r1.y = dot(r1.yz, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r1.z = cmp(cb1[0].x < 0);
  r1.w = 1 + cb1[0].x;
  r1.w = cmp(r1.y < r1.w);
  r1.y = cmp(cb1[0].x < r1.y);
  r1.y = r1.z ? r1.w : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r0.w = -0.333299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r4.xyz = saturate(r4.xyz);
  r1.xy = saturate(cb3[2].zw);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.y = t2[r0.w].val[4/4];
  r1.z = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r1.z);
  if (r0.w != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.z = cb0[137].w * r1.x;
  r5.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.zzz ? r6.xyz : r5.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r1.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r1.z].val[0/4];
    r6.y = t2[r1.z].val[0/4+1];
    r6.z = t2[r1.z].val[0/4+2];
    r6.xyz = -r6.xyz + r2.xyz;
    r7.x = t2[r1.w].val[0/4];
    r7.y = t2[r1.w].val[0/4+1];
    r7.z = t2[r1.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.z = (int)r6.y | (int)r6.x;
    r1.z = (int)r6.z | (int)r1.z;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r1.zzz ? r2.xyz : r3.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.z;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.x;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
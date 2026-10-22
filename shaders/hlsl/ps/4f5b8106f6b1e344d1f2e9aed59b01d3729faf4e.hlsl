// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
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
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = t2.SampleBias(s1_s, v3.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[4].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * cb1[5].xyz;
  r3.xyz = v2.xxx * float3(100,10,1) + r3.xyz;
  r3.xyz = frac(r3.xyz);
  r0.w = dot(r3.xy, r3.yz);
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb2[4].zz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r3.xyz = r3.xyz / r1.www;
  r4.xyzw = t3.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r4.xyz;
  r4.xyz = cb2[5].yyy * r5.xyz + r4.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r5.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb2[5].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xyz = r4.xyz * r7.xxx + r5.xyz;
  r4.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb2[3].xyz * r4.xyz;
  r3.xyz = r0.www * r3.xyz + r4.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r0.w = cb2[5].z * r4.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[5].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v4.xy);
  r3.w = dot(r4.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r4.x = cmp(v2.w < 0);
  r4.y = 1 + v2.w;
  r4.y = cmp(r3.w < r4.y);
  r3.w = cmp(v2.w < r3.w);
  r3.w = r4.x ? r4.y : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.w = r2.w ? r3.w : 0;
  if (r2.w != 0) discard;
  r0.w = -0.333299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  r0.w = (int)r0.w | (int)r1.w;
  if (r0.w != 0) discard;
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r4.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r0.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.w = t1.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r4.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r1.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
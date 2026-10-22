// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[8].xx * v4.xy;
  r0.w = cb4[8].y + cb0[143].y;
  r4.xy = t2.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[8].zzz * r5.xyz + r4.xyz;
  r5.xy = t3.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[8].www * r6.xyz + r5.xyz;
  r5.xyz = cb4[9].xxx * r4.xyz + r5.xyz;
  r0.w = dot(v2.yyy, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r0.www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r3.w = 1 + -cb2[1].x;
  r0.y = saturate(r3.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r4.w = cb2[1].y * r0.y;
  r4.w = exp2(r4.w);
  r5.x = 1 + -cb2[0].w;
  r4.w = r4.w * r5.x + cb2[0].w;
  r5.x = cmp(r4.w >= cb2[0].y);
  r5.x = r5.x ? 1.000000 : 0;
  r4.w = r5.x * r4.w;
  r5.x = r0.z * r2.w + 1;
  r5.y = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb2[0].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = min(1, r5.x);
  r5.x = r5.y ? 0 : r5.x;
  r4.w = r5.x * r4.w;
  r0.z = -r0.z * r2.w + 1;
  r2.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r2.w ? 0 : r0.z;
  r0.z = r4.w * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r5.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r6.xyz, r7.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.z;
  r6.xyz = cb3[9].xyz * r0.xxx;
  r6.xyz = cb3[1].yyy * r6.xyz;
  r5.xyz = r5.xyz * cb3[1].xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.xyz;
  r6.xyz = cb4[2].xyz * r5.xyz;
  r5.xyz = -r5.xyz * cb4[2].xyz + cb4[3].xyz;
  r5.xyz = cb4[9].yyy * r5.xyz + r6.xyz;
  r6.xyz = t4.SampleBias(s3_s, r1.zw, cb0[143].y).xyz;
  r0.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.xxx + -r6.xyz;
  r6.xyz = cb4[10].xxx * r7.xyz + r6.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[5].xyz * r6.xyz;
  r0.xz = cb4[10].ww * r1.zw;
  r7.xyz = t5.SampleBias(s4_s, r0.xz, cb0[143].y).xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb4[11].xxx * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[10].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb4[7].xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t6.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r7.yz = cb4[11].yz + r1.zw;
  r7.x = saturate(r7.y);
  r0.xz = t7.SampleBias(s6_s, r0.xz, cb0[143].y).xy;
  r8.y = saturate(cb4[11].w + r0.x);
  r8.x = cb4[12].x + r0.z;
  r0.xz = r8.xy + -r7.zx;
  r0.xz = saturate(r0.ww * r0.xz + r7.zx);
  r0.y = cb4[12].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[12].z * r0.y;
  r0.w = saturate(cb4[13].x + v1.z);
  r0.y = r0.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb4[13].y * r0.y);
  r1.zw = -cb0[129].xy + v5.xy;
  r7.xy = cb0[152].xx + r1.zw;
  r7.xy = (uint2)r7.xy;
  r0.w = (uint)r7.y << 1;
  r0.w = (int)r0.w + (int)r7.x;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t8.SampleBias(s7_s, r1.zw, cb0[143].y).x;
  r0.w = r1.z + r0.w;
  r0.w = cb4[13].z * r0.w;
  r0.w = 0.166666672 * r0.w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r2.w = r1.x * cb0[65].z + -cb0[65].w;
  r2.w = 1 / r2.w;
  r1.w = r2.w + r1.w;
  r1.z = r1.z ? r1.y : r1.w;
  r1.z = r1.z / cb4[13].w;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[14].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = cb4[14].y * r1.z;
  r1.z = max(1, r1.z);
  r1.z = r1.w ? 1 : r1.z;
  r0.w = r0.w * r1.z + r1.y;
  r0.w = r1.x / r0.w;
  r0.w = min(v5.z, r0.w);
  r1.x = -r0.w * r1.y + r1.x;
  r1.x = r1.x / r0.w;
  r1.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.w = cmp(0.00100000005 < abs(v3.w));
  r2.xy = floor(v5.xy);
  r2.x = dot(r2.xy, float2(347.834503,3343.28369));
  r2.x = cos(r2.x);
  r2.x = 1000 * r2.x;
  r2.x = frac(r2.x);
  r2.y = cmp(v3.w < 0);
  r2.z = 1 + v3.w;
  r2.z = cmp(r2.x < r2.z);
  r2.x = cmp(v3.w < r2.x);
  r2.x = r2.y ? r2.z : r2.x;
  r2.x = cmp((int)r2.x == 0);
  r1.w = r1.w ? r2.x : 0;
  if (r1.w != 0) discard;
  r2.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r0.z * cb0[139].y + cb0[139].x;
  r0.z = cmp(0 < cb1[20].z);
  if (r0.z != 0) {
    r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r6.xyz = (int3)r3.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.z = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r6.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r6.xyz * r0.zzz + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r0.z = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r0.z = 1;
  }
  r1.w = 0.0799999982 * r0.y;
  r3.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r3.xyz = r0.xxx * r3.xyz + r1.www;
  r6.xyz = -r2.xyz * r0.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.xyz = r1.www ? r3.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r3.xyz = r6.xyz + r3.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.www ? r1.xyz : r5.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r0.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.w;
  return;
}
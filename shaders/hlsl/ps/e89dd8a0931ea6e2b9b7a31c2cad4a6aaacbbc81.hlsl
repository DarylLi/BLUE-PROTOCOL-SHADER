// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[18];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[8].xx * v3.xy;
  r0.w = cb4[8].y + cb0[143].y;
  r4.xy = t2.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[8].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
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
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r3.w = cb2[1].y * r0.y;
  r3.w = exp2(r3.w);
  r4.w = 1 + -cb2[0].w;
  r3.w = r3.w * r4.w + cb2[0].w;
  r4.w = cmp(r3.w >= cb2[0].y);
  r4.w = r4.w ? 1.000000 : 0;
  r3.w = r4.w * r3.w;
  r4.w = r0.z * r0.w + 1;
  r5.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb2[0].x * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.x ? 0 : r4.w;
  r3.w = r4.w * r3.w;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r3.w * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r5.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r5.xyz * cb3[1].xxx + r0.xzw;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r4.w = r1.x * cb0[65].z + -cb0[65].w;
  r4.w = 1 / r4.w;
  r3.w = r4.w + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = r2.w / cb4[8].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[9].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = cb4[9].y * r3.w;
  r3.w = max(1, r3.w);
  r3.w = r4.w ? 1 : r3.w;
  r5.xy = r1.zw / cb4[10].xx;
  r5.xy = cb4[10].yz + r5.xy;
  r5.xyz = t3.SampleBias(s2_s, r5.xy, cb0[143].y).xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[9].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[2].xyz * r5.xyz;
  r6.xy = cb4[11].xx * v3.xy;
  r4.w = t4.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[11].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = cb4[11].z * r4.w;
  r4.w = r5.w ? 0 : r4.w;
  r4.w = cb0[142].z * cb4[10].w + r4.w;
  r4.w = 6.28318548 * r4.w;
  r4.w = sin(r4.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * cb4[12].x + cb4[11].w;
  r4.w = max(cb4[12].z, r4.w);
  r4.w = min(cb4[12].y, r4.w);
  r4.w = cb4[12].w * r4.w;
  r4.w = cb3[3].y * r4.w;
  r5.xyz = r5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.www;
  r0.xzw = cb2[2].xyz * r0.xzw + r5.xyz;
  r5.xyz = cb4[4].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[4].xyz + cb4[5].xyz;
  r0.xzw = cb4[13].xxx * r0.xzw + r5.xyz;
  r5.xyzw = t5.SampleBias(s4_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r5.xyz;
  r5.xyz = cb4[13].www * r6.xyz + r5.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[13].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[7].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.zw = t6.SampleBias(s5_s, r1.zw, cb0[143].y).yx;
  r3.w = saturate(cb4[14].x + r1.w);
  r0.y = cb4[14].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[14].z * r0.y;
  r4.w = saturate(cb4[15].x + v1.z);
  r0.y = r4.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r1.w = saturate(cb4[15].y * r0.y);
  r0.y = r2.w / cb4[15].z;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r4.w = r6.x * cb0[130].z + -0.469999999;
  r4.w = 4.93230057 * r4.w;
  r4.w = cos(r4.w);
  r4.w = 0.899999976 + r4.w;
  r4.w = saturate(0.555555582 * r4.w);
  r4.w = cb4[16].x + -r4.w;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r6.w = (uint)r6.w << 1;
  r6.x = (int)r6.w + (int)r6.x;
  r6.x = (uint)r6.x % 5;
  r6.x = (uint)r6.x;
  r6.yz = float2(0.015625,0.015625) * r6.yz;
  r6.y = t7.SampleBias(s6_s, r6.yz, cb0[143].y).x;
  r6.x = r6.x + r6.y;
  r6.x = 0.166666672 * r6.x;
  r0.y = r0.y * r4.w + r6.x;
  r0.y = saturate(-0.5 + r0.y);
  r0.y = r5.w * r0.y;
  r4.w = cb4[16].y * r6.x;
  r2.w = r2.w / cb4[16].z;
  r5.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[16].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = cb4[17].x * r2.w;
  r2.w = max(1, r2.w);
  r2.w = r5.w ? 1 : r2.w;
  r2.w = r4.w * r2.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v4.z, r2.w);
  r1.x = -r2.w * r1.y + r1.x;
  r1.x = r1.x / r2.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r3.xy = floor(v4.xy);
  r1.y = dot(r3.xy, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r3.x = cmp(v2.w < 0);
  r3.y = 1 + v2.w;
  r3.y = cmp(r1.y < r3.y);
  r1.y = cmp(v2.w < r1.y);
  r1.y = r3.x ? r3.y : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r0.y = r0.y * v2.y + -0.333299994;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  r3.xyz = min(float3(1,1,1), r5.xyz);
  r1.z = saturate(r1.z);
  o2.z = r3.w * cb0[139].y + cb0[139].x;
  r0.y = cmp(0 < cb1[20].z);
  if (r0.y != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.y = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.yyy + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.y = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.y = 1;
  }
  r1.x = 0.0799999982 * r1.w;
  r5.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r5.xyz = r1.zzz * r5.xyz + r1.xxx;
  r6.xyz = -r3.xyz * r1.zzz + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r1.xxx ? r5.xyz : r6.xyz;
  r6.xyz = r1.xxx ? float3(0,0,0) : r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.x = (int)r6.y | (int)r6.x;
    r1.x = (int)r6.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r1.xxx ? r2.xyz : r0.xzw;
  }
  r0.xzw = cb0[145].yyy * r5.xyz + r0.xzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.x;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r1.zw;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}
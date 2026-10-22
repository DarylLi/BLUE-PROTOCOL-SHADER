// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t2.SampleBias(s1_s, v3.xy, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r3.xy, r3.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r3.z = sqrt(r1.z);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[6].xxx * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * r0.www;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[6].yyy * cb2[1].xyz;
  r4.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * cb1[5].xyz;
  r4.xyz = v2.xxx * float3(100,10,1) + r4.xyz;
  r4.xyz = frac(r4.xyz);
  r0.w = dot(r4.xy, r4.yz);
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb2[6].zz);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = sqrt(r1.z);
  r4.xyz = r4.xyz / r1.zzz;
  r5.xyz = -cb0[67].xyz + r2.xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = sqrt(r1.z);
  r1.w = r1.z / cb2[6].w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[7].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r3.w = 1 + cb2[7].y;
  r1.w = r3.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb0[143].y + r1.w;
  r1.w = -1 + r1.w;
  r5.xyzw = t3.SampleBias(s2_s, v3.xy, r1.w).xyzw;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r0.w = saturate(dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r1.w = 1 + -r0.w;
  r1.w = r1.w + r1.w;
  r5.xyz = -r1.www * cb2[4].xyz + float3(1,1,1);
  r1.w = r0.w + r0.w;
  r6.xyz = cb2[3].xyz * r1.www;
  r0.w = cmp(r0.w >= 0.5);
  r5.xyz = r0.www ? r5.xyz : r6.xyz;
  r0.w = r1.z / cb2[7].z;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[7].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r5.xyz = r5.xyz + -r4.xyz;
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = cb2[8].xxx * r5.xyz + r4.xyz;
  r5.xyz = cb2[8].yyy * r4.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r0.w = cmp(cb0[31].w < 1);
  r1.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.z + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb2[9].y;
  r1.xyz = -cb0[129].xxy + v4.xxy;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.x = 4.93230057 * r1.x;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.x = cb2[9].w + -r1.x;
  r6.xy = cb0[152].xx + r1.yz;
  r6.xy = (uint2)r6.xy;
  r1.w = (uint)r6.y << 1;
  r1.w = (int)r1.w + (int)r6.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r1.y = t4.SampleBias(s3_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r1.xyz = saturate(cb2[11].www * r4.xyz);
  r1.w = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v4.xy);
  r2.w = dot(r4.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(v2.w < 0);
  r4.x = 1 + v2.w;
  r4.x = cmp(r2.w < r4.x);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.w ? r4.x : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.w = r1.w ? r2.w : 0;
  if (r1.w != 0) discard;
  r0.w = r5.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r5.xyz);
  r5.xy = saturate(cb2[8].zw);
  o2.z = r5.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[9].x);
  r1.xyz = saturate(r1.xyz * cb0[136].www + cb0[136].xyz);
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r5.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r0.www + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r0.w = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  o4.xyz = sqrt(r1.xyz);
  r1.x = cb0[137].w * r5.x;
  r1.yzw = r4.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r1.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.yzw;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r1.yzw;
  r1.yzw = r1.xxx ? r5.yzw : r1.yzw;
  r5.yzw = r1.xxx ? float3(0,0,0) : r6.xyz;
  r1.xyz = r5.yzw + r1.yzw;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.yzw = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.yzw = cmp(r6.xyz < abs(r5.yzw));
    r1.w = (int)r5.z | (int)r5.y;
    r1.w = (int)r5.w | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r1.www ? r2.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.xyz;
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
  o2.xw = float2(0,0.509803951);
  o2.y = r5.x;
  o3.xyz = r4.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
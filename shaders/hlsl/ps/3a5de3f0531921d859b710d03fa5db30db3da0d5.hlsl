// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[18];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[8].xx * v3.xy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t1.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r6.xyz = r6.xyz / r0.zzz;
  r0.z = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb3[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r4.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r3.w = cb3[1].y * r0.z;
  r3.w = exp2(r3.w);
  r5.x = 1 + -cb3[0].w;
  r3.w = r3.w * r5.x + cb3[0].w;
  r5.x = cmp(r3.w >= cb3[0].y);
  r5.x = r5.x ? 1.000000 : 0;
  r3.w = r5.x * r3.w;
  r5.x = r0.y * r0.w + 1;
  r5.y = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb3[0].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = min(1, r5.x);
  r5.x = r5.y ? 0 : r5.x;
  r3.w = r5.x * r3.w;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r3.w * r0.y;
  r0.y = cb3[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r5.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb4[9].xyz * r0.xxx;
  r0.xyw = cb4[1].yyy * r0.xyw;
  r0.xyw = r5.xyz * cb4[1].xxx + r0.xyw;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r5.x = r1.x * cb0[65].z + -cb0[65].w;
  r5.x = 1 / r5.x;
  r3.w = r5.x + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = r2.w / cb5[8].w;
  r5.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[9].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = cb5[9].y * r3.w;
  r3.w = max(1, r3.w);
  r3.w = r5.x ? 1 : r3.w;
  r5.xy = r1.zw / cb5[10].xx;
  r5.xy = cb5[10].yz + r5.xy;
  r5.xyz = t2.SampleBias(s2_s, r5.xy, cb0[143].y).xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[9].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb5[2].xyz * r5.xyz;
  r6.xy = cb5[11].xx * v3.xy;
  r5.w = t3.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb5[11].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = cb5[11].z * r5.w;
  r5.w = r6.x ? 0 : r5.w;
  r5.w = cb0[142].z * cb5[10].w + r5.w;
  r5.w = 6.28318548 * r5.w;
  r5.w = sin(r5.w);
  r5.w = r5.w * 0.5 + 0.5;
  r5.w = r5.w * cb5[12].x + cb5[11].w;
  r5.w = max(cb5[12].z, r5.w);
  r5.w = min(cb5[12].y, r5.w);
  r5.w = cb5[12].w * r5.w;
  r5.w = cb4[3].y * r5.w;
  r5.xyz = r5.xyz * r5.www;
  r5.xyz = r5.xyz * r3.www;
  r0.xyw = cb3[2].xyz * r0.xyw + r5.xyz;
  r5.xyz = cb5[4].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb5[4].xyz + cb5[5].xyz;
  r0.xyw = cb5[13].xxx * r0.xyw + r5.xyz;
  r5.xyzw = t4.SampleBias(s4_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r5.xyz;
  r5.xyz = cb5[13].www * r6.xyz + r5.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[13].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb5[7].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.zw = t5.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r1.zw = saturate(cb5[14].xy + r1.zw);
  r0.z = cb5[14].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[14].w * r0.z;
  r3.w = saturate(cb5[15].y + v1.z);
  r0.z = r3.w * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb5[15].z * r0.z);
  r3.w = cb5[15].w * cb3[1].w;
  r6.x = cb5[16].x + r2.w;
  r6.yz = float2(0.649999976,0.487499982) * cb3[1].ww;
  r6.w = cb3[1].w * 0.617499948 + -r2.w;
  r6.z = saturate(r6.w / r6.z);
  r6.w = -cb3[1].w * 0.649999976 + 8000;
  r6.y = r6.z * r6.w + r6.y;
  r6.x = r6.x / r6.y;
  r6.yz = r2.ww / cb5[16].xz;
  r2.w = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r3.w = r3.w ? r6.x : r6.y;
  r2.w = r2.w ? r3.w : r6.y;
  r3.w = cmp(9.99999975e-006 < abs(cb5[15].w));
  r6.x = 1 + cb5[15].w;
  r3.w = r3.w ? r6.x : 1.39999998;
  r6.xyw = -cb0[129].xxy + v5.xxy;
  r6.x = r6.x * cb0[130].z + -0.469999999;
  r6.x = 4.93230057 * r6.x;
  r6.x = cos(r6.x);
  r6.x = 0.899999976 + r6.x;
  r6.x = saturate(0.555555582 * r6.x);
  r3.w = -r6.x + r3.w;
  r7.xy = cb0[152].xx + r6.yw;
  r7.xy = (uint2)r7.xy;
  r6.x = (uint)r7.y << 1;
  r6.x = (int)r6.x + (int)r7.x;
  r6.x = (uint)r6.x % 5;
  r6.x = (uint)r6.x;
  r6.yw = float2(0.015625,0.015625) * r6.yw;
  r6.y = t6.SampleBias(s6_s, r6.yw, cb0[143].y).x;
  r6.x = r6.x + r6.y;
  r6.x = 0.166666672 * r6.x;
  r2.w = r2.w * r3.w + r6.x;
  r2.w = saturate(-0.5 + r2.w);
  r2.w = r5.w * r2.w;
  r3.w = cb5[16].y * r6.x;
  r5.w = cmp(0 >= r6.z);
  r6.x = log2(r6.z);
  r6.x = cb5[16].w * r6.x;
  r6.x = exp2(r6.x);
  r6.x = min(1, r6.x);
  r6.x = cb5[17].x * r6.x;
  r6.x = max(1, r6.x);
  r5.w = r5.w ? 1 : r6.x;
  r3.w = r3.w * r5.w + r1.y;
  r3.w = r1.x / r3.w;
  r3.w = min(v5.z, r3.w);
  r5.w = cmp(0.00100000005 < abs(v2.w));
  r6.xy = floor(v5.xy);
  r6.x = dot(r6.xy, float2(347.834503,3343.28369));
  r6.x = cos(r6.x);
  r6.x = 1000 * r6.x;
  r6.x = frac(r6.x);
  r6.y = cmp(v2.w < 0);
  r6.z = 1 + v2.w;
  r6.z = cmp(r6.x < r6.z);
  r6.x = cmp(v2.w < r6.x);
  r6.x = r6.y ? r6.z : r6.x;
  r6.x = cmp((int)r6.x == 0);
  r5.w = r5.w ? r6.x : 0;
  if (r5.w != 0) discard;
  r2.w = r2.w * v2.y + -0.333299994;
  r2.w = cmp(r2.w < 0);
  if (r2.w != 0) discard;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.z = 0.0799999982 * r0.z;
  r6.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r6.xyz = r1.www * r6.xyz + r1.zzz;
  r7.xyz = -r5.xyz * r1.www + r5.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.z * 2.04040003 + -0.332399994;
  r2.w = r1.z * -4.79510021 + r2.w;
  r1.z = r1.z * 2.75519991 + r2.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t0.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t0.Sample(s0_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r4.w = dot(r8.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r2.w = r4.w * r2.w;
  r8.xyz = r2.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r7.xyz;
  r9.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r1.x = -r3.w * r1.y + r1.x;
    r1.x = r1.x / r3.w;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r3.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r3.xyz = cmp(r7.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r1.xxx ? r2.xyz : r0.xyw;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r0.xyw = r2.xyz + r0.xyw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r1.z;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.w;
  o2.w = 0.75686276;
  o2.y = r0.z;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r3.w;
  return;
}
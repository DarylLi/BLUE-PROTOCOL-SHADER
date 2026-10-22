// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[31];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
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
  r1.yw = float2(1,0);
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
  r0.w = cb1[4].w * cb0[141].w;
  r2.w = v6.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xy = r3.xy / cb5[16].zz;
  r2.w = t2.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r3.w = cb5[16].w + -cb5[2].x;
  r2.w = saturate(r2.w * r3.w + cb5[2].x);
  r2.w = cb5[17].x + r2.w;
  r2.w = r2.w * -cb5[17].y + cb5[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb5[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xy = t3.SampleBias(s2_s, v3.xy, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.z = sqrt(r4.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[18].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r4.xyz = r4.xyz * r4.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r4.x = dot(r0.xyz, r0.xyz);
  r4.x = rsqrt(r4.x);
  r0.xyz = r4.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb5[18].yyy * cb5[3].xyz;
  r5.xyzw = t4.SampleBias(s3_s, v3.xy, r2.w).xyzw;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb5[19].xxx * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[18].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = cb5[5].xyz * r5.xyz;
  r2.w = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.w = 1 + -r2.w;
  r4.w = r4.w + r4.w;
  r7.xyz = -r4.www * cb5[8].xyz + float3(1,1,1);
  r4.w = r2.w + r2.w;
  r8.xyz = cb5[7].xyz * r4.www;
  r2.w = cmp(r2.w >= 0.5);
  r7.xyz = r2.www ? r7.xyz : r8.xyz;
  r8.xyz = cb5[7].xyz + -r7.xyz;
  r7.xyz = cb5[19].yyy * r8.xyz + r7.xyz;
  r2.w = r3.w / cb5[19].z;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r5.xyz = -r5.xyz * cb5[5].xyz + r7.xyz;
  r5.xyz = r5.xyz * r2.www;
  r5.xyz = cb5[20].xxx * r5.xyz + r6.xyz;
  r6.xy = r3.xy / cb5[21].xx;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r7.x = dot(r6.xy, cb5[11].xy);
  r7.y = dot(r6.xy, cb5[12].xy);
  r6.xy = cb0[142].zz * cb5[20].zw + r7.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r2.w = t5.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r2.w = cb5[22].z * r2.w;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r6.x = cb5[23].w * cb0[142].z;
  r6.y = cb5[24].x * cb0[142].z;
  r6.zw = r3.xy / cb5[24].yy;
  r6.xy = r6.xy + r6.zw;
  r4.w = t6.SampleBias(s5_s, r6.xy, cb0[143].y).x;
  r4.w = cb5[24].z * r4.w;
  r6.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb5[24].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r4.w = saturate(cb5[25].x + r4.w);
  r4.w = 1 + -r4.w;
  r4.w = cb5[25].y * r4.w;
  r6.x = cmp(0 >= abs(r4.w));
  r4.w = log2(abs(r4.w));
  r4.w = cb5[25].z * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r3.w = r3.w / cb5[25].w;
  r6.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.x ? -0 : -r3.w;
  r3.w = r4.w + r3.w;
  r3.w = 1 + r3.w;
  r3.w = min(1, r3.w);
  r4.w = cb5[26].y + -cb5[26].z;
  r3.w = r3.w * r4.w + cb5[26].z;
  r3.w = 1 + -r3.w;
  r2.w = r3.w * r2.w;
  r6.xyz = cb5[14].xyz * r2.www;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = v2.x + r2.w;
  r2.w = cb3[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v3.xy + r1.zw;
  r7.xyz = t7.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r5.xyz = r7.xyz * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.z = dot(r0.zxy, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb5[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb5[27].x * r1.z;
  r1.w = saturate(cb5[27].z + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb5[27].w * r1.z);
  r1.w = cb5[28].x * cb4[1].w;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r4.w = r1.x * cb0[65].z + -cb0[65].w;
  r4.w = 1 / r4.w;
  r3.w = r4.w + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = cb5[28].y + r2.w;
  r6.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r4.w = cb4[1].w * 0.617499948 + -r2.w;
  r4.w = saturate(r4.w / r6.y);
  r6.y = -cb4[1].w * 0.649999976 + 8000;
  r4.w = r4.w * r6.y + r6.x;
  r3.w = r3.w / r4.w;
  r2.w = r2.w / cb5[28].y;
  r4.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r3.w : r2.w;
  r1.w = r4.w ? r1.w : r2.w;
  r2.w = cmp(9.99999975e-006 < abs(cb5[28].x));
  r3.w = 1 + cb5[28].x;
  r2.w = r2.w ? r3.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v5.xxy;
  r3.w = r6.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r3.w = (uint)r6.w << 1;
  r3.w = (int)r3.w + (int)r6.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r4.w = t8.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r3.w = r4.w + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r1.w = saturate(-0.5 + r1.w);
  r1.w = r5.w * r1.w;
  r2.w = cb5[30].x * r3.w;
  r3.w = cmp(0 >= v3.y);
  r4.w = log2(v3.y);
  r4.w = cb5[30].y * r4.w;
  r4.w = exp2(r4.w);
  r3.w = r3.w ? 0 : r4.w;
  r2.w = r2.w * r3.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v5.z, r2.w);
  r3.w = cmp(0.00100000005 < abs(v2.w));
  r6.xy = floor(v5.xy);
  r4.w = dot(r6.xy, float2(347.834503,3343.28369));
  r4.w = cos(r4.w);
  r4.w = 1000 * r4.w;
  r4.w = frac(r4.w);
  r5.w = cmp(v2.w < 0);
  r6.x = 1 + v2.w;
  r6.x = cmp(r4.w < r6.x);
  r4.w = cmp(v2.w < r4.w);
  r4.w = r5.w ? r6.x : r4.w;
  r4.w = cmp((int)r4.w == 0);
  r3.w = r3.w ? r4.w : 0;
  if (r3.w != 0) discard;
  r1.w = r1.w * v2.y + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r1.w = saturate(cb5[26].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r6.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r7.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * cb2[1].xyzw + r7.xyzw);
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = cb2[0].xyzw * r6.xyzw;
  r1.w = cb0[137].w * r1.z;
  r6.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r8.xyz : r6.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t0.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t0.Sample(s0_s, r8.zw).xyzw;
  r3.w = r8.w * 0.00392156886 + r9.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r8.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r3.w * r0.w;
  r8.xyz = r0.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r6.xyz;
  r9.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r1.x = -r2.w * r1.y + r1.x;
    r1.x = r1.x / r2.w;
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
    r4.xyz = r1.xxx ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}
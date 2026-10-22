// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[31];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.yw = float2(1,0);
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
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r2.w = v5.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xw = r3.xy / cb3[16].zz;
  r2.w = t3.SampleBias(s1_s, r4.xw, cb0[143].y).x;
  r3.w = cb3[16].w + -cb3[2].x;
  r2.w = saturate(r2.w * r3.w + cb3[2].x);
  r2.w = cb3[17].x + r2.w;
  r2.w = r2.w * -cb3[17].y + cb3[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb3[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xw = t4.SampleBias(s2_s, v2.xy, r2.w).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r4.x = dot(r5.xy, r5.xy);
  r4.x = 1 + -r4.x;
  r4.x = max(0, r4.x);
  r5.z = sqrt(r4.x);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[18].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = rsqrt(r4.x);
  r5.xyz = r5.xyz * r4.xxx;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r4.x = dot(r0.xyz, r0.xyz);
  r4.x = rsqrt(r4.x);
  r0.xyz = r4.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb3[18].yyy * cb3[3].xyz;
  r6.xyzw = t5.SampleBias(s3_s, v2.xy, r2.w).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[19].xxx * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[18].w, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb3[5].xyz * r6.xyz;
  r0.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r0.w;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb3[8].xyz + float3(1,1,1);
  r2.w = r0.w + r0.w;
  r9.xyz = cb3[7].xyz * r2.www;
  r0.w = cmp(r0.w >= 0.5);
  r8.xyz = r0.www ? r8.xyz : r9.xyz;
  r9.xyz = cb3[7].xyz + -r8.xyz;
  r8.xyz = cb3[19].yyy * r9.xyz + r8.xyz;
  r0.w = r3.w / cb3[19].z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[19].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r6.xyz = -r6.xyz * cb3[5].xyz + r8.xyz;
  r6.xyz = r6.xyz * r0.www;
  r6.xyz = cb3[20].xxx * r6.xyz + r7.xyz;
  r4.xw = r3.xy / cb3[21].xx;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r7.x = dot(r4.xw, cb3[11].xy);
  r7.y = dot(r4.xw, cb3[12].xy);
  r4.xw = cb0[142].zz * cb3[20].zw + r7.xy;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r0.w = t6.SampleBias(s4_s, r4.xw, cb0[143].y).x;
  r0.w = cb3[22].z * r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r7.x = cb3[23].w * cb0[142].z;
  r7.y = cb3[24].x * cb0[142].z;
  r4.xw = r3.xy / cb3[24].yy;
  r4.xw = r7.xy + r4.xw;
  r2.w = t7.SampleBias(s5_s, r4.xw, cb0[143].y).x;
  r2.w = cb3[24].z * r2.w;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[24].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r2.w = saturate(cb3[25].x + r2.w);
  r2.w = 1 + -r2.w;
  r2.w = cb3[25].y * r2.w;
  r4.x = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb3[25].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r3.w = r3.w / cb3[25].w;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.x ? -0 : -r3.w;
  r2.w = r3.w + r2.w;
  r2.w = 1 + r2.w;
  r2.w = min(1, r2.w);
  r3.w = cb3[26].y + -cb3[26].z;
  r2.w = r2.w * r3.w + cb3[26].z;
  r2.w = 1 + -r2.w;
  r0.w = r2.w * r0.w;
  r7.xyz = cb3[14].xyz * r0.www;
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r1.z = 0.100000001 * r0.w;
  r1.zw = v2.xy + r1.zw;
  r4.xyw = t8.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r4.xyw = r4.xyw * r7.xyz + r6.xyz;
  r4.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyw);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb3[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[27].x * r0.w;
  r1.z = saturate(cb3[27].z + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[27].w * r0.w);
  r1.z = cb3[28].x * cb2[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r2.w = cb3[28].y + r1.w;
  r6.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r1.w;
  r3.w = saturate(r3.w / r6.y);
  r5.w = -cb2[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r5.w + r6.x;
  r2.w = r2.w / r3.w;
  r1.w = r1.w / cb3[28].y;
  r3.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.z = r1.z ? r2.w : r1.w;
  r1.z = r3.w ? r1.z : r1.w;
  r1.w = cmp(9.99999975e-006 < abs(cb3[28].x));
  r2.w = 1 + cb3[28].x;
  r1.w = r1.w ? r2.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.w = -r2.w + r1.w;
  r7.xy = cb0[152].xx + r6.yz;
  r7.xy = (uint2)r7.xy;
  r2.w = (uint)r7.y << 1;
  r2.w = (int)r2.w + (int)r7.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r3.w = t9.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = saturate(-0.5 + r1.z);
  r1.w = cb3[30].y * r2.w;
  r2.w = cmp(0 >= v2.y);
  r3.w = log2(v2.y);
  r3.w = cb3[30].z * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r1.w = r1.w * r2.w + r1.y;
  r1.w = r1.x / r1.w;
  r1.w = min(v4.z, r1.w);
  r1.x = -r1.w * r1.y + r1.x;
  r1.x = r1.x / r1.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = r6.w * r1.z + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r4.xyw);
  r2.w = saturate(cb3[26].y);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  r3.x = t2[r4.z].val[4/4];
  r3.y = t2[r4.z].val[4/4+1];
  r2.w = cmp(0 < r3.y);
  if (r2.w != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r2.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r2.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r2.w = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r2.w = 1;
  }
  r3.y = cb0[137].w * r0.w;
  r4.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.yzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r3.yzw = r4.www ? r3.yzw : r4.xyz;
  r4.xyz = r4.www ? float3(0,0,0) : r6.xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r4.w = (int)r5.y | (int)r5.x;
    r4.w = (int)r5.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.yzw + r4.xyz;
  r3.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.yzw = r3.yzw * r3.yzz;
  r3.y = dot(r3.yzw, float3(20.390625,60.703125,2.42812085));
  r3.y = frac(r3.y);
  r3.y = -0.5 + r3.y;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r3.y;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r1.w;
  return;
}
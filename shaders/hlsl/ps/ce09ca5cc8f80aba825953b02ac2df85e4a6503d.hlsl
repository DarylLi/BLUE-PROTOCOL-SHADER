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
  float4 v2 : TEXCOORD0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  r1.x = v3.z;
  r1.yw = float2(1,0);
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r2.w = v4.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xy = r3.xy / cb3[16].zz;
  r2.w = t3.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r3.w = cb3[16].w + -cb3[2].x;
  r2.w = saturate(r2.w * r3.w + cb3[2].x);
  r2.w = cb3[17].x + r2.w;
  r2.w = r2.w * -cb3[17].y + cb3[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb3[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xy = t4.SampleBias(s2_s, v2.xy, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.z = sqrt(r4.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[18].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r4.xyz = r4.xyz * r4.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r4.x = dot(r0.xyz, r0.xyz);
  r4.x = rsqrt(r4.x);
  r0.xyz = r4.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[18].yyy * cb3[3].xyz;
  r5.xyzw = t5.SampleBias(s3_s, v2.xy, r2.w).xyzw;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb3[19].xxx * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[18].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = cb3[5].xyz * r5.xyz;
  r2.w = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.w = 1 + -r2.w;
  r4.w = r4.w + r4.w;
  r7.xyz = -r4.www * cb3[8].xyz + float3(1,1,1);
  r4.w = r2.w + r2.w;
  r8.xyz = cb3[7].xyz * r4.www;
  r2.w = cmp(r2.w >= 0.5);
  r7.xyz = r2.www ? r7.xyz : r8.xyz;
  r8.xyz = cb3[7].xyz + -r7.xyz;
  r7.xyz = cb3[19].yyy * r8.xyz + r7.xyz;
  r2.w = r3.w / cb3[19].z;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r5.xyz = -r5.xyz * cb3[5].xyz + r7.xyz;
  r5.xyz = r5.xyz * r2.www;
  r5.xyz = cb3[20].xxx * r5.xyz + r6.xyz;
  r6.xy = r3.xy / cb3[21].xx;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r7.x = dot(r6.xy, cb3[11].xy);
  r7.y = dot(r6.xy, cb3[12].xy);
  r6.xy = cb0[142].zz * cb3[20].zw + r7.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r2.w = t6.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r2.w = cb3[22].z * r2.w;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r6.x = cb3[23].w * cb0[142].z;
  r6.y = cb3[24].x * cb0[142].z;
  r6.zw = r3.xy / cb3[24].yy;
  r6.xy = r6.xy + r6.zw;
  r4.w = t7.SampleBias(s5_s, r6.xy, cb0[143].y).x;
  r4.w = cb3[24].z * r4.w;
  r6.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[24].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r4.w = saturate(cb3[25].x + r4.w);
  r4.w = 1 + -r4.w;
  r4.w = cb3[25].y * r4.w;
  r6.x = cmp(0 >= abs(r4.w));
  r4.w = log2(abs(r4.w));
  r4.w = cb3[25].z * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r3.w = r3.w / cb3[25].w;
  r6.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.x ? -0 : -r3.w;
  r3.w = r4.w + r3.w;
  r3.w = 1 + r3.w;
  r3.w = min(1, r3.w);
  r4.w = cb3[26].y + -cb3[26].z;
  r3.w = r3.w * r4.w + cb3[26].z;
  r3.w = 1 + -r3.w;
  r2.w = r3.w * r2.w;
  r6.xyz = cb3[14].xyz * r2.www;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb2[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v2.xy + r1.zw;
  r7.xyz = t8.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r5.xyz = r7.xyz * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb3[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb3[27].x * r1.z;
  r1.w = saturate(cb3[27].z + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb3[27].w * r1.z);
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r1.w = r1.w / cb3[28].x;
  r6.xyz = -cb0[129].xxy + v3.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r2.w = cb3[28].z + -r2.w;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r3.w = (uint)r6.w << 1;
  r3.w = (int)r3.w + (int)r6.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r4.w = t9.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r3.w = r4.w + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r1.w = saturate(-0.5 + r1.w);
  r2.w = cb3[30].y * r3.w;
  r3.w = cmp(0 >= v2.y);
  r4.w = log2(v2.y);
  r4.w = cb3[30].z * r4.w;
  r4.w = exp2(r4.w);
  r3.w = r3.w ? 0 : r4.w;
  r2.w = r2.w * r3.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v3.z, r2.w);
  r1.x = -r2.w * r1.y + r1.x;
  r1.x = r1.x / r2.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = r5.w * r1.w + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r5.xyz);
  r3.x = saturate(cb3[26].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.x = cmp(0 < cb1[20].z);
  if (r3.x != 0) {
    r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r5.xyz = (int3)r3.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r3.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r5.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r5.xyz * r3.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r3.x = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r3.x = 1;
  }
  r3.y = cb0[137].w * r1.z;
  r5.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.yzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r3.yzw = r4.www ? r3.yzw : r5.xyz;
  r5.x = t2[0].val[0/4];
  r5.y = t2[0].val[0/4+1];
  r5.z = t2[0].val[0/4+2];
  r5.w = t2[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r7.x = t2[1].val[0/4];
  r7.y = t2[1].val[0/4+1];
  r7.z = t2[1].val[0/4+2];
  r7.w = t2[1].val[0/4+3];
  r5.y = dot(r7.xyzw, r0.xyzw);
  r7.x = t2[2].val[0/4];
  r7.y = t2[2].val[0/4+1];
  r7.z = t2[2].val[0/4+2];
  r7.w = t2[2].val[0/4+3];
  r5.z = dot(r7.xyzw, r0.xyzw);
  r7.xyzw = r0.xyzz * r0.yzzx;
  r8.x = t2[3].val[0/4];
  r8.y = t2[3].val[0/4+1];
  r8.z = t2[3].val[0/4+2];
  r8.w = t2[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t2[4].val[0/4];
  r9.y = t2[4].val[0/4+1];
  r9.z = t2[4].val[0/4+2];
  r9.w = t2[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t2[5].val[0/4];
  r9.y = t2[5].val[0/4+1];
  r9.z = t2[5].val[0/4+2];
  r9.w = t2[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r7.x = t2[6].val[0/4];
  r7.y = t2[6].val[0/4+1];
  r7.z = t2[6].val[0/4+2];
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r7.xyz * r0.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r3.yzw;
  r7.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r6.xyz = r4.www ? float3(0,0,0) : r6.xyz;
  r3.yzw = r6.xyz + r3.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.yzw + r5.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r3.yzw = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.yzw = r3.yzw * r3.yzz;
  r0.w = dot(r3.yzw, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}
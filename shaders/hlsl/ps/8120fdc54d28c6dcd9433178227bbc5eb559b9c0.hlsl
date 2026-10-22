// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r2.w = t4.SampleBias(s1_s, r4.xw, cb0[143].y).x;
  r3.w = cb3[16].w + -cb3[2].x;
  r2.w = saturate(r2.w * r3.w + cb3[2].x);
  r2.w = cb3[17].x + r2.w;
  r2.w = r2.w * -cb3[17].y + cb3[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb3[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xw = t5.SampleBias(s2_s, v2.xy, r2.w).xy;
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
  r6.xyzw = t6.SampleBias(s3_s, v2.xy, r2.w).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb3[19].xxx * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[18].w, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb3[5].xyz * r6.xyz;
  r2.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.x = 1 + -r2.w;
  r4.x = r4.x + r4.x;
  r8.xyz = -r4.xxx * cb3[8].xyz + float3(1,1,1);
  r4.x = r2.w + r2.w;
  r9.xyz = cb3[7].xyz * r4.xxx;
  r2.w = cmp(r2.w >= 0.5);
  r8.xyz = r2.www ? r8.xyz : r9.xyz;
  r9.xyz = cb3[7].xyz + -r8.xyz;
  r8.xyz = cb3[19].yyy * r9.xyz + r8.xyz;
  r2.w = r3.w / cb3[19].z;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r6.xyz = -r6.xyz * cb3[5].xyz + r8.xyz;
  r6.xyz = r6.xyz * r2.www;
  r6.xyz = cb3[20].xxx * r6.xyz + r7.xyz;
  r4.xw = r3.xy / cb3[21].xx;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r7.x = dot(r4.xw, cb3[11].xy);
  r7.y = dot(r4.xw, cb3[12].xy);
  r4.xw = cb0[142].zz * cb3[20].zw + r7.xy;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r2.w = t7.SampleBias(s4_s, r4.xw, cb0[143].y).x;
  r2.w = cb3[22].z * r2.w;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r7.x = cb3[23].w * cb0[142].z;
  r7.y = cb3[24].x * cb0[142].z;
  r4.xw = r3.xy / cb3[24].yy;
  r4.xw = r7.xy + r4.xw;
  r4.x = t8.SampleBias(s5_s, r4.xw, cb0[143].y).x;
  r4.x = cb3[24].z * r4.x;
  r4.w = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb3[24].w * r4.x;
  r4.x = exp2(r4.x);
  r4.x = r4.w ? 0 : r4.x;
  r4.x = saturate(cb3[25].x + r4.x);
  r4.x = 1 + -r4.x;
  r4.x = cb3[25].y * r4.x;
  r4.w = cmp(0 >= abs(r4.x));
  r4.x = log2(abs(r4.x));
  r4.x = cb3[25].z * r4.x;
  r4.x = exp2(r4.x);
  r4.x = r4.w ? 0 : r4.x;
  r3.w = r3.w / cb3[25].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? -0 : -r3.w;
  r3.w = r4.x + r3.w;
  r3.w = 1 + r3.w;
  r3.w = min(1, r3.w);
  r4.x = cb3[26].y + -cb3[26].z;
  r3.w = r3.w * r4.x + cb3[26].z;
  r3.w = 1 + -r3.w;
  r2.w = r3.w * r2.w;
  r7.xyz = cb3[14].xyz * r2.www;
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r2.w = r4.x + r4.y;
  r2.w = r2.w + r4.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v2.xy + r1.zw;
  r4.xyw = t9.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r4.xyw = r4.xyw * r7.xyz + r6.xyz;
  r4.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyw);
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
  r1.w = cb3[28].x * cb2[1].w;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r5.w = r1.x * cb0[65].z + -cb0[65].w;
  r5.w = 1 / r5.w;
  r3.w = r5.w + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = cb3[28].y + r2.w;
  r6.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r5.w = cb2[1].w * 0.617499948 + -r2.w;
  r5.w = saturate(r5.w / r6.y);
  r6.y = -cb2[1].w * 0.649999976 + 8000;
  r5.w = r5.w * r6.y + r6.x;
  r3.w = r3.w / r5.w;
  r2.w = r2.w / cb3[28].y;
  r5.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r3.w : r2.w;
  r1.w = r5.w ? r1.w : r2.w;
  r2.w = cmp(9.99999975e-006 < abs(cb3[28].x));
  r3.w = 1 + cb3[28].x;
  r2.w = r2.w ? r3.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r3.w = r6.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r7.xy = cb0[152].xx + r6.yz;
  r7.xy = (uint2)r7.xy;
  r3.w = (uint)r7.y << 1;
  r3.w = (int)r3.w + (int)r7.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r5.w = t10.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r3.w = r5.w + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r1.w = saturate(-0.5 + r1.w);
  r2.w = cb3[30].y * r3.w;
  r3.w = cmp(0 >= v2.y);
  r5.w = log2(v2.y);
  r5.w = cb3[30].z * r5.w;
  r5.w = exp2(r5.w);
  r3.w = r3.w ? 0 : r5.w;
  r2.w = r2.w * r3.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v4.z, r2.w);
  r1.x = -r2.w * r1.y + r1.x;
  r1.x = r1.x / r2.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = r6.w * r1.w + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r4.xyw);
  r3.x = saturate(cb3[26].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.x = t2[r4.z].val[4/4];
  r3.y = t2[r4.z].val[4/4+1];
  r3.y = cmp(0 < r3.y);
  if (r3.y != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r5.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r5.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r3.y = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r3.y = 1;
  }
  r3.z = cb0[137].w * r1.z;
  r4.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r6.xyz = r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r3.zzz ? r6.xyz : r4.xyz;
  r6.x = t3[0].val[0/4];
  r6.y = t3[0].val[0/4+1];
  r6.z = t3[0].val[0/4+2];
  r6.w = t3[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r8.x = t3[1].val[0/4];
  r8.y = t3[1].val[0/4+1];
  r8.z = t3[1].val[0/4+2];
  r8.w = t3[1].val[0/4+3];
  r6.y = dot(r8.xyzw, r0.xyzw);
  r8.x = t3[2].val[0/4];
  r8.y = t3[2].val[0/4+1];
  r8.z = t3[2].val[0/4+2];
  r8.w = t3[2].val[0/4+3];
  r6.z = dot(r8.xyzw, r0.xyzw);
  r8.xyzw = r0.xyzz * r0.yzzx;
  r9.x = t3[3].val[0/4];
  r9.y = t3[3].val[0/4+1];
  r9.z = t3[3].val[0/4+2];
  r9.w = t3[3].val[0/4+3];
  r9.x = dot(r9.xyzw, r8.xyzw);
  r10.x = t3[4].val[0/4];
  r10.y = t3[4].val[0/4+1];
  r10.z = t3[4].val[0/4+2];
  r10.w = t3[4].val[0/4+3];
  r9.y = dot(r10.xyzw, r8.xyzw);
  r10.x = t3[5].val[0/4];
  r10.y = t3[5].val[0/4+1];
  r10.z = t3[5].val[0/4+2];
  r10.w = t3[5].val[0/4+3];
  r9.z = dot(r10.xyzw, r8.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r8.x = t3[6].val[0/4];
  r8.y = t3[6].val[0/4+1];
  r8.z = t3[6].val[0/4+2];
  r6.xyz = r9.xyz + r6.xyz;
  r6.xyz = r8.xyz * r0.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r6.xyz = r6.xyz * r4.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r3.zzz ? float3(0,0,0) : r7.xyz;
  r4.xyz = r7.xyz + r4.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r3.z].val[0/4];
    r7.y = t2[r3.z].val[0/4+1];
    r7.z = t2[r3.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t2[r3.w].val[0/4];
    r8.y = t2[r3.w].val[0/4+1];
    r8.z = t2[r3.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r0.www ? r2.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r0.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}
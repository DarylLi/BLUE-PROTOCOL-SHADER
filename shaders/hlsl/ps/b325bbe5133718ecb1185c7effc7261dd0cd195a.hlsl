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

cbuffer cb4 : register(b4)
{
  float4 cb4[34];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = r3.xy / cb4[16].yy;
  r1.z = t4.SampleBias(s1_s, r1.zw, cb0[143].y).x;
  r1.w = cb4[16].z + -cb4[16].w;
  r1.z = saturate(r1.z * r1.w + cb4[16].w);
  r1.z = cb4[17].x + r1.z;
  r1.z = r1.z * -cb4[17].y + cb4[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb4[17].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r4.xw = t5.SampleBias(s2_s, v2.xy, r1.z).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[18].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb4[18].yyy * cb4[1].xyz;
  r6.xyzw = t6.SampleBias(s3_s, v2.xy, r1.z).xyzw;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyz;
  r6.xyz = cb4[19].xxx * r7.xyz + r6.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[18].w, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb4[3].xyz * r6.xyz;
  r1.z = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb4[6].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r9.xyz = cb4[5].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r8.xyz = r1.zzz ? r8.xyz : r9.xyz;
  r9.xyz = cb4[5].xyz + -r8.xyz;
  r8.xyz = cb4[19].yyy * r9.xyz + r8.xyz;
  r1.z = r1.w / cb4[19].z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[19].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r6.xyz = -r6.xyz * cb4[3].xyz + r8.xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r6.xyz = cb4[20].xxx * r6.xyz + r7.xyz;
  r4.xw = r3.xy / cb4[21].xx;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r7.x = dot(r4.xw, cb4[9].xy);
  r7.y = dot(r4.xw, cb4[10].xy);
  r4.xw = cb0[142].zz * cb4[20].zw + r7.xy;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r1.z = t7.SampleBias(s4_s, r4.xw, cb0[143].y).x;
  r1.z = cb4[22].z * r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[22].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r2.w = cb4[23].y * cb0[142].z;
  r4.xw = r3.xy / cb4[23].ww;
  r4.xw = r2.ww * float2(0.353553385,-0.353553385) + r4.xw;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r4.xw = frac(r4.xw);
  r4.xw = r4.xw * float2(2,2) + float2(-1,-1);
  r7.xy = -abs(r4.xw) * float2(2,2) + float2(3,3);
  r4.xw = abs(r4.xw) * abs(r4.xw);
  r4.xw = r4.xw * r7.xy;
  r3.w = dot(float2(-0.707106769,0.707106769), r4.xw);
  r7.xyz = r3.xyz / cb4[24].zzz;
  r7.xyz = r2.www * float3(-0.5,-0.5,-0.5) + r7.xyz;
  r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyz = frac(r7.xyz);
  r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r8.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
  r7.xyz = abs(r7.xyz) * abs(r7.xyz);
  r7.xyz = r7.xyz * r8.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r3.w + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = cb4[24].w * r2.w;
  r2.w = -7.07106781 * r2.w;
  r3.w = 0.5 + cb0[142].z;
  r3.w = cb4[25].x * r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.75;
  r7.xy = cb4[25].xw * cb0[142].zz;
  r4.x = 6.28318548 * r7.x;
  r4.x = sin(r4.x);
  r4.x = r4.x * 0.5 + 0.75;
  r7.z = cb4[26].x * cb0[142].z;
  r7.xw = r3.xy / cb4[26].yy;
  r7.xy = r7.yz + r7.xw;
  r4.w = t8.SampleBias(s5_s, r7.xy, cb0[143].y).x;
  r4.w = cb4[26].z * r4.w;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[26].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r4.w = saturate(cb4[27].x + r4.w);
  r4.x = r4.x + -r3.w;
  r3.w = r4.w * r4.x + r3.w;
  r3.w = cb4[27].y * r3.w;
  r3.w = cb4[27].z * r3.w;
  r2.w = r2.w * r3.w + 1;
  r3.w = 1 + -v2.y;
  r2.w = -r2.w * r3.w + 1;
  r2.w = cb4[27].w * r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb4[28].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r3.w = r1.w / cb4[28].y;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[28].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.x ? -0 : -r3.w;
  r2.w = r3.w + r2.w;
  r2.w = 1 + r2.w;
  r2.w = min(1, r2.w);
  r3.w = -cb4[29].x + cb4[28].w;
  r2.w = r2.w * r3.w + cb4[29].x;
  r2.w = 1 + -r2.w;
  r1.z = r2.w * r1.z;
  r7.xyz = cb4[12].xyz * r1.zzz;
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r1.z = r4.x + r4.y;
  r1.z = r1.z + r4.w;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb2[2].x * r1.z;
  r1.z = cb4[29].y * r1.z;
  r4.xy = r1.zz * cb4[30].xy + v2.xy;
  r4.xyw = t9.SampleBias(s6_s, r4.xy, cb0[143].y).xyz;
  r4.xyw = r4.xyw * r7.xyz + r6.xyz;
  r4.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyw);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb4[30].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[30].w * r1.z;
  r2.x = saturate(cb4[31].y + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb4[31].z * r1.z);
  r2.xy = r3.xy / cb4[31].ww;
  r2.x = t4.SampleBias(s1_s, r2.xy, cb0[143].y).x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb4[32].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb4[32].y * r2.x;
  r2.x = r2.y ? -0 : -r2.x;
  r2.x = cb4[32].w + r2.x;
  r2.x = 1 + r2.x;
  r1.w = r1.w / cb4[33].x;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[33].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r1.w = saturate(r2.x * r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.w * r1.w;
  r2.x = cb4[33].z * cb3[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb4[33].w + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb3[1].ww;
  r2.w = cb3[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb3[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb4[33].w;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[33].z));
  r2.x = 1 + cb4[33].z;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t10.SampleBias(s7_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.y = cmp(cb1[0].x != 0.000000);
  r2.x = cmp(0.00100000005 < abs(cb1[0].x));
  r1.y = r1.y ? r2.x : 0;
  r2.xy = floor(v4.xy);
  r2.x = dot(r2.xy, float2(347.834503,3343.28369));
  r2.x = cos(r2.x);
  r2.x = 1000 * r2.x;
  r2.x = frac(r2.x);
  r2.y = cmp(cb1[0].x < 0);
  r2.z = 1 + cb1[0].x;
  r2.z = cmp(r2.x < r2.z);
  r2.x = cmp(cb1[0].x < r2.x);
  r2.x = r2.y ? r2.z : r2.x;
  r2.x = cmp((int)r2.x == 0);
  r1.y = r1.y ? r2.x : 0;
  if (r1.y != 0) discard;
  r1.x = r1.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r4.xyw);
  r2.x = saturate(cb4[28].w);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r2.x = t2[r4.z].val[4/4];
  r2.y = t2[r4.z].val[4/4+1];
  r2.y = cmp(0 < r2.y);
  if (r2.y != 0) {
    r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r4.xyz = (int3)r2.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r3.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r4.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r4.xyz * r3.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r2.y = t1.SampleLevel(s0_s, r2.yzw, 0).x;
  } else {
    r2.y = 1;
  }
  r2.z = cb0[137].w * r1.z;
  r4.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r6.xyz = r2.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r2.zzz ? r6.xyz : r4.xyz;
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
  r7.xyz = r2.zzz ? float3(0,0,0) : r7.xyz;
  r4.xyz = r7.xyz + r4.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r2.z].val[0/4];
    r7.y = t2[r2.z].val[0/4+1];
    r7.z = t2[r2.z].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r8.x = t2[r2.w].val[0/4];
    r8.y = t2[r2.w].val[0/4+1];
    r8.z = t2[r2.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.z = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.z = 0.00200000009 * r2.z;
    r2.z = frac(r2.z);
    r2.z = cmp(0.5 < r2.z);
    r3.xyz = r2.zzz ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r0.www ? r3.xyz : r5.xyz;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r3.xyz = r3.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r0.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = r2.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
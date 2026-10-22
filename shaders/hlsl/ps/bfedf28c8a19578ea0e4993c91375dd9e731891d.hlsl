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
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r0.w = cb1[4].w * cb0[141].w;
  r2.w = v5.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xy = r3.xy / cb5[16].zz;
  r2.w = t3.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r3.w = cb5[16].w + -cb5[2].x;
  r2.w = saturate(r2.w * r3.w + cb5[2].x);
  r2.w = cb5[17].x + r2.w;
  r2.w = r2.w * -cb5[17].y + cb5[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb5[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xy = t4.SampleBias(s2_s, v3.xy, r2.w).xy;
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
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r4.x = dot(r0.xyz, r0.xyz);
  r4.x = rsqrt(r4.x);
  r0.xyz = r4.xxx * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb5[18].yyy * cb5[3].xyz;
  r6.xyzw = t5.SampleBias(s3_s, v3.xy, r2.w).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb5[19].xxx * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[18].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb5[5].xyz * r6.xyz;
  r2.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r5.w = 1 + -r2.w;
  r5.w = r5.w + r5.w;
  r8.xyz = -r5.www * cb5[8].xyz + float3(1,1,1);
  r5.w = r2.w + r2.w;
  r9.xyz = cb5[7].xyz * r5.www;
  r2.w = cmp(r2.w >= 0.5);
  r8.xyz = r2.www ? r8.xyz : r9.xyz;
  r9.xyz = cb5[7].xyz + -r8.xyz;
  r8.xyz = cb5[19].yyy * r9.xyz + r8.xyz;
  r2.w = r3.w / cb5[19].z;
  r5.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r5.w ? 0 : r2.w;
  r6.xyz = -r6.xyz * cb5[5].xyz + r8.xyz;
  r6.xyz = r6.xyz * r2.www;
  r6.xyz = cb5[20].xxx * r6.xyz + r7.xyz;
  r7.xy = r3.xy / cb5[21].xx;
  r7.xy = float2(-0.5,-0.5) + r7.xy;
  r8.x = dot(r7.xy, cb5[11].xy);
  r8.y = dot(r7.xy, cb5[12].xy);
  r7.xy = cb0[142].zz * cb5[20].zw + r8.xy;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r2.w = t6.SampleBias(s4_s, r7.xy, cb0[143].y).x;
  r2.w = cb5[22].z * r2.w;
  r5.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r5.w ? 0 : r2.w;
  r7.x = cb5[23].w * cb0[142].z;
  r7.y = cb5[24].x * cb0[142].z;
  r7.zw = r3.xy / cb5[24].yy;
  r7.xy = r7.xy + r7.zw;
  r5.w = t7.SampleBias(s5_s, r7.xy, cb0[143].y).x;
  r5.w = cb5[24].z * r5.w;
  r7.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb5[24].w * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r7.x ? 0 : r5.w;
  r5.w = saturate(cb5[25].x + r5.w);
  r5.w = 1 + -r5.w;
  r5.w = cb5[25].y * r5.w;
  r7.x = cmp(0 >= abs(r5.w));
  r5.w = log2(abs(r5.w));
  r5.w = cb5[25].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r7.x ? 0 : r5.w;
  r3.w = r3.w / cb5[25].w;
  r7.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r7.x ? -0 : -r3.w;
  r3.w = r5.w + r3.w;
  r3.w = 1 + r3.w;
  r3.w = min(1, r3.w);
  r5.w = cb5[26].y + -cb5[26].z;
  r3.w = r3.w * r5.w + cb5[26].z;
  r3.w = 1 + -r3.w;
  r2.w = r3.w * r2.w;
  r7.xyz = cb5[14].xyz * r2.www;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = v2.x + r2.w;
  r2.w = cb3[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v3.xy + r1.zw;
  r8.xyz = t8.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r6.xyz = r8.xyz * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.z = dot(r4.yzw, r2.xyz);
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
  r5.w = r1.x * cb0[65].z + -cb0[65].w;
  r5.w = 1 / r5.w;
  r3.w = r5.w + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = cb5[28].y + r2.w;
  r7.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r5.w = cb4[1].w * 0.617499948 + -r2.w;
  r5.w = saturate(r5.w / r7.y);
  r7.y = -cb4[1].w * 0.649999976 + 8000;
  r5.w = r5.w * r7.y + r7.x;
  r3.w = r3.w / r5.w;
  r2.w = r2.w / cb5[28].y;
  r5.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r3.w : r2.w;
  r1.w = r5.w ? r1.w : r2.w;
  r2.w = cmp(9.99999975e-006 < abs(cb5[28].x));
  r3.w = 1 + cb5[28].x;
  r2.w = r2.w ? r3.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r3.w = r7.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r7.xw = cb0[152].xx + r7.yz;
  r7.xw = (uint2)r7.xw;
  r3.w = (uint)r7.w << 1;
  r3.w = (int)r3.w + (int)r7.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r7.xy = float2(0.015625,0.015625) * r7.yz;
  r5.w = t9.SampleBias(s7_s, r7.xy, cb0[143].y).x;
  r3.w = r5.w + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r1.w = saturate(-0.5 + r1.w);
  r1.w = r6.w * r1.w;
  r2.w = cb5[30].x * r3.w;
  r3.w = cmp(0 >= v3.y);
  r5.w = log2(v3.y);
  r5.w = cb5[30].y * r5.w;
  r5.w = exp2(r5.w);
  r3.w = r3.w ? 0 : r5.w;
  r2.w = r2.w * r3.w + r1.y;
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
  r1.x = r1.w * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r6.xyz);
  r3.x = saturate(cb5[26].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.x = cmp(0 < cb0[215].x);
  r3.y = cmp(0 < cb1[20].z);
  if (r3.y != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r6.xyz = (int3)r3.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r5.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r6.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r6.xyz * r5.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r3.y = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r3.z = cmp(0 < cb1[18].w);
    r3.z = r3.x ? r3.z : 0;
    r3.y = r3.z ? cb2[5].x : 1;
  }
  r3.z = cb0[137].w * r1.z;
  r6.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r7.xyz = r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.zzz ? r8.xyz : r6.xyz;
  r7.xyz = r3.zzz ? float3(0,0,0) : r7.xyz;
  r3.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r3.z * 2.04040003 + -0.332399994;
  r3.w = r3.z * -4.79510021 + r3.w;
  r3.z = r3.z * 2.75519991 + r3.w;
  r3.z = 1.33200002 + r3.z;
  r3.z = max(1, r3.z);
  r8.xyz = r4.zwz * r4.zwy;
  r9.yw = r4.ww * r4.zy;
  r3.w = r4.y * r4.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r3.w = 0.429042608 * r3.w;
  r10.x = 0.886227548;
  r5.w = dot(cb2[6].xyzw, r10.xyzw);
  r6.w = dot(cb2[9].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = cb2[12].x * r3.w + r5.w;
  r5.w = dot(cb2[7].xyzw, r10.xyzw);
  r6.w = dot(cb2[10].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = cb2[12].y * r3.w + r5.w;
  r5.w = dot(cb2[8].xyzw, r10.xyzw);
  r6.w = dot(cb2[11].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.z = cb2[12].z * r3.w + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r3.xxx ? r8.xyz : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r4.x = 1;
    r9.xyzw = r3.xxxx ? cb2[4].wxyz : r4.xyzw;
    r3.x = 1 + -r9.x;
    r3.x = -r3.x * r3.x + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r3.xxx * r0.xyz + r9.yzw;
    r3.w = saturate(dot(r9.yzw, r4.yzw));
    r4.x = 1 + -r3.w;
    r9.y = r3.x * r4.x + r3.w;
  } else {
    r0.xyz = r4.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.x = cmp(0 < cb0[140].x);
  if (r3.x != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.x = (int)r7.y | (int)r7.x;
    r3.x = (int)r7.z | (int)r3.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.xxx ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
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
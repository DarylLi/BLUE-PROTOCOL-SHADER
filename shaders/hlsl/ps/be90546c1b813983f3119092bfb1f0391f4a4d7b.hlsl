// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

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

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

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
  float4 cb4[21];
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
  float4 cb1[13];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r1.zw = cb4[10].xx * v3.xy;
  r0.w = cb4[10].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[10].zzz * r5.xyz + r4.xyz;
  r5.xy = t5.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[10].www * r6.xyz + r5.xyz;
  r5.xyz = cb4[11].xxx * r4.xyz + r5.xyz;
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
  r4.yzw = r2.www * r0.xyz;
  r3.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r3.w = sqrt(r3.w);
  r5.xyz = -cb3[5].xyz / r3.www;
  r3.w = dot(r5.xyz, r4.yzw);
  r3.w = 1 + r3.w;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r6.xyz = r6.xyz / r5.www;
  r5.x = saturate(dot(-r6.xyz, r5.xyz));
  r5.y = 1 + -cb2[1].x;
  r5.x = saturate(r5.x + r5.y);
  r3.w = r5.x * r3.w;
  r5.x = dot(r4.yzw, r2.xyz);
  r5.x = max(0, r5.x);
  r5.x = 1 + -r5.x;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.z = cb2[1].y * r5.x;
  r5.z = exp2(r5.z);
  r5.w = 1 + -cb2[0].w;
  r5.z = r5.z * r5.w + cb2[0].w;
  r5.w = cmp(r5.z >= cb2[0].y);
  r5.w = r5.w ? 1.000000 : 0;
  r5.z = r5.w * r5.z;
  r5.w = r0.z * r2.w + 1;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb2[0].x * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.w ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.w = -r0.z * r2.w + 1;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb2[1].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.w ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.z = cb2[0].z * r5.z;
  r3.w = r5.z * r3.w;
  r7.xyz = cb3[4].xyz * r3.www;
  r3.w = dot(-cb3[8].xyz, -cb3[8].xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = -cb3[8].xyz / r3.www;
  r3.w = dot(r8.xyz, r4.yzw);
  r3.w = 1 + r3.w;
  r5.w = saturate(dot(-r6.xyz, r8.xyz));
  r5.y = saturate(r5.w + r5.y);
  r3.w = r5.y * r3.w;
  r3.w = r3.w * r5.z;
  r5.yzw = cb3[9].xyz * r3.www;
  r5.yzw = cb3[1].yyy * r5.yzw;
  r5.yzw = r7.xyz * cb3[1].xxx + r5.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r6.x = r1.x * cb0[65].x + cb0[65].y;
  r6.y = r1.x * cb0[65].z + -cb0[65].w;
  r6.y = 1 / r6.y;
  r6.x = r6.x + r6.y;
  r3.w = r3.w ? r1.y : r6.x;
  r6.x = r3.w / cb4[11].y;
  r6.y = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r6.x = cb4[11].z * r6.x;
  r6.x = exp2(r6.x);
  r6.x = min(1, r6.x);
  r6.x = cb4[11].w * r6.x;
  r6.x = max(1, r6.x);
  r6.x = r6.y ? 1 : r6.x;
  r6.yz = r1.zw / cb4[12].zz;
  r7.x = cb4[12].w + r6.y;
  r7.y = cb4[13].x + r6.z;
  r6.yzw = t6.SampleBias(s3_s, r7.xy, cb0[143].y).xyz;
  r7.x = dot(float3(0.577350259,0.577350259,0.577350259), r6.yzw);
  r6.yzw = -r7.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.yzw;
  r7.yzw = float3(0.577350259,0.577350259,0.577350259) * r6.wyz;
  r7.yzw = r6.wyz * float3(0.577350259,0.577350259,0.577350259) + -r7.wyz;
  sincos(cb4[12].y, r8.x, r9.x);
  r7.yzw = r8.xxx * r7.yzw;
  r6.yzw = r6.yzw * r9.xxx + r7.yzw;
  r6.yzw = r7.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.yzw;
  r6.yzw = cb4[2].xyz * r6.yzw;
  r7.xy = cb4[13].zz * v3.xy;
  r7.x = t7.SampleBias(s4_s, r7.xy, cb0[143].y).x;
  r7.y = cmp(0 >= r7.x);
  r7.x = log2(r7.x);
  r7.x = cb4[13].w * r7.x;
  r7.x = exp2(r7.x);
  r7.x = cb4[14].x * r7.x;
  r7.x = r7.y ? 0 : r7.x;
  r7.x = cb0[142].z * cb4[13].y + r7.x;
  r7.x = 6.28318548 * r7.x;
  r7.x = sin(r7.x);
  r7.x = r7.x * 0.5 + 0.5;
  r7.x = r7.x * cb4[14].z + cb4[14].y;
  r7.x = max(cb4[15].x, r7.x);
  r7.x = min(cb4[14].w, r7.x);
  r7.x = cb4[15].y * r7.x;
  r7.x = cb3[3].y * r7.x;
  r6.yzw = r7.xxx * r6.yzw;
  r6.xyz = r6.xxx * r6.yzw;
  r6.w = 1 + -r0.w;
  r6.xyz = r6.xyz * r6.www;
  r5.yzw = cb2[2].xyz * r5.yzw + r6.xyz;
  r6.xyz = cb4[4].xyz * r5.yzw;
  r5.yzw = -r5.yzw * cb4[4].xyz + cb4[5].xyz;
  r5.yzw = cb4[15].zzz * r5.yzw + r6.xyz;
  r6.xyz = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r6.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r6.www + -r6.xyz;
  r6.xyz = cb4[16].yyy * r7.xyz + r6.xyz;
  r6.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r6.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[16].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r6.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[7].xyz * r6.xyz;
  r7.xy = cb4[17].xx * r1.zw;
  r8.xyz = t9.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r6.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r6.www + -r8.xyz;
  r8.xyz = cb4[17].yyy * r9.xyz + r8.xyz;
  r6.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r6.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[16].w, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r6.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb4[9].xyz + -r6.xyz;
  r6.xyz = r0.www * r8.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t10.SampleBias(s7_s, r1.zw, cb0[143].y).xy;
  r8.yz = cb4[17].zw + r1.zw;
  r8.x = saturate(r8.y);
  r1.zw = t11.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
  r7.yz = cb4[18].xy + r1.zw;
  r7.x = saturate(r7.y);
  r1.zw = r7.zx + -r8.zx;
  r1.zw = saturate(r0.ww * r1.zw + r8.zx);
  r0.w = cb4[18].z * r5.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[18].w * r0.w;
  r5.x = saturate(cb4[19].y + v1.z);
  r0.w = r5.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb4[19].z * r0.w);
  r7.xy = -cb0[129].xy + v5.xy;
  r7.zw = cb0[152].xx + r7.xy;
  r7.zw = (uint2)r7.zw;
  r5.x = (uint)r7.w << 1;
  r5.x = (int)r5.x + (int)r7.z;
  r5.x = (uint)r5.x % 5;
  r5.x = (uint)r5.x;
  r7.xy = float2(0.015625,0.015625) * r7.xy;
  r6.w = t12.SampleBias(s9_s, r7.xy, cb0[143].y).x;
  r5.x = r6.w + r5.x;
  r5.x = cb4[19].w * r5.x;
  r5.x = 0.166666672 * r5.x;
  r3.w = r3.w / cb4[20].x;
  r6.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[20].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = cb4[20].z * r3.w;
  r3.w = max(1, r3.w);
  r3.w = r6.w ? 1 : r3.w;
  r3.w = r5.x * r3.w + r1.y;
  r3.w = r1.x / r3.w;
  r3.w = min(v5.z, r3.w);
  r1.x = -r3.w * r1.y + r1.x;
  r1.x = r1.x / r3.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r3.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.x = mad((int)v4.x, 36, 20);
  r1.y = cmp(0 < cb0[215].x);
  r1.x = t2[r1.x].val[4/4];
  r1.w = t2[r1.x].val[4/4+1];
  r1.w = cmp(0 < r1.w);
  if (r1.w != 0) {
    r6.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.w = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r5.x = mad((int)v4.x, 36, 18);
    r5.x = t2[r5.x].val[12/4];
    r5.x = cmp(0 < r5.x);
    r5.x = r1.y ? r5.x : 0;
    r1.w = r5.x ? cb1[5].x : 1;
  }
  r5.x = 0.0799999982 * r0.w;
  r6.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r1.zzz * r6.xyz + r5.xxx;
  r7.xyz = -r3.xyz * r1.zzz + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r5.x = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r5.xxx ? r8.xyz : r7.xyz;
  r6.xyz = r5.xxx ? float3(0,0,0) : r6.xyz;
  r5.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.x * 2.04040003 + -0.332399994;
  r6.w = r5.x * -4.79510021 + r6.w;
  r5.x = r5.x * 2.75519991 + r6.w;
  r5.x = 1.33200002 + r5.x;
  r5.x = max(1, r5.x);
  r8.xyz = r4.zwz * r4.zwy;
  r9.yw = r4.ww * r4.zy;
  r6.w = r4.y * r4.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r6.w = 0.429042608 * r6.w;
  r10.x = 0.886227548;
  r7.w = dot(cb1[6].xyzw, r10.xyzw);
  r9.x = dot(cb1[9].xyzw, r8.xyzw);
  r7.w = r9.x + r7.w;
  r9.x = cb1[12].x * r6.w + r7.w;
  r7.w = dot(cb1[7].xyzw, r10.xyzw);
  r9.w = dot(cb1[10].xyzw, r8.xyzw);
  r7.w = r9.w + r7.w;
  r9.y = cb1[12].y * r6.w + r7.w;
  r7.w = dot(cb1[8].xyzw, r10.xyzw);
  r8.x = dot(cb1[11].xyzw, r8.xyzw);
  r7.w = r8.x + r7.w;
  r9.z = cb1[12].z * r6.w + r7.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r1.yyy ? r8.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r9.xyzw = r1.yyyy ? cb1[4].wxyz : r4.xyzw;
    r1.y = 1 + -r9.x;
    r1.y = -r1.y * r1.y + 1;
    r0.xyz = r0.xyz * r2.www + -r9.yzw;
    r10.xyz = r1.yyy * r0.xyz + r9.yzw;
    r0.x = saturate(dot(r9.yzw, r4.yzw));
    r0.y = 1 + -r0.x;
    r9.y = r1.y * r0.y + r0.x;
  } else {
    r10.xyz = r4.yzw;
    r9.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r11.xyzw, r10.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
  r12.x = t3[3].val[0/4];
  r12.y = t3[3].val[0/4+1];
  r12.z = t3[3].val[0/4+2];
  r12.w = t3[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t3[4].val[0/4];
  r13.y = t3[4].val[0/4+1];
  r13.z = t3[4].val[0/4+2];
  r13.w = t3[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t3[5].val[0/4];
  r13.y = t3[5].val[0/4+1];
  r13.z = t3[5].val[0/4+2];
  r13.w = t3[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r1.y = r10.y * r10.y;
  r1.y = r10.x * r10.x + -r1.y;
  r10.x = t3[6].val[0/4];
  r10.y = t3[6].val[0/4+1];
  r10.z = t3[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.yyy + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.y = r9.x * r9.y;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r1.y = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.yzw = max(float3(0,0,0), r5.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r2.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.yzw = r2.www ? r2.xyz : r5.yzw;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.y * r5.x;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r3.w;
  return;
}
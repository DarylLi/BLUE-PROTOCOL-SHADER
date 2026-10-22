// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r0.w = t10[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r2.w = v5.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xw = r3.xy / cb3[16].zz;
  r2.w = t12.SampleBias(s1_s, r4.xw, cb0[143].y).x;
  r3.w = cb3[16].w + -cb3[2].x;
  r2.w = saturate(r2.w * r3.w + cb3[2].x);
  r2.w = cb3[17].x + r2.w;
  r2.w = r2.w * -cb3[17].y + cb3[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb3[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xw = t13.SampleBias(s2_s, v2.xy, r2.w).xy;
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
  r5.xyz = r0.xyz * r0.www;
  r6.xyz = cb3[18].yyy * cb3[3].xyz;
  r7.xyzw = t14.SampleBias(s3_s, v2.xy, r2.w).xyzw;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb3[19].xxx * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[18].w, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = cb3[5].xyz * r7.xyz;
  r2.w = saturate(dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.x = 1 + -r2.w;
  r4.x = r4.x + r4.x;
  r9.xyz = -r4.xxx * cb3[8].xyz + float3(1,1,1);
  r4.x = r2.w + r2.w;
  r10.xyz = cb3[7].xyz * r4.xxx;
  r2.w = cmp(r2.w >= 0.5);
  r9.xyz = r2.www ? r9.xyz : r10.xyz;
  r10.xyz = cb3[7].xyz + -r9.xyz;
  r9.xyz = cb3[19].yyy * r10.xyz + r9.xyz;
  r2.w = r3.w / cb3[19].z;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r7.xyz = -r7.xyz * cb3[5].xyz + r9.xyz;
  r7.xyz = r7.xyz * r2.www;
  r7.xyz = cb3[20].xxx * r7.xyz + r8.xyz;
  r4.xw = r3.xy / cb3[21].xx;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r8.x = dot(r4.xw, cb3[11].xy);
  r8.y = dot(r4.xw, cb3[12].xy);
  r4.xw = cb0[142].zz * cb3[20].zw + r8.xy;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r2.w = t15.SampleBias(s4_s, r4.xw, cb0[143].y).x;
  r2.w = cb3[22].z * r2.w;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r8.x = cb3[23].w * cb0[142].z;
  r8.y = cb3[24].x * cb0[142].z;
  r4.xw = r3.xy / cb3[24].yy;
  r4.xw = r8.xy + r4.xw;
  r4.x = t16.SampleBias(s5_s, r4.xw, cb0[143].y).x;
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
  r8.xyz = cb3[14].xyz * r2.www;
  r4.x = t10[r4.y].val[0/4];
  r4.y = t10[r4.y].val[0/4+1];
  r4.w = t10[r4.y].val[0/4+2];
  r2.w = r4.x + r4.y;
  r2.w = r2.w + r4.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v2.xy + r1.zw;
  r4.xyw = t17.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r4.xyw = r4.xyw * r8.xyz + r7.xyz;
  r4.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyw);
  r1.z = dot(r5.xyz, r2.xyz);
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
  r7.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r5.w = cb2[1].w * 0.617499948 + -r2.w;
  r5.w = saturate(r5.w / r7.y);
  r6.w = -cb2[1].w * 0.649999976 + 8000;
  r5.w = r5.w * r6.w + r7.x;
  r3.w = r3.w / r5.w;
  r2.w = r2.w / cb3[28].y;
  r5.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r3.w : r2.w;
  r1.w = r5.w ? r1.w : r2.w;
  r2.w = cmp(9.99999975e-006 < abs(cb3[28].x));
  r3.w = 1 + cb3[28].x;
  r2.w = r2.w ? r3.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r3.w = r7.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r8.xy = cb0[152].xx + r7.yz;
  r8.xy = (uint2)r8.xy;
  r3.w = (uint)r8.y << 1;
  r3.w = (int)r3.w + (int)r8.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r7.xy = float2(0.015625,0.015625) * r7.yz;
  r5.w = t18.SampleBias(s7_s, r7.xy, cb0[143].y).x;
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
  r1.x = r7.w * r1.w + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r4.xyw);
  r3.x = saturate(cb3[26].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r7.xyz = (int3)r3.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r3.w = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r7.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r7.xyz * r3.www + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r4.x = t10[r4.z].val[4/4];
  r4.y = t10[r4.z].val[4/4+1];
  r3.w = cmp(0 < r4.y);
  if (r3.w != 0) {
    r3.w = t9.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r3.w = 1;
  }
  r4.y = cb0[137].w * r1.z;
  r7.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r8.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r5.www ? r8.xyz : r7.xyz;
  r4.yzw = r5.www ? float3(0,0,0) : r4.yzw;
  r5.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.w * 2.04040003 + -0.332399994;
  r6.w = r5.w * -4.79510021 + r6.w;
  r5.w = r5.w * 2.75519991 + r6.w;
  r5.w = 1.33200002 + r5.w;
  r5.w = max(1, r5.w);
  r8.xyz = t1.SampleLevel(s0_s, r3.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r5.yzy * r5.yzx;
  r16.yw = r5.zz * r5.yx;
  r6.w = r5.x * r5.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r6.w = 0.429042608 * r6.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r7.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r9.x = dot(r9.xyzw, r15.xyzw);
  r7.w = r9.x + r7.w;
  r9.x = r12.w * r6.w + r7.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r7.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r9.w = dot(r10.xyzw, r15.xyzw);
  r7.w = r9.w + r7.w;
  r9.y = r13.w * r6.w + r7.w;
  r8.yzw = r11.yzw;
  r7.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r8.x = dot(r11.xyzw, r15.xyzw);
  r7.w = r8.x + r7.w;
  r9.z = r14.w * r6.w + r7.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r3.xyz = t8.SampleLevel(s0_s, r3.xyz, 0).xyz;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.w = dot(r3.xyz, r3.xyz);
    r9.x = sqrt(r6.w);
    r6.w = max(9.99999975e-005, r9.x);
    r3.xyz = r3.xyz / r6.www;
    r6.w = 1 + -r9.x;
    r6.w = -r6.w * r6.w + 1;
    r0.xyz = r0.xyz * r0.www + -r3.xyz;
    r0.xyz = r6.www * r0.xyz + r3.xyz;
    r3.x = saturate(dot(r3.xyz, r5.xyz));
    r3.y = 1 + -r3.x;
    r9.y = r6.w * r3.y + r3.x;
  } else {
    r0.xyz = r5.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t11[0].val[0/4];
  r10.y = t11[0].val[0/4+1];
  r10.z = t11[0].val[0/4+2];
  r10.w = t11[0].val[0/4+3];
  r0.w = 1;
  r3.x = dot(r10.xyzw, r0.xyzw);
  r10.x = t11[1].val[0/4];
  r10.y = t11[1].val[0/4+1];
  r10.z = t11[1].val[0/4+2];
  r10.w = t11[1].val[0/4+3];
  r3.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t11[2].val[0/4];
  r10.y = t11[2].val[0/4+1];
  r10.z = t11[2].val[0/4+2];
  r10.w = t11[2].val[0/4+3];
  r3.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t11[3].val[0/4];
  r11.y = t11[3].val[0/4+1];
  r11.z = t11[3].val[0/4+2];
  r11.w = t11[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t11[4].val[0/4];
  r12.y = t11[4].val[0/4+1];
  r12.z = t11[4].val[0/4+2];
  r12.w = t11[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t11[5].val[0/4];
  r12.y = t11[5].val[0/4+1];
  r12.z = t11[5].val[0/4+2];
  r12.w = t11[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r3.xyz = r11.xyz + r3.xyz;
  r0.xyz = r0.yzw * r0.xxx + r3.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r3.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r3.xyz * r0.xyz;
  r3.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.yzw = max(float3(0,0,0), r6.xyz);
  r6.x = cmp(0 < cb0[140].x);
  if (r6.x != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t10[r6.x].val[0/4];
    r6.z = t10[r6.x].val[0/4+1];
    r6.w = t10[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t10[r6.y].val[0/4];
    r7.y = t10[r6.y].val[0/4+1];
    r7.z = t10[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r6.x = (int)r6.y | (int)r6.x;
    r6.x = (int)r6.z | (int)r6.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.yzw = r6.xxx ? r2.xyz : r4.yzw;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}
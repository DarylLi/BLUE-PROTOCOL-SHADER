// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[31];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xy = r3.xy / cb4[16].zz;
  r2.w = t9.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r3.w = cb4[16].w + -cb4[2].x;
  r2.w = saturate(r2.w * r3.w + cb4[2].x);
  r2.w = cb4[17].x + r2.w;
  r2.w = r2.w * -cb4[17].y + cb4[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb4[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xy = t10.SampleBias(s2_s, v3.xy, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.z = sqrt(r4.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[18].xxx * r5.xyz + r4.xyz;
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
  r4.xyz = cb4[18].yyy * cb4[3].xyz;
  r5.xyzw = t11.SampleBias(s3_s, v3.xy, r2.w).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb4[19].xxx * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[18].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = cb4[5].xyz * r5.xyz;
  r0.w = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r0.w;
  r2.w = r2.w + r2.w;
  r7.xyz = -r2.www * cb4[8].xyz + float3(1,1,1);
  r2.w = r0.w + r0.w;
  r8.xyz = cb4[7].xyz * r2.www;
  r0.w = cmp(r0.w >= 0.5);
  r7.xyz = r0.www ? r7.xyz : r8.xyz;
  r8.xyz = cb4[7].xyz + -r7.xyz;
  r7.xyz = cb4[19].yyy * r8.xyz + r7.xyz;
  r0.w = r3.w / cb4[19].z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[19].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r5.xyz = -r5.xyz * cb4[5].xyz + r7.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = cb4[20].xxx * r5.xyz + r6.xyz;
  r6.xy = r3.xy / cb4[21].xx;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r7.x = dot(r6.xy, cb4[11].xy);
  r7.y = dot(r6.xy, cb4[12].xy);
  r6.xy = cb0[142].zz * cb4[20].zw + r7.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r0.w = t12.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r0.w = cb4[22].z * r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r6.x = cb4[23].w * cb0[142].z;
  r6.y = cb4[24].x * cb0[142].z;
  r6.zw = r3.xy / cb4[24].yy;
  r6.xy = r6.xy + r6.zw;
  r2.w = t13.SampleBias(s5_s, r6.xy, cb0[143].y).x;
  r2.w = cb4[24].z * r2.w;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[24].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r2.w = saturate(cb4[25].x + r2.w);
  r2.w = 1 + -r2.w;
  r2.w = cb4[25].y * r2.w;
  r4.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb4[25].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r3.w = r3.w / cb4[25].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? -0 : -r3.w;
  r2.w = r3.w + r2.w;
  r2.w = 1 + r2.w;
  r2.w = min(1, r2.w);
  r3.w = cb4[26].y + -cb4[26].z;
  r2.w = r2.w * r3.w + cb4[26].z;
  r2.w = 1 + -r2.w;
  r0.w = r2.w * r0.w;
  r6.xyz = cb4[14].xyz * r0.www;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = v2.x + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.z = 0.100000001 * r0.w;
  r1.zw = v3.xy + r1.zw;
  r7.xyz = t14.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r5.xyz = r7.xyz * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb4[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[27].x * r0.w;
  r1.z = saturate(cb4[27].z + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb4[27].w * r0.w);
  r1.z = cb4[28].x * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r2.w = cb4[28].y + r1.w;
  r6.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.w = cb3[1].w * 0.617499948 + -r1.w;
  r3.w = saturate(r3.w / r6.y);
  r4.w = -cb3[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r6.x;
  r2.w = r2.w / r3.w;
  r1.w = r1.w / cb4[28].y;
  r3.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.z = r1.z ? r2.w : r1.w;
  r1.z = r3.w ? r1.z : r1.w;
  r1.w = cmp(9.99999975e-006 < abs(cb4[28].x));
  r2.w = 1 + cb4[28].x;
  r1.w = r1.w ? r2.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.w = -r2.w + r1.w;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r2.w = (uint)r6.w << 1;
  r2.w = (int)r2.w + (int)r6.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r3.w = t15.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = saturate(-0.5 + r1.z);
  r1.z = r5.w * r1.z;
  r1.w = cb4[30].x * r2.w;
  r2.w = cmp(0 >= v3.y);
  r3.w = log2(v3.y);
  r3.w = cb4[30].y * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r1.w = r1.w * r2.w + r1.y;
  r1.w = r1.x / r1.w;
  r1.w = min(v4.z, r1.w);
  r1.x = -r1.w * r1.y + r1.x;
  r1.x = r1.x / r1.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r3.xy = floor(v4.xy);
  r1.y = dot(r3.xy, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r2.w = cmp(v2.w < 0);
  r3.x = 1 + v2.w;
  r3.x = cmp(r1.y < r3.x);
  r1.y = cmp(v2.w < r1.y);
  r1.y = r2.w ? r3.x : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r1.x = r1.z * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyz);
  r2.w = saturate(cb4[26].y);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r5.xyz = (int3)r3.xyz;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r2.w = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r5.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r5.xyz * r2.www + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r2.w = t8.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r2.w = 1;
  }
  r3.w = cb0[137].w * r0.w;
  r5.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r3.www ? r7.xyz : r5.xyz;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r7.xyz = t1.SampleLevel(s0_s, r3.xyz, 0).zxy;
  r8.xyzw = t2.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r3.xyz = r0.yzy * r0.yzx;
  r14.yw = r0.zz * r0.yx;
  r3.x = r0.x * r0.x + -r3.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r14.xz = r3.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r3.x = 0.429042608 * r3.x;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r3.y = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r3.z = dot(r8.xyzw, r14.xyzw);
  r3.y = r3.y + r3.z;
  r8.x = r11.w * r3.x + r3.y;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r3.y = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r3.z = dot(r9.xyzw, r14.xyzw);
  r3.y = r3.y + r3.z;
  r8.y = r12.w * r3.x + r3.y;
  r7.yzw = r10.yzw;
  r3.y = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r3.z = dot(r10.xyzw, r14.xyzw);
  r3.y = r3.y + r3.z;
  r8.z = r13.w * r3.x + r3.y;
  r3.xyz = max(float3(0,0,0), r8.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r3.xyz = float3(0.318309873,0.318309873,0.318309873) * r3.xyz;
  r4.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r5.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r5.w = cmp(0 < cb0[140].x);
  if (r5.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r5.w = (int)r6.y | (int)r6.x;
    r5.w = (int)r6.z | (int)r5.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r5.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r4.w * r3.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
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
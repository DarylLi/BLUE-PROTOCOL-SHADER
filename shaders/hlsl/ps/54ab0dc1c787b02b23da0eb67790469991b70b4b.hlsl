// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[15];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float3 v4 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r4.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = r4.xy / cb4[8].zz;
  r5.xy = t9.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r5.xy;
  r5.z = v1.z * r0.w;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb4[8].www * r5.xyz + r6.xyz;
  r6.xy = r4.xy / cb4[9].zz;
  r6.zw = t10.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r6.zw;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb4[9].www * r7.xyz + r8.xyz;
  r4.xyz = r4.xyz / cb4[10].zzz;
  r0.w = t11.Sample(s0_s, r4.xz).x;
  r2.w = t11.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r0.w;
  r0.w = r4.z * r2.w + r0.w;
  r2.w = t11.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r0.w;
  r0.w = r4.w * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb4[11].x * r0.w;
  r0.w = r2.w ? 0 : r0.w;
  r0.w = saturate(-v2.z + r0.w);
  r0.w = saturate(v2.y + r0.w);
  r4.xyz = r7.xyz + -r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r7.xyz = r7.xyz / r0.yyy;
  r0.y = saturate(dot(-r7.xyz, r5.xyz));
  r3.w = 1 + -cb2[1].x;
  r0.y = saturate(r3.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r4.w = cb2[1].y * r0.y;
  r4.w = exp2(r4.w);
  r5.x = 1 + -cb2[0].w;
  r4.w = r4.w * r5.x + cb2[0].w;
  r5.x = cmp(r4.w >= cb2[0].y);
  r5.x = r5.x ? 1.000000 : 0;
  r4.w = r5.x * r4.w;
  r5.x = r0.z * r2.w + 1;
  r5.y = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb2[0].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = min(1, r5.x);
  r5.x = r5.y ? 0 : r5.x;
  r4.w = r5.x * r4.w;
  r0.z = -r0.z * r2.w + 1;
  r2.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r2.w ? 0 : r0.z;
  r0.z = r4.w * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r5.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r7.xyz, r8.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.z;
  r7.xyz = cb3[9].xyz * r0.xxx;
  r7.xyz = cb3[1].yyy * r7.xyz;
  r5.xyz = r5.xyz * cb3[1].xxx + r7.xyz;
  r5.xyz = cb2[2].xyz * r5.xyz;
  r7.xyz = cb4[2].xyz * r5.xyz;
  r5.xyz = -r5.xyz * cb4[2].xyz + cb4[3].xyz;
  r5.xyz = cb4[11].yyy * r5.xyz + r7.xyz;
  r0.xz = r3.xy / cb4[8].zz;
  r7.xyz = t12.Sample(s0_s, r0.xz).xyz;
  r7.xyz = cb4[5].xyz * r7.xyz;
  r0.xz = r3.xy / cb4[9].zz;
  r8.xyz = t13.Sample(s0_s, r0.xz).xyz;
  r8.xyz = r8.xyz * cb4[7].xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r0.xz = t14.Sample(s0_s, r1.zw).xy;
  r1.zw = t15.Sample(s0_s, r6.xy).xy;
  r1.w = r1.w + -r0.z;
  r6.x = saturate(r0.w * r1.w + r0.z);
  r0.y = cb4[11].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[11].w * r0.y;
  r0.z = saturate(cb4[12].y + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r6.y = saturate(cb4[12].z * r0.y);
  r0.x = cb4[12].w + r0.x;
  r0.y = cb4[13].x + r1.z;
  r0.y = r0.y + -r0.x;
  r0.x = saturate(r0.w * r0.y + r0.x);
  r0.yz = -cb0[129].xy + v5.xy;
  r1.zw = cb0[152].xx + r0.yz;
  r1.zw = (uint2)r1.zw;
  r0.w = (uint)r1.w << 1;
  r0.w = (int)r0.w + (int)r1.z;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t16.SampleBias(s4_s, r0.yz, cb0[143].y).x;
  r0.y = r0.w + r0.y;
  r0.y = cb4[13].y * r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.z = r1.x * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r0.w = r1.z + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.z = r0.z / cb4[13].z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[13].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb4[14].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r0.w ? 1 : r0.z;
  r0.y = r0.y * r0.z + r1.y;
  r0.y = r1.x / r0.y;
  r0.y = min(v5.z, r0.y);
  r0.z = -r0.y * r1.y + r1.x;
  r0.z = r0.z / r0.y;
  r1.xyz = r2.xyz * r0.zzz + r3.xyz;
  r0.z = cmp(0.00100000005 < abs(v3.w));
  r2.xy = floor(v5.xy);
  r0.w = dot(r2.xy, float2(347.834503,3343.28369));
  r0.w = cos(r0.w);
  r0.w = 1000 * r0.w;
  r0.w = frac(r0.w);
  r1.w = cmp(v3.w < 0);
  r2.x = 1 + v3.w;
  r2.x = cmp(r0.w < r2.x);
  r0.w = cmp(v3.w < r0.w);
  r0.w = r1.w ? r2.x : r0.w;
  r0.w = cmp((int)r0.w == 0);
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) discard;
  r2.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.xzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r0.xzw = min(float3(0.99000001,0.99000001,0.99000001), r0.xzw);
  r0.xzw = cb0[213].xyz * r0.xzw;
  r3.xyz = (int3)r0.xzw;
  r3.w = 0;
  r3.xyzw = t0.Load(r3.xyzw).xyzw;
  r3.xyzw = (uint4)r3.xyzw;
  r1.w = 1 + cb0[213].w;
  r0.xzw = r0.xzw / r3.www;
  r0.xzw = frac(r0.xzw);
  r0.xzw = cb0[213].www * r0.xzw;
  r0.xzw = r3.xyz * r1.www + r0.xzw;
  r0.xzw = float3(0.5,0.5,0.5) + r0.xzw;
  r0.xzw = cb0[214].xyz * r0.xzw;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s1_s, r0.xzw, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r6.y;
  r3.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r3.xyz = r6.xxx * r3.xyz + r2.www;
  r7.xyz = -r2.xyz * r6.xxx + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r3.xyz = r2.www ? float3(0,0,0) : r3.xyz;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r8.xyz = t1.SampleLevel(s1_s, r0.xzw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r0.xzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r0.xzw = r4.yzy * r4.yzx;
  r15.yw = r4.zz * r4.yx;
  r0.x = r4.x * r4.x + -r0.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r15.xz = r0.wz * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r0.x = 0.429042608 * r0.x;
  r17.x = r8.y;
  r17.yzw = r9.yzw;
  r16.x = 0.886227548;
  r0.z = dot(r17.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r0.w = dot(r9.xyzw, r15.xyzw);
  r0.z = r0.z + r0.w;
  r9.x = r12.w * r0.x + r0.z;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r0.z = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r0.w = dot(r10.xyzw, r15.xyzw);
  r0.z = r0.z + r0.w;
  r9.y = r13.w * r0.x + r0.z;
  r8.yzw = r11.yzw;
  r0.z = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r14.xyz;
  r0.w = dot(r11.xyzw, r15.xyzw);
  r0.z = r0.z + r0.w;
  r9.z = r14.w * r0.x + r0.z;
  r0.xzw = max(float3(0,0,0), r9.xyz);
  r0.xzw = cb0[157].xyz * r0.xzw;
  r0.xzw = float3(0.318309873,0.318309873,0.318309873) * r0.xzw;
  r3.w = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r0.xzw = r0.xzw * r7.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xzw = r8.xyz * r0.xzw;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r4.w = (int)r7.y | (int)r7.x;
    r4.w = (int)r7.z | (int)r4.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r4.www ? r1.xyz : r5.xyz;
  }
  r0.xzw = cb0[145].yyy * r3.xyz + r0.xzw;
  r0.xzw = r0.xzw + r5.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r3.w * r2.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.y;
  return;
}
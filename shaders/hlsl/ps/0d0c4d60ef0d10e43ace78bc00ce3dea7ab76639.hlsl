// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[33];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.x = cb3[19].z * cb0[142].z;
  r0.w = cb0[142].z * cb3[19].z + v2.x;
  r3.x = cb3[21].y * r0.w;
  r2.y = cb3[21].z * cb0[142].z;
  r2.xyz = v2.yxy + r2.yxy;
  r3.y = cb3[21].w * r2.x;
  r0.w = cb0[142].z * cb3[22].z + v2.x;
  r4.x = cb3[23].w * r0.w;
  r0.w = cb0[142].z * cb3[24].x + v2.y;
  r4.y = cb3[24].y * r0.w;
  r2.xw = t11.SampleBias(s1_s, r4.xy, cb0[143].y).xy;
  r2.xw = float2(-0.5,-0.5) + r2.xw;
  r4.x = cb3[24].w * r2.x;
  r4.y = cb3[25].x * r2.w;
  r2.xw = r4.xy * float2(2,2) + r3.xy;
  r2.xw = t12.SampleBias(s2_s, r2.xw, cb0[143].y).xy;
  r3.xy = r2.xw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r2.xy = t12.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r0.w = 6.28318548 * v2.y;
  r0.w = cos(r0.w);
  r0.w = -0.899999976 + r0.w;
  r0.w = 6 * r0.w;
  r0.w = max(0, r0.w);
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xy = cb3[25].yy * r2.xy;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r0.xyz * r0.www;
  r1.w = -0.5 + v2.x;
  r1.w = cb3[25].z * r1.w;
  r3.x = r0.x * r0.w + r1.w;
  r1.w = r0.y * r0.w + -r1.w;
  r3.y = 1 + r1.w;
  r1.w = dot(r3.xy, r3.xy);
  r1.w = sqrt(r1.w);
  r3.xy = r3.xy / r1.ww;
  r1.w = dot(cb2[5].xy, cb2[5].xy);
  r1.w = sqrt(r1.w);
  r3.zw = cb2[5].xy / r1.ww;
  r1.w = dot(r3.xy, r3.zw);
  r1.w = 1 + -r1.w;
  r1.w = r1.w * cb3[26].x + -cb3[26].x;
  r1.w = saturate(cb3[26].w + r1.w);
  r3.xyz = -cb3[14].xyz + cb3[13].xyz;
  r3.xyz = r1.www * r3.xyz + cb3[14].xyz;
  r4.xyz = cb3[27].xxx * r3.xyz;
  r5.xyz = -r3.xyz * cb3[27].xxx + cb3[15].xyz;
  r4.xyz = cb3[27].yyy * r5.xyz + r4.xyz;
  r3.xyz = saturate(cb3[27].zzz * r3.xyz);
  r1.w = cb3[28].z * v2.y + cb3[28].w;
  r1.w = -cb3[29].x * r1.w + 1;
  r2.w = -cb3[29].y + r1.z;
  r2.w = abs(r2.w) / cb3[29].z;
  r2.w = -r2.w * cb3[29].w + 1;
  r5.y = -r1.w * r2.w + 1;
  r5.x = v2.x;
  r1.w = cb2[2].x * cb0[142].z;
  r1.w = cb3[30].x * r1.w;
  r5.zw = cb3[17].xy * r1.ww;
  r6.xy = r5.xy * cb3[16].xy + r5.zw;
  r5.xy = r5.xy * cb3[18].xy + float2(0.200000003,0.200000003);
  r5.xy = r5.zw * float2(0.699999988,0.699999988) + r5.xy;
  r1.w = t13.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r7.y = r1.w * 2 + -1;
  r7.x = 0;
  r5.zw = cb3[31].xx * r7.xy;
  r1.w = frac(cb0[142].z);
  r6.zw = r5.zw * r1.ww + r6.xy;
  r2.w = t13.SampleBias(s3_s, r6.zw, cb0[143].y).x;
  r2.w = r2.w * 2 + -1;
  r3.w = 0.5 + cb0[142].z;
  r3.w = frac(r3.w);
  r6.xy = r5.zw * r3.ww + r6.xy;
  r4.w = t13.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r4.w = r4.w * 2 + -1;
  r6.x = r3.w + r3.w;
  r6.y = max(1, r6.x);
  r6.y = -1 + r6.y;
  r6.y = r6.y + r6.y;
  r6.xy = min(float2(1,1), r6.xy);
  r6.y = 1 + -r6.y;
  r6.x = r6.x + r6.x;
  r6.x = min(1, r6.x);
  r6.x = r6.y * r6.x;
  r4.w = r4.w + -r2.w;
  r2.w = r6.x * r4.w + r2.w;
  r6.yz = r5.zw * r1.ww + r5.xy;
  r1.w = t13.SampleBias(s3_s, r6.yz, cb0[143].y).y;
  r1.w = r1.w * 2 + -1;
  r5.xy = r5.zw * r3.ww + r5.xy;
  r3.w = t13.SampleBias(s3_s, r5.xy, cb0[143].y).y;
  r3.w = r3.w * 2 + -1;
  r3.w = r3.w + -r1.w;
  r1.w = r6.x * r3.w + r1.w;
  r1.w = r2.w + -r1.w;
  r1.w = r1.w * cb3[31].y + v2.x;
  r1.w = r1.w * 2 + -1;
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * cb3[31].w + -cb3[31].w;
  r1.w = saturate(cb3[32].y + r1.w);
  r5.xy = -cb0[129].xy + v3.xy;
  r5.zw = cb0[152].xx + r5.xy;
  r5.zw = (uint2)r5.zw;
  r2.w = (uint)r5.w << 1;
  r2.w = (int)r2.w + (int)r5.z;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r5.xy = float2(0.015625,0.015625) * r5.xy;
  r3.w = t14.SampleBias(s4_s, r5.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r1.w = r2.w * 0.166666672 + r1.w;
  r1.w = -0.833299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r1.w = saturate(cb3[27].w);
  r5.xy = saturate(cb3[28].xy);
  o2.z = r5.y * cb0[139].y + cb0[139].x;
  r5.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.yzw = max(float3(0,0,0), r5.yzw);
  r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
  r5.yzw = cb0[213].xyz * r5.yzw;
  r6.xyz = (int3)r5.yzw;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r2.w = 1 + cb0[213].w;
  r5.yzw = r5.yzw / r6.www;
  r5.yzw = frac(r5.yzw);
  r5.yzw = cb0[213].www * r5.yzw;
  r5.yzw = r6.xyz * r2.www + r5.yzw;
  r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
  r5.yzw = cb0[214].xyz * r5.yzw;
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r2.w = t9.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r2.w = 1;
  }
  r3.w = 0.0799999982 * r5.x;
  r6.xyz = -r5.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r1.www * r6.xyz + r3.www;
  r7.xyz = -r3.xyz * r1.www + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = t1.SampleLevel(s0_s, r5.yzw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r5.yzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r2.yzy * r2.yzx;
  r16.yw = r2.zz * r2.yx;
  r4.w = r2.x * r2.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r4.w = 0.429042608 * r4.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r6.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r7.w = dot(r9.xyzw, r15.xyzw);
  r6.w = r7.w + r6.w;
  r9.x = r12.w * r4.w + r6.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r6.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r7.w = dot(r10.xyzw, r15.xyzw);
  r6.w = r7.w + r6.w;
  r9.y = r13.w * r4.w + r6.w;
  r8.yzw = r11.yzw;
  r6.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r7.w = dot(r11.xyzw, r15.xyzw);
  r6.w = r7.w + r6.w;
  r9.z = r14.w * r4.w + r6.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r5.yzw = t8.SampleLevel(s0_s, r5.yzw, 0).xyz;
    r5.yzw = r5.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r5.yzw, r5.yzw);
    r9.x = sqrt(r4.w);
    r4.w = max(9.99999975e-005, r9.x);
    r5.yzw = r5.yzw / r4.www;
    r4.w = 1 + -r9.x;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.xyz * r0.www + -r5.yzw;
    r0.xyz = r4.www * r0.xyz + r5.yzw;
    r5.y = saturate(dot(r5.yzw, r2.xyz));
    r5.z = 1 + -r5.y;
    r9.y = r4.w * r5.z + r5.y;
  } else {
    r0.xyz = r2.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t10[0].val[0/4];
  r10.y = t10[0].val[0/4+1];
  r10.z = t10[0].val[0/4+2];
  r10.w = t10[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t10[1].val[0/4];
  r11.y = t10[1].val[0/4+1];
  r11.z = t10[1].val[0/4+2];
  r11.w = t10[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t10[2].val[0/4];
  r11.y = t10[2].val[0/4+1];
  r11.z = t10[2].val[0/4+2];
  r11.w = t10[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t10[3].val[0/4];
  r12.y = t10[3].val[0/4+1];
  r12.z = t10[3].val[0/4+2];
  r12.w = t10[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t10[4].val[0/4];
  r13.y = t10[4].val[0/4+1];
  r13.z = t10[4].val[0/4+2];
  r13.w = t10[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t10[5].val[0/4];
  r13.y = t10[5].val[0/4+1];
  r13.z = t10[5].val[0/4+2];
  r13.w = t10[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r5.yzw = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r5.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r5.yzw = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.yzw = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.yzw;
  r5.yzw = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.yzw;
  r5.yzw = float3(1.33200002,1.33200002,1.33200002) + r5.yzw;
  r5.yzw = max(float3(1,1,1), r5.yzw);
  r0.xyz = r5.yzw * r0.xyz;
  r5.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r1.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.y = r5.x;
  o2.w = 0.505882382;
  o2.x = r1.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
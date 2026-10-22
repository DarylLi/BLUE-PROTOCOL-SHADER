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
  float4 cb4[40];
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
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[19].xx * v3.xy;
  r0.w = cb4[19].z + cb0[143].y;
  r5.xy = t4.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[19].www * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb4[20].zzz;
  r7.xy = t5.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t5.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r7.xy;
  r7.xy = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r7.xzw = r7.xxx * r9.xyz + r8.xyz;
  r8.xy = t5.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r7.xzw;
  r7.xyz = r7.yyy * r8.xyz + r7.xzw;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb4[20].www * r7.xyz + r8.xyz;
  r7.xyz = cb4[21].yyy * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb4[21].zz * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb4[22].yyy;
  r9.xyz = t6.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t6.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t6.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb4[22].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb4[22].www * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb4[23].xxx * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.xyz;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb4[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb4[24].w * r0.w + r4.x;
  r0.w = saturate(r0.w * cb4[25].x + cb4[25].w);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[22].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb4[23].xxx * r4.xyz + r8.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r8.xzw + r4.xyz);
  r8.xyzw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xyzw;
  r0.w = r8.w * -2 + 1;
  r0.w = cb4[26].x * r0.w + r8.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[26].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb4[26].z * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = r0.xyz * r0.www;
  r7.xyz = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r2.w = -1 + r8.z;
  r2.w = cb4[27].y * r2.w + 1;
  r9.xyz = r7.xyz * r2.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = -r7.xyz * r2.www + r3.www;
  r7.xyz = cb4[27].zzz * r7.xyz + r9.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r9.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[27].x, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r7.xyz = r7.xyz * r11.xxx + r9.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = cb4[5].xyz * r7.xyz;
  r10.xyzw = cmp(abs(r5.zwwy) < abs(r5.yyzz));
  r2.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r8.zw = cmp(abs(r5.yz) < abs(r5.ww));
  r2.w = r8.z ? r10.w : 0;
  r11.xyz = r8.www ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r2.www ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r5.yzw), icb[r10.x+0].xyz);
  r12.y = dot(abs(r5.yzw), icb[r11.x+0].xyz);
  r8.zw = float2(-0.577300012,-0.577300012) + r12.xy;
  r8.zw = saturate(float2(2.36574411,2.36574411) * r8.zw);
  r2.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r2.ww ? r10.zy : r10.yz;
  r2.w = cmp((int)r11.z < (int)r11.y);
  r10.zw = r2.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r16.xyz = t9.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r10.x = dot(r6.xyz, icb[r10.z+0].xyz);
  r10.y = dot(r6.xyz, icb[r10.w+0].xyz);
  r6.x = dot(r11.xyz, icb[r10.z+0].xyz);
  r6.y = dot(r11.xyz, icb[r10.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.w+0].xyz);
  r12.xyz = t9.SampleGrad(s0_s, r10.xy, r6.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz * r8.www;
  r12.xyz = r16.xyz * r8.zzz + r12.xyz;
  r2.w = r8.z + r8.w;
  r12.xyz = r12.xyz / r2.www;
  r3.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r16.xyz = r3.www + -r12.xyz;
  r12.xyz = cb4[28].yyy * r16.xyz + r12.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb4[28].x, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = cb4[7].xyz * r12.xyz;
  r3.w = dot(r16.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb4[28].z * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r17.xyz = -r4.www * cb4[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r18.xyz = cb4[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r17.xyz = r3.www ? r17.xyz : r18.xyz;
  r18.xyz = cb4[9].xyz + -r17.xyz;
  r17.xyz = cb4[28].www * r18.xyz + r17.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r18.xyz, r18.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb4[29].x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[29].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r12.xyz = -r12.xyz * cb4[7].xyz + r17.xyz;
  r12.xyz = r12.xyz * r3.www;
  r12.xyz = cb4[29].zzz * r12.xyz + r16.xyz;
  r7.xyz = -r7.xyz * cb4[5].xyz + r12.xyz;
  r7.xyz = r4.xxx * r7.xyz + r9.xyz;
  r3.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb3[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r5.yzw);
  r3.w = 1 + r3.w;
  r12.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r12.xyz, r12.xyz);
  r4.w = sqrt(r4.w);
  r12.xyz = r12.xyz / r4.www;
  r4.w = saturate(dot(-r12.xyz, r9.xyz));
  r6.z = 1 + -cb2[1].x;
  r4.w = saturate(r6.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r5.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb2[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb2[0].w;
  r2.y = r2.y * r2.z + cb2[0].w;
  r2.z = cmp(r2.y >= cb2[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb2[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r9.xyz = cb3[4].xyz * r2.zzz;
  r2.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.z = sqrt(r2.z);
  r16.xyz = -cb3[8].xyz / r2.zzz;
  r2.z = dot(r16.xyz, r5.yzw);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r12.xyz, r16.xyz));
  r3.w = saturate(r3.w + r6.z);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r12.xyz = cb3[9].xyz * r2.yyy;
  r12.xyz = cb3[1].yyy * r12.xyz;
  r9.xyz = r9.xyz * cb3[1].xxx + r12.xyz;
  r9.xyz = r9.xyz * r7.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.x = r1.x / cb4[30].z;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[30].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb4[31].x * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.yz = r1.zw / cb4[31].ww;
  r2.yz = cb4[32].xy + r2.yz;
  r12.xyz = t10.SampleBias(s6_s, r2.yz, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb4[31].z, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r12.xyz = cb4[12].xyz * r12.xyz;
  r1.y = t10.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r1.zw = mad((int2)v4.xx, int2(36,36), int2(18,20));
  r16.x = t2[r1.z].val[0/4];
  r16.y = t2[r1.z].val[0/4+1];
  r16.z = t2[r1.z].val[0/4+2];
  r2.y = r16.x + r16.y;
  r2.y = r2.y + r16.z;
  r2.y = frac(r2.y);
  r2.y = cb0[142].z + r2.y;
  r2.y = cb3[2].x * r2.y;
  r2.y = cb4[32].w * r2.y;
  r6.zw = v3.zw + -v3.xy;
  r6.zw = cb4[34].xx * r6.zw + v3.xy;
  r6.zw = cb4[34].yy * r6.zw;
  r2.yz = r2.yy * cb4[33].zw + r6.zw;
  r2.y = t11.SampleBias(s7_s, r2.yz, cb0[143].y).x;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb4[34].z * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb4[34].w * r2.y;
  r2.z = cb0[142].z * cb4[32].z + r2.z;
  r2.z = 6.28318548 * r2.z;
  r2.z = sin(r2.z);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * cb4[35].y + cb4[35].x;
  r2.z = max(cb4[35].w, r2.z);
  r2.z = min(cb4[35].z, r2.z);
  r2.z = cb4[36].x * r2.z;
  r2.z = cb3[3].y * r2.z;
  r2.y = r2.z * r2.y;
  r1.y = r2.y * r1.y;
  r12.xyz = r12.xyz * r1.yyy;
  r12.xyz = r12.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r12.xyz * r4.yzw;
  r4.yzw = cb2[2].xyz * r9.xyz + r4.yzw;
  r9.xyz = cb4[15].xyz * r4.yzw;
  r4.yzw = -r4.yzw * cb4[15].xyz + cb4[16].xyz;
  r4.yzw = cb4[36].yyy * r4.yzw + r9.xyz;
  r1.x = saturate(v2.x + v2.x);
  r9.xyz = cb4[18].xyz * r7.xyz + -r7.xyz;
  r9.xyz = r1.xxx * r9.xyz + r7.xyz;
  r9.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r9.xyz);
  r1.x = -cb4[36].z * v2.x + r8.x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[36].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.y ? 0 : r1.x;
  r1.y = saturate(cb4[37].x + r1.x);
  r1.x = cb4[37].y + r8.y;
  r2.yz = t12.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r6.xy = t12.SampleGrad(s0_s, r10.xy, r6.xy, r11.xy).xy;
  r6.xy = r6.xy * r8.ww;
  r2.yz = r2.yz * r8.zz + r6.xy;
  r2.yz = r2.yz / r2.ww;
  r2.y = -cb4[36].z * v2.x + r2.y;
  r6.y = saturate(cb4[37].z + r2.y);
  r6.x = cb4[37].w + r2.z;
  r2.yz = r6.xy + -r1.xy;
  r1.xy = saturate(r4.xx * r2.yz + r1.xy);
  r2.x = cb4[38].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb4[38].y * r2.x;
  r2.y = saturate(cb4[38].w + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb4[39].x * r2.x);
  r2.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.y = cb4[39].y * r2.y;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb4[39].z * r2.y;
  r2.y = exp2(r2.y);
  r6.xyz = min(float3(1,1,1), r9.xyz);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.y = cmp(0 < cb0[215].x);
  r2.z = t2[r1.w].val[4/4];
  r2.w = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r2.w);
  if (r1.w != 0) {
    r7.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.w = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r1.www + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r1.w = t1.SampleLevel(s1_s, r7.xyz, 0).x;
  } else {
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r1.y ? r1.z : 0;
    r1.w = r1.z ? cb1[5].x : 1;
  }
  r1.z = 0.0799999982 * r2.x;
  r7.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xyz = r1.xxx * r7.xyz + r1.zzz;
  r8.xyz = -r6.xyz * r1.xxx + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.zzz ? r9.xyz : r8.xyz;
  r7.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.zzz * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.z = r2.y * r9.x + r9.y;
  r1.z = r1.z * r2.y + r9.z;
  r1.z = r1.z * r2.y;
  r1.z = max(r2.y, r1.z);
  r9.xyz = r5.zwz * r5.zwy;
  r10.yw = r5.ww * r5.zy;
  r2.w = r5.y * r5.y + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r2.w = 0.429042608 * r2.w;
  r11.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r11.xyzw);
  r4.x = dot(cb1[9].xyzw, r9.xyzw);
  r3.w = r4.x + r3.w;
  r10.x = cb1[12].x * r2.w + r3.w;
  r3.w = dot(cb1[7].xyzw, r11.xyzw);
  r4.x = dot(cb1[10].xyzw, r9.xyzw);
  r3.w = r4.x + r3.w;
  r10.y = cb1[12].y * r2.w + r3.w;
  r3.w = dot(cb1[8].xyzw, r11.xyzw);
  r4.x = dot(cb1[11].xyzw, r9.xyzw);
  r3.w = r4.x + r3.w;
  r10.z = cb1[12].z * r2.w + r3.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r1.yyy ? r9.xyz : 0;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r5.x = 1;
    r10.xyzw = r1.yyyy ? cb1[4].wxyz : r5.xyzw;
    r1.y = 1 + -r10.x;
    r1.y = -r1.y * r1.y + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.yyy * r0.xyz + r10.yzw;
    r2.w = saturate(dot(r10.yzw, r5.yzw));
    r3.w = 1 + -r2.w;
    r10.y = r1.y * r3.w + r2.w;
  } else {
    r0.xyz = r5.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t3[3].val[0/4];
  r13.y = t3[3].val[0/4+1];
  r13.z = t3[3].val[0/4+2];
  r13.w = t3[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t3[4].val[0/4];
  r14.y = t3[4].val[0/4+1];
  r14.z = t3[4].val[0/4+2];
  r14.w = t3[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t3[5].val[0/4];
  r14.y = t3[5].val[0/4+1];
  r14.z = t3[5].val[0/4+2];
  r14.w = t3[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r9.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r11.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r9.xyz = r2.yyy * r9.xyz + r10.xyz;
  r9.xyz = r9.xyz * r2.yyy + r11.xyz;
  r9.xyz = r9.xyz * r2.yyy;
  r9.xyz = max(r9.xyz, r2.yyy);
  r0.xyz = r9.xyz * r0.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r2.yw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r8.x = t2[r2.y].val[0/4];
    r8.y = t2[r2.y].val[0/4+1];
    r8.z = t2[r2.y].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r9.x = t2[r2.w].val[0/4];
    r9.y = t2[r2.w].val[0/4+1];
    r9.z = t2[r2.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.y = (int)r8.y | (int)r8.x;
    r1.y = (int)r8.z | (int)r1.y;
    r2.y = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.y = 0.00200000009 * r2.y;
    r2.y = frac(r2.y);
    r2.y = cmp(0.5 < r2.y);
    r3.xyz = r2.yyy ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.yyy ? r3.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.y = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r2.z;
  o2.x = r1.x;
  o2.w = 0.505882382;
  o2.y = r2.x;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
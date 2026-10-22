// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

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
  float4 cb4[42];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  float3 v6 : TEXCOORD9,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v7.z;
  r1.y = 1;
  r1.xy = v7.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v6.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r5.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v8.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[20].xx * v3.xy;
  r2.w = cb4[20].y + cb0[143].y;
  r5.xw = t4.SampleBias(s2_s, r1.zw, r2.w).xy;
  r6.xy = r5.xw + r5.xw;
  r7.xy = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r7.xy, r7.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r7.z = sqrt(r2.w);
  r8.xyz = r4.xyz / cb4[21].xxx;
  r5.xw = t5.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xw, r5.xw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.xw;
  r5.xw = t5.SampleBias(s3_s, r8.yz, cb0[143].y).xy;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xw, r5.xw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r5.xw;
  r5.xw = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.xxx * r10.xyz + r9.xyz;
  r10.xy = t5.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r10.xy, r10.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r10.xy;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.www * r10.xyz + r9.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = r9.xyz / r2.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r9.xyz = float3(0,0,1) + -r10.xyz;
  r9.xyz = cb4[21].yyy * r9.xyz + r10.xyz;
  r9.xyz = cb4[21].www * r7.xyz + r9.xyz;
  r5.xw = cmp(float2(0,0) >= v2.yz);
  r10.xy = log2(v2.yz);
  r10.xy = cb4[22].xx * r10.xy;
  r10.xy = exp2(r10.xy);
  r5.xw = r5.xw ? float2(0,0) : r10.xy;
  r4.xyz = r4.xyz / cb4[22].www;
  r10.xyz = t6.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t6.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t6.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r10.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb4[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r5.xxx + r5.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb4[23].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r5.xxx;
  r10.xyz = cb4[23].zzz * r10.xyz + r5.xxx;
  r6.z = r7.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r11.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r11.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r6.xyz = r6.xyz / r2.www;
  r2.w = dot(r6.xyz, cb4[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb4[25].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb4[25].z + cb4[26].y);
  r4.xyz = r4.xyz * r5.www + r5.www;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r5.www;
  r4.xyz = cb4[23].zzz * r4.xyz + r5.www;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r10.xyz + r4.xyz);
  r6.xyz = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r2.w = r6.z * -2 + 1;
  r2.w = cb4[26].z * r2.w + r6.z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[26].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb4[27].x * r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xyz = max(r4.xyz, r2.www);
  r9.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r4.xxx * r9.xyz + r7.xyz;
  r9.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb4[27].yyy * r9.xyz + r7.xyz;
  r9.x = t2[r5.y].val[0/4];
  r9.y = t2[r5.y].val[0/4+1];
  r9.z = t2[r5.y].val[0/4+2];
  r2.w = r9.x + r9.y;
  r2.w = r2.w + r9.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb2[2].x * r2.w;
  r3.w = cb4[27].z * r2.w;
  r5.xw = v4.xy + -v3.xy;
  r5.xw = cb4[28].ww * r5.xw + v3.xy;
  r5.xw = cb4[29].xx * r5.xw;
  r5.xw = r3.ww * cb4[28].yz + r5.xw;
  r5.xw = t8.SampleBias(s5_s, r5.xw, cb0[143].y).xy;
  r9.xy = r5.xw + r5.xw;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xw, r5.xw);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r9.z = sqrt(r3.w);
  r9.xyz = float3(-1,-1,-1) + r9.xyz;
  r9.xyz = v2.xxx * r9.xyz + float3(0,0,1);
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r9.xyz = cb4[29].yyy * r10.xyz + r9.xyz;
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = r7.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = rsqrt(r3.w);
  r7.xyz = r7.xyz * r3.www;
  r0.xyz = r7.yyy * r0.xyz;
  r0.xyz = r7.xxx * v0.xyz + r0.xyz;
  r0.xyz = r7.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r7.yzw = r0.xyz * r0.www;
  r3.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb2[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r7.yzw);
  r3.w = 1 + r3.w;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r4.w = saturate(dot(-r10.xyz, r9.xyz));
  r5.x = 1 + -cb3[1].x;
  r4.w = saturate(r5.x + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r7.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb3[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb3[0].w;
  r2.y = r2.y * r2.z + cb3[0].w;
  r2.z = cmp(r2.y >= cb3[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r9.xyz = cb2[4].xyz * r2.zzz;
  r2.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r2.z = sqrt(r2.z);
  r11.xyz = -cb2[8].xyz / r2.zzz;
  r2.z = dot(r11.xyz, r7.yzw);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r10.xyz, r11.xyz));
  r3.w = saturate(r3.w + r5.x);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r10.xyz = cb2[9].xyz * r2.yyy;
  r10.xyz = cb2[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb2[1].xxx + r10.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = r1.x / cb4[29].z;
  r2.y = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[29].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[30].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.y ? 1 : r1.y;
  r2.yz = r1.zw / cb4[30].ww;
  r2.yz = cb4[31].xy + r2.yz;
  r10.xyz = t9.SampleBias(s6_s, r2.yz, cb0[143].y).xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r11.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb4[30].z, r5.x, r12.x);
  r11.xyz = r11.xyz * r5.xxx;
  r10.xyz = r10.xyz * r12.xxx + r11.xyz;
  r10.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = cb4[6].xyz * r10.xyz;
  r2.y = t9.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r2.z = cb4[31].w * r2.w;
  r5.xw = v3.zw + -v3.xy;
  r5.xw = cb4[33].xx * r5.xw + v3.xy;
  r5.xw = cb4[33].yy * r5.xw;
  r2.zw = r2.zz * cb4[32].zw + r5.xw;
  r2.z = t10.SampleBias(s7_s, r2.zw, cb0[143].y).x;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb4[33].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.w = cb4[33].w * r2.z;
  r2.w = cb0[142].z * cb4[31].z + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb4[34].y + cb4[34].x;
  r2.w = max(cb4[34].w, r2.w);
  r2.w = min(cb4[34].z, r2.w);
  r2.w = cb4[35].x * r2.w;
  r2.w = cb2[3].y * r2.w;
  r2.z = r2.w * r2.z;
  r2.y = r2.y * r2.z;
  r2.yzw = r10.xyz * r2.yyy;
  r2.yzw = r2.yzw * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.yzw = r4.yzw * r2.yzw;
  r2.yzw = cb3[2].xyz * r9.xyz + r2.yzw;
  r4.yzw = cb4[9].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb4[9].xyz + cb4[10].xyz;
  r2.yzw = cb4[35].yyy * r2.yzw + r4.yzw;
  r9.xyzw = t11.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r9.xyz;
  r1.yzw = cb4[36].xxx * r1.yzw + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb4[35].w, r5.x, r9.x);
  r4.yzw = r5.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r3.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = cb4[12].xyz * r1.yzw;
  r10.xyzw = cmp(abs(r7.zwwy) < abs(r7.yyzz));
  r3.w = r10.y ? r10.x : 0;
  r9.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r5.xw = cmp(abs(r7.yz) < abs(r7.ww));
  r3.w = r5.x ? r10.w : 0;
  r10.xyz = r5.www ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r3.www ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r7.yzw), icb[r9.x+0].xyz);
  r11.y = dot(abs(r7.yzw), icb[r10.x+0].xyz);
  r5.xw = float2(-0.577300012,-0.577300012) + r11.xy;
  r5.xw = saturate(float2(2.36574411,2.36574411) * r5.xw);
  r3.w = cmp((int)r9.z < (int)r9.y);
  r6.zw = r3.ww ? r9.zy : r9.yz;
  r3.w = cmp((int)r10.z < (int)r10.y);
  r9.xy = r3.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r8.xyz);
  r11.xyz = ddy_coarse(r8.xyz);
  r12.x = dot(r8.xyz, icb[r6.z+0].xyz);
  r12.y = dot(r8.xyz, icb[r6.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r6.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r6.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r6.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r6.w+0].xyz);
  r15.xyz = t12.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r8.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r8.xyz, icb[r9.y+0].xyz);
  r8.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r8.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t12.SampleGrad(s0_s, r16.xy, r8.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r5.www;
  r9.xyz = r15.xyz * r5.xxx + r9.xyz;
  r3.w = r5.x + r5.w;
  r9.xyz = r9.xyz / r3.www;
  r6.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r6.zzz + -r9.xyz;
  r9.xyz = cb4[36].www * r11.xyz + r9.xyz;
  r6.z = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb4[36].z, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb4[14].xyz * r9.xyz;
  r6.z = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.z = saturate(cb4[37].x * r6.z);
  r6.w = 1 + -r6.z;
  r6.w = r6.w + r6.w;
  r15.xyz = -r6.www * cb4[17].xyz + float3(1,1,1);
  r6.w = r6.z + r6.z;
  r17.xyz = cb4[16].xyz * r6.www;
  r6.z = cmp(r6.z >= 0.5);
  r15.xyz = r6.zzz ? r15.xyz : r17.xyz;
  r17.xyz = cb4[16].xyz + -r15.xyz;
  r15.xyz = cb4[37].yyy * r17.xyz + r15.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r6.z = dot(r17.xyz, r17.xyz);
  r6.z = sqrt(r6.z);
  r6.z = r6.z / cb4[37].z;
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r6.z = cb4[37].w * r6.z;
  r6.z = exp2(r6.z);
  r6.z = min(1, r6.z);
  r6.z = r6.w ? 0 : r6.z;
  r9.xyz = -r9.xyz * cb4[14].xyz + r15.xyz;
  r9.xyz = r9.xyz * r6.zzz;
  r9.xyz = cb4[38].xxx * r9.xyz + r11.xyz;
  r1.yzw = -r1.yzw * cb4[12].xyz + r9.xyz;
  r1.yzw = r4.xxx * r1.yzw + r4.yzw;
  r4.y = saturate(v2.x + v2.x);
  r9.xyz = cb4[19].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r4.yyy * r9.xyz + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r4.y = -cb4[38].y * v2.x + r6.x;
  r4.z = cmp(0 >= r4.y);
  r4.y = log2(r4.y);
  r4.y = cb4[38].z * r4.y;
  r4.y = exp2(r4.y);
  r4.y = r4.z ? 0 : r4.y;
  r9.y = saturate(cb4[38].w + r4.y);
  r9.x = cb4[39].x + r6.y;
  r4.yz = t13.SampleGrad(s0_s, r12.xy, r13.yx, r14.yx).xy;
  r6.xy = t13.SampleGrad(s0_s, r16.xy, r8.xy, r10.xy).xy;
  r6.xy = r6.xy * r5.ww;
  r4.yz = r4.yz * r5.xx + r6.xy;
  r4.yz = r4.yz / r3.ww;
  r3.w = -cb4[38].y * v2.x + r4.y;
  r6.y = saturate(cb4[39].y + r3.w);
  r6.x = cb4[39].z + r4.z;
  r4.yz = r6.xy + -r9.xy;
  r4.xy = saturate(r4.xx * r4.yz + r9.xy);
  r2.x = cb4[39].w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb4[40].x * r2.x;
  r3.w = saturate(cb4[40].z + v1.z);
  r2.x = r3.w * r2.x;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb4[40].w * r2.x);
  r3.w = cb4[41].x * cb3[1].w;
  r4.z = cb4[41].y + r1.x;
  r5.xw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r4.w = cb3[1].w * 0.617499948 + -r1.x;
  r4.w = saturate(r4.w / r5.w);
  r5.w = -cb3[1].w * 0.649999976 + 8000;
  r4.w = r4.w * r5.w + r5.x;
  r4.z = r4.z / r4.w;
  r1.x = r1.x / cb4[41].y;
  r4.w = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r3.w = r3.w ? r4.z : r1.x;
  r1.x = r4.w ? r3.w : r1.x;
  r3.w = cmp(9.99999975e-006 < abs(cb4[41].x));
  r4.z = 1 + cb4[41].x;
  r3.w = r3.w ? r4.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v7.xxy;
  r4.z = r6.x * cb0[130].z + -0.469999999;
  r4.z = 4.93230057 * r4.z;
  r4.z = cos(r4.z);
  r4.z = 0.899999976 + r4.z;
  r4.z = saturate(0.555555582 * r4.z);
  r3.w = -r4.z + r3.w;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r4.w = (uint)r4.w << 1;
  r4.z = (int)r4.w + (int)r4.z;
  r4.z = (uint)r4.z % 5;
  r4.z = (uint)r4.z;
  r5.xw = float2(0.015625,0.015625) * r6.yz;
  r4.w = t14.SampleBias(s9_s, r5.xw, cb0[143].y).x;
  r4.z = r4.z + r4.w;
  r4.z = 0.166666672 * r4.z;
  r1.x = r1.x * r3.w + r4.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r9.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r4.y = t2[r5.z].val[4/4];
  r4.z = t2[r5.z].val[4/4+1];
  r3.w = cmp(0 < r4.z);
  if (r3.w != 0) {
    r5.xzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xzw = max(float3(0,0,0), r5.xzw);
    r5.xzw = min(float3(0.99000001,0.99000001,0.99000001), r5.xzw);
    r5.xzw = cb0[213].xyz * r5.xzw;
    r6.xyz = (int3)r5.xzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r3.w = 1 + cb0[213].w;
    r5.xzw = r5.xzw / r6.www;
    r5.xzw = frac(r5.xzw);
    r5.xzw = cb0[213].www * r5.xzw;
    r5.xzw = r6.xyz * r3.www + r5.xzw;
    r5.xzw = float3(0.5,0.5,0.5) + r5.xzw;
    r5.xzw = cb0[214].xyz * r5.xzw;
    r3.w = t1.SampleLevel(s1_s, r5.xzw, 0).x;
  } else {
    r4.z = t2[r5.y].val[12/4];
    r4.z = cmp(0 < r4.z);
    r4.z = r1.w ? r4.z : 0;
    r3.w = r4.z ? cb1[5].x : 1;
  }
  r4.z = 0.0799999982 * r2.x;
  r5.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r5.xyz = r4.xxx * r5.xyz + r4.zzz;
  r6.xyz = -r1.xyz * r4.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r4.z = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r4.zzz ? r8.xyz : r6.xyz;
  r5.xyz = r4.zzz ? float3(0,0,0) : r5.xyz;
  r4.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r4.z * 2.04040003 + -0.332399994;
  r4.w = r4.z * -4.79510021 + r4.w;
  r4.z = r4.z * 2.75519991 + r4.w;
  r4.z = 1.33200002 + r4.z;
  r4.z = max(1, r4.z);
  r8.xyz = r7.zwz * r7.zwy;
  r9.yw = r7.ww * r7.zy;
  r4.w = r7.y * r7.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r4.w = 0.429042608 * r4.w;
  r10.x = 0.886227548;
  r5.w = dot(cb1[6].xyzw, r10.xyzw);
  r6.w = dot(cb1[9].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = cb1[12].x * r4.w + r5.w;
  r5.w = dot(cb1[7].xyzw, r10.xyzw);
  r6.w = dot(cb1[10].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = cb1[12].y * r4.w + r5.w;
  r5.w = dot(cb1[8].xyzw, r10.xyzw);
  r6.w = dot(cb1[11].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.z = cb1[12].z * r4.w + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r1.www ? r8.xyz : 0;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r7.x = 1;
    r9.xyzw = r1.wwww ? cb1[4].wxyz : r7.xyzw;
    r1.w = 1 + -r9.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r1.www * r0.xyz + r9.yzw;
    r4.w = saturate(dot(r9.yzw, r7.yzw));
    r5.w = 1 + -r4.w;
    r9.y = r1.w * r5.w + r4.w;
  } else {
    r0.xyz = r7.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t3[0].val[0/4];
  r10.y = t3[0].val[0/4+1];
  r10.z = t3[0].val[0/4+2];
  r10.w = t3[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
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
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r1.www ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r1.w = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r7.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r4.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.y;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r2.x;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
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

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s8_s : register(s8);

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
  float4 cb5[42];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[19].xx * v3.xy;
  r0.w = cb5[19].y + cb0[143].y;
  r5.xy = t3.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[19].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb5[20].yyy;
  r7.xy = t4.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t4.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r7.xy;
  r7.xy = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.xxx * r9.xyz + r8.xyz;
  r7.zw = t4.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r7.zw;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.yyy * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb5[20].zzz * r8.xyz + r9.xyz;
  r8.xyz = cb5[21].xxx * r5.xyz + r8.xyz;
  r9.xyz = cmp(float3(0,0,0) >= v2.yzw);
  r10.xyz = log2(v2.yzw);
  r7.zw = cb5[21].yy * r10.xy;
  r7.zw = exp2(r7.zw);
  r7.zw = r9.xy ? float2(0,0) : r7.zw;
  r9.xyw = r4.xyz / cb5[22].xxx;
  r10.xyw = t5.Sample(s0_s, r9.xw).xyz;
  r11.xyz = t5.Sample(s0_s, r9.yw).xyz;
  r12.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyw;
  r10.xyw = r12.xxx * r11.xyz + r10.xyw;
  r9.xyw = t5.Sample(s0_s, r9.xy).xyz;
  r9.xyw = r9.xyw + -r10.xyw;
  r9.xyw = r12.yyy * r9.xyw + r10.xyw;
  r10.xyw = cmp(float3(0,0,0) >= abs(r9.xyw));
  r9.xyw = log2(abs(r9.xyw));
  r9.xyw = cb5[22].yyy * r9.xyw;
  r9.xyw = exp2(r9.xyw);
  r9.xyw = r10.xyw ? float3(0,0,0) : r9.xyw;
  r10.xyw = r9.xyw * r7.zzz + r7.zzz;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyw);
  r10.xyw = log2(r10.xyw);
  r10.xyw = cb5[22].zzz * r10.xyw;
  r10.xyw = exp2(r10.xyw);
  r10.xyw = r11.xyz ? float3(0,0,0) : r10.xyw;
  r10.xyw = r10.xyw + -r7.zzz;
  r10.xyw = cb5[22].www * r10.xyw + r7.zzz;
  r11.xyz = float3(0,0,1) + r5.xyz;
  r12.xyz = r11.yyy * r0.zxy;
  r11.xyw = r11.xxx * v0.xyz + r12.xyz;
  r11.xyz = r11.zzz * v1.xyz + r11.xyw;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = sqrt(r0.w);
  r11.xyz = r11.xyz / r0.www;
  r0.w = dot(r11.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r9.x + -r9.x;
  r0.w = cb5[24].z * r0.w + r9.x;
  r0.w = saturate(r0.w * cb5[24].w + cb5[25].z);
  r11.xyz = r9.xyw * r7.www + r7.www;
  r12.xyz = cmp(float3(0,0,0) >= r11.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = cb5[22].zzz * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r11.xyz = r12.xyz ? float3(0,0,0) : r11.xyz;
  r11.xyz = r11.xyz + -r7.www;
  r11.xyz = cb5[22].www * r11.xyz + r7.www;
  r11.xyz = saturate(-r11.xyz + r0.www);
  r10.xyw = saturate(r11.xyz + r10.xyw);
  r11.xyz = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r0.w = r11.z * -2 + 1;
  r0.w = cb5[25].w * r0.w + r11.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[26].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb5[26].y * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r10.xyw = max(r10.xyw, r0.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r10.xxx * r8.xyz + r5.xyz;
  r4.xyz = r4.xyz / cb5[27].xxx;
  r7.zw = t7.SampleBias(s5_s, r4.xz, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.zw;
  r7.zw = t7.SampleBias(s5_s, r4.yz, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r12.x = v1.x * r0.w;
  r12.yz = -r7.zw;
  r12.xyz = r12.xyz + -r8.xyz;
  r7.xzw = r7.xxx * r12.xyz + r8.xyz;
  r8.xy = t7.SampleBias(s5_s, r4.xy, cb0[143].y).xy;
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
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[27].yyy * r7.xyz + r8.xyz;
  r7.xyz = cb5[27].www * r5.xyz + r7.xyz;
  r0.w = cb5[28].x * r10.z;
  r0.w = exp2(r0.w);
  r0.w = r9.z ? 0 : r0.w;
  r8.xyz = r9.xyw * r0.www + r0.www;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb5[28].yyy * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = r8.xyz + -r0.www;
  r8.xyz = saturate(cb5[28].zzz * r8.xyz + r0.www);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r8.xyz * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r7.xyz = t8.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r2.www + -r7.xyz;
  r7.xyz = cb5[29].yyy * r9.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r9.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[29].x, r12.x, r13.x);
  r9.xyz = r12.xxx * r9.xyz;
  r7.xyz = r7.xyz * r13.xxx + r9.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = cb5[5].xyz * r7.xyz;
  r12.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r2.w = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r11.zw = cmp(abs(r5.zx) < abs(r5.yy));
  r2.w = r11.z ? r12.w : 0;
  r13.xyz = r11.www ? float3(2,1,3) : float3(1,3,2);
  r13.xyz = r2.www ? float3(3,2,1) : r13.xyz;
  r13.xyz = (int3)-r12.xyz + (int3)r13.xyz;
  r13.xyz = max(int3(0,0,0), (int3)r13.xyz);
  r13.xyz = min(int3(2,2,2), (int3)r13.xyz);
  r14.x = dot(abs(r5.zxy), icb[r12.x+0].xyz);
  r14.y = dot(abs(r5.zxy), icb[r13.x+0].xyz);
  r11.zw = float2(-0.577300012,-0.577300012) + r14.xy;
  r11.zw = saturate(float2(2.36574411,2.36574411) * r11.zw);
  r2.w = cmp((int)r12.z < (int)r12.y);
  r12.xy = r2.ww ? r12.zy : r12.yz;
  r2.w = cmp((int)r13.z < (int)r13.y);
  r12.zw = r2.ww ? r13.zy : r13.yz;
  r13.xyz = ddx_coarse(r6.xyz);
  r14.xyz = ddy_coarse(r6.xyz);
  r15.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r15.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r16.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r17.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r17.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r18.xyz = t9.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r19.x = dot(r6.xyz, icb[r12.z+0].xyz);
  r19.y = dot(r6.xyz, icb[r12.w+0].xyz);
  r6.x = dot(r13.xyz, icb[r12.z+0].xyz);
  r6.y = dot(r13.xyz, icb[r12.w+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.z+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.w+0].xyz);
  r14.xyz = t9.SampleGrad(s0_s, r19.xy, r6.xyx, r13.xyx).xyz;
  r14.xyz = r14.xyz * r11.www;
  r14.xyz = r18.xyz * r11.zzz + r14.xyz;
  r2.w = r11.z + r11.w;
  r14.xyz = r14.xyz / r2.www;
  r3.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r18.xyz = r3.www + -r14.xyz;
  r14.xyz = cb5[30].xxx * r18.xyz + r14.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r14.xyz);
  r14.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = float3(0.577350259,0.577350259,0.577350259) * r14.zxy;
  r18.xyz = r14.zxy * float3(0.577350259,0.577350259,0.577350259) + -r18.zxy;
  sincos(cb5[29].w, r20.x, r21.x);
  r18.xyz = r20.xxx * r18.xyz;
  r14.xyz = r14.xyz * r21.xxx + r18.xyz;
  r14.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = cb5[7].xyz * r14.xyz;
  r3.w = dot(r18.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[30].y * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r20.yzw = -r4.www * cb5[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r21.yzw = cb5[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r20.yzw = r3.www ? r20.yzw : r21.yzw;
  r21.yzw = cb5[9].xyz + -r20.yzw;
  r20.yzw = cb5[30].zzz * r21.yzw + r20.yzw;
  r21.yzw = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r21.yzw, r21.yzw);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb5[30].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[31].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r14.xyz = -r14.xyz * cb5[7].xyz + r20.yzw;
  r14.xyz = r14.xyz * r3.www;
  r14.xyz = cb5[31].yyy * r14.xyz + r18.xyz;
  r7.xyz = -r7.xyz * cb5[5].xyz + r14.xyz;
  r7.xyz = r10.xxx * r7.xyz + r9.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r9.yzx, r5.xyz);
  r3.w = 1 + r3.w;
  r14.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r14.xyz, r14.xyz);
  r4.w = sqrt(r4.w);
  r14.xyz = r14.xyz / r4.www;
  r4.w = saturate(dot(-r14.xyz, r9.xyz));
  r6.z = 1 + -cb3[1].x;
  r4.w = saturate(r6.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r5.zxy, r2.xyz);
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
  r2.z = r0.y * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.y * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r9.xyz = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r18.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r18.yzx, r5.xyz);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r14.xyz, r18.xyz));
  r3.w = saturate(r3.w + r6.z);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r14.xyz = cb4[9].xyz * r2.yyy;
  r14.xyz = cb4[1].yyy * r14.xyz;
  r9.xyz = r9.xyz * cb4[1].xxx + r14.xyz;
  r9.xyz = r9.xyz * r7.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.x = r1.x / cb5[31].z;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[31].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[32].x * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.yz = r1.zw / cb5[32].ww;
  r2.yz = cb5[33].xy + r2.yz;
  r14.xyz = t10.SampleBias(s7_s, r2.yz, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r14.xyz);
  r14.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = float3(0.577350259,0.577350259,0.577350259) * r14.zxy;
  r18.xyz = r14.zxy * float3(0.577350259,0.577350259,0.577350259) + -r18.zxy;
  sincos(cb5[32].z, r22.x, r23.x);
  r18.xyz = r22.xxx * r18.xyz;
  r14.xyz = r14.xyz * r23.xxx + r18.xyz;
  r14.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r14.xyz = cb5[12].xyz * r14.xyz;
  r1.y = t10.SampleBias(s7_s, r1.zw, cb0[143].y).w;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb4[2].x * r1.z;
  r1.z = cb5[33].w * r1.z;
  r2.yz = v3.zw + -v3.xy;
  r2.yz = cb5[35].xx * r2.yz + v3.xy;
  r2.yz = cb5[35].yy * r2.yz;
  r1.zw = r1.zz * cb5[34].zw + r2.yz;
  r1.z = t11.SampleBias(s8_s, r1.zw, cb0[143].y).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[35].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb5[35].w * r1.z;
  r1.w = cb0[142].z * cb5[33].z + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb5[36].y + cb5[36].x;
  r1.w = max(cb5[36].w, r1.w);
  r1.w = min(cb5[36].z, r1.w);
  r1.w = cb5[37].x * r1.w;
  r1.w = cb4[3].y * r1.w;
  r1.z = r1.w * r1.z;
  r1.y = r1.y * r1.z;
  r1.yzw = r14.xyz * r1.yyy;
  r1.xyz = r1.xxx * r1.yzw;
  r10.yzw = float3(1,1,1) + -r10.xyw;
  r1.xyz = r10.yzw * r1.xyz;
  r1.w = 1 + -v2.w;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = cb3[2].xyz * r9.xyz + r1.xyz;
  r9.xyz = cb5[15].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb5[15].xyz + cb5[16].xyz;
  r1.xyz = cb5[37].yyy * r1.xyz + r9.xyz;
  r9.xyz = ddx_coarse(r4.xyz);
  r10.yzw = ddy_coarse(r4.xyz);
  r14.x = dot(r4.xyz, icb[r12.x+0].xyz);
  r14.y = dot(r4.xyz, icb[r12.y+0].xyz);
  r18.x = dot(r9.xyz, icb[r12.x+0].xyz);
  r18.y = dot(r9.xyz, icb[r12.y+0].xyz);
  r22.x = dot(r10.yzw, icb[r12.x+0].xyz);
  r22.y = dot(r10.yzw, icb[r12.y+0].xyz);
  r20.yzw = t12.SampleGrad(s0_s, r14.xy, r18.yxx, r22.yxx).xyz;
  r12.x = dot(r4.xyz, icb[r12.z+0].xyz);
  r12.y = dot(r4.xyz, icb[r12.w+0].xyz);
  r4.x = dot(r9.xyz, icb[r12.z+0].xyz);
  r4.y = dot(r9.xyz, icb[r12.w+0].xyz);
  r9.x = dot(r10.yzw, icb[r12.z+0].xyz);
  r9.y = dot(r10.yzw, icb[r12.w+0].xyz);
  r10.yzw = t12.SampleGrad(s0_s, r12.xy, r4.yxx, r9.yxx).xyz;
  r10.yzw = r10.yzw * r11.www;
  r10.yzw = r20.yzw * r11.zzz + r10.yzw;
  r10.yzw = r10.yzw / r2.www;
  r1.w = dot(r10.yzw, float3(0.300000012,0.589999974,0.109999999));
  r20.yzw = r1.www + -r10.yzw;
  r10.yzw = cb5[30].xxx * r20.yzw + r10.yzw;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.yzw);
  r10.yzw = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r10.yzw;
  r20.yzw = float3(0.577350259,0.577350259,0.577350259) * r10.wyz;
  r20.yzw = r10.wyz * float3(0.577350259,0.577350259,0.577350259) + -r20.wyz;
  r20.xyz = r20.yzw * r20.xxx;
  r10.yzw = r10.yzw * r21.xxx + r20.xyz;
  r10.yzw = r1.www * float3(0.577350259,0.577350259,0.577350259) + r10.yzw;
  r10.yzw = r10.yzw * cb5[7].xyz + -r7.xyz;
  r10.yzw = r8.xyz * r10.yzw + r7.xyz;
  r1.w = saturate(v2.x + v2.x);
  r20.xyz = cb5[18].xyz * r10.yzw + -r10.yzw;
  r10.yzw = r1.www * r20.xyz + r10.yzw;
  r10.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r10.yzw);
  r1.w = -cb5[37].z * v2.x + r11.x;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[37].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r20.y = saturate(cb5[38].x + r1.w);
  r20.x = cb5[38].y + r11.y;
  r2.yz = t13.SampleGrad(s0_s, r15.xy, r16.yx, r17.yx).xy;
  r4.zw = t13.SampleGrad(s0_s, r19.xy, r6.xx, r13.xx).xy;
  r4.zw = r4.zw * r11.ww;
  r2.yz = r2.yz * r11.zz + r4.zw;
  r2.yz = r2.yz / r2.ww;
  r1.w = -cb5[37].z * v2.x + r2.y;
  r6.y = saturate(cb5[38].z + r1.w);
  r6.x = cb5[38].w + r2.z;
  r2.yz = r6.xy + -r20.xy;
  r2.yz = r10.xx * r2.yz + r20.xy;
  r4.zw = t14.SampleGrad(s0_s, r14.xy, r18.xx, r22.xx).xy;
  r4.xy = t14.SampleGrad(s0_s, r12.xy, r4.xy, r9.xy).xy;
  r4.xy = r4.xy * r11.ww;
  r4.xy = r4.zw * r11.zz + r4.xy;
  r4.yz = r4.xy / r2.ww;
  r1.w = -v2.x * cb5[39].x + r4.y;
  r4.x = saturate(cb5[39].y + r1.w);
  r4.xy = r4.zx + -r2.yz;
  r2.yz = saturate(r8.yx * r4.xy + r2.yz);
  r1.w = cb5[39].z * r2.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb5[39].w * r1.w;
  r2.x = saturate(cb5[40].y + v1.z);
  r1.w = r2.x * r1.w;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.w = min(0.5, r1.w);
  r1.w = saturate(cb5[40].z * r1.w);
  r2.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = cb5[40].w * r2.x;
  r2.w = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb5[41].x * r2.x;
  r2.x = exp2(r2.x);
  r4.xyz = min(float3(1,1,1), r10.yzw);
  r2.x = min(1, r2.x);
  r2.x = r2.w ? 0 : r2.x;
  o2.z = r2.z * cb0[139].y + cb0[139].x;
  r2.z = 0.0799999982 * r1.w;
  r6.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.xyz = r2.yyy * r6.xyz + r2.zzz;
  r7.xyz = -r4.xyz * r2.yyy + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r2.zzz ? float3(0,0,0) : r6.xyz;
  r2.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.zzz * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.z = r2.x * r8.x + r8.y;
  r2.z = r2.z * r2.x + r8.z;
  r2.z = r2.z * r2.x;
  r2.z = max(r2.x, r2.z);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t1.Sample(s1_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r3.w = dot(r8.xyzw, r5.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r8.xyz = r2.www * r9.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r9.xyzw = t2.Sample(s1_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.w * r9.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r2.www * r0.xyz + r9.xyz;
    r3.w = saturate(dot(r9.yzx, r5.xyz));
    r4.w = 1 + -r3.w;
    r10.y = r2.w * r4.w + r3.w;
  } else {
    r0.xyz = r5.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r2.xxx * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r2.xxx + r10.xyz;
  r8.xyz = r8.xyz * r2.xxx;
  r8.xyz = max(r8.xyz, r2.xxx);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.x = (int)r7.y | (int)r7.x;
    r2.x = (int)r7.z | (int)r2.x;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.xxx ? r3.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r2.y;
  o2.w = 0.75686276;
  o2.y = r1.w;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
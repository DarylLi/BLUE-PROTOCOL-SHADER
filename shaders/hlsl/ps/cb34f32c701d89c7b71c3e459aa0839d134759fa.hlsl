// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

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

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[37];
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
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = -cb0[70].xyz + v6.xyz;
  r3.xy = t6.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb1[19].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xyz = r2.xyz / cb1[19].www;
  r5.xy = t7.SampleBias(s3_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.y = v1.y * r1.w;
  r6.xz = -r5.xy;
  r5.xy = t7.SampleBias(s3_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.x = v1.x * r1.w;
  r7.yz = -r5.xy;
  r1.w = cb1[20].y + -cb1[20].z;
  r5.xy = saturate(abs(v1.xz) * r1.ww + cb1[20].zz);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t7.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r1.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.zxy, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb1[20].www * r6.xyz + r7.xyz;
  r7.xyz = r2.xyz / cb1[21].zzz;
  r5.zw = t8.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.y = v1.y * r1.w;
  r8.xz = -r5.zw;
  r5.zw = t8.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.x = v1.x * r1.w;
  r9.yz = -r5.zw;
  r1.w = cb1[22].x + -cb1[22].y;
  r5.zw = saturate(abs(v1.xz) * r1.ww + cb1[22].yy);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t8.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r9.xy, r9.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r1.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r8.xyz = r8.xyz / r1.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb1[22].zzz * r8.xyz + r9.xyz;
  r9.xy = t9.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r1.w = saturate(cb1[22].w * r9.x);
  r2.w = saturate(cb1[23].x * r9.y);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r8.xyz = r2.xyz / cb1[23].www;
  r9.xy = t10.SampleBias(s6_s, r8.xz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.xy, r9.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.y = v1.y * r4.w;
  r10.xz = -r9.xy;
  r9.xy = t10.SampleBias(s6_s, r8.yz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.xy, r9.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r11.x = v1.x * r4.w;
  r11.yz = -r9.xy;
  r4.w = cb1[24].y + -cb1[24].z;
  r9.xy = saturate(abs(v1.xz) * r4.ww + cb1[24].zz);
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.xxx * r11.xyz + r10.xyz;
  r9.zw = t10.SampleBias(s6_s, r8.xy, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.zw, r9.zw);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r11.xy = -r9.zw;
  r11.z = v1.z * r4.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.yyy * r11.xyz + r10.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.zxy, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = float3(0,0,1) + -r11.xyz;
  r10.xyz = cb1[24].www * r10.xyz + r11.xyz;
  r10.xyz = r10.xyz + -r6.xyz;
  r6.xyz = r2.www * r10.xyz + r6.xyz;
  r3.w = 1 + r3.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.z = dot(r3.xyw, r6.xyz);
  r6.xyz = r6.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r6.xyz;
  r6.xyz = r2.xyz / cb1[25].zzz;
  r9.zw = t11.SampleBias(s7_s, r6.xz, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.zw, r9.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r10.y = v1.y * r0.w;
  r10.xz = -r9.zw;
  r9.zw = t11.SampleBias(s7_s, r6.yz, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.zw, r9.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r11.x = v1.x * r0.w;
  r11.yz = -r9.zw;
  r9.zw = min(float2(1,1), abs(v1.xz));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.zzz * r11.xyz + r10.xyz;
  r11.xy = t11.SampleBias(s7_s, r6.xy, cb0[143].y).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r11.xy, r11.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r11.xy = -r11.xy;
  r11.z = v1.z * r0.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.www * r11.xyz + r10.xyz;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = r10.xyz / r0.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.zxy, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = float3(0,0,1) + -r11.xyz;
  r10.xyz = cb1[25].www * r10.xyz + r11.xyz;
  r10.xyz = cb1[26].yyy * r3.xyz + r10.xyz;
  r9.zw = cmp(float2(0,0) >= v2.yz);
  r11.xy = log2(v2.yz);
  r11.xy = cb1[26].zz * r11.xy;
  r11.xy = exp2(r11.xy);
  r9.zw = r9.zw ? float2(0,0) : r11.xy;
  r2.xyz = r2.xyz / cb1[27].yyy;
  r0.w = t12.Sample(s0_s, r2.xz).x;
  r2.z = t12.Sample(s0_s, r2.yz).x;
  r11.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.z = r2.z + -r0.w;
  r0.w = r11.x * r2.z + r0.w;
  r2.x = t12.Sample(s0_s, r2.xy).x;
  r2.x = r2.x + -r0.w;
  r0.w = r11.y * r2.x + r0.w;
  r2.x = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb1[27].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.x ? 0 : r0.w;
  r2.xy = r0.ww * r9.zw + r9.zw;
  r11.xy = cmp(float2(0,0) >= r2.xy);
  r2.xy = log2(r2.xy);
  r2.xy = cb1[27].ww * r2.xy;
  r2.xy = exp2(r2.xy);
  r2.xy = r11.xy ? float2(0,0) : r2.xy;
  r2.xy = r2.xy + -r9.zw;
  r11.xyz = float3(0,0,1) + r3.xyz;
  r12.xyz = r11.yyy * r0.zxy;
  r11.xyw = r11.xxx * v0.xyz + r12.xyz;
  r11.xyz = r11.zzz * v1.xyz + r11.xyw;
  r2.z = dot(r11.xyz, r11.xyz);
  r2.z = sqrt(r2.z);
  r11.xyz = r11.xyz / r2.zzz;
  r2.z = dot(r11.xyz, cb1[3].xyz);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * r0.w + -r0.w;
  r0.w = cb1[29].w * r2.z + r0.w;
  r0.w = saturate(r0.w * cb1[30].x + cb1[30].w);
  r2.xy = cb1[28].xx * r2.xy + r9.zw;
  r0.w = saturate(-r2.y + r0.w);
  r0.w = saturate(r2.x + r0.w);
  r2.xyz = r10.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyz = r2.xxx * r0.xyz;
  r10.xyz = cb1[7].xyz + -cb1[6].xyz;
  r10.xyz = cb1[31].xxx * r10.xyz + cb1[6].xyz;
  r11.xyz = t13.Sample(s0_s, r4.xz).xyz;
  r12.xyz = t13.Sample(s0_s, r4.yz).xyz;
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r5.xxx * r12.xyz + r11.xyz;
  r12.xyz = t13.Sample(s0_s, r4.xy).xyz;
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r5.yyy * r12.xyz + r11.xyz;
  r2.y = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r2.yyy + -r11.xyz;
  r11.xyz = cb1[31].www * r12.xyz + r11.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r12.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb1[31].z, r13.x, r14.x);
  r12.xyz = r13.xxx * r12.xyz;
  r11.xyz = r11.xyz * r14.xxx + r12.xyz;
  r11.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r11.xyz = cb1[9].xyz * r11.xyz;
  r12.xyz = t14.Sample(s0_s, r7.xz).xyz;
  r13.xyz = t14.Sample(s0_s, r7.yz).xyz;
  r13.xyz = r13.xyz + -r12.xyz;
  r12.xyz = r5.zzz * r13.xyz + r12.xyz;
  r13.xyz = t14.Sample(s0_s, r7.xy).xyz;
  r13.xyz = r13.xyz + -r12.xyz;
  r12.xyz = r5.www * r13.xyz + r12.xyz;
  r2.y = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r2.yyy + -r12.xyz;
  r12.xyz = cb1[32].zzz * r13.xyz + r12.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r13.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb1[32].y, r14.x, r15.x);
  r13.xyz = r14.xxx * r13.xyz;
  r12.xyz = r12.xyz * r15.xxx + r13.xyz;
  r12.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r12.xyz = r12.xyz * cb1[11].xyz + -r11.xyz;
  r11.xyz = r1.www * r12.xyz + r11.xyz;
  r12.xyz = t15.Sample(s0_s, r8.xz).xyz;
  r13.xyz = t15.Sample(s0_s, r8.yz).xyz;
  r13.xyz = r13.xyz + -r12.xyz;
  r12.xyz = r9.xxx * r13.xyz + r12.xyz;
  r13.xyz = t15.Sample(s0_s, r8.xy).xyz;
  r13.xyz = r13.xyz + -r12.xyz;
  r12.xyz = r9.yyy * r13.xyz + r12.xyz;
  r2.y = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r2.yyy + -r12.xyz;
  r12.xyz = cb1[33].yyy * r13.xyz + r12.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r13.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb1[33].x, r14.x, r15.x);
  r13.xyz = r14.xxx * r13.xyz;
  r12.xyz = r12.xyz * r15.xxx + r13.xyz;
  r12.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r12.xyz = r12.xyz * cb1[13].xyz + -r11.xyz;
  r11.xyz = r2.www * r12.xyz + r11.xyz;
  r12.xyzw = cmp(abs(r3.xyyz) < abs(r3.zzxx));
  r2.y = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r2.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r2.yz = cmp(abs(r3.zx) < abs(r3.yy));
  r2.y = r2.y ? r12.w : 0;
  r13.xyz = r2.zzz ? float3(2,1,3) : float3(1,3,2);
  r13.xyz = r2.yyy ? float3(3,2,1) : r13.xyz;
  r13.xyz = (int3)-r12.xyz + (int3)r13.xyz;
  r13.xyz = max(int3(0,0,0), (int3)r13.xyz);
  r13.xyz = min(int3(2,2,2), (int3)r13.xyz);
  r14.x = dot(abs(r3.zxy), icb[r12.x+0].xyz);
  r14.y = dot(abs(r3.zxy), icb[r13.x+0].xyz);
  r2.yz = float2(-0.577300012,-0.577300012) + r14.xy;
  r2.yz = saturate(float2(2.36574411,2.36574411) * r2.yz);
  r4.w = cmp((int)r12.z < (int)r12.y);
  r9.zw = r4.ww ? r12.zy : r12.yz;
  r4.w = cmp((int)r13.z < (int)r13.y);
  r12.xy = r4.ww ? r13.zy : r13.yz;
  r13.xyz = ddx_coarse(r6.xyz);
  r14.xyz = ddy_coarse(r6.xyz);
  r15.x = dot(r6.xyz, icb[r9.z+0].xyz);
  r15.y = dot(r6.xyz, icb[r9.w+0].xyz);
  r16.x = dot(r13.xyz, icb[r9.z+0].xyz);
  r16.y = dot(r13.xyz, icb[r9.w+0].xyz);
  r17.x = dot(r14.xyz, icb[r9.z+0].xyz);
  r17.y = dot(r14.xyz, icb[r9.w+0].xyz);
  r18.xyz = t16.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r19.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r19.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r12.xyz = t16.SampleGrad(s0_s, r19.xy, r6.xyx, r13.xyx).xyz;
  r12.xyz = r12.xyz * r2.zzz;
  r12.xyz = r18.xyz * r2.yyy + r12.xyz;
  r4.w = r2.y + r2.z;
  r12.xyz = r12.xyz / r4.www;
  r6.z = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r6.zzz + -r12.xyz;
  r12.xyz = cb1[34].xxx * r14.xyz + r12.xyz;
  r6.z = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r14.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb1[33].w, r18.x, r20.x);
  r14.xyz = r18.xxx * r14.xyz;
  r12.xyz = r12.xyz * r20.xxx + r14.xyz;
  r12.xyz = r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r14.xyz = cb1[15].xyz * r12.xyz;
  r6.z = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.z = saturate(cb1[34].y * r6.z);
  r6.w = 1 + -r6.z;
  r6.w = r6.w + r6.w;
  r18.xyz = -r6.www * cb1[18].xyz + float3(1,1,1);
  r6.w = r6.z + r6.z;
  r20.xyz = cb1[17].xyz * r6.www;
  r6.z = cmp(r6.z >= 0.5);
  r18.xyz = r6.zzz ? r18.xyz : r20.xyz;
  r20.xyz = cb1[17].xyz + -r18.xyz;
  r18.xyz = cb1[34].zzz * r20.xyz + r18.xyz;
  r20.xyz = -cb0[67].xyz + r1.xyz;
  r6.z = dot(r20.xyz, r20.xyz);
  r6.z = sqrt(r6.z);
  r6.z = r6.z / cb1[34].w;
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r6.z = cb1[35].x * r6.z;
  r6.z = exp2(r6.z);
  r6.z = min(1, r6.z);
  r6.z = r6.w ? 0 : r6.z;
  r12.xyz = -r12.xyz * cb1[15].xyz + r18.xyz;
  r12.xyz = r12.xyz * r6.zzz;
  r12.xyz = cb1[35].yyy * r12.xyz + r14.xyz;
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r0.www * r12.xyz + r11.xyz;
  r11.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r11.xyz);
  r6.zw = t17.Sample(s0_s, r4.xz).xy;
  r9.zw = t17.Sample(s0_s, r4.yz).xy;
  r9.zw = r9.zw + -r6.zw;
  r6.zw = r5.xx * r9.zw + r6.zw;
  r4.xy = t17.Sample(s0_s, r4.xy).xy;
  r4.xy = r4.xy + -r6.zw;
  r4.xy = r5.yy * r4.xy + r6.zw;
  r4.x = saturate(cb1[35].z + r4.x);
  r5.xy = t18.Sample(s0_s, r7.xz).xy;
  r6.zw = t18.Sample(s0_s, r7.yz).xy;
  r6.zw = r6.zw + -r5.xy;
  r5.xy = r5.zz * r6.zw + r5.xy;
  r6.zw = t18.Sample(s0_s, r7.xy).xy;
  r6.zw = r6.zw + -r5.xy;
  r5.xy = r5.ww * r6.zw + r5.xy;
  r4.z = saturate(cb1[35].w + r5.x);
  r4.z = r4.z + -r4.x;
  r4.x = r1.w * r4.z + r4.x;
  r5.xz = t19.Sample(s0_s, r8.xz).xy;
  r6.zw = t19.Sample(s0_s, r8.yz).xy;
  r6.zw = r6.zw + -r5.xz;
  r5.xz = r9.xx * r6.zw + r5.xz;
  r6.zw = t19.Sample(s0_s, r8.xy).xy;
  r6.zw = r6.zw + -r5.xz;
  r5.xz = r9.yy * r6.zw + r5.xz;
  r4.z = saturate(cb1[36].x + r5.x);
  r4.z = r4.z + -r4.x;
  r7.y = r2.w * r4.z + r4.x;
  r4.x = r5.y + -r4.y;
  r1.w = r1.w * r4.x + r4.y;
  r4.x = r5.z + -r1.w;
  r7.x = r2.w * r4.x + r1.w;
  r4.xy = t20.SampleGrad(s0_s, r15.xy, r16.xy, r17.xy).xy;
  r5.xy = t20.SampleGrad(s0_s, r19.xy, r6.xy, r13.xy).xy;
  r2.zw = r5.xy * r2.zz;
  r2.yz = r4.xy * r2.yy + r2.zw;
  r2.yz = r2.yz / r4.ww;
  r4.yz = cb1[36].yz + r2.yz;
  r4.x = saturate(r4.y);
  r2.yz = r4.zx + -r7.xy;
  r2.yz = saturate(r0.ww * r2.yz + r7.xy);
  r4.xyz = min(float3(1,1,1), r11.xyz);
  r0.w = saturate(cb1[36].w);
  o2.z = r2.z * cb0[139].y + cb0[139].x;
  r1.w = (int)w5.x * 15;
  r5.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r5.x].val[4/4];
  r6.xyzw = t5.Sample(s1_s, v4.zw).xyzw;
  r7.x = t1[r5.y].val[0/4];
  r7.y = t1[r5.y].val[0/4+1];
  r7.z = t1[r5.y].val[0/4+2];
  r7.w = t1[r5.y].val[0/4+3];
  r8.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * r7.xyzw + r8.xyzw);
  r7.x = t1[r1.w].val[0/4];
  r7.y = t1[r1.w].val[0/4+1];
  r7.z = t1[r1.w].val[0/4+2];
  r7.w = t1[r1.w].val[0/4+3];
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = r6.xyzw * r7.xyzw;
  r1.w = 0.0799999982 * r0.w;
  r6.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.xyz = r2.yyy * r6.xyz + r1.www;
  r7.xyz = -r4.xyz * r2.yyy + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v4.xy;
  r5.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t3.Sample(s1_s, r2.zw).xyzw;
  r9.xyzw = t3.Sample(s1_s, r5.xy).xyzw;
  r2.z = r9.w * 0.00392156886 + r8.w;
  r2.z = -0.00196078443 + r2.z;
  r11.x = t1[r5.z].val[0/4];
  r11.y = t1[r5.z].val[0/4+1];
  r11.z = t1[r5.z].val[0/4+2];
  r11.w = t1[r5.z].val[0/4+3];
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r2.z = r2.z * r11.w + r5.w;
  r8.xyz = r8.xyz * r8.xyz;
  r5.xyz = r8.xyz * r11.xyz + r5.xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r8.xy = mad((int2)w5.xy, int2(15,15), int2(5,7));
  r11.x = t1[r8.x].val[0/4];
  r11.y = t1[r8.x].val[0/4+1];
  r11.z = t1[r8.x].val[0/4+2];
  r11.w = t1[r8.x].val[0/4+3];
  r8.x = t1[r8.y].val[0/4];
  r8.y = t1[r8.y].val[0/4+1];
  r8.z = t1[r8.y].val[0/4+2];
  r8.w = t1[r8.y].val[0/4+3];
  r8.xyzw = r9.xyzw * r11.xyzw + r8.xyzw;
  r3.w = 1;
  r2.w = dot(r8.xyzw, r3.xyzw);
  r2.w = max(0, r2.w);
  r2.z = r2.z * r2.w;
  r5.xyz = r2.zzz * r5.xyz;
  r2.z = cmp(cb0[186].y != 0.000000);
  if (r2.z != 0) {
    r8.xyzw = t4.Sample(s1_s, v4.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r2.z = dot(r8.xyz, r8.xyz);
    r2.z = rsqrt(r2.z);
    r8.xyz = r8.xyz * r2.zzz;
    r2.z = -r8.w * r8.w + 1;
    r2.z = -r2.z * r2.z + 1;
    r0.xyz = r0.zxy * r2.xxx + -r8.xyz;
    r11.xyz = r2.zzz * r0.xyz + r8.xyz;
    r0.x = saturate(dot(r8.yzx, r3.xyz));
    r0.y = 1 + -r0.x;
    r9.y = r2.z * r0.y + r0.x;
  } else {
    r11.xyz = r3.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r8.xyzw, r11.xyzw);
  r8.x = t2[1].val[0/4];
  r8.y = t2[1].val[0/4+1];
  r8.z = t2[1].val[0/4+2];
  r8.w = t2[1].val[0/4+3];
  r0.y = dot(r8.xyzw, r11.xyzw);
  r8.x = t2[2].val[0/4];
  r8.y = t2[2].val[0/4+1];
  r8.z = t2[2].val[0/4+2];
  r8.w = t2[2].val[0/4+3];
  r0.z = dot(r8.xyzw, r11.xyzw);
  r8.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r8.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r8.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r8.xyzw);
  r2.x = r11.y * r11.y;
  r2.x = r11.x * r11.x + -r2.x;
  r8.x = t2[6].val[0/4];
  r8.y = t2[6].val[0/4+1];
  r8.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r8.xyz * r2.xxx + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.x = r9.x * r9.y;
  r0.xyz = r2.xxx * r0.xyz;
  r0.xyz = r5.xyz * cb0[157].xyz + r0.xyz;
  r2.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r5.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.xyz = r5.xyz * r0.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r6.xyz = max(float3(0,0,0), r10.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r2.zw = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t0[r2.z].val[0/4];
    r7.y = t0[r2.z].val[0/4+1];
    r7.z = t0[r2.z].val[0/4+2];
    r7.xyz = -r7.xyz + r1.xyz;
    r8.x = t0[r2.w].val[0/4];
    r8.y = t0[r2.w].val[0/4+1];
    r8.z = t0[r2.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r2.zzz ? r1.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.x * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r2.y;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
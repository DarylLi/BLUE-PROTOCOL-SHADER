// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[39];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD4,
  nointerpolation uint v6 : PRIMITIVE_ID0,
  nointerpolation uint w6 : LIGHTMAP_ID0,
  float3 v7 : TEXCOORD9,
  float4 v8 : SV_Position0,
  uint v9 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v8.z;
  r1.y = 1;
  r1.xy = v8.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v8.yyyy;
  r2.xyzw = v8.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v8.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v7.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyzw = mad((int4)v6.xxxy, int4(36,36,36,15), int4(4,18,20,4));
  r0.w = t0[r5.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v9.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb3[19].xx * v3.xy;
  r2.w = cb3[19].y + cb0[143].y;
  r6.xy = t3.SampleBias(s2_s, r1.zw, r2.w).xy;
  r7.xy = r6.xy + r6.xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r8.xyz = r4.xyz / cb3[20].xxx;
  r9.xy = t4.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r9.xy;
  r9.xy = t4.SampleBias(s3_s, r8.yz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r9.xy;
  r9.xy = min(float2(1,1), abs(v1.xz));
  r11.xyz = r11.xyz + -r10.xyz;
  r9.xzw = r9.xxx * r11.xyz + r10.xyz;
  r10.xy = t4.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r10.xy, r10.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r10.xy;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r9.xzw;
  r9.xyz = r9.yyy * r10.xyz + r9.xzw;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = r9.xyz / r2.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.zxy, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r9.xyz = float3(0,0,1) + -r10.xyz;
  r9.xyz = cb3[20].yyy * r9.xyz + r10.xyz;
  r9.xyz = cb3[20].www * r6.xyz + r9.xyz;
  r10.xy = cmp(float2(0,0) >= v2.yz);
  r10.zw = log2(v2.yz);
  r10.zw = cb3[21].xx * r10.zw;
  r10.zw = exp2(r10.zw);
  r10.xy = r10.xy ? float2(0,0) : r10.zw;
  r4.xyz = r4.xyz / cb3[21].www;
  r11.xyz = t5.Sample(s0_s, r4.xz).xyz;
  r12.xyz = t5.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r4.zzz * r12.xyz + r11.xyz;
  r4.xyz = t5.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r11.xyz;
  r4.xyz = r4.www * r4.xyz + r11.xyz;
  r11.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb3[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r11.xyz ? float3(0,0,0) : r4.xyz;
  r11.xyz = r4.xyz * r10.xxx + r10.xxx;
  r12.xyz = cmp(float3(0,0,0) >= r11.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = cb3[22].yyy * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r11.xyz = r12.xyz ? float3(0,0,0) : r11.xyz;
  r11.xyz = r11.xyz + -r10.xxx;
  r10.xzw = cb3[22].zzz * r11.xyz + r10.xxx;
  r7.z = r6.z;
  r7.xyz = float3(-1,-1,1) + r7.xyz;
  r11.xyz = r7.yyy * r0.zxy;
  r7.xyw = r7.xxx * v0.xyz + r11.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = dot(r7.xyz, cb3[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb3[24].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb3[24].z + cb3[25].y);
  r4.xyz = r4.xyz * r10.yyy + r10.yyy;
  r7.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r7.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r10.yyy;
  r4.xyz = cb3[22].zzz * r4.xyz + r10.yyy;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r10.xzw + r4.xyz);
  r7.xyz = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r2.w = r7.z * -2 + 1;
  r2.w = cb3[25].z * r2.w + r7.z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[25].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb3[26].x * r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xyz = max(r4.xyz, r2.www);
  r9.xyz = r9.xyz + -r6.xyz;
  r6.xyz = r4.xxx * r9.xyz + r6.xyz;
  r9.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[26].yyy * r9.xyz + r6.xyz;
  r9.x = t0[r5.y].val[0/4];
  r9.y = t0[r5.y].val[0/4+1];
  r9.z = t0[r5.y].val[0/4+2];
  r2.w = r9.x + r9.y;
  r2.w = r2.w + r9.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r2.w = cb3[26].z * r2.w;
  r5.xy = v4.xy + -v3.xy;
  r5.xy = cb3[27].ww * r5.xy + v3.xy;
  r5.xy = cb3[28].xx * r5.xy;
  r5.xy = r2.ww * cb3[27].yz + r5.xy;
  r5.xy = t7.SampleBias(s5_s, r5.xy, cb0[143].y).xy;
  r9.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r9.z = sqrt(r2.w);
  r9.xyz = float3(-1,-1,-1) + r9.xyz;
  r9.xyz = v2.xxx * r9.xyz + float3(0,0,1);
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r9.xyz = cb3[28].yyy * r10.xyz + r9.xyz;
  r6.xyz = r9.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.yzx + r0.xyz;
  r0.xyz = r6.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r6.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb1[5].xyz, -cb1[5].xyz);
  r0.x = sqrt(r0.x);
  r9.xyz = -cb1[5].xyz / r0.xxx;
  r0.x = dot(r9.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r10.xyz = r10.xyz / r0.zzz;
  r0.z = saturate(dot(-r10.xyz, r9.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r6.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb2[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb2[0].w;
  r2.x = r2.x * r2.y + cb2[0].w;
  r2.y = cmp(r2.x >= cb2[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb2[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb1[4].xyz * r0.xxx;
  r0.x = dot(-cb1[8].xyz, -cb1[8].xyz);
  r0.x = sqrt(r0.x);
  r9.xyz = -cb1[8].xyz / r0.xxx;
  r0.x = dot(r9.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r10.xyz, r9.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb1[9].xyz * r0.xxx;
  r0.xyw = cb1[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb1[1].xxx + r0.xyw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb3[28].z;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[28].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[29].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb3[29].ww;
  r2.xy = cb3[30].xy + r2.xy;
  r2.xyz = t8.SampleBias(s6_s, r2.xy, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r9.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[29].z, r5.x, r10.x);
  r9.xyz = r9.xyz * r5.xxx;
  r2.xyz = r2.xyz * r10.xxx + r9.xyz;
  r2.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[6].xyz * r2.xyz;
  r2.w = t8.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r5.xy = cb3[30].ww * v3.xy;
  r3.w = t9.SampleBias(s7_s, r5.xy, cb0[143].y).x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[31].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = cb3[31].y * r3.w;
  r3.w = r4.w ? 0 : r3.w;
  r3.w = cb0[142].z * cb3[30].z + r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * cb3[31].w + cb3[31].z;
  r3.w = max(cb3[32].y, r3.w);
  r3.w = min(cb3[32].x, r3.w);
  r3.w = cb3[32].z * r3.w;
  r3.w = cb1[3].y * r3.w;
  r2.w = r3.w * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xyw = cb2[2].xyz * r0.xyw + r2.xyz;
  r2.xyz = cb3[8].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb3[8].xyz + cb3[9].xyz;
  r0.xyw = cb3[32].www * r0.xyw + r2.xyz;
  r2.xyzw = t10.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r2.xyz;
  r1.yzw = cb3[33].zzz * r1.yzw + r2.xyz;
  r2.x = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[33].y, r5.x, r9.x);
  r4.yzw = r5.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r2.xyz = cb3[11].xyz * r1.yzw;
  r9.xyzw = cmp(abs(r6.xyyz) < abs(r6.zzxx));
  r3.w = r9.y ? r9.x : 0;
  r4.yzw = r9.zzz ? float3(1.40129846e-045,2.80259693e-045,0) : float3(2.80259693e-045,0,1.40129846e-045);
  r4.yzw = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r4.yzw;
  r5.xy = cmp(abs(r6.zx) < abs(r6.yy));
  r3.w = r5.x ? r9.w : 0;
  r9.xyz = r5.yyy ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r3.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r4.yzw + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r5.x = dot(abs(r6.zxy), icb[r4.y+0].xyz);
  r5.y = dot(abs(r6.zxy), icb[r9.x+0].xyz);
  r5.xy = float2(-0.577300012,-0.577300012) + r5.xy;
  r5.xy = saturate(float2(2.36574411,2.36574411) * r5.xy);
  r3.w = cmp((int)r4.w < (int)r4.z);
  r4.yz = r3.ww ? r4.wz : r4.zw;
  r3.w = cmp((int)r9.z < (int)r9.y);
  r7.zw = r3.ww ? r9.zy : r9.yz;
  r9.xyz = ddx_coarse(r8.xyz);
  r10.xyz = ddy_coarse(r8.xyz);
  r11.x = dot(r8.xyz, icb[r4.y+0].xyz);
  r11.y = dot(r8.xyz, icb[r4.z+0].xyz);
  r12.x = dot(r9.xyz, icb[r4.y+0].xyz);
  r12.y = dot(r9.xyz, icb[r4.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r4.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r4.z+0].xyz);
  r4.yzw = t11.SampleGrad(s0_s, r11.xy, r12.yxx, r13.yxx).xyz;
  r14.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r14.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r7.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r7.w+0].xyz);
  r10.xyz = t11.SampleGrad(s0_s, r14.xy, r8.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r5.yyy;
  r4.yzw = r4.yzw * r5.xxx + r10.xyz;
  r3.w = r5.x + r5.y;
  r4.yzw = r4.yzw / r3.www;
  r7.z = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r7.zzz + -r4.yzw;
  r4.yzw = cb3[34].yyy * r10.xyz + r4.yzw;
  r7.z = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r7.zzz * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r10.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[34].x, r15.x, r16.x);
  r10.xyz = r15.xxx * r10.xyz;
  r4.yzw = r4.yzw * r16.xxx + r10.xyz;
  r4.yzw = r7.zzz * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r10.xyz = cb3[13].xyz * r4.yzw;
  r7.z = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.z = saturate(cb3[34].z * r7.z);
  r7.w = 1 + -r7.z;
  r7.w = r7.w + r7.w;
  r15.xyz = -r7.www * cb3[16].xyz + float3(1,1,1);
  r7.w = r7.z + r7.z;
  r16.xyz = cb3[15].xyz * r7.www;
  r7.z = cmp(r7.z >= 0.5);
  r15.xyz = r7.zzz ? r15.xyz : r16.xyz;
  r16.xyz = cb3[15].xyz + -r15.xyz;
  r15.xyz = cb3[34].www * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r3.xyz;
  r7.z = dot(r16.xyz, r16.xyz);
  r7.z = sqrt(r7.z);
  r7.z = r7.z / cb3[35].x;
  r7.w = cmp(0 >= r7.z);
  r7.z = log2(r7.z);
  r7.z = cb3[35].y * r7.z;
  r7.z = exp2(r7.z);
  r7.z = min(1, r7.z);
  r7.z = r7.w ? 0 : r7.z;
  r4.yzw = -r4.yzw * cb3[13].xyz + r15.xyz;
  r4.yzw = r7.zzz * r4.yzw;
  r4.yzw = cb3[35].zzz * r4.yzw + r10.xyz;
  r1.yzw = -r1.yzw * cb3[11].xyz + r4.yzw;
  r1.yzw = r4.xxx * r1.yzw + r2.xyz;
  r2.x = saturate(v2.x + v2.x);
  r4.yzw = cb3[18].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r2.xxx * r4.yzw + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r2.x = -cb3[35].w * v2.x + r7.x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb3[36].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.y = saturate(cb3[36].y + r2.x);
  r2.x = cb3[36].z + r7.y;
  r4.yz = t12.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r7.xy = t12.SampleGrad(s0_s, r14.xy, r8.xy, r9.xy).xy;
  r7.xy = r7.xy * r5.yy;
  r4.yz = r4.yz * r5.xx + r7.xy;
  r4.yz = r4.yz / r3.ww;
  r2.z = -cb3[35].w * v2.x + r4.y;
  r5.y = saturate(cb3[36].w + r2.z);
  r5.x = cb3[37].x + r4.z;
  r4.yz = r5.xy + -r2.xy;
  r2.xy = saturate(r4.xx * r4.yz + r2.xy);
  r0.z = cb3[37].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[37].z * r0.z;
  r2.z = saturate(cb3[38].x + v1.z);
  r0.z = r2.z * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb3[38].y * r0.z);
  r2.z = cb3[38].z * cb2[1].w;
  r3.w = cb3[38].w + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.z = cb2[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb2[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb3[38].w;
  r4.x = cmp(9.99999975e-006 < abs(r2.z));
  r2.z = cmp(r2.z >= 0);
  r2.z = r2.z ? r3.w : r1.x;
  r1.x = r4.x ? r2.z : r1.x;
  r2.z = cmp(9.99999975e-006 < abs(cb3[38].z));
  r3.w = 1 + cb3[38].z;
  r2.z = r2.z ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v8.xxy;
  r3.w = r4.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.z = -r3.w + r2.z;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r3.w = (uint)r4.w << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r4.x = t13.SampleBias(s9_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.z + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  o1.w = t0[r5.z].val[4/4];
  r1.w = 0.0799999982 * r0.z;
  r2.yzw = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r2.yzw = r2.xxx * r2.yzw + r1.www;
  r4.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r1.www ? r5.xyz : r4.xyz;
  r2.yzw = r1.www ? float3(0,0,0) : r2.yzw;
  r1.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xy = float2(1,0.5) * v5.xy;
  r7.xy = v5.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s1_s, r5.xy).xyzw;
  r7.xyzw = t2.Sample(s1_s, r7.xy).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r9.xyz = mad((int3)w6.xyy, int3(15,15,15), int3(6,5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r3.w = r3.w * r5.w + r10.w;
  r8.xyz = r8.xyz * r8.xyz;
  r5.xyz = r8.xyz * r5.xyz + r10.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r8.x = t1[r9.y].val[0/4];
  r8.y = t1[r9.y].val[0/4+1];
  r8.z = t1[r9.y].val[0/4+2];
  r8.w = t1[r9.y].val[0/4+3];
  r9.x = t1[r9.z].val[0/4];
  r9.y = t1[r9.z].val[0/4+1];
  r9.z = t1[r9.z].val[0/4+2];
  r9.w = t1[r9.z].val[0/4+3];
  r7.xyzw = r7.xyzw * r8.xyzw + r9.xyzw;
  r6.w = 1;
  r4.w = dot(r7.xyzw, r6.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r4.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.x = cmp(0 < cb0[140].x);
  if (r4.x != 0) {
    r4.xy = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r3.xyz;
    r7.x = t0[r4.y].val[0/4];
    r7.y = t0[r4.y].val[0/4+1];
    r7.z = t0[r4.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r4.xyz = cmp(r7.xyz < abs(r4.xzw));
    r4.x = (int)r4.y | (int)r4.x;
    r4.x = (int)r4.z | (int)r4.x;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r4.xxx ? r3.xyz : r0.xyw;
  }
  r2.yzw = cb0[145].yyy * r2.yzw + r5.xyz;
  r0.xyw = r2.yzw + r0.xyw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r3.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o2.x = r2.x;
  o2.w = 0.75686276;
  o2.y = r0.z;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
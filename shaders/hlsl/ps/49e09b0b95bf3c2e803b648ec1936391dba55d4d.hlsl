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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r0.w = (int)w6.x * 15;
  r5.xyzw = mad((int4)v6.xxxy, int4(36,36,36,15), int4(4,18,20,1));
  r1.z = t0[r5.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v9.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r6.xy = cb3[19].xx * v3.xy;
  r1.w = cb3[19].y + cb0[143].y;
  r6.zw = t4.SampleBias(s2_s, r6.xy, r1.w).xy;
  r7.xy = r6.zw + r6.zw;
  r8.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r8.z = sqrt(r1.w);
  r9.xyz = r4.xyz / cb3[20].xxx;
  r6.zw = t5.SampleBias(s3_s, r9.xz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.zw, r6.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r10.y = v1.y * r1.w;
  r10.xz = -r6.zw;
  r6.zw = t5.SampleBias(s3_s, r9.yz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.zw, r6.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r11.x = v1.x * r1.w;
  r11.yz = -r6.zw;
  r6.zw = min(float2(1,1), abs(v1.xz));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r6.zzz * r11.xyz + r10.xyz;
  r11.xy = t5.SampleBias(s3_s, r9.xy, cb0[143].y).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r11.xy, r11.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r11.xy = -r11.xy;
  r11.z = v1.z * r1.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r6.www * r11.xyz + r10.xyz;
  r1.w = dot(r10.xyz, r10.xyz);
  r1.w = sqrt(r1.w);
  r10.xyz = r10.xyz / r1.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.zxy, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = float3(0,0,1) + -r11.xyz;
  r10.xyz = cb3[20].yyy * r10.xyz + r11.xyz;
  r10.xyz = cb3[20].www * r8.xyz + r10.xyz;
  r6.zw = cmp(float2(0,0) >= v2.yz);
  r11.xy = log2(v2.yz);
  r11.xy = cb3[21].xx * r11.xy;
  r11.xy = exp2(r11.xy);
  r6.zw = r6.zw ? float2(0,0) : r11.xy;
  r4.xyz = r4.xyz / cb3[21].www;
  r11.xyz = t6.Sample(s0_s, r4.xz).xyz;
  r12.xyz = t6.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r4.zzz * r12.xyz + r11.xyz;
  r4.xyz = t6.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r11.xyz;
  r4.xyz = r4.www * r4.xyz + r11.xyz;
  r11.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb3[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r11.xyz ? float3(0,0,0) : r4.xyz;
  r11.xyz = r4.xyz * r6.zzz + r6.zzz;
  r12.xyz = cmp(float3(0,0,0) >= r11.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = cb3[22].yyy * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r11.xyz = r12.xyz ? float3(0,0,0) : r11.xyz;
  r11.xyz = r11.xyz + -r6.zzz;
  r11.xyz = cb3[22].zzz * r11.xyz + r6.zzz;
  r7.z = r8.z;
  r7.xyz = float3(-1,-1,1) + r7.xyz;
  r12.xyz = r7.yyy * r0.zxy;
  r7.xyw = r7.xxx * v0.xyz + r12.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r1.w = dot(r7.xyz, cb3[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r4.x + -r4.x;
  r1.w = cb3[24].y * r1.w + r4.x;
  r1.w = saturate(r1.w * cb3[24].z + cb3[25].y);
  r4.xyz = r4.xyz * r6.www + r6.www;
  r7.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r7.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r6.www;
  r4.xyz = cb3[22].zzz * r4.xyz + r6.www;
  r4.xyz = saturate(-r4.xyz + r1.www);
  r4.xyz = saturate(r11.xyz + r4.xyz);
  r7.xyz = t7.SampleBias(s4_s, r6.xy, cb0[143].y).xyw;
  r1.w = r7.z * -2 + 1;
  r1.w = cb3[25].z * r1.w + r7.z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[25].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb3[26].x * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r4.xyz = max(r4.xyz, r1.www);
  r10.xyz = r10.xyz + -r8.xyz;
  r8.xyz = r4.xxx * r10.xyz + r8.xyz;
  r10.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb3[26].yyy * r10.xyz + r8.xyz;
  r10.x = t0[r5.y].val[0/4];
  r10.y = t0[r5.y].val[0/4+1];
  r10.z = t0[r5.y].val[0/4+2];
  r1.w = r10.x + r10.y;
  r1.w = r1.w + r10.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb1[2].x * r1.w;
  r1.w = cb3[26].z * r1.w;
  r5.xy = v4.xy + -v3.xy;
  r5.xy = cb3[27].ww * r5.xy + v3.xy;
  r5.xy = cb3[28].xx * r5.xy;
  r5.xy = r1.ww * cb3[27].yz + r5.xy;
  r5.xy = t8.SampleBias(s5_s, r5.xy, cb0[143].y).xy;
  r10.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r10.z = sqrt(r1.w);
  r10.xyz = float3(-1,-1,-1) + r10.xyz;
  r10.xyz = v2.xxx * r10.xyz + float3(0,0,1);
  r11.xyz = float3(0,0,1) + -r10.xyz;
  r10.xyz = cb3[28].yyy * r11.xyz + r10.xyz;
  r8.xyz = r10.xyz + r8.xyz;
  r8.xyz = r8.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r8.xyz * r1.www;
  r0.xyz = r8.yyy * r0.xyz;
  r0.xyz = r8.xxx * v0.yzx + r0.xyz;
  r0.xyz = r8.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r8.xyz = r0.xyz * r1.zzz;
  r0.x = dot(-cb1[5].xyz, -cb1[5].xyz);
  r0.x = sqrt(r0.x);
  r10.xyz = -cb1[5].xyz / r0.xxx;
  r0.x = dot(r10.yzx, r8.xyz);
  r0.x = 1 + r0.x;
  r11.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r11.xyz, r11.xyz);
  r0.z = sqrt(r0.z);
  r11.xyz = r11.xyz / r0.zzz;
  r0.z = saturate(dot(-r11.xyz, r10.xyz));
  r1.w = 1 + -cb2[1].x;
  r0.z = saturate(r1.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r8.zxy, r2.xyz);
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
  r2.y = r0.y * r1.z + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r1.z + 1;
  r1.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r1.z ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb2[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb1[4].xyz * r0.xxx;
  r0.x = dot(-cb1[8].xyz, -cb1[8].xyz);
  r0.x = sqrt(r0.x);
  r10.xyz = -cb1[8].xyz / r0.xxx;
  r0.x = dot(r10.yzx, r8.xyz);
  r0.x = 1 + r0.x;
  r1.z = saturate(dot(-r11.xyz, r10.xyz));
  r1.z = saturate(r1.z + r1.w);
  r0.x = r1.z * r0.x;
  r0.x = r0.x * r0.y;
  r10.xyz = cb1[9].xyz * r0.xxx;
  r10.xyz = cb1[1].yyy * r10.xyz;
  r2.xyz = r2.xyz * cb1[1].xxx + r10.xyz;
  r0.x = cmp(cb0[31].w < 1);
  r0.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.y = r1.x + r0.y;
  r0.x = r0.x ? r1.y : r0.y;
  r0.y = r0.x / cb3[28].z;
  r1.x = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[28].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb3[29].x * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r1.x ? 1 : r0.y;
  r1.xy = r6.xy / cb3[29].ww;
  r1.xy = cb3[30].xy + r1.xy;
  r1.xyz = t9.SampleBias(s6_s, r1.xy, cb0[143].y).xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r10.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[29].z, r5.x, r11.x);
  r10.xyz = r10.xyz * r5.xxx;
  r1.xyz = r1.xyz * r11.xxx + r10.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb3[6].xyz * r1.xyz;
  r1.w = t9.SampleBias(s6_s, r6.xy, cb0[143].y).w;
  r5.xy = cb3[30].ww * v3.xy;
  r2.w = t10.SampleBias(s7_s, r5.xy, cb0[143].y).x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[31].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = cb3[31].y * r2.w;
  r2.w = r3.w ? 0 : r2.w;
  r2.w = cb0[142].z * cb3[30].z + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb3[31].w + cb3[31].z;
  r2.w = max(cb3[32].y, r2.w);
  r2.w = min(cb3[32].x, r2.w);
  r2.w = cb3[32].z * r2.w;
  r2.w = cb1[3].y * r2.w;
  r1.w = r2.w * r1.w;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r4.yzw * r1.xyz;
  r1.xyz = cb2[2].xyz * r2.xyz + r1.xyz;
  r2.xyz = cb3[8].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb3[8].xyz + cb3[9].xyz;
  r1.xyz = cb3[32].www * r1.xyz + r2.xyz;
  r2.xyzw = t11.SampleBias(s8_s, r6.xy, cb0[143].y).xyzw;
  r0.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r0.yyy + -r2.xyz;
  r2.xyz = cb3[33].zzz * r4.yzw + r2.xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.yzw = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[33].y, r5.x, r6.x);
  r4.yzw = r5.xxx * r4.yzw;
  r2.xyz = r2.xyz * r6.xxx + r4.yzw;
  r2.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = cb3[11].xyz * r2.xyz;
  r6.xyzw = cmp(abs(r8.xyyz) < abs(r8.zzxx));
  r0.y = r6.y ? r6.x : 0;
  r6.xyz = r6.zzz ? float3(1,2,0) : float3(2,0,1);
  r6.xyz = r0.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r6.xyz;
  r5.xy = cmp(abs(r8.zx) < abs(r8.yy));
  r0.y = r5.x ? r6.w : 0;
  r10.xyz = r5.yyy ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r0.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r6.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r5.x = dot(abs(r8.zxy), icb[r6.x+0].xyz);
  r5.y = dot(abs(r8.zxy), icb[r10.x+0].xyz);
  r5.xy = float2(-0.577300012,-0.577300012) + r5.xy;
  r5.xy = saturate(float2(2.36574411,2.36574411) * r5.xy);
  r0.y = cmp((int)r6.z < (int)r6.y);
  r6.xy = r0.yy ? r6.zy : r6.yz;
  r0.y = cmp((int)r10.z < (int)r10.y);
  r6.zw = r0.yy ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r9.xyz);
  r11.xyz = ddy_coarse(r9.xyz);
  r12.x = dot(r9.xyz, icb[r6.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r6.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r6.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r6.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r6.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r6.y+0].xyz);
  r15.xyz = t12.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r6.x = dot(r9.xyz, icb[r6.z+0].xyz);
  r6.y = dot(r9.xyz, icb[r6.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r6.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r6.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r6.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r6.w+0].xyz);
  r11.xyz = t12.SampleGrad(s0_s, r6.xy, r9.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r5.yyy;
  r11.xyz = r15.xyz * r5.xxx + r11.xyz;
  r0.y = r5.x + r5.y;
  r11.xyz = r11.xyz / r0.yyy;
  r1.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r15.xyz = r1.www + -r11.xyz;
  r11.xyz = cb3[34].yyy * r15.xyz + r11.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r15.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r15.zxy;
  sincos(cb3[34].x, r16.x, r17.x);
  r15.xyz = r16.xxx * r15.xyz;
  r11.xyz = r11.xyz * r17.xxx + r15.xyz;
  r11.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = cb3[13].xyz * r11.xyz;
  r1.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = saturate(cb3[34].z * r1.w);
  r3.w = 1 + -r1.w;
  r3.w = r3.w + r3.w;
  r16.xyz = -r3.www * cb3[16].xyz + float3(1,1,1);
  r3.w = r1.w + r1.w;
  r17.xyz = cb3[15].xyz * r3.www;
  r1.w = cmp(r1.w >= 0.5);
  r16.xyz = r1.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[15].xyz + -r16.xyz;
  r16.xyz = cb3[34].www * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r17.xyz, r17.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb3[35].x;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[35].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r3.w ? 0 : r1.w;
  r11.xyz = -r11.xyz * cb3[13].xyz + r16.xyz;
  r11.xyz = r11.xyz * r1.www;
  r11.xyz = cb3[35].zzz * r11.xyz + r15.xyz;
  r2.xyz = -r2.xyz * cb3[11].xyz + r11.xyz;
  r2.xyz = r4.xxx * r2.xyz + r4.yzw;
  r1.w = saturate(v2.x + v2.x);
  r4.yzw = cb3[18].xyz * r2.xyz + -r2.xyz;
  r2.xyz = r1.www * r4.yzw + r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = -cb3[35].w * v2.x + r7.x;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[36].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.w ? 0 : r1.w;
  r11.y = saturate(cb3[36].y + r1.w);
  r11.x = cb3[36].z + r7.y;
  r4.yz = t13.SampleGrad(s0_s, r12.xy, r13.yx, r14.yx).xy;
  r6.xy = t13.SampleGrad(s0_s, r6.xy, r9.xy, r10.xy).xy;
  r6.xy = r6.xy * r5.yy;
  r4.yz = r4.yz * r5.xx + r6.xy;
  r4.yz = r4.yz / r0.yy;
  r0.y = -cb3[35].w * v2.x + r4.y;
  r5.y = saturate(cb3[36].w + r0.y);
  r5.x = cb3[37].x + r4.z;
  r4.yz = r5.xy + -r11.xy;
  r4.xy = saturate(r4.xx * r4.yz + r11.xy);
  r0.y = cb3[37].y * r0.z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[37].z * r0.y;
  r0.z = saturate(cb3[38].x + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[38].y * r0.y);
  r0.z = cb3[38].z * cb2[1].w;
  r1.w = cb3[38].w + r0.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r0.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb2[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r1.w = r1.w / r3.w;
  r0.x = r0.x / cb3[38].w;
  r3.w = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = cmp(r0.z >= 0);
  r0.z = r0.z ? r1.w : r0.x;
  r0.x = r3.w ? r0.z : r0.x;
  r0.z = cmp(9.99999975e-006 < abs(cb3[38].z));
  r1.w = 1 + cb3[38].z;
  r0.z = r0.z ? r1.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v8.xxy;
  r1.w = r6.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r0.z = -r1.w + r0.z;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r3.w = t14.SampleBias(s9_s, r4.zw, cb0[143].y).x;
  r1.w = r3.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r0.x = r0.x * r0.z + r1.w;
  r0.x = saturate(-0.5 + r0.x);
  r0.x = r2.w * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  o1.w = t0[r5.z].val[4/4];
  r6.xyzw = t3.Sample(s1_s, v5.zw).xyzw;
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r7.xyzw = r5.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r6.xyzw * r5.xyzw + r7.xyzw);
  r6.x = t1[r0.w].val[0/4];
  r6.y = t1[r0.w].val[0/4+1];
  r6.z = t1[r0.w].val[0/4+2];
  r6.w = t1[r0.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r0.x = 0.0799999982 * r0.y;
  r4.yzw = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r0.xzw = r4.xxx * r4.yzw + r0.xxx;
  r4.yzw = -r2.xyz * r4.xxx + r2.xyz;
  r4.yzw = r4.yzw * cb0[136].www + cb0[136].xyz;
  r0.xzw = r0.xzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r4.yzw = r1.www ? r5.xyz : r4.yzw;
  r0.xzw = r1.www ? float3(0,0,0) : r0.xzw;
  r1.w = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xy = float2(1,0.5) * v5.xy;
  r5.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t2.Sample(s1_s, r5.xy).xyzw;
  r5.xyzw = t2.Sample(s1_s, r5.zw).xyzw;
  r2.w = r5.w * 0.00392156886 + r6.w;
  r2.w = -0.00196078443 + r2.w;
  r7.xyzw = mad((int4)w6.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r9.x = t1[r7.x].val[0/4];
  r9.y = t1[r7.x].val[0/4+1];
  r9.z = t1[r7.x].val[0/4+2];
  r9.w = t1[r7.x].val[0/4+3];
  r10.x = t1[r7.y].val[0/4];
  r10.y = t1[r7.y].val[0/4+1];
  r10.z = t1[r7.y].val[0/4+2];
  r10.w = t1[r7.y].val[0/4+3];
  r2.w = r2.w * r9.w + r10.w;
  r6.xyz = r6.xyz * r6.xyz;
  r6.xyz = r6.xyz * r9.xyz + r10.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r9.x = t1[r7.z].val[0/4];
  r9.y = t1[r7.z].val[0/4+1];
  r9.z = t1[r7.z].val[0/4+2];
  r9.w = t1[r7.z].val[0/4+3];
  r7.x = t1[r7.w].val[0/4];
  r7.y = t1[r7.w].val[0/4+1];
  r7.z = t1[r7.w].val[0/4+2];
  r7.w = t1[r7.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r9.xyzw + r7.xyzw;
  r8.w = 1;
  r3.w = dot(r5.xyzw, r8.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r5.xyz = r2.www * r6.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r4.yzw;
  r6.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r5.xyz = r6.xyz * r5.xyz;
  r0.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r4.yz = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r6.x = t0[r4.y].val[0/4];
    r6.y = t0[r4.y].val[0/4+1];
    r6.z = t0[r4.y].val[0/4+2];
    r6.xyz = -r6.xyz + r3.xyz;
    r4.y = t0[r4.z].val[0/4];
    r4.z = t0[r4.z].val[0/4+1];
    r4.w = t0[r4.z].val[0/4+2];
    r4.yzw = float3(1,1,1) + r4.yzw;
    r4.yzw = cmp(r4.yzw < abs(r6.xyz));
    r3.w = (int)r4.z | (int)r4.y;
    r3.w = (int)r4.w | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.www ? r3.xyz : r1.xyz;
  }
  r0.xzw = cb0[145].yyy * r0.xzw + r5.xyz;
  r0.xzw = r0.xzw + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r8.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
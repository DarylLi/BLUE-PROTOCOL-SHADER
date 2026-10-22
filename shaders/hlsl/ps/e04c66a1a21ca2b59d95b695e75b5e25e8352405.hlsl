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
  float4 cb3[42];
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
  r1.zw = cb3[20].xx * v3.xy;
  r0.w = cb3[20].y + cb0[143].y;
  r5.xy = t4.SampleBias(s2_s, r1.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = r4.xyz / cb3[21].xxx;
  r8.xy = t5.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t5.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r10.x = v1.x * r0.w;
  r10.yz = -r8.xy;
  r8.xy = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r8.xzw = r8.xxx * r10.xyz + r9.xyz;
  r9.xy = t5.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xzw;
  r8.xyz = r8.yyy * r9.xyz + r8.xzw;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb3[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb3[21].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb3[22].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb3[22].www;
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
  r4.xyz = cb3[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r9.xxx + r9.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb3[23].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r9.xxx;
  r9.xzw = cb3[23].zzz * r10.xyz + r9.xxx;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.zxy;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r0.w = dot(r6.xyz, cb3[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb3[25].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb3[25].z + cb3[26].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb3[23].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r6.xyz = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r0.w = r6.z * -2 + 1;
  r0.w = cb3[26].z * r0.w + r6.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb3[27].x * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[27].yyy * r8.xyz + r5.xyz;
  r0.w = (int)w6.x * 15;
  r8.xyzw = mad((int4)v6.xxyy, int4(36,36,15,15), int4(18,20,1,4));
  r9.x = t0[r8.x].val[0/4];
  r9.y = t0[r8.x].val[0/4+1];
  r9.z = t0[r8.x].val[0/4+2];
  r2.w = r9.x + r9.y;
  r2.w = r2.w + r9.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r3.w = cb3[27].z * r2.w;
  r6.zw = v4.xy + -v3.xy;
  r6.zw = cb3[28].ww * r6.zw + v3.xy;
  r6.zw = cb3[29].xx * r6.zw;
  r6.zw = r3.ww * cb3[28].yz + r6.zw;
  r6.zw = t8.SampleBias(s5_s, r6.zw, cb0[143].y).xy;
  r9.xy = r6.zw + r6.zw;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r6.zw, r6.zw);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r9.z = sqrt(r3.w);
  r9.xyz = float3(-1,-1,-1) + r9.xyz;
  r9.xyz = v2.xxx * r9.xyz + float3(0,0,1);
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r9.xyz = cb3[29].yyy * r10.xyz + r9.xyz;
  r5.xyz = r9.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r5.xyz * r3.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r3.www * r0.xyz;
  r0.x = dot(-cb1[5].xyz, -cb1[5].xyz);
  r0.x = sqrt(r0.x);
  r9.xyz = -cb1[5].xyz / r0.xxx;
  r0.x = dot(r9.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r10.xyz = r10.xyz / r0.zzz;
  r0.z = saturate(dot(-r10.xyz, r9.xyz));
  r4.w = 1 + -cb2[1].x;
  r0.z = saturate(r4.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r5.zxy, r2.xyz);
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
  r2.y = r0.y * r3.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r3.w + 1;
  r2.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r2.y ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb2[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb1[4].xyz * r0.xxx;
  r0.x = dot(-cb1[8].xyz, -cb1[8].xyz);
  r0.x = sqrt(r0.x);
  r9.xyz = -cb1[8].xyz / r0.xxx;
  r0.x = dot(r9.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r3.w = saturate(dot(-r10.xyz, r9.xyz));
  r3.w = saturate(r3.w + r4.w);
  r0.x = r3.w * r0.x;
  r0.x = r0.x * r0.y;
  r9.xyz = cb1[9].xyz * r0.xxx;
  r9.xyz = cb1[1].yyy * r9.xyz;
  r2.xyz = r2.xyz * cb1[1].xxx + r9.xyz;
  r0.x = cmp(cb0[31].w < 1);
  r0.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.y = r1.x + r0.y;
  r0.x = r0.x ? r1.y : r0.y;
  r0.y = r0.x / cb3[29].z;
  r1.x = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[29].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb3[30].x * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r1.x ? 1 : r0.y;
  r1.xy = r1.zw / cb3[30].ww;
  r1.xy = cb3[31].xy + r1.xy;
  r9.xyz = t9.SampleBias(s6_s, r1.xy, cb0[143].y).xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[30].z, r8.x, r11.x);
  r10.xyz = r10.xyz * r8.xxx;
  r9.xyz = r9.xyz * r11.xxx + r10.xyz;
  r9.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = cb3[6].xyz * r9.xyz;
  r1.x = t9.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r1.y = cb3[31].w * r2.w;
  r6.zw = v3.zw + -v3.xy;
  r6.zw = cb3[33].xx * r6.zw + v3.xy;
  r6.zw = cb3[33].yy * r6.zw;
  r6.zw = r1.yy * cb3[32].zw + r6.zw;
  r1.y = t10.SampleBias(s7_s, r6.zw, cb0[143].y).x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[33].z * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.w ? 0 : r1.y;
  r2.w = cb3[33].w * r1.y;
  r2.w = cb0[142].z * cb3[31].z + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb3[34].y + cb3[34].x;
  r2.w = max(cb3[34].w, r2.w);
  r2.w = min(cb3[34].z, r2.w);
  r2.w = cb3[35].x * r2.w;
  r2.w = cb1[3].y * r2.w;
  r1.y = r2.w * r1.y;
  r1.x = r1.x * r1.y;
  r9.xyz = r9.xyz * r1.xxx;
  r9.xyz = r9.xyz * r0.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r9.xyz * r4.yzw;
  r2.xyz = cb2[2].xyz * r2.xyz + r4.yzw;
  r4.yzw = cb3[9].xyz * r2.xyz;
  r2.xyz = -r2.xyz * cb3[9].xyz + cb3[10].xyz;
  r2.xyz = cb3[35].yyy * r2.xyz + r4.yzw;
  r1.xyzw = t11.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r0.y = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r0.yyy + -r1.xyz;
  r1.xyz = cb3[36].xxx * r4.yzw + r1.xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r4.yzw = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[35].w, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.xyz = r1.xyz * r9.xxx + r4.yzw;
  r1.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r4.yzw = cb3[12].xyz * r1.xyz;
  r9.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r0.y = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r0.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r6.zw = cmp(abs(r5.zx) < abs(r5.yy));
  r0.y = r6.z ? r9.w : 0;
  r10.xyz = r6.www ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r0.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.zxy), icb[r9.x+0].xyz);
  r11.y = dot(abs(r5.zxy), icb[r10.x+0].xyz);
  r6.zw = float2(-0.577300012,-0.577300012) + r11.xy;
  r6.zw = saturate(float2(2.36574411,2.36574411) * r6.zw);
  r0.y = cmp((int)r9.z < (int)r9.y);
  r9.xy = r0.yy ? r9.zy : r9.yz;
  r0.y = cmp((int)r10.z < (int)r10.y);
  r9.zw = r0.yy ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r7.xyz);
  r11.xyz = ddy_coarse(r7.xyz);
  r12.x = dot(r7.xyz, icb[r9.x+0].xyz);
  r12.y = dot(r7.xyz, icb[r9.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r15.xyz = t12.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r9.x = dot(r7.xyz, icb[r9.z+0].xyz);
  r9.y = dot(r7.xyz, icb[r9.w+0].xyz);
  r7.x = dot(r10.xyz, icb[r9.z+0].xyz);
  r7.y = dot(r10.xyz, icb[r9.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.w+0].xyz);
  r11.xyz = t12.SampleGrad(s0_s, r9.xy, r7.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r6.www;
  r11.xyz = r15.xyz * r6.zzz + r11.xyz;
  r0.y = r6.z + r6.w;
  r11.xyz = r11.xyz / r0.yyy;
  r2.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r15.xyz = r2.www + -r11.xyz;
  r11.xyz = cb3[36].www * r15.xyz + r11.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r15.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r15.zxy;
  sincos(cb3[36].z, r8.x, r16.x);
  r15.xyz = r15.xyz * r8.xxx;
  r11.xyz = r11.xyz * r16.xxx + r15.xyz;
  r11.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = cb3[14].xyz * r11.xyz;
  r2.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = saturate(cb3[37].x * r2.w);
  r3.w = 1 + -r2.w;
  r3.w = r3.w + r3.w;
  r16.xyz = -r3.www * cb3[17].xyz + float3(1,1,1);
  r3.w = r2.w + r2.w;
  r17.xyz = cb3[16].xyz * r3.www;
  r2.w = cmp(r2.w >= 0.5);
  r16.xyz = r2.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[16].xyz + -r16.xyz;
  r16.xyz = cb3[37].yyy * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r17.xyz, r17.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[37].z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[37].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r11.xyz = -r11.xyz * cb3[14].xyz + r16.xyz;
  r11.xyz = r11.xyz * r2.www;
  r11.xyz = cb3[38].xxx * r11.xyz + r15.xyz;
  r1.xyz = -r1.xyz * cb3[12].xyz + r11.xyz;
  r1.xyz = r4.xxx * r1.xyz + r4.yzw;
  r2.w = saturate(v2.x + v2.x);
  r4.yzw = cb3[19].xyz * r1.xyz + -r1.xyz;
  r1.xyz = r2.www * r4.yzw + r1.xyz;
  r1.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r2.w = -cb3[38].y * v2.x + r6.x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[38].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r11.y = saturate(cb3[38].w + r2.w);
  r11.x = cb3[39].x + r6.y;
  r4.yz = t13.SampleGrad(s0_s, r12.xy, r13.yx, r14.yx).xy;
  r6.xy = t13.SampleGrad(s0_s, r9.xy, r7.xy, r10.xy).xy;
  r6.xy = r6.xy * r6.ww;
  r4.yz = r4.yz * r6.zz + r6.xy;
  r4.yz = r4.yz / r0.yy;
  r0.y = -cb3[38].y * v2.x + r4.y;
  r6.y = saturate(cb3[39].y + r0.y);
  r6.x = cb3[39].z + r4.z;
  r4.yz = r6.xy + -r11.xy;
  r4.xy = saturate(r4.xx * r4.yz + r11.xy);
  r0.y = cb3[39].w * r0.z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[40].x * r0.y;
  r0.z = saturate(cb3[40].z + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[40].w * r0.y);
  r0.z = cb3[41].x * cb2[1].w;
  r2.w = cb3[41].y + r0.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r0.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb2[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r2.w = r2.w / r3.w;
  r0.x = r0.x / cb3[41].y;
  r3.w = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = cmp(r0.z >= 0);
  r0.z = r0.z ? r2.w : r0.x;
  r0.x = r3.w ? r0.z : r0.x;
  r0.z = cmp(9.99999975e-006 < abs(cb3[41].x));
  r2.w = 1 + cb3[41].x;
  r0.z = r0.z ? r2.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v8.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r0.z = -r2.w + r0.z;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r2.w = (uint)r4.w << 1;
  r2.w = (int)r2.w + (int)r4.z;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r3.w = t14.SampleBias(s9_s, r4.zw, cb0[143].y).x;
  r4.z = r3.w + r2.w;
  r4.z = 0.166666672 * r4.z;
  r0.x = r0.x * r0.z + r4.z;
  r0.x = saturate(-0.5 + r0.x);
  r0.z = r3.w * cb3[41].z + r2.w;
  r0.z = 0.166666672 * r0.z;
  r0.x = r1.w * r0.x + r0.z;
  r0.x = -0.833299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.xyz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  o1.w = t0[r8.y].val[4/4];
  r6.xyzw = t3.Sample(s1_s, v5.zw).xyzw;
  r7.x = t1[r8.z].val[0/4];
  r7.y = t1[r8.z].val[0/4+1];
  r7.z = t1[r8.z].val[0/4+2];
  r7.w = t1[r8.z].val[0/4+3];
  r9.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * r7.xyzw + r9.xyzw);
  r7.x = t1[r0.w].val[0/4];
  r7.y = t1[r0.w].val[0/4+1];
  r7.z = t1[r0.w].val[0/4+2];
  r7.w = t1[r0.w].val[0/4+3];
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = r6.xyzw * r7.xyzw;
  r0.x = 0.0799999982 * r0.y;
  r4.yzw = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r0.xzw = r4.xxx * r4.yzw + r0.xxx;
  r4.yzw = -r1.xyz * r4.xxx + r1.xyz;
  r4.yzw = r4.yzw * cb0[136].www + cb0[136].xyz;
  r0.xzw = r0.xzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r4.yzw = r1.www ? r6.xyz : r4.yzw;
  r0.xzw = r1.www ? float3(0,0,0) : r0.xzw;
  r1.w = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r6.xy = float2(1,0.5) * v5.xy;
  r6.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t2.Sample(s1_s, r6.xy).xyzw;
  r6.xyzw = t2.Sample(s1_s, r6.zw).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r8.x = t1[r8.w].val[0/4];
  r8.y = t1[r8.w].val[0/4+1];
  r8.z = t1[r8.w].val[0/4+2];
  r8.w = t1[r8.w].val[0/4+3];
  r9.xyz = mad((int3)w6.xyy, int3(15,15,15), int3(6,5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r2.w = r2.w * r8.w + r10.w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * r8.xyz + r10.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.x = t1[r9.y].val[0/4];
  r8.y = t1[r9.y].val[0/4+1];
  r8.z = t1[r9.y].val[0/4+2];
  r8.w = t1[r9.y].val[0/4+3];
  r9.x = t1[r9.z].val[0/4];
  r9.y = t1[r9.z].val[0/4+1];
  r9.z = t1[r9.z].val[0/4+2];
  r9.w = t1[r9.z].val[0/4+3];
  r6.xyzw = r6.xyzw * r8.xyzw + r9.xyzw;
  r5.w = 1;
  r3.w = dot(r6.xyzw, r5.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r6.xyz = r2.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r4.yzw;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r0.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r4.yz = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r7.x = t0[r4.y].val[0/4];
    r7.y = t0[r4.y].val[0/4+1];
    r7.z = t0[r4.y].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r4.y = t0[r4.z].val[0/4];
    r4.z = t0[r4.z].val[0/4+1];
    r4.w = t0[r4.z].val[0/4+2];
    r4.yzw = float3(1,1,1) + r4.yzw;
    r4.yzw = cmp(r4.yzw < abs(r7.xyz));
    r3.w = (int)r4.z | (int)r4.y;
    r3.w = (int)r4.w | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r3.xyz : r2.xyz;
  }
  r0.xzw = cb0[145].yyy * r0.xzw + r6.xyz;
  r0.xzw = r0.xzw + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
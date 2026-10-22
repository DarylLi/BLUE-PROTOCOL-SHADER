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

cbuffer cb3 : register(b3)
{
  float4 cb3[32];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r1.zw = cb3[15].xx * v3.xy;
  r2.w = cb3[15].y + cb0[143].y;
  r6.xy = t5.SampleBias(s2_s, r1.zw, r2.w).xy;
  r7.xy = r6.xy + r6.xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r8.xyz = r4.xyz / cb3[16].xxx;
  r9.xy = t6.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r9.xy;
  r9.xy = t6.SampleBias(s3_s, r8.yz, cb0[143].y).xy;
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
  r10.xy = t6.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
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
  r9.xyz = cb3[16].yyy * r9.xyz + r10.xyz;
  r9.xyz = cb3[16].www * r6.xyz + r9.xyz;
  r10.xy = cmp(float2(0,0) >= v2.yz);
  r10.zw = log2(v2.yz);
  r10.zw = cb3[17].xx * r10.zw;
  r10.zw = exp2(r10.zw);
  r10.xy = r10.xy ? float2(0,0) : r10.zw;
  r4.xyz = r4.xyz / cb3[17].www;
  r2.w = t7.Sample(s0_s, r4.xz).x;
  r3.w = t7.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.w = r3.w + -r2.w;
  r2.w = r4.z * r3.w + r2.w;
  r3.w = t7.Sample(s0_s, r4.xy).x;
  r3.w = r3.w + -r2.w;
  r2.w = r4.w * r3.w + r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb3[18].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xy = r2.ww * r10.xy + r10.xy;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb3[18].yy * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r4.xy = r4.xy + -r10.xy;
  r7.z = r6.z;
  r7.xyz = float3(-1,-1,1) + r7.xyz;
  r11.xyz = r7.yyy * r0.zxy;
  r7.xyw = r7.xxx * v0.xyz + r11.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r7.xyz = r7.xyz / r3.www;
  r3.w = dot(r7.xyz, cb3[3].xyz);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * r2.w + -r2.w;
  r2.w = cb3[20].y * r3.w + r2.w;
  r2.w = saturate(r2.w * cb3[20].z + cb3[21].y);
  r4.xy = cb3[18].zz * r4.xy + r10.xy;
  r2.w = saturate(-r4.y + r2.w);
  r2.w = saturate(r4.x + r2.w);
  r4.xyz = r9.xyz + -r6.xyz;
  r4.xyz = r2.www * r4.xyz + r6.xyz;
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[21].zzz * r6.xyz + r4.xyz;
  r3.w = 1 + r4.z;
  r6.x = t0[r5.y].val[0/4];
  r6.y = t0[r5.y].val[0/4+1];
  r6.z = t0[r5.y].val[0/4+2];
  r5.x = r6.x + r6.y;
  r5.x = r5.x + r6.z;
  r5.x = frac(r5.x);
  r5.x = cb0[142].z + r5.x;
  r5.x = cb1[2].x * r5.x;
  r5.x = cb3[21].w * r5.x;
  r6.xy = v4.xy + -v3.xy;
  r6.xy = cb3[23].xx * r6.xy + v3.xy;
  r6.xy = cb3[23].yy * r6.xy;
  r5.xy = r5.xx * cb3[22].zw + r6.xy;
  r5.xy = t8.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.x = dot(r5.xy, r5.xy);
  r5.x = 1 + -r5.x;
  r5.x = max(0, r5.x);
  r6.z = sqrt(r5.x);
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = v2.xxx * r6.xyz + float3(0,0,1);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[23].zzz * r7.xyz + r6.xyz;
  r4.w = 1 + r4.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r4.z = dot(r4.xyw, r6.xyz);
  r6.xyz = r6.xyz * r3.www;
  r4.xyz = r4.xyw * r4.zzz + -r6.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r6.xyz = cb3[23].www * cb3[5].xyz;
  r7.xyzw = t9.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r3.www + -r7.xyz;
  r7.xyz = cb3[24].zzz * r9.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r9.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[24].y, r5.x, r10.x);
  r9.xyz = r9.xyz * r5.xxx;
  r7.xyz = r7.xyz * r10.xxx + r9.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = cb3[7].xyz * r7.xyz;
  r10.xyzw = cmp(abs(r4.xyyz) < abs(r4.zzxx));
  r3.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r5.xy = cmp(abs(r4.zx) < abs(r4.yy));
  r3.w = r5.x ? r10.w : 0;
  r11.xyz = r5.yyy ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r3.www ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r5.x = dot(abs(r4.zxy), icb[r10.x+0].xyz);
  r5.y = dot(abs(r4.zxy), icb[r11.x+0].xyz);
  r5.xy = float2(-0.577300012,-0.577300012) + r5.xy;
  r5.xy = saturate(float2(2.36574411,2.36574411) * r5.xy);
  r3.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r3.ww ? r10.zy : r10.yz;
  r3.w = cmp((int)r11.z < (int)r11.y);
  r10.zw = r3.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r8.xyz);
  r12.xyz = ddy_coarse(r8.xyz);
  r13.x = dot(r8.xyz, icb[r10.x+0].xyz);
  r13.y = dot(r8.xyz, icb[r10.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r16.xyz = t10.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r10.x = dot(r8.xyz, icb[r10.z+0].xyz);
  r10.y = dot(r8.xyz, icb[r10.w+0].xyz);
  r8.x = dot(r11.xyz, icb[r10.z+0].xyz);
  r8.y = dot(r11.xyz, icb[r10.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.w+0].xyz);
  r12.xyz = t10.SampleGrad(s0_s, r10.xy, r8.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz * r5.yyy;
  r12.xyz = r16.xyz * r5.xxx + r12.xyz;
  r3.w = r5.x + r5.y;
  r12.xyz = r12.xyz / r3.www;
  r6.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r16.xyz = r6.www + -r12.xyz;
  r12.xyz = cb3[25].yyy * r16.xyz + r12.xyz;
  r6.w = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r6.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb3[25].x, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r6.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = cb3[9].xyz * r12.xyz;
  r6.w = dot(r16.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = saturate(cb3[25].z * r6.w);
  r8.z = 1 + -r6.w;
  r8.z = r8.z + r8.z;
  r17.xyz = -r8.zzz * cb3[12].xyz + float3(1,1,1);
  r8.z = r6.w + r6.w;
  r18.xyz = cb3[11].xyz * r8.zzz;
  r6.w = cmp(r6.w >= 0.5);
  r17.xyz = r6.www ? r17.xyz : r18.xyz;
  r18.xyz = cb3[11].xyz + -r17.xyz;
  r17.xyz = cb3[25].www * r18.xyz + r17.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r6.w = dot(r18.xyz, r18.xyz);
  r6.w = sqrt(r6.w);
  r6.w = r6.w / cb3[26].x;
  r8.z = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb3[26].y * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r8.z ? 0 : r6.w;
  r12.xyz = -r12.xyz * cb3[9].xyz + r17.xyz;
  r12.xyz = r12.xyz * r6.www;
  r12.xyz = cb3[26].zzz * r12.xyz + r16.xyz;
  r7.xyz = -r7.xyz * cb3[7].xyz + r12.xyz;
  r7.xyz = r2.www * r7.xyz + r9.xyz;
  r9.xyz = cb3[26].www * r7.xyz;
  r6.w = saturate(v2.x + v2.x);
  r12.xyz = cb3[14].xyz * r9.xyz + -r9.xyz;
  r9.xyz = r6.www * r12.xyz + r9.xyz;
  r9.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r9.xyz);
  r1.zw = t11.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb3[27].x * v2.x + r1.z;
  r6.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r6.w ? 0 : r1.z;
  r12.y = saturate(cb3[27].z + r1.z);
  r12.x = cb3[27].w + r1.w;
  r1.zw = t12.SampleGrad(s0_s, r13.xy, r14.xx, r15.xx).xy;
  r8.xy = t12.SampleGrad(s0_s, r10.xy, r8.xy, r11.xy).xy;
  r8.xy = r8.xy * r5.yy;
  r1.zw = r1.zw * r5.xx + r8.xy;
  r1.zw = r1.zw / r3.ww;
  r1.z = -cb3[27].x * v2.x + r1.z;
  r5.y = saturate(cb3[28].x + r1.z);
  r5.x = cb3[28].y + r1.w;
  r1.zw = r5.xy + -r12.xy;
  r1.zw = saturate(r2.ww * r1.zw + r12.xy);
  r2.x = dot(r4.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb3[28].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb3[28].w * r2.x;
  r2.y = saturate(cb3[29].y + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb3[29].z * r2.x);
  r2.y = cb3[30].x * cb2[1].w;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cb3[30].y + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r3.w / r2.w);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.z = r2.w * r3.w + r2.z;
  r1.y = r1.y / r2.z;
  r1.x = r1.x / cb3[30].y;
  r2.z = cmp(9.99999975e-006 < abs(r2.y));
  r2.y = cmp(r2.y >= 0);
  r1.y = r2.y ? r1.y : r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[30].x));
  r2.y = 1 + cb3[30].x;
  r1.y = r1.y ? r2.y : 1.39999998;
  r2.yzw = -cb0[129].xxy + v8.xxy;
  r2.y = r2.y * cb0[130].z + -0.469999999;
  r2.y = 4.93230057 * r2.y;
  r2.y = cos(r2.y);
  r2.y = 0.899999976 + r2.y;
  r2.y = saturate(0.555555582 * r2.y);
  r1.y = -r2.y + r1.y;
  r5.xy = cb0[152].xx + r2.zw;
  r5.xy = (uint2)r5.xy;
  r2.y = (uint)r5.y << 1;
  r2.y = (int)r2.y + (int)r5.x;
  r2.y = (uint)r2.y % 5;
  r2.y = (uint)r2.y;
  r2.zw = float2(0.015625,0.015625) * r2.zw;
  r2.z = t13.SampleBias(s7_s, r2.zw, cb0[143].y).x;
  r2.y = r2.y + r2.z;
  r2.y = 0.166666672 * r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.x = saturate(-0.5 + r1.x);
  r2.yzw = saturate(cb3[31].www * r7.xyz);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r7.xyz = min(float3(1,1,1), r9.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[29].w);
  r1.xyw = r2.yzw * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r5.z].val[4/4];
  r2.yzw = saturate(r1.xyw);
  o4.xyz = sqrt(r2.yzw);
  r2.y = 0.0799999982 * r2.x;
  r5.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r2.yzw = r1.zzz * r5.xyz + r2.yyy;
  r5.xyz = -r7.xyz * r1.zzz + r7.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r3.www ? r8.xyz : r5.xyz;
  r2.yzw = r3.www ? float3(0,0,0) : r2.yzw;
  r3.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r3.w * 2.04040003 + -0.332399994;
  r6.w = r3.w * -4.79510021 + r6.w;
  r3.w = r3.w * 2.75519991 + r6.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r1.xyw = r5.xyz + r1.xyw;
  r8.xy = float2(1,0.5) * v5.xy;
  r8.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t3.Sample(s1_s, r8.zw).xyzw;
  r6.w = r8.w * 0.00392156886 + r9.w;
  r6.w = -0.00196078443 + r6.w;
  r10.x = t1[r5.w].val[0/4];
  r10.y = t1[r5.w].val[0/4+1];
  r10.z = t1[r5.w].val[0/4+2];
  r10.w = t1[r5.w].val[0/4+3];
  r11.xyz = mad((int3)w6.xyy, int3(15,15,15), int3(6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r5.w = r6.w * r10.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r12.xyz;
  r5.w = exp2(r5.w);
  r5.w = -0.0185813606 + r5.w;
  r10.x = t1[r11.y].val[0/4];
  r10.y = t1[r11.y].val[0/4+1];
  r10.z = t1[r11.y].val[0/4+2];
  r10.w = t1[r11.y].val[0/4+3];
  r11.x = t1[r11.z].val[0/4];
  r11.y = t1[r11.z].val[0/4+1];
  r11.z = t1[r11.z].val[0/4+2];
  r11.w = t1[r11.z].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r4.w = 1;
  r4.w = dot(r8.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r4.w = r5.w * r4.w;
  r8.xyz = r4.www * r9.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r9.xyzw = t4.Sample(s1_s, v5.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r4.w = dot(r9.xyz, r9.xyz);
    r4.w = rsqrt(r4.w);
    r9.xyz = r9.xyz * r4.www;
    r4.w = -r9.w * r9.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r4.www * r0.xyz + r9.xyz;
    r5.w = saturate(dot(r9.yzx, r4.xyz));
    r6.w = 1 + -r5.w;
    r10.y = r4.w * r6.w + r5.w;
  } else {
    r0.xyz = r4.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.xyw;
  r1.xyw = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyw = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyw;
  r1.xyw = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyw;
  r1.xyw = float3(1.33200002,1.33200002,1.33200002) + r1.xyw;
  r1.xyw = max(float3(1,1,1), r1.xyw);
  r0.xyz = r1.xyw * r0.xyz;
  r1.xyw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.yzw = max(float3(0,0,0), r6.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.xy = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r3.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r4.w = (int)r5.y | (int)r5.x;
    r4.w = (int)r5.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r4.www ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r1.xyw + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r1.z;
  o2.w = 0.760784328;
  o2.y = r2.x;
  o3.xyz = r7.xyz;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r6.xy = cb3[15].xx * v3.xy;
  r1.w = cb3[15].y + cb0[143].y;
  r6.zw = t6.SampleBias(s2_s, r6.xy, r1.w).xy;
  r7.xy = r6.zw + r6.zw;
  r8.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r8.z = sqrt(r1.w);
  r9.xyz = r4.xyz / cb3[16].xxx;
  r6.zw = t7.SampleBias(s3_s, r9.xz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.zw, r6.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r10.y = v1.y * r1.w;
  r10.xz = -r6.zw;
  r6.zw = t7.SampleBias(s3_s, r9.yz, cb0[143].y).xy;
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
  r11.xy = t7.SampleBias(s3_s, r9.xy, cb0[143].y).xy;
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
  r10.xyz = cb3[16].yyy * r10.xyz + r11.xyz;
  r10.xyz = cb3[16].www * r8.xyz + r10.xyz;
  r6.zw = cmp(float2(0,0) >= v2.yz);
  r11.xy = log2(v2.yz);
  r11.xy = cb3[17].xx * r11.xy;
  r11.xy = exp2(r11.xy);
  r6.zw = r6.zw ? float2(0,0) : r11.xy;
  r4.xyz = r4.xyz / cb3[17].www;
  r1.w = t8.Sample(s0_s, r4.xz).x;
  r2.w = t8.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r1.w;
  r1.w = r4.z * r2.w + r1.w;
  r2.w = t8.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r1.w;
  r1.w = r4.w * r2.w + r1.w;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb3[18].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r4.xy = r1.ww * r6.zw + r6.zw;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb3[18].yy * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r4.xy = r4.xy + -r6.zw;
  r7.z = r8.z;
  r7.xyz = float3(-1,-1,1) + r7.xyz;
  r11.xyz = r7.yyy * r0.zxy;
  r7.xyw = r7.xxx * v0.xyz + r11.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = dot(r7.xyz, cb3[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r1.w + -r1.w;
  r1.w = cb3[20].y * r2.w + r1.w;
  r1.w = saturate(r1.w * cb3[20].z + cb3[21].y);
  r4.xy = cb3[18].zz * r4.xy + r6.zw;
  r1.w = saturate(-r4.y + r1.w);
  r1.w = saturate(r4.x + r1.w);
  r4.xyz = r10.xyz + -r8.xyz;
  r4.xyz = r1.www * r4.xyz + r8.xyz;
  r7.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[21].zzz * r7.xyz + r4.xyz;
  r2.w = 1 + r4.z;
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r3.w = r7.x + r7.y;
  r3.w = r3.w + r7.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r3.w = cb3[21].w * r3.w;
  r5.xy = v4.xy + -v3.xy;
  r5.xy = cb3[23].xx * r5.xy + v3.xy;
  r5.xy = cb3[23].yy * r5.xy;
  r5.xy = r3.ww * cb3[22].zw + r5.xy;
  r5.xy = t9.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r7.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xy, r5.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r7.z = sqrt(r3.w);
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = v2.xxx * r7.xyz + float3(0,0,1);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb3[23].zzz * r8.xyz + r7.xyz;
  r4.w = 1 + r4.z;
  r7.xyz = float3(-1,-1,1) * r7.xyz;
  r3.w = dot(r4.xyw, r7.xyz);
  r7.xyz = r7.xyz * r2.www;
  r4.xyz = r4.xyw * r3.www + -r7.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r4.xyz = r0.xyz * r1.zzz;
  r7.xyz = cb3[23].www * cb3[5].xyz;
  r8.xyzw = t10.SampleBias(s5_s, r6.xy, cb0[143].y).xyzw;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r2.www + -r8.xyz;
  r8.xyz = cb3[24].zzz * r10.xyz + r8.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r10.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[24].y, r5.x, r11.x);
  r10.xyz = r10.xyz * r5.xxx;
  r8.xyz = r8.xyz * r11.xxx + r10.xyz;
  r8.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = cb3[7].xyz * r8.xyz;
  r11.xyzw = cmp(abs(r4.xyyz) < abs(r4.zzxx));
  r2.w = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r5.xy = cmp(abs(r4.zx) < abs(r4.yy));
  r2.w = r5.x ? r11.w : 0;
  r12.xyz = r5.yyy ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r2.www ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r5.x = dot(abs(r4.zxy), icb[r11.x+0].xyz);
  r5.y = dot(abs(r4.zxy), icb[r12.x+0].xyz);
  r5.xy = float2(-0.577300012,-0.577300012) + r5.xy;
  r5.xy = saturate(float2(2.36574411,2.36574411) * r5.xy);
  r2.w = cmp((int)r11.z < (int)r11.y);
  r6.zw = r2.ww ? r11.zy : r11.yz;
  r2.w = cmp((int)r12.z < (int)r12.y);
  r11.xy = r2.ww ? r12.zy : r12.yz;
  r12.xyz = ddx_coarse(r9.xyz);
  r13.xyz = ddy_coarse(r9.xyz);
  r14.x = dot(r9.xyz, icb[r6.z+0].xyz);
  r14.y = dot(r9.xyz, icb[r6.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r6.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r6.w+0].xyz);
  r16.x = dot(r13.xyz, icb[r6.z+0].xyz);
  r16.y = dot(r13.xyz, icb[r6.w+0].xyz);
  r17.xyz = t11.SampleGrad(s0_s, r14.xy, r15.xyx, r16.xyx).xyz;
  r18.x = dot(r9.xyz, icb[r11.x+0].xyz);
  r18.y = dot(r9.xyz, icb[r11.y+0].xyz);
  r9.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r9.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r11.xyz = t11.SampleGrad(s0_s, r18.xy, r9.xyx, r12.xyx).xyz;
  r11.xyz = r11.xyz * r5.yyy;
  r11.xyz = r17.xyz * r5.xxx + r11.xyz;
  r2.w = r5.x + r5.y;
  r11.xyz = r11.xyz / r2.www;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r3.www + -r11.xyz;
  r11.xyz = cb3[25].yyy * r13.xyz + r11.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r13.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb3[25].x, r17.x, r19.x);
  r13.xyz = r17.xxx * r13.xyz;
  r11.xyz = r11.xyz * r19.xxx + r13.xyz;
  r11.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r13.xyz = cb3[9].xyz * r11.xyz;
  r3.w = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb3[25].z * r3.w);
  r6.z = 1 + -r3.w;
  r6.z = r6.z + r6.z;
  r17.xyz = -r6.zzz * cb3[12].xyz + float3(1,1,1);
  r6.z = r3.w + r3.w;
  r19.xyz = cb3[11].xyz * r6.zzz;
  r3.w = cmp(r3.w >= 0.5);
  r17.xyz = r3.www ? r17.xyz : r19.xyz;
  r19.xyz = cb3[11].xyz + -r17.xyz;
  r17.xyz = cb3[25].www * r19.xyz + r17.xyz;
  r19.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r19.xyz, r19.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb3[26].x;
  r6.z = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.z ? 0 : r3.w;
  r11.xyz = -r11.xyz * cb3[9].xyz + r17.xyz;
  r11.xyz = r11.xyz * r3.www;
  r11.xyz = cb3[26].zzz * r11.xyz + r13.xyz;
  r8.xyz = -r8.xyz * cb3[7].xyz + r11.xyz;
  r8.xyz = r1.www * r8.xyz + r10.xyz;
  r10.xyz = cb3[26].www * r8.xyz;
  r3.w = saturate(v2.x + v2.x);
  r11.xyz = cb3[14].xyz * r10.xyz + -r10.xyz;
  r10.xyz = r3.www * r11.xyz + r10.xyz;
  r10.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r10.xyz);
  r6.xy = t12.SampleBias(s6_s, r6.xy, cb0[143].y).xy;
  r3.w = -cb3[27].x * v2.x + r6.x;
  r6.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[27].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r6.x ? 0 : r3.w;
  r11.y = saturate(cb3[27].z + r3.w);
  r11.x = cb3[27].w + r6.y;
  r6.xy = t13.SampleGrad(s0_s, r14.xy, r15.xy, r16.xy).xy;
  r6.zw = t13.SampleGrad(s0_s, r18.xy, r9.xx, r12.xx).xy;
  r6.zw = r6.zw * r5.yy;
  r5.xy = r6.xy * r5.xx + r6.zw;
  r5.xy = r5.xy / r2.ww;
  r2.w = -cb3[27].x * v2.x + r5.x;
  r6.y = saturate(cb3[28].x + r2.w);
  r6.x = cb3[28].y + r5.y;
  r5.xy = r6.xy + -r11.xy;
  r5.xy = saturate(r1.ww * r5.xy + r11.xy);
  r1.w = dot(r4.zxy, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb3[28].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb3[28].w * r1.w;
  r2.x = saturate(cb3[29].y + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r1.w = saturate(cb3[29].z * r1.w);
  r2.x = cb3[30].x * cb2[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb3[30].y + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb3[30].y;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[30].x));
  r2.x = 1 + cb3[30].x;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v8.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t14.SampleBias(s7_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r2.xyz = saturate(cb3[31].www * r8.xyz);
  r1.x = r8.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r10.xyz);
  o2.z = r5.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[29].w);
  r2.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r5.z].val[4/4];
  r8.xyzw = t5.Sample(s1_s, v5.zw).xyzw;
  r9.x = t1[r5.w].val[0/4];
  r9.y = t1[r5.w].val[0/4+1];
  r9.z = t1[r5.w].val[0/4+2];
  r9.w = t1[r5.w].val[0/4+3];
  r10.xyzw = r9.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r8.xyzw = saturate(r8.xyzw * r9.xyzw + r10.xyzw);
  r9.x = t1[r0.w].val[0/4];
  r9.y = t1[r0.w].val[0/4+1];
  r9.z = t1[r0.w].val[0/4+2];
  r9.w = t1[r0.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r8.xyzw;
  o5.xyzw = r8.xyzw * r9.xyzw;
  r5.yzw = saturate(r2.xyz);
  o4.xyz = sqrt(r5.yzw);
  r0.w = 0.0799999982 * r1.w;
  r5.yzw = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r5.yzw = r5.xxx * r5.yzw + r0.www;
  r8.xyz = -r6.xyz * r5.xxx + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r0.www ? r9.xyz : r8.xyz;
  r5.yzw = r0.www ? float3(0,0,0) : r5.yzw;
  r0.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r0.w * 2.04040003 + -0.332399994;
  r1.x = r0.w * -4.79510021 + r1.x;
  r0.w = r0.w * 2.75519991 + r1.x;
  r0.w = 1.33200002 + r0.w;
  r2.xyz = r8.xyz + r2.xyz;
  r1.xy = float2(1,0.5) * v5.xy;
  r9.xy = v5.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t3.Sample(s1_s, r1.xy).xyzw;
  r9.xyzw = t3.Sample(s1_s, r9.xy).xyzw;
  r1.x = r9.w * 0.00392156886 + r10.w;
  r1.x = -0.00196078443 + r1.x;
  r11.xyzw = mad((int4)w6.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r13.x = t1[r11.y].val[0/4];
  r13.y = t1[r11.y].val[0/4+1];
  r13.z = t1[r11.y].val[0/4+2];
  r13.w = t1[r11.y].val[0/4+3];
  r1.x = r1.x * r12.w + r13.w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * r12.xyz + r13.xyz;
  r1.x = exp2(r1.x);
  r1.x = -0.0185813606 + r1.x;
  r12.x = t1[r11.z].val[0/4];
  r12.y = t1[r11.z].val[0/4+1];
  r12.z = t1[r11.z].val[0/4+2];
  r12.w = t1[r11.z].val[0/4+3];
  r11.x = t1[r11.w].val[0/4];
  r11.y = t1[r11.w].val[0/4+1];
  r11.z = t1[r11.w].val[0/4+2];
  r11.w = t1[r11.w].val[0/4+3];
  r9.xyzw = r9.xyzw * r12.xyzw + r11.xyzw;
  r4.w = 1;
  r1.y = dot(r9.xyzw, r4.xyzw);
  r1.y = max(0, r1.y);
  r1.x = r1.x * r1.y;
  r9.xyz = r1.xxx * r10.xyz;
  r1.x = cmp(cb0[186].y != 0.000000);
  if (r1.x != 0) {
    r10.xyzw = t4.Sample(s1_s, v5.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.x = r10.w * r10.w;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r2.w = -r10.w * r10.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r1.zzz + -r10.xyz;
    r11.xyz = r2.www * r0.xyz + r10.xyz;
    r0.x = saturate(dot(r10.yzx, r4.xyz));
    r0.y = 1 + -r0.x;
    r1.y = r2.w * r0.y + r0.x;
  } else {
    r11.xyz = r4.zxy;
    r1.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r10.xyzw, r11.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r0.y = dot(r10.xyzw, r11.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r0.z = dot(r10.xyzw, r11.xyzw);
  r10.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r10.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r10.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r10.xyzw);
  r1.z = r11.y * r11.y;
  r1.z = r11.x * r11.x + -r1.z;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.zzz + r0.xyz;
  r0.xyzw = max(float4(0,0,0,1), r0.xyzw);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.x = r1.x * r1.y;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r2.xyz;
  r2.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r2.xyz * r0.xyz;
  r2.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.yzw = max(float3(0,0,0), r7.xyz);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r1.yz = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r7.x = t0[r1.y].val[0/4];
    r7.y = t0[r1.y].val[0/4+1];
    r7.z = t0[r1.y].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r8.x = t0[r1.z].val[0/4];
    r8.y = t0[r1.z].val[0/4+1];
    r8.z = t0[r1.z].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.y = (int)r7.y | (int)r7.x;
    r1.y = (int)r7.z | (int)r1.y;
    r1.z = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.z = 0.00200000009 * r1.z;
    r1.z = frac(r1.z);
    r1.z = cmp(0.5 < r1.z);
    r3.xyz = r1.zzz ? float3(0,1,1) : float3(1,1,0);
    r5.yzw = r1.yyy ? r3.xyz : r5.yzw;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.y = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.x * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r5.x;
  o2.w = 0.509803951;
  o2.y = r1.w;
  o3.xyz = r6.xyz;
  o6.xyzw = float4(0,0,0,0);
  return;
}
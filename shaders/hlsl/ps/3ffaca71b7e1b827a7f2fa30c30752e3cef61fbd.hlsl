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

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[33];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  r0.w = (int)w6.x * 15;
  r5.xyzw = mad((int4)v6.xxxy, int4(36,36,36,15), int4(4,18,20,1));
  r1.z = t0[r5.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v9.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r6.xy = cb2[15].xx * v3.xy;
  r1.w = cb2[15].y + cb0[143].y;
  r6.zw = t4.SampleBias(s2_s, r6.xy, r1.w).xy;
  r7.xy = r6.zw + r6.zw;
  r8.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r8.z = sqrt(r1.w);
  r9.xyz = r4.xyz / cb2[16].xxx;
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
  r10.xyz = cb2[16].yyy * r10.xyz + r11.xyz;
  r10.xyz = cb2[16].www * r8.xyz + r10.xyz;
  r6.zw = cmp(float2(0,0) >= v2.yz);
  r11.xy = log2(v2.yz);
  r11.xy = cb2[17].xx * r11.xy;
  r11.xy = exp2(r11.xy);
  r6.zw = r6.zw ? float2(0,0) : r11.xy;
  r4.xyz = r4.xyz / cb2[17].www;
  r1.w = t6.Sample(s0_s, r4.xz).x;
  r2.w = t6.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r1.w;
  r1.w = r4.z * r2.w + r1.w;
  r2.w = t6.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r1.w;
  r1.w = r4.w * r2.w + r1.w;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb2[18].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r4.xy = r1.ww * r6.zw + r6.zw;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb2[18].yy * r4.xy;
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
  r2.w = dot(r7.xyz, cb2[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r1.w + -r1.w;
  r1.w = cb2[20].y * r2.w + r1.w;
  r1.w = saturate(r1.w * cb2[20].z + cb2[21].y);
  r4.xy = cb2[18].zz * r4.xy + r6.zw;
  r1.w = saturate(-r4.y + r1.w);
  r1.w = saturate(r4.x + r1.w);
  r4.xyz = r10.xyz + -r8.xyz;
  r4.xyz = r1.www * r4.xyz + r8.xyz;
  r7.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[21].zzz * r7.xyz + r4.xyz;
  r2.w = 1 + r4.z;
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r3.w = r7.x + r7.y;
  r3.w = r3.w + r7.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r3.w = cb2[21].w * r3.w;
  r5.xy = v4.xy + -v3.xy;
  r5.xy = cb2[23].xx * r5.xy + v3.xy;
  r5.xy = cb2[23].yy * r5.xy;
  r5.xy = r3.ww * cb2[22].zw + r5.xy;
  r5.xy = t7.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r7.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xy, r5.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r7.z = sqrt(r3.w);
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = v2.xxx * r7.xyz + float3(0,0,1);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb2[23].zzz * r8.xyz + r7.xyz;
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
  r0.xyz = cb2[23].www * cb2[5].xyz;
  r7.xyzw = t8.SampleBias(s5_s, r6.xy, cb0[143].y).xyzw;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb2[24].zzz * r8.xyz + r7.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[24].y, r5.x, r10.x);
  r8.xyz = r8.xyz * r5.xxx;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = cb2[7].xyz * r7.xyz;
  r10.xyzw = cmp(abs(r4.xyyz) < abs(r4.zzxx));
  r1.z = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r1.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r5.xy = cmp(abs(r4.zx) < abs(r4.yy));
  r1.z = r5.x ? r10.w : 0;
  r11.xyz = r5.yyy ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r1.zzz ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r5.x = dot(abs(r4.zxy), icb[r10.x+0].xyz);
  r5.y = dot(abs(r4.zxy), icb[r11.x+0].xyz);
  r5.xy = float2(-0.577300012,-0.577300012) + r5.xy;
  r5.xy = saturate(float2(2.36574411,2.36574411) * r5.xy);
  r1.z = cmp((int)r10.z < (int)r10.y);
  r6.zw = r1.zz ? r10.zy : r10.yz;
  r1.z = cmp((int)r11.z < (int)r11.y);
  r10.xy = r1.zz ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r9.xyz);
  r12.xyz = ddy_coarse(r9.xyz);
  r13.x = dot(r9.xyz, icb[r6.z+0].xyz);
  r13.y = dot(r9.xyz, icb[r6.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r6.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r6.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r6.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r6.w+0].xyz);
  r16.xyz = t9.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r17.x = dot(r9.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r9.xyz, icb[r10.y+0].xyz);
  r9.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r9.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r10.xyz = t9.SampleGrad(s0_s, r17.xy, r9.xyx, r11.xyx).xyz;
  r10.xyz = r10.xyz * r5.yyy;
  r10.xyz = r16.xyz * r5.xxx + r10.xyz;
  r1.z = r5.x + r5.y;
  r10.xyz = r10.xyz / r1.zzz;
  r2.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r2.www + -r10.xyz;
  r10.xyz = cb2[25].yyy * r12.xyz + r10.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb2[25].x, r16.x, r18.x);
  r12.xyz = r16.xxx * r12.xyz;
  r10.xyz = r10.xyz * r18.xxx + r12.xyz;
  r10.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = cb2[9].xyz * r10.xyz;
  r2.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = saturate(cb2[25].z * r2.w);
  r3.w = 1 + -r2.w;
  r3.w = r3.w + r3.w;
  r16.xyz = -r3.www * cb2[12].xyz + float3(1,1,1);
  r3.w = r2.w + r2.w;
  r18.xyz = cb2[11].xyz * r3.www;
  r2.w = cmp(r2.w >= 0.5);
  r16.xyz = r2.www ? r16.xyz : r18.xyz;
  r18.xyz = cb2[11].xyz + -r16.xyz;
  r16.xyz = cb2[25].www * r18.xyz + r16.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r18.xyz, r18.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb2[26].x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[26].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r10.xyz = -r10.xyz * cb2[9].xyz + r16.xyz;
  r10.xyz = r10.xyz * r2.www;
  r10.xyz = cb2[26].zzz * r10.xyz + r12.xyz;
  r7.xyz = -r7.xyz * cb2[7].xyz + r10.xyz;
  r7.xyz = r1.www * r7.xyz + r8.xyz;
  r8.xyz = cb2[26].www * r7.xyz;
  r2.w = saturate(v2.x + v2.x);
  r10.xyz = cb2[14].xyz * r8.xyz + -r8.xyz;
  r8.xyz = r2.www * r10.xyz + r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r6.xy = t10.SampleBias(s6_s, r6.xy, cb0[143].y).xy;
  r2.w = -cb2[27].x * v2.x + r6.x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[27].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r10.y = saturate(cb2[27].z + r2.w);
  r10.x = cb2[27].w + r6.y;
  r6.xy = t11.SampleGrad(s0_s, r13.xy, r14.xy, r15.xy).xy;
  r6.zw = t11.SampleGrad(s0_s, r17.xy, r9.xx, r11.xx).xy;
  r6.zw = r6.zw * r5.yy;
  r5.xy = r6.xy * r5.xx + r6.zw;
  r5.xy = r5.xy / r1.zz;
  r1.z = -cb2[27].x * v2.x + r5.x;
  r6.y = saturate(cb2[28].x + r1.z);
  r6.x = cb2[28].y + r5.y;
  r5.xy = r6.xy + -r10.xy;
  r1.zw = saturate(r1.ww * r5.xy + r10.xy);
  r2.x = dot(r4.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb2[28].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb2[28].w * r2.x;
  r2.y = saturate(cb2[29].y + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb2[29].z * r2.x);
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.x = r1.x / cb2[30].x;
  r2.yzw = -cb0[129].xxy + v8.xxy;
  r1.y = r2.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[30].z + -r1.y;
  r5.xy = cb0[152].xx + r2.zw;
  r5.xy = (uint2)r5.xy;
  r2.y = (uint)r5.y << 1;
  r2.y = (int)r2.y + (int)r5.x;
  r2.y = (uint)r2.y % 5;
  r2.y = (uint)r2.y;
  r2.zw = float2(0.015625,0.015625) * r2.zw;
  r2.z = t12.SampleBias(s7_s, r2.zw, cb0[143].y).x;
  r2.y = r2.y + r2.z;
  r2.y = 0.166666672 * r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.x = saturate(-0.5 + r1.x);
  r2.yzw = saturate(cb2[32].xxx * r7.xyz);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r8.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[29].w);
  r1.xyw = r2.yzw * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r5.z].val[4/4];
  r7.xyzw = t3.Sample(s1_s, v5.zw).xyzw;
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r8.xyzw = r5.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r7.xyzw * r5.xyzw + r8.xyzw);
  r7.x = t1[r0.w].val[0/4];
  r7.y = t1[r0.w].val[0/4+1];
  r7.z = t1[r0.w].val[0/4+2];
  r7.w = t1[r0.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r7.xyzw;
  r2.yzw = saturate(r1.xyw);
  o4.xyz = sqrt(r2.yzw);
  r0.w = 0.0799999982 * r2.x;
  r2.yzw = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r2.yzw = r1.zzz * r2.yzw + r0.www;
  r5.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r7.xyz = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r0.www ? r7.xyz : r5.xyz;
  r2.yzw = r0.www ? float3(0,0,0) : r2.yzw;
  r0.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r0.w * 2.04040003 + -0.332399994;
  r3.w = r0.w * -4.79510021 + r3.w;
  r0.w = r0.w * 2.75519991 + r3.w;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r1.xyw = r5.xyz + r1.xyw;
  r7.xy = float2(1,0.5) * v5.xy;
  r7.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t2.Sample(s1_s, r7.zw).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r9.xyzw = mad((int4)w6.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r11.x = t1[r9.y].val[0/4];
  r11.y = t1[r9.y].val[0/4+1];
  r11.z = t1[r9.y].val[0/4+2];
  r11.w = t1[r9.y].val[0/4+3];
  r3.w = r3.w * r10.w + r11.w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * r10.xyz + r11.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r10.x = t1[r9.z].val[0/4];
  r10.y = t1[r9.z].val[0/4+1];
  r10.z = t1[r9.z].val[0/4+2];
  r10.w = t1[r9.z].val[0/4+3];
  r9.x = t1[r9.w].val[0/4];
  r9.y = t1[r9.w].val[0/4+1];
  r9.z = t1[r9.w].val[0/4+2];
  r9.w = t1[r9.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r10.xyzw + r9.xyzw;
  r4.w = 1;
  r4.w = dot(r7.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r7.xyz = r3.www * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyw = r7.xyz * r1.xyw;
  r7.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r1.xyw = r7.xyz * r1.xyw;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.xy = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r3.xyz;
    r7.x = t0[r5.y].val[0/4];
    r7.y = t0[r5.y].val[0/4+1];
    r7.z = t0[r5.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xzw));
    r4.w = (int)r5.y | (int)r5.x;
    r4.w = (int)r5.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r4.www ? r3.xyz : r0.xyz;
  }
  r1.xyw = cb0[145].yyy * r2.yzw + r1.xyw;
  r0.xyz = r1.xyw + r0.xyz;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v8.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r3.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r1.z;
  o2.w = 0.509803951;
  o2.y = r2.x;
  o3.xyz = r6.xyz;
  o6.xyzw = float4(0,0,0,0);
  return;
}
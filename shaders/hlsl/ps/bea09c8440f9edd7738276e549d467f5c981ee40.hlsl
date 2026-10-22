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

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb3[33];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  r1.zw = cb3[15].xx * v3.xy;
  r2.w = cb3[15].y + cb0[143].y;
  r5.xw = t6.SampleBias(s3_s, r1.zw, r2.w).xy;
  r6.xy = r5.xw + r5.xw;
  r7.xy = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r7.xy, r7.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r7.z = sqrt(r2.w);
  r8.xyz = r4.xyz / cb3[16].xxx;
  r5.xw = t7.SampleBias(s4_s, r8.xz, cb0[143].y).xy;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xw, r5.xw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.xw;
  r5.xw = t7.SampleBias(s4_s, r8.yz, cb0[143].y).xy;
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
  r10.xy = t7.SampleBias(s4_s, r8.xy, cb0[143].y).xy;
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
  r9.xyz = cb3[16].yyy * r9.xyz + r10.xyz;
  r9.xyz = cb3[16].www * r7.xyz + r9.xyz;
  r5.xw = cmp(float2(0,0) >= v2.yz);
  r10.xy = log2(v2.yz);
  r10.xy = cb3[17].xx * r10.xy;
  r10.xy = exp2(r10.xy);
  r5.xw = r5.xw ? float2(0,0) : r10.xy;
  r4.xyz = r4.xyz / cb3[17].www;
  r2.w = t8.Sample(s0_s, r4.xz).x;
  r3.w = t8.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.w = r3.w + -r2.w;
  r2.w = r4.z * r3.w + r2.w;
  r3.w = t8.Sample(s0_s, r4.xy).x;
  r3.w = r3.w + -r2.w;
  r2.w = r4.w * r3.w + r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb3[18].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xy = r2.ww * r5.xw + r5.xw;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb3[18].yy * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r4.xy = r4.xy + -r5.xw;
  r6.z = r7.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = dot(r6.xyz, cb3[3].xyz);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * r2.w + -r2.w;
  r2.w = cb3[20].y * r3.w + r2.w;
  r2.w = saturate(r2.w * cb3[20].z + cb3[21].y);
  r4.xy = cb3[18].zz * r4.xy + r5.xw;
  r2.w = saturate(-r4.y + r2.w);
  r2.w = saturate(r4.x + r2.w);
  r4.xyz = r9.xyz + -r7.xyz;
  r4.xyz = r2.www * r4.xyz + r7.xyz;
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[21].zzz * r6.xyz + r4.xyz;
  r3.w = 1 + r4.z;
  r6.x = t2[r5.y].val[0/4];
  r6.y = t2[r5.y].val[0/4+1];
  r6.z = t2[r5.y].val[0/4+2];
  r5.x = r6.x + r6.y;
  r5.x = r5.x + r6.z;
  r5.x = frac(r5.x);
  r5.x = cb0[142].z + r5.x;
  r5.x = cb2[2].x * r5.x;
  r5.x = cb3[21].w * r5.x;
  r6.xy = v4.xy + -v3.xy;
  r6.xy = cb3[23].xx * r6.xy + v3.xy;
  r6.xy = cb3[23].yy * r6.xy;
  r5.xw = r5.xx * cb3[22].zw + r6.xy;
  r5.xw = t9.SampleBias(s5_s, r5.xw, cb0[143].y).xy;
  r6.xy = r5.xw + r5.xw;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r5.x = dot(r5.xw, r5.xw);
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
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[23].www * cb3[5].xyz;
  r6.xyzw = t10.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[24].zzz * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[24].y, r5.x, r9.x);
  r7.xyz = r7.xyz * r5.xxx;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb3[7].xyz * r6.xyz;
  r9.xyzw = cmp(abs(r0.yzzx) < abs(r0.xxyy));
  r0.w = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r0.www ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r5.xw = cmp(abs(r0.xy) < abs(r0.zz));
  r0.w = r5.x ? r9.w : 0;
  r10.xyz = r5.www ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r0.www ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r0.xyz), icb[r9.x+0].xyz);
  r11.y = dot(abs(r0.xyz), icb[r10.x+0].xyz);
  r5.xw = float2(-0.577300012,-0.577300012) + r11.xy;
  r5.xw = saturate(float2(2.36574411,2.36574411) * r5.xw);
  r0.w = cmp((int)r9.z < (int)r9.y);
  r9.xy = r0.ww ? r9.zy : r9.yz;
  r0.w = cmp((int)r10.z < (int)r10.y);
  r9.zw = r0.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r8.xyz);
  r11.xyz = ddy_coarse(r8.xyz);
  r12.x = dot(r8.xyz, icb[r9.x+0].xyz);
  r12.y = dot(r8.xyz, icb[r9.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r15.xyz = t11.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r9.x = dot(r8.xyz, icb[r9.z+0].xyz);
  r9.y = dot(r8.xyz, icb[r9.w+0].xyz);
  r8.x = dot(r10.xyz, icb[r9.z+0].xyz);
  r8.y = dot(r10.xyz, icb[r9.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.w+0].xyz);
  r11.xyz = t11.SampleGrad(s0_s, r9.xy, r8.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r5.www;
  r11.xyz = r15.xyz * r5.xxx + r11.xyz;
  r0.w = r5.x + r5.w;
  r11.xyz = r11.xyz / r0.www;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r15.xyz = r3.www + -r11.xyz;
  r11.xyz = cb3[25].yyy * r15.xyz + r11.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r15.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r15.zxy;
  sincos(cb3[25].x, r16.x, r17.x);
  r15.xyz = r16.xxx * r15.xyz;
  r11.xyz = r11.xyz * r17.xxx + r15.xyz;
  r11.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = cb3[9].xyz * r11.xyz;
  r3.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb3[25].z * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r16.xyz = -r4.www * cb3[12].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r17.xyz = cb3[11].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r16.xyz = r3.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[11].xyz + -r16.xyz;
  r16.xyz = cb3[25].www * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r17.xyz, r17.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb3[26].x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r11.xyz = -r11.xyz * cb3[9].xyz + r16.xyz;
  r11.xyz = r11.xyz * r3.www;
  r11.xyz = cb3[26].zzz * r11.xyz + r15.xyz;
  r6.xyz = -r6.xyz * cb3[7].xyz + r11.xyz;
  r6.xyz = r2.www * r6.xyz + r7.xyz;
  r7.xyz = cb3[26].www * r6.xyz;
  r3.w = saturate(v2.x + v2.x);
  r11.xyz = cb3[14].xyz * r7.xyz + -r7.xyz;
  r7.xyz = r3.www * r11.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.zw = t12.SampleBias(s7_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb3[27].x * v2.x + r1.z;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r11.y = saturate(cb3[27].z + r1.z);
  r11.x = cb3[27].w + r1.w;
  r1.zw = t13.SampleGrad(s0_s, r12.xy, r13.xx, r14.xx).xy;
  r8.xy = t13.SampleGrad(s0_s, r9.xy, r8.xy, r10.xy).xy;
  r8.xy = r8.xy * r5.ww;
  r1.zw = r1.zw * r5.xx + r8.xy;
  r1.zw = r1.zw / r0.ww;
  r0.w = -cb3[27].x * v2.x + r1.z;
  r8.y = saturate(cb3[28].x + r0.w);
  r8.x = cb3[28].y + r1.w;
  r1.zw = r8.xy + -r11.xy;
  r1.zw = saturate(r2.ww * r1.zw + r11.xy);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb3[28].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[28].w * r0.w;
  r2.x = saturate(cb3[29].y + v1.z);
  r0.w = r2.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[29].z * r0.w);
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb3[30].x;
  r2.xyz = -cb0[129].xxy + v7.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb3[30].z + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t14.SampleBias(s8_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r2.xyz = saturate(cb3[32].xxx * r6.xyz);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[29].w);
  r1.xyw = r2.xyz * cb0[136].www + cb0[136].xyz;
  r2.x = cmp(0 < cb0[215].x);
  r2.y = t2[r5.z].val[4/4];
  r2.z = t2[r5.z].val[4/4+1];
  r2.z = cmp(0 < r2.z);
  if (r2.z != 0) {
    r5.xzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xzw = max(float3(0,0,0), r5.xzw);
    r5.xzw = min(float3(0.99000001,0.99000001,0.99000001), r5.xzw);
    r5.xzw = cb0[213].xyz * r5.xzw;
    r7.xyz = (int3)r5.xzw;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.z = 1 + cb0[213].w;
    r5.xzw = r5.xzw / r7.www;
    r5.xzw = frac(r5.xzw);
    r5.xzw = cb0[213].www * r5.xzw;
    r5.xzw = r7.xyz * r2.zzz + r5.xzw;
    r5.xzw = float3(0.5,0.5,0.5) + r5.xzw;
    r5.xzw = cb0[214].xyz * r5.xzw;
    r2.z = t1.SampleLevel(s1_s, r5.xzw, 0).x;
  } else {
    r2.w = t2[r5.y].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r2.x ? r2.w : 0;
    r2.z = r2.w ? cb1[5].x : 1;
  }
  r5.xyz = saturate(r1.xyw);
  o4.xyz = sqrt(r5.xyz);
  r2.w = 0.0799999982 * r0.w;
  r5.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r5.xyz = r1.zzz * r5.xyz + r2.www;
  r7.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.xyw = r7.xyz + r1.xyw;
  if (r2.x != 0) {
    r8.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r8.xyz = max(cb1[2].xyz, r8.xyz);
    r8.xyz = min(cb1[3].xyz, r8.xyz);
    r9.xyzw = t3.Sample(s2_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r12.xw = r9.xw;
    r12.y = r10.x;
    r12.z = r8.x;
    r11.x = 0.886227548;
    r12.x = dot(r12.xyzw, r11.xyzw);
    r13.x = r9.y;
    r13.yw = r10.yw;
    r13.z = r8.y;
    r12.y = dot(r13.xyzw, r11.xyzw);
    r8.x = r9.z;
    r8.y = r10.z;
    r12.z = dot(r8.xyzw, r11.xyzw);
    r8.xyz = max(float3(0,0,0), r12.xyz);
    r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r8.xyz = cb0[157].xyz * r8.xyz;
  r2.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyw = r8.xyz * r1.xyw;
  r8.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r1.xyw = r8.xyz * r1.xyw;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.www ? r3.xyz : r4.xyz;
  }
  r1.xyw = cb0[145].yyy * r5.xyz + r1.xyw;
  r1.xyw = r1.xyw + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.x * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = r2.y;
  o2.x = r1.z;
  o2.w = 0.509803951;
  o2.y = r0.w;
  o3.xyz = r6.xyz;
  o5.x = r2.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
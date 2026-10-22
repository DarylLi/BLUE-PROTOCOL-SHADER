// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s10_s : register(s10);

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
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD4,
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
  r3.xy = t4.SampleBias(s2_s, v4.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[22].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xy = v4.zw + -v4.xy;
  r4.zw = cb3[22].zz * r4.xy + v4.xy;
  r4.zw = cb3[1].xy * r4.zw;
  r5.xy = t5.SampleBias(s3_s, r4.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[23].yyy * r6.xyz + r5.xyz;
  r6.xy = cb3[23].ww * r4.xy + v4.xy;
  r6.xy = cb3[2].xy * r6.xy;
  r6.zw = t6.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r7.xy, r7.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r7.z = sqrt(r1.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb3[24].zzz * r8.xyz + r7.xyz;
  r6.zw = t7.SampleBias(s5_s, v4.xy, cb0[143].y).xy;
  r1.w = saturate(cb3[24].w * r6.z);
  r2.w = saturate(cb3[25].x * r6.w);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r4.xy = cb3[25].zz * r4.xy + v4.xy;
  r4.xy = cb3[3].xy * r4.xy;
  r6.zw = t8.SampleBias(s6_s, r4.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r7.z = sqrt(r5.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb3[26].yyy * r8.xyz + r7.xyz;
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r2.www * r7.xyz + r5.xyz;
  r3.w = 1 + r3.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r3.z = dot(r3.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r5.xyz;
  r5.xyz = r2.xyz / cb3[27].xxx;
  r6.zw = t9.SampleBias(s7_s, r5.xz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.y = v1.y * r0.w;
  r7.xz = -r6.zw;
  r6.zw = t9.SampleBias(s7_s, r5.yz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.x = v1.x * r0.w;
  r8.yz = -r6.zw;
  r6.zw = min(float2(1,1), abs(v1.xz));
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r6.zzz * r8.xyz + r7.xyz;
  r8.xy = t9.SampleBias(s7_s, r5.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r6.www * r8.xyz + r7.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[27].yyy * r7.xyz + r8.xyz;
  r7.xyz = cb3[27].www * r3.xyz + r7.xyz;
  r6.zw = cmp(float2(0,0) >= v2.yz);
  r8.xy = log2(v2.yz);
  r8.xy = cb3[28].xx * r8.xy;
  r8.xy = exp2(r8.xy);
  r6.zw = r6.zw ? float2(0,0) : r8.xy;
  r2.xyz = r2.xyz / cb3[28].www;
  r0.w = t10.Sample(s0_s, r2.xz).x;
  r2.z = t10.Sample(s0_s, r2.yz).x;
  r8.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.z = r2.z + -r0.w;
  r0.w = r8.x * r2.z + r0.w;
  r2.x = t10.Sample(s0_s, r2.xy).x;
  r2.x = r2.x + -r0.w;
  r0.w = r8.y * r2.x + r0.w;
  r2.x = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb3[29].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.x ? 0 : r0.w;
  r2.xy = r0.ww * r6.zw + r6.zw;
  r8.xy = cmp(float2(0,0) >= r2.xy);
  r2.xy = log2(r2.xy);
  r2.xy = cb3[29].yy * r2.xy;
  r2.xy = exp2(r2.xy);
  r2.xy = r8.xy ? float2(0,0) : r2.xy;
  r2.xy = r2.xy + -r6.zw;
  r8.xyz = float3(0,0,1) + r3.xyz;
  r9.xyz = r8.yyy * r0.zxy;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r2.z = dot(r8.xyz, r8.xyz);
  r2.z = sqrt(r2.z);
  r8.xyz = r8.xyz / r2.zzz;
  r2.z = dot(r8.xyz, cb3[6].xyz);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * r0.w + -r0.w;
  r0.w = cb3[31].y * r2.z + r0.w;
  r0.w = saturate(r0.w * cb3[31].z + cb3[32].y);
  r2.xy = cb3[29].zz * r2.xy + r6.zw;
  r0.w = saturate(-r2.y + r0.w);
  r0.w = saturate(r2.x + r0.w);
  r2.xyz = r7.xyz + -r3.xyz;
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
  r7.xyz = cb3[10].xyz + -cb3[9].xyz;
  r7.xyz = cb3[32].zzz * r7.xyz + cb3[9].xyz;
  r8.xyz = t11.SampleBias(s8_s, r4.zw, cb0[143].y).xyz;
  r2.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r2.yyy + -r8.xyz;
  r8.xyz = cb3[33].yyy * r9.xyz + r8.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[33].x, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb3[12].xyz * r8.xyz;
  r9.xyz = t12.SampleBias(s9_s, r6.xy, cb0[143].y).xyz;
  r2.y = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r2.yyy + -r9.xyz;
  r9.xyz = cb3[34].xxx * r10.xyz + r9.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[33].w, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb3[14].xyz + -r8.xyz;
  r8.xyz = r1.www * r9.xyz + r8.xyz;
  r9.xyz = t13.SampleBias(s10_s, r4.xy, cb0[143].y).xyz;
  r2.y = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r2.yyy + -r9.xyz;
  r9.xyz = cb3[34].www * r10.xyz + r9.xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[34].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb3[16].xyz + -r8.xyz;
  r8.xyz = r2.www * r9.xyz + r8.xyz;
  r9.xyzw = cmp(abs(r3.xyyz) < abs(r3.zzxx));
  r2.y = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r2.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r2.yz = cmp(abs(r3.zx) < abs(r3.yy));
  r2.y = r2.y ? r9.w : 0;
  r10.xyz = r2.zzz ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r2.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r3.zxy), icb[r9.x+0].xyz);
  r11.y = dot(abs(r3.zxy), icb[r10.x+0].xyz);
  r2.yz = float2(-0.577300012,-0.577300012) + r11.xy;
  r2.yz = saturate(float2(2.36574411,2.36574411) * r2.yz);
  r5.w = cmp((int)r9.z < (int)r9.y);
  r6.zw = r5.ww ? r9.zy : r9.yz;
  r5.w = cmp((int)r10.z < (int)r10.y);
  r9.xy = r5.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r5.xyz);
  r11.xyz = ddy_coarse(r5.xyz);
  r12.x = dot(r5.xyz, icb[r6.z+0].xyz);
  r12.y = dot(r5.xyz, icb[r6.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r6.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r6.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r6.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r6.w+0].xyz);
  r15.xyz = t14.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r5.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r5.xyz, icb[r9.y+0].xyz);
  r5.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r5.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t14.SampleGrad(s0_s, r16.xy, r5.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r2.zzz;
  r9.xyz = r15.xyz * r2.yyy + r9.xyz;
  r5.z = r2.y + r2.z;
  r9.xyz = r9.xyz / r5.zzz;
  r5.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r5.www + -r9.xyz;
  r9.xyz = cb3[35].zzz * r11.xyz + r9.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb3[35].y, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb3[18].xyz * r9.xyz;
  r5.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb3[35].w * r5.w);
  r6.z = 1 + -r5.w;
  r6.z = r6.z + r6.z;
  r15.xyz = -r6.zzz * cb3[21].xyz + float3(1,1,1);
  r6.z = r5.w + r5.w;
  r17.xyz = cb3[20].xyz * r6.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r15.xyz = r5.www ? r15.xyz : r17.xyz;
  r17.xyz = cb3[20].xyz + -r15.xyz;
  r15.xyz = cb3[36].xxx * r17.xyz + r15.xyz;
  r17.xyz = -cb0[67].xyz + r1.xyz;
  r5.w = dot(r17.xyz, r17.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb3[36].y;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[36].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r9.xyz = -r9.xyz * cb3[18].xyz + r15.xyz;
  r9.xyz = r9.xyz * r5.www;
  r9.xyz = cb3[36].www * r9.xyz + r11.xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r0.www * r9.xyz + r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r4.zw = t15.Sample(s0_s, r4.zw).xy;
  r4.z = saturate(cb3[37].x + r4.z);
  r6.xy = t16.Sample(s0_s, r6.xy).xy;
  r5.w = saturate(cb3[37].y + r6.x);
  r5.w = r5.w + -r4.z;
  r4.z = r1.w * r5.w + r4.z;
  r4.xy = t17.Sample(s0_s, r4.xy).xy;
  r4.x = saturate(cb3[37].z + r4.x);
  r4.x = r4.x + -r4.z;
  r9.y = r2.w * r4.x + r4.z;
  r4.x = r6.y + -r4.w;
  r1.w = r1.w * r4.x + r4.w;
  r4.x = r4.y + -r1.w;
  r9.x = r2.w * r4.x + r1.w;
  r4.xy = t18.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r4.zw = t18.SampleGrad(s0_s, r16.xy, r5.xx, r10.xx).xy;
  r2.zw = r4.zw * r2.zz;
  r2.yz = r4.xy * r2.yy + r2.zw;
  r2.yz = r2.yz / r5.zz;
  r4.y = saturate(cb3[37].w + r2.y);
  r4.x = cb3[38].x + r2.z;
  r2.yz = r4.xy + -r9.xy;
  r2.yz = saturate(r0.ww * r2.yz + r9.xy);
  r0.w = cmp(0.00100000005 < abs(v3.w));
  r4.xy = floor(v7.xy);
  r1.w = dot(r4.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.w = cmp(v3.w < 0);
  r4.x = 1 + v3.w;
  r4.x = cmp(r1.w < r4.x);
  r1.w = cmp(v3.w < r1.w);
  r1.w = r2.w ? r4.x : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r8.xyz);
  r0.w = saturate(cb3[38].y);
  o2.z = r2.z * cb0[139].y + cb0[139].x;
  r5.xyzw = t3.Sample(s1_s, v5.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * cb2[1].xyzw + r6.xyzw);
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = cb2[0].xyzw * r5.xyzw;
  r1.w = 0.0799999982 * r0.w;
  r5.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r5.xyz = r2.yyy * r5.xyz + r1.www;
  r6.xyz = -r4.xyz * r2.yyy + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r8.xyz : r6.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v5.xy;
  r8.xy = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s1_s, r2.zw).xyzw;
  r8.xyzw = t1.Sample(s1_s, r8.xy).xyzw;
  r2.z = r8.w * 0.00392156886 + r9.w;
  r2.z = -0.00196078443 + r2.z;
  r2.z = r2.z * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r3.w = 1;
  r2.w = dot(r8.xyzw, r3.xyzw);
  r2.w = max(0, r2.w);
  r2.z = r2.z * r2.w;
  r8.xyz = r2.zzz * r9.xyz;
  r2.z = cmp(cb0[186].y != 0.000000);
  if (r2.z != 0) {
    r9.xyzw = t2.Sample(s1_s, v5.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.z = dot(r9.xyz, r9.xyz);
    r2.z = rsqrt(r2.z);
    r9.xyz = r9.xyz * r2.zzz;
    r2.z = -r9.w * r9.w + 1;
    r2.z = -r2.z * r2.z + 1;
    r0.xyz = r0.zxy * r2.xxx + -r9.xyz;
    r11.xyz = r2.zzz * r0.xyz + r9.xyz;
    r0.x = saturate(dot(r9.yzx, r3.xyz));
    r0.y = 1 + -r0.x;
    r10.y = r2.z * r0.y + r0.x;
  } else {
    r11.xyz = r3.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r9.xyzw, r11.xyzw);
  r9.x = t0[1].val[0/4];
  r9.y = t0[1].val[0/4+1];
  r9.z = t0[1].val[0/4+2];
  r9.w = t0[1].val[0/4+3];
  r0.y = dot(r9.xyzw, r11.xyzw);
  r9.x = t0[2].val[0/4];
  r9.y = t0[2].val[0/4+1];
  r9.z = t0[2].val[0/4+2];
  r9.w = t0[2].val[0/4+3];
  r0.z = dot(r9.xyzw, r11.xyzw);
  r9.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r9.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r9.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r9.xyzw);
  r2.x = r11.y * r11.y;
  r2.x = r11.x * r11.x + -r2.x;
  r9.x = t0[6].val[0/4];
  r9.y = t0[6].val[0/4+1];
  r9.z = t0[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r9.xyz * r2.xxx + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.x = r10.x * r10.y;
  r0.xyz = r2.xxx * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r2.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
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
  o1.w = cb1[20].y;
  o2.x = r2.y;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
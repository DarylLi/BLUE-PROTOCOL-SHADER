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

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s11_s : register(s11);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[39];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = -cb0[70].xyz + v5.xyz;
  r3.xy = t6.SampleBias(s3_s, v3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[22].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xy = v3.zw + -v3.xy;
  r4.zw = cb2[22].zz * r4.xy + v3.xy;
  r4.zw = cb2[1].xy * r4.zw;
  r5.xy = t7.SampleBias(s4_s, r4.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[23].yyy * r6.xyz + r5.xyz;
  r6.xy = cb2[23].ww * r4.xy + v3.xy;
  r6.xy = cb2[2].xy * r6.xy;
  r6.zw = t8.SampleBias(s5_s, r6.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r7.xy, r7.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r7.z = sqrt(r1.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb2[24].zzz * r8.xyz + r7.xyz;
  r6.zw = t9.SampleBias(s6_s, v3.xy, cb0[143].y).xy;
  r1.w = saturate(cb2[24].w * r6.z);
  r2.w = saturate(cb2[25].x * r6.w);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r4.xy = cb2[25].zz * r4.xy + v3.xy;
  r4.xy = cb2[3].xy * r4.xy;
  r6.zw = t10.SampleBias(s7_s, r4.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r7.z = sqrt(r5.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb2[26].yyy * r8.xyz + r7.xyz;
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r2.www * r7.xyz + r5.xyz;
  r3.w = 1 + r3.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r3.z = dot(r3.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r5.xyz;
  r5.xyz = r2.xyz / cb2[27].xxx;
  r6.zw = t11.SampleBias(s8_s, r5.xz, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.y = v1.y * r0.w;
  r7.xz = -r6.zw;
  r6.zw = t11.SampleBias(s8_s, r5.yz, cb0[143].y).xy;
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
  r8.xy = t11.SampleBias(s8_s, r5.xy, cb0[143].y).xy;
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
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb2[27].yyy * r7.xyz + r8.xyz;
  r7.xyz = cb2[27].www * r3.xyz + r7.xyz;
  r6.zw = cmp(float2(0,0) >= v2.yz);
  r8.xy = log2(v2.yz);
  r8.xy = cb2[28].xx * r8.xy;
  r8.xy = exp2(r8.xy);
  r6.zw = r6.zw ? float2(0,0) : r8.xy;
  r2.xyz = r2.xyz / cb2[28].www;
  r0.w = t12.Sample(s0_s, r2.xz).x;
  r2.z = t12.Sample(s0_s, r2.yz).x;
  r8.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.z = r2.z + -r0.w;
  r0.w = r8.x * r2.z + r0.w;
  r2.x = t12.Sample(s0_s, r2.xy).x;
  r2.x = r2.x + -r0.w;
  r0.w = r8.y * r2.x + r0.w;
  r2.x = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb2[29].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.x ? 0 : r0.w;
  r2.xy = r0.ww * r6.zw + r6.zw;
  r8.xy = cmp(float2(0,0) >= r2.xy);
  r2.xy = log2(r2.xy);
  r2.xy = cb2[29].yy * r2.xy;
  r2.xy = exp2(r2.xy);
  r2.xy = r8.xy ? float2(0,0) : r2.xy;
  r2.xy = r2.xy + -r6.zw;
  r8.xyz = float3(0,0,1) + r3.xyz;
  r9.xyz = r8.yyy * r0.xyz;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r2.z = dot(r8.xyz, r8.xyz);
  r2.z = sqrt(r2.z);
  r8.xyz = r8.xyz / r2.zzz;
  r2.z = dot(r8.xyz, cb2[6].xyz);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * r0.w + -r0.w;
  r0.w = cb2[31].y * r2.z + r0.w;
  r0.w = saturate(r0.w * cb2[31].z + cb2[32].y);
  r2.xy = cb2[29].zz * r2.xy + r6.zw;
  r0.w = saturate(-r2.y + r0.w);
  r0.w = saturate(r2.x + r0.w);
  r2.xyz = r7.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r2.xyz = cb2[10].xyz + -cb2[9].xyz;
  r2.xyz = cb2[32].zzz * r2.xyz + cb2[9].xyz;
  r3.xyz = t13.SampleBias(s9_s, r4.zw, cb0[143].y).xyz;
  r3.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r3.xyz;
  r3.xyz = cb2[33].yyy * r7.xyz + r3.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r7.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[33].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r3.xyz = r3.xyz * r9.xxx + r7.xyz;
  r3.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb2[12].xyz * r3.xyz;
  r7.xyz = t14.SampleBias(s10_s, r6.xy, cb0[143].y).xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r7.xyz;
  r7.xyz = cb2[34].xxx * r8.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[33].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb2[14].xyz + -r3.xyz;
  r3.xyz = r1.www * r7.xyz + r3.xyz;
  r7.xyz = t15.SampleBias(s11_s, r4.xy, cb0[143].y).xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r7.xyz;
  r7.xyz = cb2[34].www * r8.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[34].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb2[16].xyz + -r3.xyz;
  r3.xyz = r2.www * r7.xyz + r3.xyz;
  r7.xyzw = cmp(abs(r0.yzzx) < abs(r0.xxyy));
  r3.w = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r6.zw = cmp(abs(r0.xy) < abs(r0.zz));
  r3.w = r6.z ? r7.w : 0;
  r8.xyz = r6.www ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r3.www ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r7.xyz + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r9.x = dot(abs(r0.xyz), icb[r7.x+0].xyz);
  r9.y = dot(abs(r0.xyz), icb[r8.x+0].xyz);
  r6.zw = float2(-0.577300012,-0.577300012) + r9.xy;
  r6.zw = saturate(float2(2.36574411,2.36574411) * r6.zw);
  r3.w = cmp((int)r7.z < (int)r7.y);
  r7.xy = r3.ww ? r7.zy : r7.yz;
  r3.w = cmp((int)r8.z < (int)r8.y);
  r7.zw = r3.ww ? r8.zy : r8.yz;
  r8.xyz = ddx_coarse(r5.xyz);
  r9.xyz = ddy_coarse(r5.xyz);
  r10.x = dot(r5.xyz, icb[r7.x+0].xyz);
  r10.y = dot(r5.xyz, icb[r7.y+0].xyz);
  r11.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r11.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r12.x = dot(r9.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r7.y+0].xyz);
  r13.xyz = t16.SampleGrad(s0_s, r10.xy, r11.xyx, r12.xyx).xyz;
  r7.x = dot(r5.xyz, icb[r7.z+0].xyz);
  r7.y = dot(r5.xyz, icb[r7.w+0].xyz);
  r5.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r5.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.xyz = t16.SampleGrad(s0_s, r7.xy, r5.xyx, r8.xyx).xyz;
  r9.xyz = r9.xyz * r6.www;
  r9.xyz = r13.xyz * r6.zzz + r9.xyz;
  r3.w = r6.z + r6.w;
  r9.xyz = r9.xyz / r3.www;
  r5.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r5.zzz + -r9.xyz;
  r9.xyz = cb2[35].zzz * r13.xyz + r9.xyz;
  r5.z = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r13.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb2[35].y, r14.x, r15.x);
  r13.xyz = r14.xxx * r13.xyz;
  r9.xyz = r9.xyz * r15.xxx + r13.xyz;
  r9.xyz = r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = cb2[18].xyz * r9.xyz;
  r5.z = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.z = saturate(cb2[35].w * r5.z);
  r5.w = 1 + -r5.z;
  r5.w = r5.w + r5.w;
  r14.xyz = -r5.www * cb2[21].xyz + float3(1,1,1);
  r5.w = r5.z + r5.z;
  r15.xyz = cb2[20].xyz * r5.www;
  r5.z = cmp(r5.z >= 0.5);
  r14.xyz = r5.zzz ? r14.xyz : r15.xyz;
  r15.xyz = cb2[20].xyz + -r14.xyz;
  r14.xyz = cb2[36].xxx * r15.xyz + r14.xyz;
  r15.xyz = -cb0[67].xyz + r1.xyz;
  r5.z = dot(r15.xyz, r15.xyz);
  r5.z = sqrt(r5.z);
  r5.z = r5.z / cb2[36].y;
  r5.w = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r5.z = cb2[36].z * r5.z;
  r5.z = exp2(r5.z);
  r5.z = min(1, r5.z);
  r5.z = r5.w ? 0 : r5.z;
  r9.xyz = -r9.xyz * cb2[18].xyz + r14.xyz;
  r9.xyz = r9.xyz * r5.zzz;
  r9.xyz = cb2[36].www * r9.xyz + r13.xyz;
  r9.xyz = r9.xyz + -r3.xyz;
  r3.xyz = r0.www * r9.xyz + r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r4.zw = t17.Sample(s0_s, r4.zw).xy;
  r4.z = saturate(cb2[37].x + r4.z);
  r5.zw = t18.Sample(s0_s, r6.xy).xy;
  r5.z = saturate(cb2[37].y + r5.z);
  r5.z = r5.z + -r4.z;
  r4.z = r1.w * r5.z + r4.z;
  r4.xy = t19.Sample(s0_s, r4.xy).xy;
  r4.x = saturate(cb2[37].z + r4.x);
  r4.x = r4.x + -r4.z;
  r6.y = r2.w * r4.x + r4.z;
  r4.x = r5.w + -r4.w;
  r1.w = r1.w * r4.x + r4.w;
  r4.x = r4.y + -r1.w;
  r6.x = r2.w * r4.x + r1.w;
  r4.xy = t20.SampleGrad(s0_s, r10.xy, r11.xy, r12.xy).xy;
  r4.zw = t20.SampleGrad(s0_s, r7.xy, r5.xx, r8.xx).xy;
  r4.zw = r4.zw * r6.ww;
  r4.xy = r4.xy * r6.zz + r4.zw;
  r4.xy = r4.xy / r3.ww;
  r5.y = saturate(cb2[37].w + r4.x);
  r5.x = cb2[38].x + r4.y;
  r4.xy = r5.xy + -r6.xy;
  r4.xy = saturate(r0.ww * r4.xy + r6.xy);
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r0.w = saturate(cb2[38].y);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v4.x, 36, 20);
  r2.w = cmp(0 < cb0[215].x);
  r4.y = t2[r1.w].val[4/4];
  r4.z = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r4.z);
  if (r1.w != 0) {
    r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r1.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r3.w = mad((int)v4.x, 36, 18);
    r3.w = t2[r3.w].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r2.w ? r3.w : 0;
    r1.w = r3.w ? cb1[5].x : 1;
  }
  r3.w = 0.0799999982 * r0.w;
  r5.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r5.xyz = r4.xxx * r5.xyz + r3.www;
  r6.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.www ? r7.xyz : r6.xyz;
  r5.xyz = r3.www ? float3(0,0,0) : r5.xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.z = r3.w * 2.04040003 + -0.332399994;
  r4.z = r3.w * -4.79510021 + r4.z;
  r3.w = r3.w * 2.75519991 + r4.z;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  if (r2.w != 0) {
    r7.xyz = r1.xyz * cb1[1].xyz + cb1[0].xyz;
    r7.xyz = max(cb1[2].xyz, r7.xyz);
    r7.xyz = min(cb1[3].xyz, r7.xyz);
    r8.xyzw = t3.Sample(s2_s, r7.xyz).xyzw;
    r9.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s1_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r4.z = cmp(0 < cb0[140].x);
  if (r4.z != 0) {
    r4.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t2[r4.z].val[0/4];
    r6.y = t2[r4.z].val[0/4+1];
    r6.z = t2[r4.z].val[0/4+2];
    r6.xyz = -r6.xyz + r1.xyz;
    r8.x = t2[r4.w].val[0/4];
    r8.y = t2[r4.w].val[0/4+1];
    r8.z = t2[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r4.z = (int)r6.y | (int)r6.x;
    r4.z = (int)r6.z | (int)r4.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r4.zzz ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r3.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.y;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[31];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : COLOR0,
  float3 v4 : TEXCOORD9,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyzw = cb5[16].xxww * v2.xyxy;
  r0.w = cb5[16].y + cb0[143].y;
  r5.xy = t6.SampleBias(s3_s, r4.xy, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[16].zzz * r6.xyz + r5.xyz;
  r1.w = 1 + r5.z;
  r2.w = dot(-cb1[0].xyz, -cb1[0].xyz);
  r2.w = sqrt(r2.w);
  r3.w = dot(-cb1[1].xyz, -cb1[1].xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r3.w = dot(-cb1[2].xyz, -cb1[2].xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r2.w = 0.333333343 * r2.w;
  r4.zw = r4.zw * r2.ww;
  r4.zw = t7.SampleBias(s4_s, r4.zw, r0.w).xy;
  r6.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[17].xxx * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r0.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = r5.xyw * r0.www + -r6.xyz;
  r7.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r1.w = saturate(r0.w / cb5[17].y);
  r1.w = 1 + -r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[17].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.w = max(cb5[17].w, r1.w);
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r1.www * r6.xyz + r5.xyz;
  r6.xyz = r3.xyz / cb5[18].zzz;
  r4.zw = t8.SampleBias(s5_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.y = v1.y * r1.w;
  r7.xz = -r4.zw;
  r4.zw = t8.SampleBias(s5_s, r6.yz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.x = v1.x * r1.w;
  r8.yz = -r4.zw;
  r4.zw = min(float2(1,1), abs(v1.xz));
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xy = t8.SampleBias(s5_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r1.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.www * r8.xyz + r7.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[18].www * r7.xyz + r8.xyz;
  r7.xyz = cb5[19].yyy * r5.xyz + r7.xyz;
  r4.zw = cmp(float2(0,0) >= v3.yz);
  r8.xy = log2(v3.yz);
  r8.xy = cb5[19].zz * r8.xy;
  r8.xy = exp2(r8.xy);
  r4.zw = r4.zw ? float2(0,0) : r8.xy;
  r3.xyz = r3.xyz / cb5[20].yyy;
  r1.w = t9.Sample(s0_s, r3.xz).x;
  r2.w = t9.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r1.w;
  r1.w = r3.z * r2.w + r1.w;
  r2.w = t9.Sample(s0_s, r3.xy).x;
  r2.w = r2.w + -r1.w;
  r1.w = r3.w * r2.w + r1.w;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb5[20].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r3.xy = r1.ww * r4.zw + r4.zw;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb5[20].ww * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r4.zw;
  r8.xyz = float3(0,0,1) + r5.xyz;
  r9.xyz = r8.yyy * r0.xyz;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r2.w = dot(r8.xyz, cb5[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r1.w + -r1.w;
  r1.w = cb5[22].w * r2.w + r1.w;
  r1.w = saturate(r1.w * cb5[23].x + cb5[23].w);
  r3.xy = cb5[21].xx * r3.xy + r4.zw;
  r1.w = saturate(-r3.y + r1.w);
  r1.w = saturate(r3.x + r1.w);
  r3.xyz = t10.SampleBias(s6_s, r4.xy, cb0[143].y).xyw;
  r2.w = r3.z * -2 + 1;
  r2.w = cb5[24].x * r2.w + r3.z;
  r3.z = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[24].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb5[24].z * r2.w);
  r2.w = r3.z ? 0 : r2.w;
  r1.w = max(r2.w, r1.w);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r5.yzw = r2.www * r0.xyz;
  r3.z = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.z = sqrt(r3.z);
  r7.xyz = -cb4[5].xyz / r3.zzz;
  r3.z = dot(r7.xyz, r5.yzw);
  r3.z = 1 + r3.z;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
  r4.z = 1 + -cb3[1].x;
  r3.w = saturate(r4.z + r3.w);
  r3.z = r3.z * r3.w;
  r1.x = dot(r5.yzw, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb3[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb3[0].w;
  r1.y = r1.y * r1.z + cb3[0].w;
  r1.z = cmp(r1.y >= cb3[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.z * r2.w + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.z * r2.w + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb3[0].z * r1.y;
  r1.z = r3.z * r1.y;
  r7.xyz = cb4[4].xyz * r1.zzz;
  r1.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r1.z = sqrt(r1.z);
  r9.xyz = -cb4[8].xyz / r1.zzz;
  r1.z = dot(r9.xyz, r5.yzw);
  r1.z = 1 + r1.z;
  r3.z = saturate(dot(-r8.xyz, r9.xyz));
  r3.z = saturate(r3.z + r4.z);
  r1.z = r3.z * r1.z;
  r1.y = r1.z * r1.y;
  r8.xyz = cb4[9].xyz * r1.yyy;
  r8.xyz = cb4[1].yyy * r8.xyz;
  r7.xyz = r7.xyz * cb4[1].xxx + r8.xyz;
  r7.xyz = cb3[2].xyz * r7.xyz;
  r8.xyz = cb5[5].xyz * r7.xyz;
  r7.xyz = -r7.xyz * cb5[5].xyz + cb5[6].xyz;
  r7.xyz = cb5[24].www * r7.xyz + r8.xyz;
  r4.xyz = t11.SampleBias(s7_s, r4.xy, cb0[143].y).xyz;
  r1.y = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy + -r4.xyz;
  r4.xyz = cb5[25].zzz * r8.xyz + r4.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r8.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[25].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r4.xyz = r4.xyz * r10.xxx + r8.xyz;
  r4.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = cb5[8].xyz * r4.xyz;
  r9.xyzw = cmp(abs(r5.zwwy) < abs(r5.yyzz));
  r1.y = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r1.yz = cmp(abs(r5.yz) < abs(r5.ww));
  r1.y = r1.y ? r9.w : 0;
  r10.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r1.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.yzw), icb[r9.x+0].xyz);
  r11.y = dot(abs(r5.yzw), icb[r10.x+0].xyz);
  r1.yz = float2(-0.577300012,-0.577300012) + r11.xy;
  r1.yz = saturate(float2(2.36574411,2.36574411) * r1.yz);
  r3.z = cmp((int)r9.z < (int)r9.y);
  r3.zw = r3.zz ? r9.zy : r9.yz;
  r4.w = cmp((int)r10.z < (int)r10.y);
  r9.xy = r4.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r6.xyz);
  r11.xyz = ddy_coarse(r6.xyz);
  r12.x = dot(r6.xyz, icb[r3.z+0].xyz);
  r12.y = dot(r6.xyz, icb[r3.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r3.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r3.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r3.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r3.w+0].xyz);
  r15.xyz = t12.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r6.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r6.xyz, icb[r9.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t12.SampleGrad(s0_s, r16.xy, r6.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r1.zzz;
  r9.xyz = r15.xyz * r1.yyy + r9.xyz;
  r3.z = r1.y + r1.z;
  r9.xyz = r9.xyz / r3.zzz;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r9.xyz;
  r9.xyz = cb5[26].yyy * r11.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb5[26].x, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb5[10].xyz * r9.xyz;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[26].z * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r15.xyz = -r4.www * cb5[13].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r17.xyz = cb5[12].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r15.xyz = r3.www ? r15.xyz : r17.xyz;
  r17.xyz = cb5[12].xyz + -r15.xyz;
  r15.xyz = cb5[26].www * r17.xyz + r15.xyz;
  r0.w = r0.w / cb5[27].x;
  r3.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[27].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r3.w ? 0 : r0.w;
  r9.xyz = -r9.xyz * cb5[10].xyz + r15.xyz;
  r9.xyz = r9.xyz * r0.www;
  r9.xyz = cb5[27].zzz * r9.xyz + r11.xyz;
  r4.xyz = -r4.xyz * cb5[8].xyz + r9.xyz;
  r4.xyz = r1.www * r4.xyz + r8.xyz;
  r0.w = saturate(v3.x + v3.x);
  r8.xyz = cb5[15].xyz * r4.xyz + -r4.xyz;
  r4.xyz = r0.www * r8.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = -cb5[27].w * v3.x + r3.x;
  r3.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[28].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r3.x ? 0 : r0.w;
  r8.y = saturate(cb5[28].y + r0.w);
  r8.x = cb5[28].z + r3.y;
  r3.xy = t13.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r6.xy = t13.SampleGrad(s0_s, r16.xy, r6.xy, r10.xy).xy;
  r6.xy = r6.xy * r1.zz;
  r1.yz = r3.xy * r1.yy + r6.xy;
  r1.yz = r1.yz / r3.zz;
  r0.w = -cb5[27].w * v3.x + r1.y;
  r3.y = saturate(cb5[28].w + r0.w);
  r3.x = cb5[29].x + r1.z;
  r1.yz = r3.xy + -r8.xy;
  r1.yz = saturate(r1.ww * r1.yz + r8.xy);
  r0.w = cb5[29].y * r1.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb5[29].z * r0.w;
  r1.x = saturate(cb5[30].x + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb5[30].y * r0.w);
  r3.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r1.z = cmp(0 < cb1[20].z);
  if (r1.z != 0) {
    r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r6.xyz = (int3)r4.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.z = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r6.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r6.xyz * r1.zzz + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r1.z = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r1.w = cmp(0 < cb1[18].w);
    r1.w = r1.x ? r1.w : 0;
    r1.z = r1.w ? cb2[5].x : 1;
  }
  r1.w = 0.0799999982 * r0.w;
  r4.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r4.xyz = r1.yyy * r4.xyz + r1.www;
  r6.xyz = -r3.xyz * r1.yyy + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r8.xyz : r6.xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  if (r1.x != 0) {
    r8.xyz = r2.xyz * cb2[1].xyz + cb2[0].xyz;
    r8.xyz = max(cb2[2].xyz, r8.xyz);
    r8.xyz = min(cb2[3].xyz, r8.xyz);
    r9.xyzw = t3.Sample(s2_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
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
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r5.x = 1;
    r9.xyzw = r1.xxxx ? cb2[4].wxyz : r5.xyzw;
    r1.x = 1 + -r9.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r2.www + -r9.yzw;
    r10.xyz = r1.xxx * r0.xyz + r9.yzw;
    r0.x = saturate(dot(r9.yzw, r5.yzw));
    r0.y = 1 + -r0.x;
    r9.y = r1.x * r0.y + r0.x;
  } else {
    r10.xyz = r5.yzw;
    r9.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r11.xyzw, r10.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
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
  r1.x = r10.y * r10.y;
  r1.x = r10.x * r10.x + -r1.x;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.xxx + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.x = r9.x * r9.y;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r2.www ? r2.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r1.w;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.y;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
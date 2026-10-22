// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t0 : register(t0);

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
  float4 cb5[39];
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
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[19].xx * v3.xy;
  r0.w = cb5[19].y + cb0[143].y;
  r5.xy = t2.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[19].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb5[20].yyy;
  r7.xy = t3.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t3.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r7.xy;
  r7.xy = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r7.xzw = r7.xxx * r9.xyz + r8.xyz;
  r8.xy = t3.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r7.xzw;
  r7.xyz = r7.yyy * r8.xyz + r7.xzw;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[20].zzz * r7.xyz + r8.xyz;
  r7.xyz = cb5[21].xxx * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb5[21].yy * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb5[22].xxx;
  r9.xyz = t4.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t4.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t4.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb5[22].zzz * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb5[22].www * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.zxy;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb5[24].z * r0.w + r4.x;
  r0.w = saturate(r0.w * cb5[24].w + cb5[25].z);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[22].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb5[22].www * r4.xyz + r8.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r8.xzw + r4.xyz);
  r8.xyz = t5.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r0.w = r8.z * -2 + 1;
  r0.w = cb5[25].w * r0.w + r8.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[26].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb5[26].y * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r7.xyz = t6.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r0.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r0.xxx + -r7.xyz;
  r7.xyz = cb5[27].xxx * r9.xyz + r7.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r9.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[26].w, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r7.xyz = r7.xyz * r11.xxx + r9.xyz;
  r7.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = cb5[5].xyz * r7.xyz;
  r10.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r0.x = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r0.xz = cmp(abs(r5.zx) < abs(r5.yy));
  r0.x = r0.x ? r10.w : 0;
  r11.xyz = r0.zzz ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r0.xxx ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r5.zxy), icb[r10.x+0].xyz);
  r12.y = dot(abs(r5.zxy), icb[r11.x+0].xyz);
  r0.xz = float2(-0.577300012,-0.577300012) + r12.xy;
  r0.xz = saturate(float2(2.36574411,2.36574411) * r0.xz);
  r2.w = cmp((int)r10.z < (int)r10.y);
  r8.zw = r2.ww ? r10.zy : r10.yz;
  r2.w = cmp((int)r11.z < (int)r11.y);
  r10.xy = r2.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r8.z+0].xyz);
  r13.y = dot(r6.xyz, icb[r8.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r8.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r8.w+0].xyz);
  r16.xyz = t7.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r17.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r6.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r6.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r10.xyz = t7.SampleGrad(s0_s, r17.xy, r6.xyx, r11.xyx).xyz;
  r10.xyz = r10.xyz * r0.zzz;
  r10.xyz = r16.xyz * r0.xxx + r10.xyz;
  r2.w = r0.x + r0.z;
  r10.xyz = r10.xyz / r2.www;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r3.www + -r10.xyz;
  r10.xyz = cb5[27].www * r12.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb5[27].z, r16.x, r18.x);
  r12.xyz = r16.xxx * r12.xyz;
  r10.xyz = r10.xyz * r18.xxx + r12.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = cb5[7].xyz * r10.xyz;
  r3.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[28].x * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r16.xyz = -r4.www * cb5[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r18.xyz = cb5[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r16.xyz = r3.www ? r16.xyz : r18.xyz;
  r18.xyz = cb5[9].xyz + -r16.xyz;
  r16.xyz = cb5[28].yyy * r18.xyz + r16.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r18.xyz, r18.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb5[28].z;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[28].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r10.xyz = -r10.xyz * cb5[7].xyz + r16.xyz;
  r10.xyz = r10.xyz * r3.www;
  r10.xyz = cb5[29].xxx * r10.xyz + r12.xyz;
  r7.xyz = -r7.xyz * cb5[5].xyz + r10.xyz;
  r7.xyz = r4.xxx * r7.xyz + r9.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r9.yzx, r5.xyz);
  r3.w = 1 + r3.w;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r4.w = saturate(dot(-r10.xyz, r9.xyz));
  r6.z = 1 + -cb3[1].x;
  r4.w = saturate(r6.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r5.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb3[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb3[0].w;
  r2.y = r2.y * r2.z + cb3[0].w;
  r2.z = cmp(r2.y >= cb3[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.y * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.y * r0.y;
  r0.y = cb3[0].z * r0.y;
  r0.w = r3.w * r0.y;
  r9.xyz = cb4[4].xyz * r0.www;
  r0.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.w = sqrt(r0.w);
  r12.xyz = -cb4[8].xyz / r0.www;
  r0.w = dot(r12.yzx, r5.xyz);
  r0.w = 1 + r0.w;
  r2.y = saturate(dot(-r10.xyz, r12.xyz));
  r2.y = saturate(r2.y + r6.z);
  r0.w = r2.y * r0.w;
  r0.y = r0.w * r0.y;
  r10.xyz = cb4[9].xyz * r0.yyy;
  r10.xyz = cb4[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb4[1].xxx + r10.xyz;
  r9.xyz = r9.xyz * r7.xyz;
  r0.y = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.w = r1.x + r0.w;
  r0.y = r0.y ? r1.y : r0.w;
  r0.y = r0.y / cb5[29].y;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[29].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb5[29].w * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.w ? 1 : r0.y;
  r1.xy = r1.zw / cb5[30].zz;
  r10.x = cb5[30].w + r1.x;
  r10.y = cb5[31].x + r1.y;
  r10.xyz = t8.SampleBias(s6_s, r10.xy, cb0[143].y).xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb5[30].y, r1.x, r16.x);
  r12.xyz = r12.xyz * r1.xxx;
  r10.xyz = r10.xyz * r16.xxx + r12.xyz;
  r10.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = cb5[12].xyz * r10.xyz;
  r0.w = t8.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r1.x = cb1[18].x + cb1[18].y;
  r1.x = cb1[18].z + r1.x;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb4[2].x * r1.x;
  r1.x = cb5[31].z * r1.x;
  r1.yz = v3.zw + -v3.xy;
  r1.yz = cb5[32].ww * r1.yz + v3.xy;
  r1.yz = cb5[33].xx * r1.yz;
  r1.xy = r1.xx * cb5[32].yz + r1.yz;
  r1.x = t9.SampleBias(s7_s, r1.xy, cb0[143].y).x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[33].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.y ? 0 : r1.x;
  r1.y = cb5[33].z * r1.x;
  r1.y = cb0[142].z * cb5[31].y + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb5[34].x + cb5[33].w;
  r1.y = max(cb5[34].z, r1.y);
  r1.y = min(cb5[34].y, r1.y);
  r1.y = cb5[34].w * r1.y;
  r1.y = cb4[3].y * r1.y;
  r1.x = r1.y * r1.x;
  r0.w = r1.x * r0.w;
  r1.xyz = r10.xyz * r0.www;
  r1.xyz = r1.xyz * r0.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r4.yzw * r1.xyz;
  r1.xyz = cb3[2].xyz * r9.xyz + r1.xyz;
  r4.yzw = cb5[15].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb5[15].xyz + cb5[16].xyz;
  r1.xyz = cb5[35].xxx * r1.xyz + r4.yzw;
  r0.y = saturate(v2.x + v2.x);
  r4.yzw = cb5[18].xyz * r7.xyz + -r7.xyz;
  r4.yzw = r0.yyy * r4.yzw + r7.xyz;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.yzw);
  r0.y = -cb5[35].y * v2.x + r8.x;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[35].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r9.y = saturate(cb5[35].w + r0.y);
  r9.x = cb5[36].x + r8.y;
  r0.yw = t10.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r2.yz = t10.SampleGrad(s0_s, r17.xy, r6.yx, r11.yx).xy;
  r2.yz = r2.yz * r0.zz;
  r0.xy = r0.yw * r0.xx + r2.yz;
  r0.xy = r0.xy / r2.ww;
  r0.x = -cb5[35].y * v2.x + r0.x;
  r6.y = saturate(cb5[36].y + r0.x);
  r6.x = cb5[36].z + r0.y;
  r0.xy = r6.xy + -r9.xy;
  r0.xy = saturate(r4.xx * r0.xy + r9.xy);
  r0.z = cb5[36].w * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[37].x * r0.z;
  r0.w = saturate(cb5[37].z + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb5[37].w * r0.z);
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = cb5[38].x * r0.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[38].y * r0.w;
  r0.w = exp2(r0.w);
  r2.xyz = min(float3(1,1,1), r4.yzw);
  r0.w = min(1, r0.w);
  r0.w = r1.w ? 0 : r0.w;
  o2.z = r0.y * cb0[139].y + cb0[139].x;
  r4.xyzw = t1.Sample(s1_s, v4.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * cb2[1].xyzw + r6.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = cb2[0].xyzw * r4.xyzw;
  r0.y = 0.0799999982 * r0.z;
  r4.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r4.xyz = r0.xxx * r4.xyz + r0.yyy;
  r6.xyz = -r2.xyz * r0.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r0.y = cmp(0 != cb0[183].w);
  r7.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.yyy ? r7.xyz : r6.xyz;
  r4.xyz = r0.yyy ? float3(0,0,0) : r4.xyz;
  r0.y = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r0.y = r0.w * r7.x + r7.y;
  r0.y = r0.y * r0.w + r7.z;
  r0.y = r0.y * r0.w;
  r0.y = max(r0.w, r0.y);
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t0.Sample(s1_s, r7.zw).xyzw;
  r1.w = r7.w * 0.00392156886 + r8.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r2.w = dot(r7.xyzw, r5.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r7.xyz = r1.www * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r0.www * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r0.www + r10.xyz;
  r8.xyz = r8.xyz * r0.www;
  r8.xyz = max(r8.xyz, r0.www);
  r7.xyz = r8.xyz * r7.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r3.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.y = r1.w * r0.y;
  r0.y = r0.y * cb0[135].y + 0.00390625;
  r0.y = log2(r0.y);
  r0.y = r0.y * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r0.y;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r0.xz;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
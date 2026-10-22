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
  float4 cb5[37];
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
  float4 cb2[13];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[18].xx * v3.xy;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r0.w = dot(v1.xyz, r2.xyz);
  r5.xy = -r5.xy / r0.ww;
  r5.xy = cb5[18].yy * r5.xy;
  r0.w = min(1, abs(r0.w));
  r2.w = cb5[18].z + -cb5[18].w;
  r0.w = r0.w * r2.w + cb5[18].w;
  r2.w = floor(r0.w);
  r0.w = 1 / r0.w;
  r5.zw = r5.xy * r0.ww;
  r6.xy = ddx_coarse(r1.zw);
  r1.zw = ddy_coarse(r1.zw);
  r2.w = 2 + r2.w;
  r6.zw = float2(0,0);
  r3.w = 1;
  r4.w = 1;
  r7.xy = float2(1,0);
  while (true) {
    r7.z = (int)r7.y;
    r7.z = cmp(r7.z >= r2.w);
    if (r7.z != 0) break;
    r7.zw = v3.xy * cb5[18].xx + r6.zw;
    r7.z = t2.SampleGrad(s2_s, r7.zw, r6.x, r1.z).z;
    r7.w = cmp(r3.w < r7.z);
    if (r7.w != 0) {
      r7.w = -r7.x + r4.w;
      r8.x = r7.z + -r3.w;
      r7.w = r8.x + r7.w;
      r7.w = r8.x / r7.w;
      r8.xy = -r7.ww * r5.zw + r6.zw;
      r6.zw = r8.xy;
      break;
    }
    r7.w = r3.w + -r0.w;
    r6.zw = r5.xy * r0.ww + r6.zw;
    r7.y = (int)r7.y + 1;
    r4.w = r3.w;
    r7.x = r7.z;
    r3.w = r7.w;
  }
  r1.zw = v3.xy * cb5[18].xx + r6.zw;
  r0.w = cb5[19].x + cb0[143].y;
  r5.xy = t3.SampleBias(s3_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[19].yyy * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb5[20].xxx;
  r7.xy = t4.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t4.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t4.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
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
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[20].yyy * r7.xyz + r8.xyz;
  r7.xyz = cb5[20].www * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb5[21].xx * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb5[21].www;
  r9.xyz = t5.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t5.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t5.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb5[22].yyy * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb5[22].zzz * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.xyz;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb5[24].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb5[24].z + cb5[25].y);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb5[22].zzz * r4.xyz + r8.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r8.xzw + r4.xyz);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r0.y = saturate(dot(-r8.xyz, r7.xyz));
  r2.w = 1 + -cb3[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb3[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb3[0].w;
  r2.x = r2.x * r2.y + cb3[0].w;
  r2.y = cmp(r2.x >= cb3[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb3[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r8.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb4[9].xyz * r0.xxx;
  r0.xzw = cb4[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb4[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb5[25].z;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[25].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[26].x * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.xy = r1.zw / cb5[26].ww;
  r2.xy = cb5[27].xy + r2.xy;
  r2.xyz = t6.SampleBias(s5_s, r2.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r7.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[26].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r2.xyz = r2.xyz * r9.xxx + r7.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[5].xyz * r2.xyz;
  r1.y = t6.SampleBias(s5_s, r1.zw, cb0[143].y).w;
  r2.w = t7.SampleBias(s6_s, float2(0,0), cb0[143].y).x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[27].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r3.w = cb5[28].x * r2.w;
  r3.w = cb0[142].z * cb5[27].z + r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * cb5[28].z + cb5[28].y;
  r3.w = max(cb5[29].x, r3.w);
  r3.w = min(cb5[28].w, r3.w);
  r3.w = cb5[29].y * r3.w;
  r3.w = cb4[3].y * r3.w;
  r2.w = r3.w * r2.w;
  r1.y = r2.w * r1.y;
  r2.xyz = r2.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xzw = cb3[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb5[7].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb5[7].xyz + cb5[8].xyz;
  r0.xzw = cb5[29].zzz * r0.xzw + r2.xyz;
  r2.xyz = t8.SampleBias(s7_s, r1.zw, cb0[143].y).xyz;
  r1.xyz = t2.SampleBias(s2_s, r1.zw, cb0[143].y).xyz;
  r1.z = -1 + r1.z;
  r1.z = cb5[30].y * r1.z + 1;
  r4.yzw = r2.xyz * r1.zzz;
  r1.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = -r2.xyz * r1.zzz + r1.www;
  r2.xyz = cb5[30].zzz * r2.xyz + r4.yzw;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.yzw = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb5[30].x, r7.x, r8.x);
  r4.yzw = r7.xxx * r4.yzw;
  r2.xyz = r2.xyz * r8.xxx + r4.yzw;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = cb5[10].xyz * r2.xyz;
  r7.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r1.z = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r1.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r1.zw = cmp(abs(r5.xy) < abs(r5.zz));
  r1.z = r1.z ? r7.w : 0;
  r8.xyz = r1.www ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r1.zzz ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r7.xyz + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r9.x = dot(abs(r5.xyz), icb[r7.x+0].xyz);
  r9.y = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r1.zw = float2(-0.577300012,-0.577300012) + r9.xy;
  r1.zw = saturate(float2(2.36574411,2.36574411) * r1.zw);
  r2.w = cmp((int)r7.z < (int)r7.y);
  r7.xy = r2.ww ? r7.zy : r7.yz;
  r2.w = cmp((int)r8.z < (int)r8.y);
  r7.zw = r2.ww ? r8.zy : r8.yz;
  r8.xyz = ddx_coarse(r6.xyz);
  r9.xyz = ddy_coarse(r6.xyz);
  r10.x = dot(r6.xyz, icb[r7.x+0].xyz);
  r10.y = dot(r6.xyz, icb[r7.y+0].xyz);
  r11.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r11.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r12.x = dot(r9.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r7.y+0].xyz);
  r13.xyz = t9.SampleGrad(s0_s, r10.xy, r11.xyx, r12.xyx).xyz;
  r7.x = dot(r6.xyz, icb[r7.z+0].xyz);
  r7.y = dot(r6.xyz, icb[r7.w+0].xyz);
  r6.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r6.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.xyz = t9.SampleGrad(s0_s, r7.xy, r6.xyx, r8.xyx).xyz;
  r9.xyz = r9.xyz * r1.www;
  r9.xyz = r13.xyz * r1.zzz + r9.xyz;
  r2.w = r1.z + r1.w;
  r9.xyz = r9.xyz / r2.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r3.www + -r9.xyz;
  r9.xyz = cb5[31].yyy * r13.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r13.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb5[31].x, r14.x, r15.x);
  r13.xyz = r14.xxx * r13.xyz;
  r9.xyz = r9.xyz * r15.xxx + r13.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = cb5[12].xyz * r9.xyz;
  r3.w = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[31].z * r3.w);
  r5.w = 1 + -r3.w;
  r5.w = r5.w + r5.w;
  r14.xyz = -r5.www * cb5[15].xyz + float3(1,1,1);
  r5.w = r3.w + r3.w;
  r15.xyz = cb5[14].xyz * r5.www;
  r3.w = cmp(r3.w >= 0.5);
  r14.xyz = r3.www ? r14.xyz : r15.xyz;
  r15.xyz = cb5[14].xyz + -r14.xyz;
  r14.xyz = cb5[31].www * r15.xyz + r14.xyz;
  r15.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r15.xyz, r15.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb5[32].x;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[32].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r5.w ? 0 : r3.w;
  r9.xyz = -r9.xyz * cb5[12].xyz + r14.xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = cb5[32].zzz * r9.xyz + r13.xyz;
  r2.xyz = -r2.xyz * cb5[10].xyz + r9.xyz;
  r2.xyz = r4.xxx * r2.xyz + r4.yzw;
  r3.w = saturate(v2.x + v2.x);
  r4.yzw = cb5[17].xyz * r2.xyz + -r2.xyz;
  r4.yzw = r3.www * r4.yzw + r2.xyz;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.yzw);
  r1.x = -cb5[33].z * v2.x + r1.x;
  r3.w = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[33].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r3.w ? 0 : r1.x;
  r9.y = saturate(cb5[34].x + r1.x);
  r9.x = cb5[34].y + r1.y;
  r1.xy = t10.SampleGrad(s0_s, r10.xy, r11.xy, r12.xy).xy;
  r6.xy = t10.SampleGrad(s0_s, r7.xy, r6.xy, r8.xy).xy;
  r6.xy = r6.xy * r1.ww;
  r1.xy = r1.xy * r1.zz + r6.xy;
  r1.xy = r1.xy / r2.ww;
  r1.x = -cb5[33].z * v2.x + r1.x;
  r6.y = saturate(cb5[34].z + r1.x);
  r6.x = cb5[34].w + r1.y;
  r1.xy = r6.xy + -r9.xy;
  r1.xy = saturate(r4.xx * r1.xy + r9.xy);
  r0.y = cb5[35].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[35].y * r0.y;
  r1.z = saturate(cb5[35].w + v1.z);
  r0.y = r1.z * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb5[36].x * r0.y);
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = cb5[36].y * r1.z;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[36].z * r1.z;
  r1.z = exp2(r1.z);
  r2.xyz = min(float3(1,1,1), r4.yzw);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.y = cmp(0 < cb0[215].x);
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r6.xyz = (int3)r4.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r6.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r6.xyz * r1.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r1.w = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r1.y ? r2.w : 0;
    r1.w = r2.w ? cb2[5].x : 1;
  }
  r2.w = 0.0799999982 * r0.y;
  r4.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r4.xyz = r1.xxx * r4.xyz + r2.www;
  r6.xyz = -r2.xyz * r1.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.w = r1.z * r7.x + r7.y;
  r2.w = r2.w * r1.z + r7.z;
  r2.w = r2.w * r1.z;
  r2.w = max(r2.w, r1.z);
  r7.xyz = r5.yzy * r5.yzx;
  r8.yw = r5.zz * r5.yx;
  r3.w = r5.x * r5.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r3.w = 0.429042608 * r3.w;
  r9.x = 0.886227548;
  r4.w = dot(cb2[6].xyzw, r9.xyzw);
  r5.w = dot(cb2[9].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.x = cb2[12].x * r3.w + r4.w;
  r4.w = dot(cb2[7].xyzw, r9.xyzw);
  r5.w = dot(cb2[10].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.y = cb2[12].y * r3.w + r4.w;
  r4.w = dot(cb2[8].xyzw, r9.xyzw);
  r5.w = dot(cb2[11].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.z = cb2[12].z * r3.w + r4.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r1.yyy ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r1.zzz * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r1.zzz + r10.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r8.xyz = max(r8.xyz, r1.zzz);
  r7.xyz = r8.xyz * r7.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r1.z = (int)r6.y | (int)r6.x;
    r1.z = (int)r6.z | (int)r1.z;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r1.zzz ? r3.xyz : r0.xzw;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r0.xzw = r3.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.y * r2.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
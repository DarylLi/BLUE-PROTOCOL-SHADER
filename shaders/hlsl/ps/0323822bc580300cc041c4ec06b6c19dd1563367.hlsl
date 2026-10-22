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

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s8_s : register(s8);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = float2(1,0.5) * v5.xy;
  r0.w = t3.Sample(s1_s, v5.xy).x;
  r0.w = r0.w * r0.w;
  r2.x = v7.z;
  r2.y = 1;
  r1.zw = v7.ww * r2.xy;
  r2.xyzw = cb0[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v6.xyz;
  r2.w = dot(-r2.xyz, -r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = -r2.xyz * r2.www;
  r5.xy = cb5[18].xx * v4.xy;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.zxy, r2.xyz);
  r2.w = dot(v1.xyz, r2.xyz);
  r5.zw = -r6.xy / r2.ww;
  r5.zw = cb5[18].yy * r5.zw;
  r2.w = min(1, abs(r2.w));
  r3.w = cb5[18].z + -cb5[18].w;
  r2.w = r2.w * r3.w + cb5[18].w;
  r3.w = floor(r2.w);
  r2.w = 1 / r2.w;
  r6.xy = r5.zw * r2.ww;
  r6.zw = ddx_coarse(r5.xy);
  r5.xy = ddy_coarse(r5.xy);
  r3.w = 2 + r3.w;
  r4.w = 1;
  r7.xyzw = float4(0,0,1,1);
  r8.x = 0;
  while (true) {
    r8.y = (int)r8.x;
    r8.y = cmp(r8.y >= r3.w);
    if (r8.y != 0) break;
    r8.yz = v4.xy * cb5[18].xx + r7.xy;
    r8.y = t5.SampleGrad(s2_s, r8.yz, r6.w, r5.y).z;
    r8.z = cmp(r4.w < r8.y);
    if (r8.z != 0) {
      r8.z = r7.z + -r7.w;
      r8.w = r8.y + -r4.w;
      r8.z = r8.z + r8.w;
      r8.z = r8.w / r8.z;
      r8.zw = -r8.zz * r6.xy + r7.xy;
      r7.xy = r8.zw;
      break;
    }
    r8.z = r4.w + -r2.w;
    r7.xy = r5.zw * r2.ww + r7.xy;
    r8.x = (int)r8.x + 1;
    r7.z = r4.w;
    r7.w = r8.y;
    r4.w = r8.z;
  }
  r5.xy = v4.xy * cb5[18].xx + r7.xy;
  r2.w = cb5[19].x + cb0[143].y;
  r5.zw = t6.SampleBias(s3_s, r5.xy, r2.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[19].yyy * r7.xyz + r6.xyz;
  r7.xyz = r4.xyz / cb5[20].xxx;
  r5.zw = t7.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r8.y = v1.y * r2.w;
  r8.xz = -r5.zw;
  r5.zw = t7.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.x = v1.x * r2.w;
  r9.yz = -r5.zw;
  r5.zw = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t7.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r2.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb5[20].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb5[20].www * r6.xyz + r8.xyz;
  r5.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb5[21].xx * r9.xy;
  r9.xy = exp2(r9.xy);
  r5.zw = r5.zw ? float2(0,0) : r9.xy;
  r4.xyz = r4.xyz / cb5[21].www;
  r9.xyz = t8.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t8.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t8.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r5.zzz + r5.zzz;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb5[22].yyy * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r5.zzz;
  r9.xyz = cb5[22].zzz * r9.xyz + r5.zzz;
  r10.xyz = float3(0,0,1) + r6.xyz;
  r11.xyz = r10.yyy * r0.zxy;
  r10.xyw = r10.xxx * v0.xyz + r11.xyz;
  r10.xyz = r10.zzz * v1.xyz + r10.xyw;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = r10.xyz / r2.www;
  r2.w = dot(r10.xyz, cb5[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb5[24].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb5[24].z + cb5[25].y);
  r4.xyz = r4.xyz * r5.www + r5.www;
  r10.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r5.www;
  r4.xyz = cb5[22].zzz * r4.xyz + r5.www;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r9.xyz + r4.xyz);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r4.xxx * r8.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.yzx + r0.xyz;
  r0.xyz = r6.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r2.www * r0.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r8.yzx, r6.xyz);
  r3.w = 1 + r3.w;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r9.xyz, r9.xyz);
  r4.w = sqrt(r4.w);
  r9.xyz = r9.xyz / r4.www;
  r4.w = saturate(dot(-r9.xyz, r8.xyz));
  r5.z = 1 + -cb3[1].x;
  r4.w = saturate(r5.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r6.zxy, r2.xyz);
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
  r2.z = r0.y * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.y * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r8.xyz = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r10.yzx, r6.xyz);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r9.xyz, r10.xyz));
  r3.w = saturate(r3.w + r5.z);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r9.xyz = cb4[9].xyz * r2.yyy;
  r9.xyz = cb4[1].yyy * r9.xyz;
  r8.xyz = r8.xyz * cb4[1].xxx + r9.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r2.z + r1.z;
  r1.z = r2.y ? r1.w : r1.z;
  r1.z = r1.z / cb5[25].z;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[25].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = cb5[26].x * r1.z;
  r1.z = max(1, r1.z);
  r1.z = r1.w ? 1 : r1.z;
  r2.yz = r5.xy / cb5[26].ww;
  r2.yz = cb5[27].xy + r2.yz;
  r9.xyz = t9.SampleBias(s5_s, r2.yz, cb0[143].y).xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb5[26].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = cb5[5].xyz * r9.xyz;
  r1.w = t9.SampleBias(s5_s, r5.xy, cb0[143].y).w;
  r2.y = t10.SampleBias(s6_s, float2(0,0), cb0[143].y).x;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb5[27].w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb5[28].x * r2.y;
  r2.z = cb0[142].z * cb5[27].z + r2.z;
  r2.z = 6.28318548 * r2.z;
  r2.z = sin(r2.z);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * cb5[28].z + cb5[28].y;
  r2.z = max(cb5[29].x, r2.z);
  r2.z = min(cb5[28].w, r2.z);
  r2.z = cb5[29].y * r2.z;
  r2.z = cb4[3].y * r2.z;
  r2.y = r2.z * r2.y;
  r1.w = r2.y * r1.w;
  r9.xyz = r9.xyz * r1.www;
  r9.xyz = r9.xyz * r1.zzz;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r9.xyz * r4.yzw;
  r4.yzw = cb3[2].xyz * r8.xyz + r4.yzw;
  r8.xyz = cb5[7].xyz * r4.yzw;
  r4.yzw = -r4.yzw * cb5[7].xyz + cb5[8].xyz;
  r4.yzw = cb5[29].zzz * r4.yzw + r8.xyz;
  r8.xyz = t11.SampleBias(s7_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = t5.SampleBias(s2_s, r5.xy, cb0[143].y).xyz;
  r1.z = -1 + r5.z;
  r1.z = cb5[30].y * r1.z + 1;
  r9.xyz = r8.xyz * r1.zzz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = -r8.xyz * r1.zzz + r1.www;
  r8.xyz = cb5[30].zzz * r8.xyz + r9.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[30].x, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = cb5[10].xyz * r8.xyz;
  r10.xyzw = cmp(abs(r6.xyyz) < abs(r6.zzxx));
  r1.z = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r1.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r1.zw = cmp(abs(r6.zx) < abs(r6.yy));
  r1.z = r1.z ? r10.w : 0;
  r11.xyz = r1.www ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r1.zzz ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r6.zxy), icb[r10.x+0].xyz);
  r12.y = dot(abs(r6.zxy), icb[r11.x+0].xyz);
  r1.zw = float2(-0.577300012,-0.577300012) + r12.xy;
  r1.zw = saturate(float2(2.36574411,2.36574411) * r1.zw);
  r2.y = cmp((int)r10.z < (int)r10.y);
  r2.yz = r2.yy ? r10.zy : r10.yz;
  r3.w = cmp((int)r11.z < (int)r11.y);
  r5.zw = r3.ww ? r11.zy : r11.yz;
  r10.xyz = ddx_coarse(r7.xyz);
  r11.xyz = ddy_coarse(r7.xyz);
  r12.x = dot(r7.xyz, icb[r2.y+0].xyz);
  r12.y = dot(r7.xyz, icb[r2.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r2.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r2.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r2.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r2.z+0].xyz);
  r15.xyz = t12.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r7.xyz, icb[r5.z+0].xyz);
  r16.y = dot(r7.xyz, icb[r5.w+0].xyz);
  r7.x = dot(r10.xyz, icb[r5.z+0].xyz);
  r7.y = dot(r10.xyz, icb[r5.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r5.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r5.w+0].xyz);
  r11.xyz = t12.SampleGrad(s0_s, r16.xy, r7.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r1.www;
  r11.xyz = r15.xyz * r1.zzz + r11.xyz;
  r2.y = r1.z + r1.w;
  r11.xyz = r11.xyz / r2.yyy;
  r2.z = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r15.xyz = r2.zzz + -r11.xyz;
  r11.xyz = cb5[31].yyy * r15.xyz + r11.xyz;
  r2.z = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r2.zzz * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r15.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r15.zxy;
  sincos(cb5[31].x, r17.x, r18.x);
  r15.xyz = r17.xxx * r15.xyz;
  r11.xyz = r11.xyz * r18.xxx + r15.xyz;
  r11.xyz = r2.zzz * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = cb5[12].xyz * r11.xyz;
  r2.z = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = saturate(cb5[31].z * r2.z);
  r3.w = 1 + -r2.z;
  r3.w = r3.w + r3.w;
  r17.xyz = -r3.www * cb5[15].xyz + float3(1,1,1);
  r3.w = r2.z + r2.z;
  r18.xyz = cb5[14].xyz * r3.www;
  r2.z = cmp(r2.z >= 0.5);
  r17.xyz = r2.zzz ? r17.xyz : r18.xyz;
  r18.xyz = cb5[14].xyz + -r17.xyz;
  r17.xyz = cb5[31].www * r18.xyz + r17.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r2.z = dot(r18.xyz, r18.xyz);
  r2.z = sqrt(r2.z);
  r2.z = r2.z / cb5[32].x;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb5[32].y * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r11.xyz = -r11.xyz * cb5[12].xyz + r17.xyz;
  r11.xyz = r11.xyz * r2.zzz;
  r11.xyz = cb5[32].zzz * r11.xyz + r15.xyz;
  r8.xyz = -r8.xyz * cb5[10].xyz + r11.xyz;
  r8.xyz = r4.xxx * r8.xyz + r9.xyz;
  r5.zw = cb5[32].ww * v4.xy;
  r9.xyz = t13.SampleBias(s8_s, r5.zw, cb0[143].y).xyz;
  r0.w = cb5[33].x * r0.w;
  r2.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[33].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.z ? 0 : r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r0.www * r9.xyz + r8.xyz;
  r0.w = saturate(v2.x + v2.x);
  r9.xyz = cb5[17].xyz * r8.xyz + -r8.xyz;
  r9.xyz = r0.www * r9.xyz + r8.xyz;
  r9.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r9.xyz);
  r0.w = -cb5[33].z * v2.x + r5.x;
  r2.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[33].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z ? 0 : r0.w;
  r11.y = saturate(cb5[34].x + r0.w);
  r11.x = cb5[34].y + r5.y;
  r5.xy = t14.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r5.zw = t14.SampleGrad(s0_s, r16.xy, r7.xx, r10.xx).xy;
  r5.zw = r5.zw * r1.ww;
  r1.zw = r5.xy * r1.zz + r5.zw;
  r1.zw = r1.zw / r2.yy;
  r0.w = -cb5[33].z * v2.x + r1.z;
  r5.y = saturate(cb5[34].z + r0.w);
  r5.x = cb5[34].w + r1.w;
  r1.zw = r5.xy + -r11.xy;
  r1.zw = saturate(r4.xx * r1.zw + r11.xy);
  r0.w = cb5[35].x * r2.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb5[35].y * r0.w;
  r2.x = saturate(cb5[35].w + v1.z);
  r0.w = r2.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb5[36].x * r0.w);
  r2.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = cb5[36].y * r2.x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb5[36].z * r2.x;
  r2.x = exp2(r2.x);
  r2.z = cmp(0.00100000005 < abs(v3.w));
  r5.xy = floor(v7.xy);
  r3.w = dot(r5.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r4.x = cmp(v3.w < 0);
  r5.x = 1 + v3.w;
  r5.x = cmp(r3.w < r5.x);
  r3.w = cmp(v3.w < r3.w);
  r3.w = r4.x ? r5.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.z = r2.z ? r3.w : 0;
  if (r2.z != 0) discard;
  r5.xyz = min(float3(1,1,1), r9.xyz);
  r2.x = min(1, r2.x);
  r2.x = r2.y ? 0 : r2.x;
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r7.xyzw = t4.Sample(s1_s, v5.zw).xyzw;
  r8.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r7.xyzw = saturate(r7.xyzw * cb2[1].xyzw + r8.xyzw);
  r7.xyzw = r7.xyzw * r7.xyzw;
  o5.xyzw = cb2[0].xyzw * r7.xyzw;
  r1.w = 0.0799999982 * r0.w;
  r7.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r7.xyz = r1.zzz * r7.xyz + r1.www;
  r8.xyz = -r5.xyz * r1.zzz + r5.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.w = r2.x * r9.x + r9.y;
  r1.w = r1.w * r2.x + r9.z;
  r1.w = r1.w * r2.x;
  r1.w = max(r2.x, r1.w);
  r2.yz = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r10.xyzw = t1.Sample(s1_s, r2.yz).xyzw;
  r1.x = r10.w * 0.00392156886 + r9.w;
  r1.x = -0.00196078443 + r1.x;
  r1.x = r1.x * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.x = exp2(r1.x);
  r1.x = -0.0185813606 + r1.x;
  r10.xyzw = r10.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r6.w = 1;
  r1.y = dot(r10.xyzw, r6.xyzw);
  r1.y = max(0, r1.y);
  r1.x = r1.x * r1.y;
  r9.xyz = r1.xxx * r9.xyz;
  r1.x = cmp(cb0[186].y != 0.000000);
  if (r1.x != 0) {
    r10.xyzw = t2.Sample(s1_s, v5.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.x = r10.w * r10.w;
    r2.y = dot(r10.xyz, r10.xyz);
    r2.y = rsqrt(r2.y);
    r10.xyz = r10.xyz * r2.yyy;
    r2.y = -r10.w * r10.w + 1;
    r2.y = -r2.y * r2.y + 1;
    r0.xyz = r0.zxy * r2.www + -r10.xyz;
    r11.xyz = r2.yyy * r0.xyz + r10.xyz;
    r0.x = saturate(dot(r10.yzx, r6.xyz));
    r0.y = 1 + -r0.x;
    r1.y = r2.y * r0.y + r0.x;
  } else {
    r11.xyz = r6.zxy;
    r1.xy = float2(1,1);
  }
  r10.x = t0[0].val[0/4];
  r10.y = t0[0].val[0/4+1];
  r10.z = t0[0].val[0/4+2];
  r10.w = t0[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r10.xyzw, r11.xyzw);
  r10.x = t0[1].val[0/4];
  r10.y = t0[1].val[0/4+1];
  r10.z = t0[1].val[0/4+2];
  r10.w = t0[1].val[0/4+3];
  r0.y = dot(r10.xyzw, r11.xyzw);
  r10.x = t0[2].val[0/4];
  r10.y = t0[2].val[0/4+1];
  r10.z = t0[2].val[0/4+2];
  r10.w = t0[2].val[0/4+3];
  r0.z = dot(r10.xyzw, r11.xyzw);
  r10.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r10.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r10.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r10.xyzw);
  r2.y = r11.y * r11.y;
  r2.y = r11.x * r11.x + -r2.y;
  r10.x = t0[6].val[0/4];
  r10.y = t0[6].val[0/4+1];
  r10.z = t0[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r2.yyy + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.x = r1.x * r1.y;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r2.yzw = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r2.yzw = r2.xxx * r2.yzw + r9.xyz;
  r2.yzw = r2.yzw * r2.xxx + r10.xyz;
  r2.yzw = r2.yzw * r2.xxx;
  r2.xyz = max(r2.xxx, r2.yzw);
  r0.xyz = r2.xyz * r0.xyz;
  r2.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.y = (int)r7.y | (int)r7.x;
    r1.y = (int)r7.z | (int)r1.y;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.yyy ? r3.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.y = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r1.w;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[37];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
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
  r1.xy = float2(1,0.5) * v4.xy;
  r0.w = t3.Sample(s1_s, v4.xy).x;
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
  r5.xy = cb3[18].xx * v3.xy;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.zxy, r2.xyz);
  r2.w = dot(v1.xyz, r2.xyz);
  r5.zw = -r6.xy / r2.ww;
  r5.zw = cb3[18].yy * r5.zw;
  r2.w = min(1, abs(r2.w));
  r3.w = cb3[18].z + -cb3[18].w;
  r2.w = r2.w * r3.w + cb3[18].w;
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
    r8.yz = v3.xy * cb3[18].xx + r7.xy;
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
  r5.xy = v3.xy * cb3[18].xx + r7.xy;
  r2.w = cb3[19].x + cb0[143].y;
  r5.zw = t6.SampleBias(s3_s, r5.xy, r2.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[19].yyy * r7.xyz + r6.xyz;
  r7.xyz = r4.xyz / cb3[20].xxx;
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
  r8.xyz = cb3[20].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb3[20].www * r6.xyz + r8.xyz;
  r5.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb3[21].xx * r9.xy;
  r9.xy = exp2(r9.xy);
  r5.zw = r5.zw ? float2(0,0) : r9.xy;
  r4.xyz = r4.xyz / cb3[21].www;
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
  r4.xyz = cb3[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r5.zzz + r5.zzz;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb3[22].yyy * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r5.zzz;
  r9.xyz = cb3[22].zzz * r9.xyz + r5.zzz;
  r10.xyz = float3(0,0,1) + r6.xyz;
  r11.xyz = r10.yyy * r0.zxy;
  r10.xyw = r10.xxx * v0.xyz + r11.xyz;
  r10.xyz = r10.zzz * v1.xyz + r10.xyw;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = r10.xyz / r2.www;
  r2.w = dot(r10.xyz, cb3[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb3[24].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb3[24].z + cb3[25].y);
  r4.xyz = r4.xyz * r5.www + r5.www;
  r10.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r5.www;
  r4.xyz = cb3[22].zzz * r4.xyz + r5.www;
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
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r8.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r9.xyz, r9.xyz);
  r0.z = sqrt(r0.z);
  r9.xyz = r9.xyz / r0.zzz;
  r0.z = saturate(dot(-r9.xyz, r8.xyz));
  r3.w = 1 + -cb1[1].x;
  r0.z = saturate(r3.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r6.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb1[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r2.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r2.w + 1;
  r2.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r2.y ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.xw = r0.xw * r0.yw;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r8.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r9.xyz, r8.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.y;
  r8.xyz = cb2[9].xyz * r0.xxx;
  r8.xyz = cb2[1].yyy * r8.xyz;
  r2.xyz = r2.xyz * cb2[1].xxx + r8.xyz;
  r0.x = cmp(cb0[31].w < 1);
  r0.y = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r0.y = r1.z + r0.y;
  r0.x = r0.x ? r1.w : r0.y;
  r0.x = r0.x / cb3[25].z;
  r0.y = cmp(0 >= r0.x);
  r0.x = log2(r0.x);
  r0.x = cb3[25].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = cb3[26].x * r0.x;
  r0.x = max(1, r0.x);
  r0.x = r0.y ? 1 : r0.x;
  r1.zw = r5.xy / cb3[26].ww;
  r1.zw = cb3[27].xy + r1.zw;
  r8.xyz = t9.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[26].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb3[5].xyz * r8.xyz;
  r0.y = t9.SampleBias(s5_s, r5.xy, cb0[143].y).w;
  r1.z = t10.SampleBias(s6_s, float2(0,0), cb0[143].y).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[27].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb3[28].x * r1.z;
  r1.w = cb0[142].z * cb3[27].z + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb3[28].z + cb3[28].y;
  r1.w = max(cb3[29].x, r1.w);
  r1.w = min(cb3[28].w, r1.w);
  r1.w = cb3[29].y * r1.w;
  r1.w = cb2[3].y * r1.w;
  r1.z = r1.w * r1.z;
  r0.y = r1.z * r0.y;
  r8.xyz = r8.xyz * r0.yyy;
  r8.xyz = r8.xyz * r0.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r8.xyz * r4.yzw;
  r2.xyz = cb1[2].xyz * r2.xyz + r4.yzw;
  r4.yzw = cb3[7].xyz * r2.xyz;
  r2.xyz = -r2.xyz * cb3[7].xyz + cb3[8].xyz;
  r2.xyz = cb3[29].zzz * r2.xyz + r4.yzw;
  r4.yzw = t11.SampleBias(s7_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = t5.SampleBias(s2_s, r5.xy, cb0[143].y).xyz;
  r0.x = -1 + r5.z;
  r0.x = cb3[30].y * r0.x + 1;
  r8.xyz = r4.yzw * r0.xxx;
  r0.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = -r4.yzw * r0.xxx + r0.yyy;
  r4.yzw = cb3[30].zzz * r4.yzw + r8.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r8.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[30].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r4.yzw = r4.yzw * r10.xxx + r8.xyz;
  r4.yzw = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = cb3[10].xyz * r4.yzw;
  r9.xyzw = cmp(abs(r6.xyyz) < abs(r6.zzxx));
  r0.x = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r0.xy = cmp(abs(r6.zx) < abs(r6.yy));
  r0.x = r0.x ? r9.w : 0;
  r10.xyz = r0.yyy ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r0.xxx ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r0.x = dot(abs(r6.zxy), icb[r9.x+0].xyz);
  r0.y = dot(abs(r6.zxy), icb[r10.x+0].xyz);
  r0.xy = float2(-0.577300012,-0.577300012) + r0.xy;
  r0.xy = saturate(float2(2.36574411,2.36574411) * r0.xy);
  r1.z = cmp((int)r9.z < (int)r9.y);
  r1.zw = r1.zz ? r9.zy : r9.yz;
  r2.w = cmp((int)r10.z < (int)r10.y);
  r5.zw = r2.ww ? r10.zy : r10.yz;
  r9.xyz = ddx_coarse(r7.xyz);
  r10.xyz = ddy_coarse(r7.xyz);
  r11.x = dot(r7.xyz, icb[r1.z+0].xyz);
  r11.y = dot(r7.xyz, icb[r1.w+0].xyz);
  r12.x = dot(r9.xyz, icb[r1.z+0].xyz);
  r12.y = dot(r9.xyz, icb[r1.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r1.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r1.w+0].xyz);
  r14.xyz = t12.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r15.x = dot(r7.xyz, icb[r5.z+0].xyz);
  r15.y = dot(r7.xyz, icb[r5.w+0].xyz);
  r7.x = dot(r9.xyz, icb[r5.z+0].xyz);
  r7.y = dot(r9.xyz, icb[r5.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r5.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r5.w+0].xyz);
  r10.xyz = t12.SampleGrad(s0_s, r15.xy, r7.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r0.yyy;
  r10.xyz = r14.xyz * r0.xxx + r10.xyz;
  r1.z = r0.x + r0.y;
  r10.xyz = r10.xyz / r1.zzz;
  r1.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r1.www + -r10.xyz;
  r10.xyz = cb3[31].yyy * r14.xyz + r10.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r14.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb3[31].x, r16.x, r17.x);
  r14.xyz = r16.xxx * r14.xyz;
  r10.xyz = r10.xyz * r17.xxx + r14.xyz;
  r10.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = cb3[12].xyz * r10.xyz;
  r1.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = saturate(cb3[31].z * r1.w);
  r2.w = 1 + -r1.w;
  r2.w = r2.w + r2.w;
  r16.xyz = -r2.www * cb3[15].xyz + float3(1,1,1);
  r2.w = r1.w + r1.w;
  r17.xyz = cb3[14].xyz * r2.www;
  r1.w = cmp(r1.w >= 0.5);
  r16.xyz = r1.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[14].xyz + -r16.xyz;
  r16.xyz = cb3[31].www * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r17.xyz, r17.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb3[32].x;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[32].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r10.xyz = -r10.xyz * cb3[12].xyz + r16.xyz;
  r10.xyz = r10.xyz * r1.www;
  r10.xyz = cb3[32].zzz * r10.xyz + r14.xyz;
  r4.yzw = -r4.yzw * cb3[10].xyz + r10.xyz;
  r4.yzw = r4.xxx * r4.yzw + r8.xyz;
  r5.zw = cb3[32].ww * v3.xy;
  r8.xyz = t13.SampleBias(s8_s, r5.zw, cb0[143].y).xyz;
  r0.w = cb3[33].x * r0.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[33].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r8.xyz = r8.xyz + -r4.yzw;
  r4.yzw = r0.www * r8.xyz + r4.yzw;
  r0.w = saturate(v2.x + v2.x);
  r8.xyz = cb3[17].xyz * r4.yzw + -r4.yzw;
  r8.xyz = r0.www * r8.xyz + r4.yzw;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r0.w = -cb3[33].z * v2.x + r5.x;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[33].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r10.y = saturate(cb3[34].x + r0.w);
  r10.x = cb3[34].y + r5.y;
  r5.xy = t14.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r5.zw = t14.SampleGrad(s0_s, r15.xy, r7.xx, r9.xx).xy;
  r0.yw = r5.zw * r0.yy;
  r0.xy = r5.xy * r0.xx + r0.yw;
  r0.xy = r0.xy / r1.zz;
  r0.x = -cb3[33].z * v2.x + r0.x;
  r5.y = saturate(cb3[34].z + r0.x);
  r5.x = cb3[34].w + r0.y;
  r0.xy = r5.xy + -r10.xy;
  r0.xy = saturate(r4.xx * r0.xy + r10.xy);
  r0.z = cb3[35].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[35].y * r0.z;
  r0.w = saturate(cb3[35].w + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb3[36].x * r0.z);
  r0.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.w = cb3[36].y * r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[36].z * r0.w;
  r0.w = exp2(r0.w);
  r4.xyz = min(float3(1,1,1), r8.xyz);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  o2.z = r0.y * cb0[139].y + cb0[139].x;
  r0.y = (int)w5.x * 15;
  r5.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r5.x].val[4/4];
  r7.xyzw = t4.Sample(s1_s, v4.zw).xyzw;
  r8.x = t1[r5.y].val[0/4];
  r8.y = t1[r5.y].val[0/4+1];
  r8.z = t1[r5.y].val[0/4+2];
  r8.w = t1[r5.y].val[0/4+3];
  r9.xyzw = r8.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r7.xyzw = saturate(r7.xyzw * r8.xyzw + r9.xyzw);
  r8.x = t1[r0.y].val[0/4];
  r8.y = t1[r0.y].val[0/4+1];
  r8.z = t1[r0.y].val[0/4+2];
  r8.w = t1[r0.y].val[0/4+3];
  r7.xyzw = r7.xyzw * r7.xyzw;
  o5.xyzw = r7.xyzw * r8.xyzw;
  r0.y = 0.0799999982 * r0.z;
  r7.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r7.xyz = r0.xxx * r7.xyz + r0.yyy;
  r8.xyz = -r4.xyz * r0.xxx + r4.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r0.y = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r0.yyy ? r9.xyz : r8.xyz;
  r7.xyz = r0.yyy ? float3(0,0,0) : r7.xyz;
  r0.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r0.yyy * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r0.y = r0.w * r9.x + r9.y;
  r0.y = r0.y * r0.w + r9.z;
  r0.y = r0.y * r0.w;
  r0.y = max(r0.w, r0.y);
  r1.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s1_s, r1.xy).xyzw;
  r1.xyzw = t2.Sample(s1_s, r1.zw).xyzw;
  r2.w = r1.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r10.x = t1[r5.z].val[0/4];
  r10.y = t1[r5.z].val[0/4+1];
  r10.z = t1[r5.z].val[0/4+2];
  r10.w = t1[r5.z].val[0/4+3];
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r2.w = r2.w * r10.w + r5.w;
  r9.xyz = r9.xyz * r9.xyz;
  r5.xyz = r9.xyz * r10.xyz + r5.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r9.xy = mad((int2)w5.xy, int2(15,15), int2(5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r9.x = t1[r9.y].val[0/4];
  r9.y = t1[r9.y].val[0/4+1];
  r9.z = t1[r9.y].val[0/4+2];
  r9.w = t1[r9.y].val[0/4+3];
  r1.xyzw = r1.xyzw * r10.xyzw + r9.xyzw;
  r6.w = 1;
  r1.x = dot(r1.xyzw, r6.xyzw);
  r1.x = max(0, r1.x);
  r1.x = r2.w * r1.x;
  r1.xyz = r1.xxx * r5.xyz;
  r1.xyz = cb0[157].xyz * r1.xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r1.xyz * r8.xyz;
  r5.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r5.xyz = r0.www * r5.xyz + r9.xyz;
  r5.xyz = r5.xyz * r0.www + r10.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = max(r5.xyz, r0.www);
  r1.xyz = r5.xyz * r1.xyz;
  r5.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t0[r7.x].val[0/4];
    r7.z = t0[r7.x].val[0/4+1];
    r7.w = t0[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t0[r7.y].val[0/4];
    r8.y = t0[r7.y].val[0/4+1];
    r8.z = t0[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r3.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.y = r1.w * r0.y;
  r0.y = r0.y * cb0[135].y + 0.00390625;
  r0.y = log2(r0.y);
  r0.y = r0.y * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r0.y;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r0.xz;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
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

cbuffer cb5 : register(b5)
{
  float4 cb5[41];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r1.zw = cb5[19].xx * v3.xy;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r0.w = dot(v1.xyz, r2.xyz);
  r5.xy = -r5.xy / r0.ww;
  r5.xy = cb5[19].yy * r5.xy;
  r0.w = min(1, abs(r0.w));
  r2.w = cb5[19].z + -cb5[19].w;
  r0.w = r0.w * r2.w + cb5[19].w;
  r2.w = floor(r0.w);
  r0.w = 1 / r0.w;
  r5.zw = r5.xy * r0.ww;
  r6.xy = ddx_coarse(r1.zw);
  r6.zw = ddy_coarse(r1.zw);
  r2.w = 2 + r2.w;
  r3.w = 1;
  r4.w = 1;
  r7.xyzw = float4(0,0,1,0);
  while (true) {
    r8.x = (int)r7.w;
    r8.x = cmp(r8.x >= r2.w);
    if (r8.x != 0) break;
    r8.xy = v3.xy * cb5[19].xx + r7.xy;
    r8.x = t6.SampleGrad(s3_s, r8.xy, r6.x, r6.z).z;
    r8.y = cmp(r3.w < r8.x);
    if (r8.y != 0) {
      r8.y = -r7.z + r4.w;
      r8.z = r8.x + -r3.w;
      r8.y = r8.y + r8.z;
      r8.y = r8.z / r8.y;
      r8.yz = -r8.yy * r5.zw + r7.xy;
      r7.xy = r8.yz;
      break;
    }
    r8.y = r3.w + -r0.w;
    r7.xy = r5.xy * r0.ww + r7.xy;
    r7.w = (int)r7.w + 1;
    r4.w = r3.w;
    r7.z = r8.x;
    r3.w = r8.y;
  }
  r5.xy = v3.xy * cb5[19].xx + r7.xy;
  r0.w = cb5[20].x + cb0[143].y;
  r5.zw = t7.SampleBias(s4_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[20].yyy * r7.xyz + r6.xyz;
  r7.xyz = r4.xyz / cb5[21].xxx;
  r5.zw = t8.SampleBias(s5_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t8.SampleBias(s5_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r5.zw = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t8.SampleBias(s5_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb5[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb5[21].www * r6.xyz + r8.xyz;
  r5.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb5[22].xx * r9.xy;
  r9.xy = exp2(r9.xy);
  r5.zw = r5.zw ? float2(0,0) : r9.xy;
  r4.xyz = r4.xyz / cb5[22].www;
  r9.xyz = t9.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t9.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t9.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r5.zzz + r5.zzz;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb5[23].yyy * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r5.zzz;
  r9.xyz = cb5[23].zzz * r9.xyz + r5.zzz;
  r10.xyz = float3(0,0,1) + r6.xyz;
  r11.xyz = r10.yyy * r0.xyz;
  r10.xyw = r10.xxx * v0.xyz + r11.xyz;
  r10.xyz = r10.zzz * v1.xyz + r10.xyw;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = r10.xyz / r0.www;
  r0.w = dot(r10.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb5[25].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb5[25].z + cb5[26].y);
  r4.xyz = r4.xyz * r5.www + r5.www;
  r10.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r5.www;
  r4.xyz = cb5[23].zzz * r4.xyz + r5.www;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r9.xyz + r4.xyz);
  r0.w = t6.SampleBias(s3_s, r1.zw, cb0[143].y).w;
  r2.w = r0.w * -2 + 1;
  r0.w = cb5[26].z * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb5[27].x * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r4.xxx * r8.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r6.yzw = r0.xyz * r0.www;
  r8.xyz = t10.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = t6.SampleBias(s3_s, r5.xy, cb0[143].y).xyz;
  r2.w = -1 + r5.z;
  r2.w = cb5[27].w * r2.w + 1;
  r9.xyz = r8.xyz * r2.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = -r8.xyz * r2.www + r3.www;
  r8.xyz = cb5[28].xxx * r8.xyz + r9.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[27].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = cb5[5].xyz * r8.xyz;
  r10.xyzw = cmp(abs(r6.zwwy) < abs(r6.yyzz));
  r2.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r5.zw = cmp(abs(r6.yz) < abs(r6.ww));
  r2.w = r5.z ? r10.w : 0;
  r11.xyz = r5.www ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r2.www ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r6.yzw), icb[r10.x+0].xyz);
  r12.y = dot(abs(r6.yzw), icb[r11.x+0].xyz);
  r5.zw = float2(-0.577300012,-0.577300012) + r12.xy;
  r5.zw = saturate(float2(2.36574411,2.36574411) * r5.zw);
  r2.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r2.ww ? r10.zy : r10.yz;
  r2.w = cmp((int)r11.z < (int)r11.y);
  r10.zw = r2.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r7.xyz);
  r12.xyz = ddy_coarse(r7.xyz);
  r13.x = dot(r7.xyz, icb[r10.x+0].xyz);
  r13.y = dot(r7.xyz, icb[r10.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r16.xyz = t11.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r10.x = dot(r7.xyz, icb[r10.z+0].xyz);
  r10.y = dot(r7.xyz, icb[r10.w+0].xyz);
  r7.x = dot(r11.xyz, icb[r10.z+0].xyz);
  r7.y = dot(r11.xyz, icb[r10.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.w+0].xyz);
  r12.xyz = t11.SampleGrad(s0_s, r10.xy, r7.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz * r5.www;
  r12.xyz = r16.xyz * r5.zzz + r12.xyz;
  r2.w = r5.z + r5.w;
  r12.xyz = r12.xyz / r2.www;
  r3.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r16.xyz = r3.www + -r12.xyz;
  r12.xyz = cb5[28].www * r16.xyz + r12.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb5[28].z, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = cb5[7].xyz * r12.xyz;
  r3.w = dot(r16.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[29].x * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r17.xyz = -r4.www * cb5[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r18.xyz = cb5[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r17.xyz = r3.www ? r17.xyz : r18.xyz;
  r18.xyz = cb5[9].xyz + -r17.xyz;
  r17.xyz = cb5[29].yyy * r18.xyz + r17.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r18.xyz, r18.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb5[29].z;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[29].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r12.xyz = -r12.xyz * cb5[7].xyz + r17.xyz;
  r12.xyz = r12.xyz * r3.www;
  r12.xyz = cb5[30].xxx * r12.xyz + r16.xyz;
  r8.xyz = -r8.xyz * cb5[5].xyz + r12.xyz;
  r8.xyz = r4.xxx * r8.xyz + r9.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r6.yzw);
  r3.w = 1 + r3.w;
  r12.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r12.xyz, r12.xyz);
  r4.w = sqrt(r4.w);
  r12.xyz = r12.xyz / r4.www;
  r4.w = saturate(dot(-r12.xyz, r9.xyz));
  r7.z = 1 + -cb3[1].x;
  r4.w = saturate(r7.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r6.yzw, r2.xyz);
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
  r2.z = r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r9.xyz = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r16.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r16.xyz, r6.yzw);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r12.xyz, r16.xyz));
  r3.w = saturate(r3.w + r7.z);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r12.xyz = cb4[9].xyz * r2.yyy;
  r12.xyz = cb4[1].yyy * r12.xyz;
  r9.xyz = r9.xyz * cb4[1].xxx + r12.xyz;
  r9.xyz = r9.xyz * r8.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.x = r1.x / cb5[31].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[31].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[31].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.yz = r1.zw / cb5[32].yy;
  r2.yz = cb5[32].zw + r2.yz;
  r12.xyz = t12.SampleBias(s7_s, r2.yz, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb5[32].x, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r12.xyz = cb5[12].xyz * r12.xyz;
  r1.y = t12.SampleBias(s7_s, r1.zw, cb0[143].y).w;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb4[2].x * r1.z;
  r1.z = cb5[33].y * r1.z;
  r2.yz = v3.zw + -v3.xy;
  r2.yz = cb5[34].zz * r2.yz + v3.xy;
  r2.yz = cb5[34].ww * r2.yz;
  r1.zw = r1.zz * cb5[34].xy + r2.yz;
  r1.z = t13.SampleBias(s8_s, r1.zw, cb0[143].y).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[35].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb5[35].y * r1.z;
  r1.w = cb0[142].z * cb5[33].x + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb5[35].w + cb5[35].z;
  r1.w = max(cb5[36].y, r1.w);
  r1.w = min(cb5[36].x, r1.w);
  r1.w = cb5[36].z * r1.w;
  r1.w = cb4[3].y * r1.w;
  r1.z = r1.w * r1.z;
  r1.y = r1.y * r1.z;
  r1.yzw = r12.xyz * r1.yyy;
  r1.xyz = r1.xxx * r1.yzw;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r4.yzw * r1.xyz;
  r1.xyz = cb3[2].xyz * r9.xyz + r1.xyz;
  r4.yzw = cb5[15].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb5[15].xyz + cb5[16].xyz;
  r1.xyz = cb5[36].www * r1.xyz + r4.yzw;
  r1.w = saturate(v2.x + v2.x);
  r4.yzw = cb5[18].xyz * r8.xyz + -r8.xyz;
  r4.yzw = r1.www * r4.yzw + r8.xyz;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.yzw);
  r1.w = -cb5[37].x * v2.x + r5.x;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[37].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r9.y = saturate(cb5[37].z + r1.w);
  r9.x = cb5[37].w + r5.y;
  r2.yz = t14.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r5.xy = t14.SampleGrad(s0_s, r10.xy, r7.xy, r11.xy).xy;
  r5.xy = r5.xy * r5.ww;
  r2.yz = r2.yz * r5.zz + r5.xy;
  r2.yz = r2.yz / r2.ww;
  r1.w = -cb5[37].x * v2.x + r2.y;
  r5.y = saturate(cb5[38].x + r1.w);
  r5.x = cb5[38].y + r2.z;
  r2.yz = r5.xy + -r9.xy;
  r2.yz = saturate(r4.xx * r2.yz + r9.xy);
  r1.w = cb5[38].z * r2.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb5[38].w * r1.w;
  r2.x = saturate(cb5[39].y + v1.z);
  r1.w = r2.x * r1.w;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.w = min(0.5, r1.w);
  r1.w = saturate(cb5[39].z * r1.w);
  r2.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = cb5[39].w * r2.x;
  r2.w = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb5[40].x * r2.x;
  r2.x = exp2(r2.x);
  r4.xyz = min(float3(1,1,1), r4.yzw);
  r2.x = min(1, r2.x);
  r2.x = r2.w ? 0 : r2.x;
  o2.z = r2.z * cb0[139].y + cb0[139].x;
  r2.z = cmp(0 < cb0[215].x);
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r7.xyz = (int3)r5.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r7.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r7.xyz * r2.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r2.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r3.w = cmp(0 < cb1[18].w);
    r3.w = r2.z ? r3.w : 0;
    r2.w = r3.w ? cb2[5].x : 1;
  }
  r3.w = 0.0799999982 * r1.w;
  r5.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r5.xyz = r2.yyy * r5.xyz + r3.www;
  r7.xyz = -r4.xyz * r2.yyy + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r5.xyz = r3.www ? float3(0,0,0) : r5.xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r3.w = r2.x * r8.x + r8.y;
  r3.w = r3.w * r2.x + r8.z;
  r3.w = r3.w * r2.x;
  r3.w = max(r3.w, r2.x);
  if (r2.z != 0) {
    r8.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r8.xyz = max(cb2[2].xyz, r8.xyz);
    r8.xyz = min(cb2[3].xyz, r8.xyz);
    r9.xyzw = t3.Sample(s2_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.zwy;
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
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r6.x = 1;
    r9.xyzw = r2.zzzz ? cb2[4].wxyz : r6.xyzw;
    r2.z = 1 + -r9.x;
    r2.z = -r2.z * r2.z + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r2.zzz * r0.xyz + r9.yzw;
    r4.w = saturate(dot(r9.yzw, r6.yzw));
    r5.w = 1 + -r4.w;
    r9.y = r2.z * r5.w + r4.w;
  } else {
    r0.xyz = r6.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
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
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r2.xxx * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r2.xxx + r10.xyz;
  r8.xyz = r8.xyz * r2.xxx;
  r8.xyz = max(r8.xyz, r2.xxx);
  r0.xyz = r8.xyz * r0.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.x = (int)r7.y | (int)r7.x;
    r2.x = (int)r7.z | (int)r2.x;
    r2.z = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.z = 0.00200000009 * r2.z;
    r2.z = frac(r2.z);
    r2.z = cmp(0.5 < r2.z);
    r3.xyz = r2.zzz ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.xxx ? r3.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r6.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r2.y;
  o2.w = 0.505882382;
  o2.y = r1.w;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
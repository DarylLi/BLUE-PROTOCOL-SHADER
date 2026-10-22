// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[41];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
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
  r1.zw = cb4[19].xx * v3.xy;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r0.w = dot(v1.xyz, r2.xyz);
  r5.xy = -r5.xy / r0.ww;
  r5.xy = cb4[19].yy * r5.xy;
  r0.w = min(1, abs(r0.w));
  r2.w = cb4[19].z + -cb4[19].w;
  r0.w = r0.w * r2.w + cb4[19].w;
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
    r8.xy = v3.xy * cb4[19].xx + r7.xy;
    r8.x = t3.SampleGrad(s2_s, r8.xy, r6.x, r6.z).z;
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
  r5.xy = v3.xy * cb4[19].xx + r7.xy;
  r0.w = cb4[20].x + cb0[143].y;
  r5.zw = t4.SampleBias(s3_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb4[20].yyy * r7.xyz + r6.xyz;
  r7.xyz = r4.xyz / cb4[21].xxx;
  r5.zw = t5.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t5.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t5.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
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
  r8.xyz = cb4[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb4[21].www * r6.xyz + r8.xyz;
  r5.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb4[22].xx * r9.xy;
  r9.xy = exp2(r9.xy);
  r5.zw = r5.zw ? float2(0,0) : r9.xy;
  r4.xyz = r4.xyz / cb4[22].www;
  r9.xyz = t6.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t6.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t6.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb4[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r5.zzz + r5.zzz;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb4[23].yyy * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r5.zzz;
  r9.xyz = cb4[23].zzz * r9.xyz + r5.zzz;
  r10.xyz = float3(0,0,1) + r6.xyz;
  r11.xyz = r10.yyy * r0.xyz;
  r10.xyw = r10.xxx * v0.xyz + r11.xyz;
  r10.xyz = r10.zzz * v1.xyz + r10.xyw;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = r10.xyz / r0.www;
  r0.w = dot(r10.xyz, cb4[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb4[25].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb4[25].z + cb4[26].y);
  r4.xyz = r4.xyz * r5.www + r5.www;
  r10.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r5.www;
  r4.xyz = cb4[23].zzz * r4.xyz + r5.www;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r9.xyz + r4.xyz);
  r0.w = t3.SampleBias(s2_s, r1.zw, cb0[143].y).w;
  r2.w = r0.w * -2 + 1;
  r0.w = cb4[26].z * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb4[27].x * r0.w);
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
  r6.xyz = r0.xyz * r0.www;
  r8.xyz = t7.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = t3.SampleBias(s2_s, r5.xy, cb0[143].y).xyz;
  r0.x = -1 + r5.z;
  r0.x = cb4[27].w * r0.x + 1;
  r9.xyz = r8.xyz * r0.xxx;
  r0.y = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = -r8.xyz * r0.xxx + r0.yyy;
  r8.xyz = cb4[28].xxx * r8.xyz + r9.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[27].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = cb4[5].xyz * r8.xyz;
  r10.xyzw = cmp(abs(r6.yzzx) < abs(r6.xxyy));
  r0.x = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r0.xy = cmp(abs(r6.xy) < abs(r6.zz));
  r0.x = r0.x ? r10.w : 0;
  r11.xyz = r0.yyy ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r0.xxx ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r0.x = dot(abs(r6.xyz), icb[r10.x+0].xyz);
  r0.y = dot(abs(r6.xyz), icb[r11.x+0].xyz);
  r0.xy = float2(-0.577300012,-0.577300012) + r0.xy;
  r0.xy = saturate(float2(2.36574411,2.36574411) * r0.xy);
  r2.w = cmp((int)r10.z < (int)r10.y);
  r5.zw = r2.ww ? r10.zy : r10.yz;
  r2.w = cmp((int)r11.z < (int)r11.y);
  r10.xy = r2.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r7.xyz);
  r12.xyz = ddy_coarse(r7.xyz);
  r13.x = dot(r7.xyz, icb[r5.z+0].xyz);
  r13.y = dot(r7.xyz, icb[r5.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r5.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r5.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r5.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r5.w+0].xyz);
  r16.xyz = t8.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r17.x = dot(r7.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r7.xyz, icb[r10.y+0].xyz);
  r7.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r7.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r10.xyz = t8.SampleGrad(s0_s, r17.xy, r7.xyx, r11.xyx).xyz;
  r10.xyz = r10.xyz * r0.yyy;
  r10.xyz = r16.xyz * r0.xxx + r10.xyz;
  r2.w = r0.x + r0.y;
  r10.xyz = r10.xyz / r2.www;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r3.www + -r10.xyz;
  r10.xyz = cb4[28].www * r12.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb4[28].z, r16.x, r18.x);
  r12.xyz = r16.xxx * r12.xyz;
  r10.xyz = r10.xyz * r18.xxx + r12.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = cb4[7].xyz * r10.xyz;
  r3.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb4[29].x * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r16.xyz = -r4.www * cb4[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r18.xyz = cb4[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r16.xyz = r3.www ? r16.xyz : r18.xyz;
  r18.xyz = cb4[9].xyz + -r16.xyz;
  r16.xyz = cb4[29].yyy * r18.xyz + r16.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r18.xyz, r18.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb4[29].z;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[29].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r10.xyz = -r10.xyz * cb4[7].xyz + r16.xyz;
  r10.xyz = r10.xyz * r3.www;
  r10.xyz = cb4[30].xxx * r10.xyz + r12.xyz;
  r8.xyz = -r8.xyz * cb4[5].xyz + r10.xyz;
  r8.xyz = r4.xxx * r8.xyz + r9.xyz;
  r3.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb3[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r6.xyz);
  r3.w = 1 + r3.w;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r4.w = saturate(dot(-r10.xyz, r9.xyz));
  r5.z = 1 + -cb2[1].x;
  r4.w = saturate(r5.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r6.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb2[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb2[0].w;
  r2.y = r2.y * r2.z + cb2[0].w;
  r2.z = cmp(r2.y >= cb2[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.y * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.w = r3.w * r0.z;
  r9.xyz = cb3[4].xyz * r0.www;
  r0.w = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.w = sqrt(r0.w);
  r12.xyz = -cb3[8].xyz / r0.www;
  r0.w = dot(r12.xyz, r6.xyz);
  r0.w = 1 + r0.w;
  r2.y = saturate(dot(-r10.xyz, r12.xyz));
  r2.y = saturate(r2.y + r5.z);
  r0.w = r2.y * r0.w;
  r0.z = r0.w * r0.z;
  r10.xyz = cb3[9].xyz * r0.zzz;
  r10.xyz = cb3[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb3[1].xxx + r10.xyz;
  r9.xyz = r9.xyz * r8.xyz;
  r0.z = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.w = r1.x + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.z = r0.z / cb4[31].x;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[31].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb4[31].z * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r0.w ? 1 : r0.z;
  r1.xy = r1.zw / cb4[32].yy;
  r1.xy = cb4[32].zw + r1.xy;
  r10.xyz = t9.SampleBias(s6_s, r1.xy, cb0[143].y).xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb4[32].x, r1.x, r16.x);
  r12.xyz = r12.xyz * r1.xxx;
  r10.xyz = r10.xyz * r16.xxx + r12.xyz;
  r10.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = cb4[12].xyz * r10.xyz;
  r0.w = t9.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r1.xy = mad((int2)v4.xx, int2(36,36), int2(18,20));
  r12.x = t2[r1.x].val[0/4];
  r12.y = t2[r1.x].val[0/4+1];
  r12.z = t2[r1.x].val[0/4+2];
  r1.z = r12.x + r12.y;
  r1.z = r1.z + r12.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb3[2].x * r1.z;
  r1.z = cb4[33].y * r1.z;
  r2.yz = v3.zw + -v3.xy;
  r2.yz = cb4[34].zz * r2.yz + v3.xy;
  r2.yz = cb4[34].ww * r2.yz;
  r1.zw = r1.zz * cb4[34].xy + r2.yz;
  r1.z = t10.SampleBias(s7_s, r1.zw, cb0[143].y).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[35].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb4[35].y * r1.z;
  r1.w = cb0[142].z * cb4[33].x + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb4[35].w + cb4[35].z;
  r1.w = max(cb4[36].y, r1.w);
  r1.w = min(cb4[36].x, r1.w);
  r1.w = cb4[36].z * r1.w;
  r1.w = cb3[3].y * r1.w;
  r1.z = r1.w * r1.z;
  r0.w = r1.z * r0.w;
  r10.xyz = r10.xyz * r0.www;
  r10.xyz = r10.xyz * r0.zzz;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r10.xyz * r4.yzw;
  r4.yzw = cb2[2].xyz * r9.xyz + r4.yzw;
  r9.xyz = cb4[15].xyz * r4.yzw;
  r4.yzw = -r4.yzw * cb4[15].xyz + cb4[16].xyz;
  r4.yzw = cb4[36].www * r4.yzw + r9.xyz;
  r0.z = saturate(v2.x + v2.x);
  r9.xyz = cb4[18].xyz * r8.xyz + -r8.xyz;
  r9.xyz = r0.zzz * r9.xyz + r8.xyz;
  r9.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r9.xyz);
  r0.z = -cb4[37].x * v2.x + r5.x;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[37].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r10.y = saturate(cb4[37].z + r0.z);
  r10.x = cb4[37].w + r5.y;
  r0.zw = t11.SampleGrad(s0_s, r13.xy, r14.xx, r15.xx).xy;
  r1.zw = t11.SampleGrad(s0_s, r17.xy, r7.xx, r11.xx).xy;
  r1.zw = r1.zw * r0.yy;
  r0.xy = r0.zw * r0.xx + r1.zw;
  r0.xy = r0.xy / r2.ww;
  r0.x = -cb4[37].x * v2.x + r0.x;
  r5.y = saturate(cb4[38].x + r0.x);
  r5.x = cb4[38].y + r0.y;
  r0.xy = r5.xy + -r10.xy;
  r0.xy = saturate(r4.xx * r0.xy + r10.xy);
  r0.z = cb4[38].z * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb4[38].w * r0.z;
  r0.w = saturate(cb4[39].y + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb4[39].z * r0.z);
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = cb4[39].w * r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[40].x * r0.w;
  r0.w = exp2(r0.w);
  r2.xyz = min(float3(1,1,1), r9.xyz);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  o2.z = r0.y * cb0[139].y + cb0[139].x;
  r0.y = cmp(0 < cb0[215].x);
  r1.y = t2[r1.y].val[4/4];
  r1.z = t2[r1.y].val[4/4+1];
  r1.z = cmp(0 < r1.z);
  if (r1.z != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r7.xyz = (int3)r5.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.z = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r7.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r7.xyz * r1.zzz + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.z = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r1.x = t2[r1.x].val[12/4];
    r1.x = cmp(0 < r1.x);
    r1.x = r0.y ? r1.x : 0;
    r1.z = r1.x ? cb1[5].x : 1;
  }
  r1.x = 0.0799999982 * r0.z;
  r5.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r5.xyz = r0.xxx * r5.xyz + r1.xxx;
  r7.xyz = -r2.xyz * r0.xxx + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.xxx ? r8.xyz : r7.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.xxx * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.x = r0.w * r8.x + r8.y;
  r1.x = r1.x * r0.w + r8.z;
  r1.x = r1.x * r0.w;
  r1.x = max(r1.x, r0.w);
  r8.xyz = r6.yzy * r6.yzx;
  r9.yw = r6.zz * r6.yx;
  r1.w = r6.x * r6.x + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.yzx;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r1.w = 0.429042608 * r1.w;
  r10.x = 0.886227548;
  r2.w = dot(cb1[6].xyzw, r10.xyzw);
  r3.w = dot(cb1[9].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.x = cb1[12].x * r1.w + r2.w;
  r2.w = dot(cb1[7].xyzw, r10.xyzw);
  r3.w = dot(cb1[10].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.y = cb1[12].y * r1.w + r2.w;
  r2.w = dot(cb1[8].xyzw, r10.xyzw);
  r3.w = dot(cb1[11].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.z = cb1[12].z * r1.w + r2.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r0.yyy ? r8.xyz : 0;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r0.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r7.xyz;
  r9.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r11.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r9.xyz = r0.www * r9.xyz + r10.xyz;
  r9.xyz = r9.xyz * r0.www + r11.xyz;
  r9.xyz = r9.xyz * r0.www;
  r9.xyz = max(r9.xyz, r0.www);
  r8.xyz = r9.xyz * r8.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r9.x = t2[r7.y].val[0/4];
    r9.y = t2[r7.y].val[0/4+1];
    r9.z = t2[r7.y].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xzw));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r3.xyz : r4.xyz;
  }
  r3.xyz = cb0[145].yyy * r5.xyz + r8.xyz;
  r3.xyz = r3.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r0.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.y = r0.y * r1.x;
  r0.y = r0.y * cb0[135].y + 0.00390625;
  r0.y = log2(r0.y);
  r0.y = r0.y * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r0.y;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.w = 0.505882382;
  o2.xy = r0.xz;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
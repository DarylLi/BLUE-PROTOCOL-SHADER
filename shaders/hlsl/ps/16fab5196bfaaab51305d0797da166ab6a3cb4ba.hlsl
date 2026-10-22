// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb3[41];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = float2(1,0.5) * v4.xy;
  r0.w = t3.Sample(s1_s, v4.xy).x;
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
  r5.xy = cb3[19].xx * v3.xy;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.zxy, r2.xyz);
  r2.w = dot(v1.xyz, r2.xyz);
  r5.zw = -r6.xy / r2.ww;
  r5.zw = cb3[19].yy * r5.zw;
  r2.w = min(1, abs(r2.w));
  r3.w = cb3[19].z + -cb3[19].w;
  r2.w = r2.w * r3.w + cb3[19].w;
  r3.w = floor(r2.w);
  r2.w = 1 / r2.w;
  r6.xy = r5.zw * r2.ww;
  r6.zw = ddx_coarse(r5.xy);
  r7.xy = ddy_coarse(r5.xy);
  r3.w = 2 + r3.w;
  r7.zw = float2(0,0);
  r4.w = 1;
  r8.xyz = float3(1,1,0);
  while (true) {
    r8.w = (int)r8.z;
    r8.w = cmp(r8.w >= r3.w);
    if (r8.w != 0) break;
    r9.xy = v3.xy * cb3[19].xx + r7.zw;
    r8.w = t4.SampleGrad(s2_s, r9.xy, r6.z, r7.x).z;
    r9.x = cmp(r4.w < r8.w);
    if (r9.x != 0) {
      r9.x = r8.x + -r8.y;
      r9.y = r8.w + -r4.w;
      r9.x = r9.x + r9.y;
      r9.x = r9.y / r9.x;
      r9.xy = -r9.xx * r6.xy + r7.zw;
      r7.zw = r9.xy;
      break;
    }
    r9.x = r4.w + -r2.w;
    r7.zw = r5.zw * r2.ww + r7.zw;
    r8.z = (int)r8.z + 1;
    r8.x = r4.w;
    r8.y = r8.w;
    r4.w = r9.x;
  }
  r5.zw = v3.xy * cb3[19].xx + r7.zw;
  r2.w = cb3[20].x + cb0[143].y;
  r6.xy = t5.SampleBias(s3_s, r5.zw, r2.w).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[20].yyy * r7.xyz + r6.xyz;
  r7.xyz = r4.xyz / cb3[21].xxx;
  r8.xy = t6.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r8.xy;
  r8.xy = t6.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r8.xy;
  r8.xy = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r8.xzw = r8.xxx * r10.xyz + r9.xyz;
  r9.xy = t6.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r2.w;
  r9.xyz = r9.xyz + -r8.xzw;
  r8.xyz = r8.yyy * r9.xyz + r8.xzw;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb3[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb3[21].www * r6.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb3[22].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb3[22].www;
  r10.xyz = t7.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t7.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t7.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r10.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb3[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r9.xxx + r9.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb3[23].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r9.xxx;
  r9.xzw = cb3[23].zzz * r10.xyz + r9.xxx;
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
  r2.w = cb3[25].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb3[25].z + cb3[26].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r10.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb3[23].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r2.w = t4.SampleBias(s2_s, r5.xy, cb0[143].y).w;
  r3.w = r2.w * -2 + 1;
  r2.w = cb3[26].z * r3.w + r2.w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[26].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb3[27].x * r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xyz = max(r4.xyz, r2.www);
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
  r8.xyz = t8.SampleBias(s5_s, r5.zw, cb0[143].y).xyz;
  r9.xyz = t4.SampleBias(s2_s, r5.zw, cb0[143].y).xyz;
  r0.x = -1 + r9.z;
  r0.x = cb3[27].w * r0.x + 1;
  r10.xyz = r8.xyz * r0.xxx;
  r0.z = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = -r8.xyz * r0.xxx + r0.zzz;
  r8.xyz = cb3[28].xxx * r8.xyz + r10.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r10.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[27].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r8.xyz = r8.xyz * r12.xxx + r10.xyz;
  r8.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = cb3[5].xyz * r8.xyz;
  r11.xyzw = cmp(abs(r6.xyyz) < abs(r6.zzxx));
  r0.x = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r0.xz = cmp(abs(r6.zx) < abs(r6.yy));
  r0.x = r0.x ? r11.w : 0;
  r12.xyz = r0.zzz ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r0.xxx ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r13.x = dot(abs(r6.zxy), icb[r11.x+0].xyz);
  r13.y = dot(abs(r6.zxy), icb[r12.x+0].xyz);
  r0.xz = float2(-0.577300012,-0.577300012) + r13.xy;
  r0.xz = saturate(float2(2.36574411,2.36574411) * r0.xz);
  r3.w = cmp((int)r11.z < (int)r11.y);
  r5.zw = r3.ww ? r11.zy : r11.yz;
  r3.w = cmp((int)r12.z < (int)r12.y);
  r9.zw = r3.ww ? r12.zy : r12.yz;
  r11.xyz = ddx_coarse(r7.xyz);
  r12.xyz = ddy_coarse(r7.xyz);
  r13.x = dot(r7.xyz, icb[r5.z+0].xyz);
  r13.y = dot(r7.xyz, icb[r5.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r5.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r5.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r5.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r5.w+0].xyz);
  r16.xyz = t9.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r17.x = dot(r7.xyz, icb[r9.z+0].xyz);
  r17.y = dot(r7.xyz, icb[r9.w+0].xyz);
  r7.x = dot(r11.xyz, icb[r9.z+0].xyz);
  r7.y = dot(r11.xyz, icb[r9.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r9.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r9.w+0].xyz);
  r12.xyz = t9.SampleGrad(s0_s, r17.xy, r7.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz * r0.zzz;
  r12.xyz = r16.xyz * r0.xxx + r12.xyz;
  r3.w = r0.x + r0.z;
  r12.xyz = r12.xyz / r3.www;
  r4.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r16.xyz = r4.www + -r12.xyz;
  r12.xyz = cb3[28].www * r16.xyz + r12.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb3[28].z, r18.x, r19.x);
  r16.xyz = r18.xxx * r16.xyz;
  r12.xyz = r12.xyz * r19.xxx + r16.xyz;
  r12.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = cb3[7].xyz * r12.xyz;
  r4.w = dot(r16.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = saturate(cb3[29].x * r4.w);
  r5.z = 1 + -r4.w;
  r5.z = r5.z + r5.z;
  r18.xyz = -r5.zzz * cb3[10].xyz + float3(1,1,1);
  r5.z = r4.w + r4.w;
  r19.xyz = cb3[9].xyz * r5.zzz;
  r4.w = cmp(r4.w >= 0.5);
  r18.xyz = r4.www ? r18.xyz : r19.xyz;
  r19.xyz = cb3[9].xyz + -r18.xyz;
  r18.xyz = cb3[29].yyy * r19.xyz + r18.xyz;
  r19.xyz = -cb0[67].xyz + r3.xyz;
  r4.w = dot(r19.xyz, r19.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb3[29].z;
  r5.z = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[29].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.z ? 0 : r4.w;
  r12.xyz = -r12.xyz * cb3[7].xyz + r18.xyz;
  r12.xyz = r12.xyz * r4.www;
  r12.xyz = cb3[30].xxx * r12.xyz + r16.xyz;
  r8.xyz = -r8.xyz * cb3[5].xyz + r12.xyz;
  r8.xyz = r4.xxx * r8.xyz + r10.xyz;
  r5.zw = cb3[30].yy * v3.xy;
  r10.xyz = t10.SampleBias(s6_s, r5.zw, cb0[143].y).xyz;
  r0.w = cb3[30].z * r0.w;
  r4.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[30].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r4.w ? 0 : r0.w;
  r10.xyz = r10.xyz + -r8.xyz;
  r8.xyz = r0.www * r10.xyz + r8.xyz;
  r0.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = -cb2[5].xyz / r0.www;
  r0.w = dot(r10.yzx, r6.xyz);
  r0.w = 1 + r0.w;
  r12.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r12.xyz, r12.xyz);
  r4.w = sqrt(r4.w);
  r12.xyz = r12.xyz / r4.www;
  r4.w = saturate(dot(-r12.xyz, r10.xyz));
  r5.z = 1 + -cb1[1].x;
  r4.w = saturate(r5.z + r4.w);
  r0.w = r4.w * r0.w;
  r2.x = dot(r6.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb1[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb1[0].w;
  r2.y = r2.y * r2.z + cb1[0].w;
  r2.z = cmp(r2.y >= cb1[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.y * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r0.y = -r0.y * r2.w + 1;
  r2.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r2.z ? 0 : r0.y;
  r0.y = r2.y * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.w = r0.w * r0.y;
  r2.yzw = cb2[4].xyz * r0.www;
  r0.w = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = -cb2[8].xyz / r0.www;
  r0.w = dot(r10.yzx, r6.xyz);
  r0.w = 1 + r0.w;
  r4.w = saturate(dot(-r12.xyz, r10.xyz));
  r4.w = saturate(r4.w + r5.z);
  r0.w = r4.w * r0.w;
  r0.y = r0.w * r0.y;
  r10.xyz = cb2[9].xyz * r0.yyy;
  r10.xyz = cb2[1].yyy * r10.xyz;
  r2.yzw = r2.yzw * cb2[1].xxx + r10.xyz;
  r2.yzw = r8.xyz * r2.yzw;
  r0.y = cmp(cb0[31].w < 1);
  r0.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r0.w = r1.z + r0.w;
  r0.y = r0.y ? r1.w : r0.w;
  r0.y = r0.y / cb3[31].x;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[31].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb3[31].z * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.w ? 1 : r0.y;
  r1.zw = r5.xy / cb3[32].yy;
  r1.zw = cb3[32].zw + r1.zw;
  r10.xyz = t11.SampleBias(s7_s, r1.zw, cb0[143].y).xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb3[32].x, r16.x, r18.x);
  r12.xyz = r16.xxx * r12.xyz;
  r10.xyz = r10.xyz * r18.xxx + r12.xyz;
  r10.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = cb3[12].xyz * r10.xyz;
  r0.w = t11.SampleBias(s7_s, r5.xy, cb0[143].y).w;
  r5.xyzw = mad((int4)v5.xxyy, int4(36,36,15,15), int4(18,20,4,6));
  r12.x = t0[r5.x].val[0/4];
  r12.y = t0[r5.x].val[0/4+1];
  r12.z = t0[r5.x].val[0/4+2];
  r1.z = r12.x + r12.y;
  r1.z = r1.z + r12.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb2[2].x * r1.z;
  r1.z = cb3[33].y * r1.z;
  r7.zw = v3.zw + -v3.xy;
  r7.zw = cb3[34].zz * r7.zw + v3.xy;
  r7.zw = cb3[34].ww * r7.zw;
  r1.zw = r1.zz * cb3[34].xy + r7.zw;
  r1.z = t12.SampleBias(s8_s, r1.zw, cb0[143].y).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[35].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb3[35].y * r1.z;
  r1.w = cb0[142].z * cb3[33].x + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb3[35].w + cb3[35].z;
  r1.w = max(cb3[36].y, r1.w);
  r1.w = min(cb3[36].x, r1.w);
  r1.w = cb3[36].z * r1.w;
  r1.w = cb2[3].y * r1.w;
  r1.z = r1.w * r1.z;
  r0.w = r1.z * r0.w;
  r10.xyz = r10.xyz * r0.www;
  r10.xyz = r10.xyz * r0.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r10.xyz * r4.yzw;
  r2.yzw = cb1[2].xyz * r2.yzw + r4.yzw;
  r4.yzw = cb3[15].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb3[15].xyz + cb3[16].xyz;
  r2.yzw = cb3[36].www * r2.yzw + r4.yzw;
  r0.y = saturate(v2.x + v2.x);
  r4.yzw = cb3[18].xyz * r8.xyz + -r8.xyz;
  r4.yzw = r0.yyy * r4.yzw + r8.xyz;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.yzw);
  r0.y = -cb3[37].x * v2.x + r9.x;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[37].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r10.y = saturate(cb3[37].z + r0.y);
  r10.x = cb3[37].w + r9.y;
  r0.yw = t13.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r1.zw = t13.SampleGrad(s0_s, r17.xy, r7.xx, r11.xx).xy;
  r1.zw = r1.zw * r0.zz;
  r0.xy = r0.yw * r0.xx + r1.zw;
  r0.xy = r0.xy / r3.ww;
  r0.x = -cb3[37].x * v2.x + r0.x;
  r7.y = saturate(cb3[38].x + r0.x);
  r7.x = cb3[38].y + r0.y;
  r0.xy = r7.xy + -r10.xy;
  r0.xy = saturate(r4.xx * r0.xy + r10.xy);
  r0.z = cb3[38].z * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[38].w * r0.z;
  r0.w = saturate(cb3[39].y + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb3[39].z * r0.z);
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = cb3[39].w * r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[40].x * r0.w;
  r0.w = exp2(r0.w);
  r4.xyz = min(float3(1,1,1), r4.yzw);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  o2.z = r0.y * cb0[139].y + cb0[139].x;
  o1.w = t0[r5.y].val[4/4];
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
  r2.x = r1.w * 0.00392156886 + r9.w;
  r2.x = -0.00196078443 + r2.x;
  r10.x = t1[r5.z].val[0/4];
  r10.y = t1[r5.z].val[0/4+1];
  r10.z = t1[r5.z].val[0/4+2];
  r10.w = t1[r5.z].val[0/4+3];
  r5.x = t1[r5.w].val[0/4];
  r5.y = t1[r5.w].val[0/4+1];
  r5.z = t1[r5.w].val[0/4+2];
  r5.w = t1[r5.w].val[0/4+3];
  r2.x = r2.x * r10.w + r5.w;
  r9.xyz = r9.xyz * r9.xyz;
  r5.xyz = r9.xyz * r10.xyz + r5.xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
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
  r1.x = r2.x * r1.x;
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
  r2.xyz = max(float3(0,0,0), r2.yzw);
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
  o2.w = 0.75686276;
  o2.xy = r0.xz;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
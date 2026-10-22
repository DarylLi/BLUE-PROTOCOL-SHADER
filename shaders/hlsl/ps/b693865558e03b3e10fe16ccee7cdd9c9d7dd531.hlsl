// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[31];
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
  float4 cb0[188];
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
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v6.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyzw = cb3[16].xxww * v3.xyxy;
  r0.w = cb3[16].y + cb0[143].y;
  r5.xy = t5.SampleBias(s2_s, r4.xy, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[16].zzz * r6.xyz + r5.xyz;
  r1.w = 1 + r5.z;
  r2.w = (int)v5.x * 36;
  r6.x = t0[r2.w].val[0/4];
  r6.y = t0[r2.w].val[0/4+1];
  r6.z = t0[r2.w].val[0/4+2];
  r2.w = dot(-r6.xyz, -r6.xyz);
  r2.w = sqrt(r2.w);
  r3.w = mad((int)v5.x, 36, 1);
  r6.x = t0[r3.w].val[0/4];
  r6.y = t0[r3.w].val[0/4+1];
  r6.z = t0[r3.w].val[0/4+2];
  r3.w = dot(-r6.xyz, -r6.xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r3.w = mad((int)v5.x, 36, 2);
  r6.x = t0[r3.w].val[0/4];
  r6.y = t0[r3.w].val[0/4+1];
  r6.z = t0[r3.w].val[0/4+2];
  r3.w = dot(-r6.xyz, -r6.xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r2.w = 0.333333343 * r2.w;
  r4.zw = r4.zw * r2.ww;
  r4.zw = t6.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[17].xxx * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r0.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = r5.xyw * r0.www + -r6.xyz;
  r7.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r1.w = saturate(r0.w / cb3[17].y);
  r1.w = 1 + -r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[17].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.w = max(cb3[17].w, r1.w);
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r1.www * r6.xyz + r5.xyz;
  r6.xyz = r3.xyz / cb3[18].zzz;
  r4.zw = t7.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.y = v1.y * r1.w;
  r7.xz = -r4.zw;
  r4.zw = t7.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t7.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
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
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[18].www * r7.xyz + r8.xyz;
  r7.xyz = cb3[19].yyy * r5.xyz + r7.xyz;
  r4.zw = cmp(float2(0,0) >= v2.yz);
  r8.xy = log2(v2.yz);
  r8.xy = cb3[19].zz * r8.xy;
  r8.xy = exp2(r8.xy);
  r4.zw = r4.zw ? float2(0,0) : r8.xy;
  r3.xyz = r3.xyz / cb3[20].yyy;
  r1.w = t8.Sample(s0_s, r3.xz).x;
  r2.w = t8.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r1.w;
  r1.w = r3.z * r2.w + r1.w;
  r2.w = t8.Sample(s0_s, r3.xy).x;
  r2.w = r2.w + -r1.w;
  r1.w = r3.w * r2.w + r1.w;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb3[20].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r3.xy = r1.ww * r4.zw + r4.zw;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb3[20].ww * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r4.zw;
  r8.xyz = float3(0,0,1) + r5.xyz;
  r9.xyz = r8.yyy * r0.zxy;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r2.w = dot(r8.xyz, cb3[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r1.w + -r1.w;
  r1.w = cb3[22].w * r2.w + r1.w;
  r1.w = saturate(r1.w * cb3[23].x + cb3[23].w);
  r3.xy = cb3[21].xx * r3.xy + r4.zw;
  r1.w = saturate(-r3.y + r1.w);
  r1.w = saturate(r3.x + r1.w);
  r3.xyz = t9.SampleBias(s5_s, r4.xy, cb0[143].y).xyw;
  r2.w = r3.z * -2 + 1;
  r2.w = cb3[24].x * r2.w + r3.z;
  r3.z = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[24].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb3[24].z * r2.w);
  r2.w = r3.z ? 0 : r2.w;
  r1.w = max(r2.w, r1.w);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r2.www * r0.xyz;
  r3.z = dot(-cb2[5].xyz, -cb2[5].xyz);
  r3.z = sqrt(r3.z);
  r7.xyz = -cb2[5].xyz / r3.zzz;
  r3.z = dot(r7.yzx, r5.xyz);
  r3.z = 1 + r3.z;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
  r4.z = 1 + -cb1[1].x;
  r3.w = saturate(r4.z + r3.w);
  r3.z = r3.z * r3.w;
  r1.x = dot(r5.zxy, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb1[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb1[0].w;
  r1.y = r1.y * r1.z + cb1[0].w;
  r1.z = cmp(r1.y >= cb1[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.y * r2.w + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.y * r2.w + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb1[0].z * r1.y;
  r1.z = r3.z * r1.y;
  r7.xyz = cb2[4].xyz * r1.zzz;
  r1.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r1.z = sqrt(r1.z);
  r9.xyz = -cb2[8].xyz / r1.zzz;
  r1.z = dot(r9.yzx, r5.xyz);
  r1.z = 1 + r1.z;
  r3.z = saturate(dot(-r8.xyz, r9.xyz));
  r3.z = saturate(r3.z + r4.z);
  r1.z = r3.z * r1.z;
  r1.y = r1.z * r1.y;
  r8.xyz = cb2[9].xyz * r1.yyy;
  r8.xyz = cb2[1].yyy * r8.xyz;
  r7.xyz = r7.xyz * cb2[1].xxx + r8.xyz;
  r7.xyz = cb1[2].xyz * r7.xyz;
  r8.xyz = cb3[5].xyz * r7.xyz;
  r7.xyz = -r7.xyz * cb3[5].xyz + cb3[6].xyz;
  r7.xyz = cb3[24].www * r7.xyz + r8.xyz;
  r4.xyz = t10.SampleBias(s6_s, r4.xy, cb0[143].y).xyz;
  r1.y = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy + -r4.xyz;
  r4.xyz = cb3[25].zzz * r8.xyz + r4.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r8.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[25].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r4.xyz = r4.xyz * r10.xxx + r8.xyz;
  r4.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = cb3[8].xyz * r4.xyz;
  r9.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r1.y = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r1.yz = cmp(abs(r5.zx) < abs(r5.yy));
  r1.y = r1.y ? r9.w : 0;
  r10.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r1.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.zxy), icb[r9.x+0].xyz);
  r11.y = dot(abs(r5.zxy), icb[r10.x+0].xyz);
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
  r15.xyz = t11.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r6.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r6.xyz, icb[r9.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t11.SampleGrad(s0_s, r16.xy, r6.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r1.zzz;
  r9.xyz = r15.xyz * r1.yyy + r9.xyz;
  r3.z = r1.y + r1.z;
  r9.xyz = r9.xyz / r3.zzz;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r9.xyz;
  r9.xyz = cb3[26].yyy * r11.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb3[26].x, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb3[10].xyz * r9.xyz;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb3[26].z * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r15.xyz = -r4.www * cb3[13].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r17.xyz = cb3[12].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r15.xyz = r3.www ? r15.xyz : r17.xyz;
  r17.xyz = cb3[12].xyz + -r15.xyz;
  r15.xyz = cb3[26].www * r17.xyz + r15.xyz;
  r0.w = r0.w / cb3[27].x;
  r3.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[27].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r3.w ? 0 : r0.w;
  r9.xyz = -r9.xyz * cb3[10].xyz + r15.xyz;
  r9.xyz = r9.xyz * r0.www;
  r9.xyz = cb3[27].zzz * r9.xyz + r11.xyz;
  r4.xyz = -r4.xyz * cb3[8].xyz + r9.xyz;
  r4.xyz = r1.www * r4.xyz + r8.xyz;
  r0.w = saturate(v2.x + v2.x);
  r8.xyz = cb3[15].xyz * r4.xyz + -r4.xyz;
  r4.xyz = r0.www * r8.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = -cb3[27].w * v2.x + r3.x;
  r3.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[28].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r3.x ? 0 : r0.w;
  r8.y = saturate(cb3[28].y + r0.w);
  r8.x = cb3[28].z + r3.y;
  r3.xy = t12.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r6.xy = t12.SampleGrad(s0_s, r16.xy, r6.xy, r10.xy).xy;
  r6.xy = r6.xy * r1.zz;
  r1.yz = r3.xy * r1.yy + r6.xy;
  r1.yz = r1.yz / r3.zz;
  r0.w = -cb3[27].w * v2.x + r1.y;
  r3.y = saturate(cb3[28].w + r0.w);
  r3.x = cb3[29].x + r1.z;
  r1.yz = r3.xy + -r8.xy;
  r1.yz = saturate(r1.ww * r1.yz + r8.xy);
  r0.w = cb3[29].y * r1.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[29].z * r0.w;
  r1.x = saturate(cb3[30].x + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[30].y * r0.w);
  r3.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r4.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r4.x].val[4/4];
  r1.x = 0.0799999982 * r0.w;
  r6.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r1.xzw = r1.yyy * r6.xyz + r1.xxx;
  r6.xyz = -r3.xyz * r1.yyy + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r1.xzw = r1.xzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r1.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.www ? r8.xyz : r6.xyz;
  r1.xzw = r3.www ? float3(0,0,0) : r1.xzw;
  r3.w = dot(r1.xzw, float3(0.300000012,0.589999974,0.109999999));
  r4.x = r3.w * 2.04040003 + -0.332399994;
  r4.x = r3.w * -4.79510021 + r4.x;
  r3.w = r3.w * 2.75519991 + r4.x;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t3.Sample(s1_s, r8.zw).xyzw;
  r4.x = r8.w * 0.00392156886 + r9.w;
  r4.x = -0.00196078443 + r4.x;
  r10.x = t1[r4.y].val[0/4];
  r10.y = t1[r4.y].val[0/4+1];
  r10.z = t1[r4.y].val[0/4+2];
  r10.w = t1[r4.y].val[0/4+3];
  r11.x = t1[r4.z].val[0/4];
  r11.y = t1[r4.z].val[0/4+1];
  r11.z = t1[r4.z].val[0/4+2];
  r11.w = t1[r4.z].val[0/4+3];
  r4.x = r4.x * r10.w + r11.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r11.xyz;
  r4.x = exp2(r4.x);
  r4.x = -0.0185813606 + r4.x;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r4.y = mad((int)w5.x, 15, 7);
  r11.x = t1[r4.y].val[0/4];
  r11.y = t1[r4.y].val[0/4+1];
  r11.z = t1[r4.y].val[0/4+2];
  r11.w = t1[r4.y].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r5.w = 1;
  r4.y = dot(r8.xyzw, r5.xyzw);
  r4.y = max(0, r4.y);
  r4.x = r4.x * r4.y;
  r4.xyz = r4.xxx * r9.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r8.xyzw = t4.Sample(s1_s, v4.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r4.w = dot(r8.xyz, r8.xyz);
    r4.w = rsqrt(r4.w);
    r8.xyz = r8.xyz * r4.www;
    r4.w = -r8.w * r8.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r2.www + -r8.xyz;
    r10.xyz = r4.www * r0.xyz + r8.xyz;
    r0.x = saturate(dot(r8.yzx, r5.xyz));
    r0.y = 1 + -r0.x;
    r9.y = r4.w * r0.y + r0.x;
  } else {
    r10.xyz = r5.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r8.xyzw, r10.xyzw);
  r8.x = t2[1].val[0/4];
  r8.y = t2[1].val[0/4+1];
  r8.z = t2[1].val[0/4+2];
  r8.w = t2[1].val[0/4+3];
  r0.y = dot(r8.xyzw, r10.xyzw);
  r8.x = t2[2].val[0/4];
  r8.y = t2[2].val[0/4+1];
  r8.z = t2[2].val[0/4+2];
  r8.w = t2[2].val[0/4+3];
  r0.z = dot(r8.xyzw, r10.xyzw);
  r8.xyzw = r10.xyzz * r10.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r8.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r8.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r8.xyzw);
  r2.w = r10.y * r10.y;
  r2.w = r10.x * r10.x + -r2.w;
  r8.x = t2[6].val[0/4];
  r8.y = t2[6].val[0/4+1];
  r8.z = t2[6].val[0/4+2];
  r0.xyz = r11.xyz + r0.xyz;
  r0.xyz = r8.xyz * r2.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.w = r9.x * r9.y;
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r4.xyz * cb0[157].xyz + r0.xyz;
  r2.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r4.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.xyz = r4.xyz * r0.xyz;
  r1.xzw = r1.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r7.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r2.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r1.xzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r1.xzw = frac(r1.xzw);
  r1.xzw = r1.xzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xzw = r1.xzw * r1.xzz;
  r1.x = dot(r1.xzw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.z = r2.w * r3.w;
  r1.z = r1.z * cb0[135].y + 0.00390625;
  r1.z = log2(r1.z);
  r1.z = r1.z * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.z;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r1.y;
  o2.w = 0.75686276;
  o2.y = r0.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
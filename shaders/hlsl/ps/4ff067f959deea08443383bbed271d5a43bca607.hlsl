// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float3 v3 : TEXCOORD9,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v3.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyz = r3.xyz / cb4[8].zzz;
  r5.xy = t6.SampleBias(s3_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t6.SampleBias(s3_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.x = v1.x * r0.w;
  r7.yz = -r5.xy;
  r5.xy = min(float2(1,1), abs(v1.xz));
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t6.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r0.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = r3.xyz / cb4[9].yyy;
  r5.zw = t6.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t6.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t6.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r5.zw;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.yyy * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w / cb4[9].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[9].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb4[10].xxx * r8.xyz + r7.xyz;
  r8.xyz = r3.xyz / cb4[10].www;
  r5.zw = t7.SampleBias(s4_s, r8.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.zw;
  r5.zw = t7.SampleBias(s4_s, r8.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r5.zw;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.xxx * r10.xyz + r9.xyz;
  r5.zw = t7.SampleBias(s4_s, r8.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r5.zw;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.yyy * r10.xyz + r9.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = r9.xyz / r2.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r3.xyz = r3.xyz / cb4[11].zzz;
  r5.zw = t7.SampleBias(s4_s, r3.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.zw;
  r5.zw = t7.SampleBias(s4_s, r3.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r9.xyz;
  r5.xzw = r5.xxx * r11.xyz + r9.xyz;
  r9.xy = t7.SampleBias(s4_s, r3.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r2.w;
  r9.xyz = r9.xyz + -r5.xzw;
  r5.xyz = r5.yyy * r9.xyz + r5.xzw;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = r5.xyz / r2.www;
  r9.x = dot(v0.xyz, r5.xyz);
  r9.y = dot(r0.xyz, r5.xyz);
  r9.z = dot(v1.xyz, r5.xyz);
  r0.w = r0.w / cb4[11].w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[12].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r5.xyz = r9.xyz + -r10.xyz;
  r5.xyz = r0.www * r5.xyz + r10.xyz;
  r9.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[12].yyy * r9.xyz + r5.xyz;
  r2.w = v1.z * 0.5 + 0.5;
  r2.w = saturate(r2.w * cb4[12].z + cb4[13].y);
  r5.xyz = r5.xyz + -r7.xyz;
  r5.xyz = r2.www * r5.xyz + r7.xyz;
  r7.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r9.xyz = r7.yyy * r0.xyz;
  r7.xyw = r7.xxx * v0.xyz + r9.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyw = r7.xyz * r2.www;
  r3.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb3[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r7.xyw);
  r3.w = 1 + r3.w;
  r10.xyz = cb0[67].xyz + -r2.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r4.w = saturate(dot(-r10.xyz, r9.xyz));
  r5.w = 1 + -cb2[1].x;
  r4.w = saturate(r5.w + r4.w);
  r3.w = r4.w * r3.w;
  r1.x = dot(r7.xyw, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb2[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb2[0].w;
  r1.y = r1.y * r1.z + cb2[0].w;
  r1.z = cmp(r1.y >= cb2[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r7.z * r2.w + 1;
  r4.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r4.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r7.z * r2.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb2[0].z * r1.y;
  r1.z = r3.w * r1.y;
  r9.xyz = cb3[4].xyz * r1.zzz;
  r1.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r1.z = sqrt(r1.z);
  r11.xyz = -cb3[8].xyz / r1.zzz;
  r1.z = dot(r11.xyz, r7.xyw);
  r1.z = 1 + r1.z;
  r2.w = saturate(dot(-r10.xyz, r11.xyz));
  r2.w = saturate(r2.w + r5.w);
  r1.z = r2.w * r1.z;
  r1.y = r1.z * r1.y;
  r10.xyz = cb3[9].xyz * r1.yyy;
  r10.xyz = cb3[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb3[1].xxx + r10.xyz;
  r9.xyz = cb2[2].xyz * r9.xyz;
  r10.xyz = cb4[2].xyz * r9.xyz;
  r9.xyz = -r9.xyz * cb4[2].xyz + cb4[3].xyz;
  r9.xyz = cb4[13].zzz * r9.xyz + r10.xyz;
  r10.xyz = r2.xyz / cb4[8].zzz;
  r11.xyzw = cmp(abs(r7.ywwx) < abs(r7.xxyy));
  r1.y = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r1.yz = cmp(abs(r7.xy) < abs(r7.ww));
  r1.y = r1.y ? r11.w : 0;
  r12.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r1.yyy ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r13.x = dot(abs(r7.xyw), icb[r11.x+0].xyz);
  r13.y = dot(abs(r7.xyw), icb[r12.x+0].xyz);
  r1.yz = float2(-0.577300012,-0.577300012) + r13.xy;
  r1.yz = saturate(float2(2.36574411,2.36574411) * r1.yz);
  r2.w = cmp((int)r11.z < (int)r11.y);
  r11.xy = r2.ww ? r11.zy : r11.yz;
  r2.w = cmp((int)r12.z < (int)r12.y);
  r11.zw = r2.ww ? r12.zy : r12.yz;
  r12.xyz = ddx_coarse(r10.xyz);
  r13.xyz = ddy_coarse(r10.xyz);
  r14.x = dot(r10.xyz, icb[r11.x+0].xyz);
  r14.y = dot(r10.xyz, icb[r11.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r14.xyz = t8.SampleGrad(s0_s, r14.xy, r15.xyx, r16.xyx).xyz;
  r15.x = dot(r10.xyz, icb[r11.z+0].xyz);
  r15.y = dot(r10.xyz, icb[r11.w+0].xyz);
  r10.x = dot(r12.xyz, icb[r11.z+0].xyz);
  r10.y = dot(r12.xyz, icb[r11.w+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.z+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.w+0].xyz);
  r10.xyz = t8.SampleGrad(s0_s, r15.xy, r10.xyx, r12.xyx).xyz;
  r10.xyz = r10.xyz * r1.zzz;
  r10.xyz = r14.xyz * r1.yyy + r10.xyz;
  r2.w = r1.y + r1.z;
  r10.xyz = r10.xyz / r2.www;
  r3.w = dot(r2.xy, float2(17,0.100000001));
  r3.w = sin(r3.w);
  r3.w = 10000 * r3.w;
  r4.w = 0.100000001 * r2.z;
  r5.w = r2.y * 13 + r2.x;
  r5.w = sin(r5.w);
  r5.w = 0.100000001 + abs(r5.w);
  r3.w = r5.w * r3.w;
  r3.w = frac(r3.w);
  r4.w = r3.w * 17 + r4.w;
  r4.w = sin(r4.w);
  r4.w = 10000 * r4.w;
  r3.w = r2.z * 13 + r3.w;
  r3.w = sin(r3.w);
  r3.w = 0.100000001 + abs(r3.w);
  r3.w = r4.w * r3.w;
  r3.w = frac(r3.w);
  r12.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r4.w = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r4.www ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r13.xy = cmp(abs(v1.xy) < abs(v1.zz));
  r4.w = r12.w ? r13.x : 0;
  r13.xy = r13.yy ? float2(3,1) : float2(2,3);
  r13.xy = r4.ww ? float2(1,2) : r13.xy;
  r13.xy = (int2)-r12.zy + (int2)r13.xy;
  r13.xy = max(int2(0,0), (int2)r13.xy);
  r13.xy = min(int2(2,2), (int2)r13.xy);
  r4.w = dot(abs(v1.xyz), icb[r12.x+0].xyz);
  r4.w = -0.577300012 + r4.w;
  r4.w = saturate(2.36574411 * r4.w);
  r5.w = cmp((int)r12.z < (int)r12.y);
  r12.xy = r5.ww ? r12.zy : r12.yz;
  r5.w = cmp((int)r13.x < (int)r13.y);
  r12.zw = r5.ww ? r13.xy : r13.yx;
  r3.w = cmp(r3.w < r4.w);
  r12.xy = r3.ww ? r12.xy : r12.zw;
  r13.xyz = ddx_coarse(r6.xyz);
  r14.xyz = ddy_coarse(r6.xyz);
  r15.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r15.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r14.xyz = t8.SampleGrad(s0_s, r15.xy, r6.xyx, r13.xyx).xyz;
  r14.xyz = r14.xyz + -r10.xyz;
  r10.xyz = r1.www * r14.xyz + r10.xyz;
  r10.xyz = cb4[5].xyz * r10.xyz;
  r14.xyz = r2.xyz / cb4[10].www;
  r16.xyz = ddx_coarse(r14.xyz);
  r17.xyz = ddy_coarse(r14.xyz);
  r18.x = dot(r14.xyz, icb[r11.x+0].xyz);
  r18.y = dot(r14.xyz, icb[r11.y+0].xyz);
  r19.x = dot(r16.xyz, icb[r11.x+0].xyz);
  r19.y = dot(r16.xyz, icb[r11.y+0].xyz);
  r20.x = dot(r17.xyz, icb[r11.x+0].xyz);
  r20.y = dot(r17.xyz, icb[r11.y+0].xyz);
  r18.xyz = t9.SampleGrad(s0_s, r18.xy, r19.xyx, r20.xyx).xyz;
  r19.x = dot(r14.xyz, icb[r11.z+0].xyz);
  r19.y = dot(r14.xyz, icb[r11.w+0].xyz);
  r14.x = dot(r16.xyz, icb[r11.z+0].xyz);
  r14.y = dot(r16.xyz, icb[r11.w+0].xyz);
  r16.x = dot(r17.xyz, icb[r11.z+0].xyz);
  r16.y = dot(r17.xyz, icb[r11.w+0].xyz);
  r14.xyz = t9.SampleGrad(s0_s, r19.xy, r14.xyx, r16.xyx).xyz;
  r14.xyz = r14.xyz * r1.zzz;
  r14.xyz = r18.xyz * r1.yyy + r14.xyz;
  r14.xyz = r14.xyz / r2.www;
  r16.xyz = ddx_coarse(r3.xyz);
  r17.xyz = ddy_coarse(r3.xyz);
  r18.x = dot(r3.xyz, icb[r12.x+0].xyz);
  r18.y = dot(r3.xyz, icb[r12.y+0].xyz);
  r3.x = dot(r16.xyz, icb[r12.x+0].xyz);
  r3.y = dot(r16.xyz, icb[r12.y+0].xyz);
  r16.x = dot(r17.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r17.xyz, icb[r12.y+0].xyz);
  r12.xyz = t9.SampleGrad(s0_s, r18.xy, r3.xyx, r16.xyx).xyz;
  r12.xyz = r12.xyz + -r14.xyz;
  r12.xyz = r0.www * r12.xyz + r14.xyz;
  r5.xyz = float3(0,0,1) + r5.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.z / r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb4[12].z + cb4[13].y);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r5.xyz = r12.xyz * cb4[7].xyz + -r10.xyz;
  r5.xyz = r0.xxx * r5.xyz + r10.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r10.xyz = ddx_coarse(r4.xyz);
  r12.xyz = ddy_coarse(r4.xyz);
  r14.x = dot(r4.xyz, icb[r11.x+0].xyz);
  r14.y = dot(r4.xyz, icb[r11.y+0].xyz);
  r17.x = dot(r10.xyz, icb[r11.x+0].xyz);
  r17.y = dot(r10.xyz, icb[r11.y+0].xyz);
  r19.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r19.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r0.yz = t10.SampleGrad(s0_s, r14.xy, r17.yx, r19.yx).xy;
  r14.x = dot(r4.xyz, icb[r11.z+0].xyz);
  r14.y = dot(r4.xyz, icb[r11.w+0].xyz);
  r4.x = dot(r10.xyz, icb[r11.z+0].xyz);
  r4.y = dot(r10.xyz, icb[r11.w+0].xyz);
  r10.x = dot(r12.xyz, icb[r11.z+0].xyz);
  r10.y = dot(r12.xyz, icb[r11.w+0].xyz);
  r3.zw = t10.SampleGrad(s0_s, r14.xy, r4.xx, r10.xx).xy;
  r3.zw = r3.zw * r1.zz;
  r0.yz = r0.yz * r1.yy + r3.zw;
  r0.yz = r0.yz / r2.ww;
  r3.zw = t10.SampleGrad(s0_s, r15.xy, r6.xx, r13.xx).xy;
  r3.zw = r3.zw + -r0.yz;
  r0.yz = r1.ww * r3.zw + r0.yz;
  r4.xyz = ddx_coarse(r8.xyz);
  r6.xyz = ddy_coarse(r8.xyz);
  r10.x = dot(r8.xyz, icb[r11.x+0].xyz);
  r10.y = dot(r8.xyz, icb[r11.y+0].xyz);
  r12.x = dot(r4.xyz, icb[r11.x+0].xyz);
  r12.y = dot(r4.xyz, icb[r11.y+0].xyz);
  r13.x = dot(r6.xyz, icb[r11.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r11.y+0].xyz);
  r3.zw = t11.SampleGrad(s0_s, r10.xy, r12.xx, r13.xx).xy;
  r10.x = dot(r8.xyz, icb[r11.z+0].xyz);
  r10.y = dot(r8.xyz, icb[r11.w+0].xyz);
  r8.x = dot(r4.xyz, icb[r11.z+0].xyz);
  r8.y = dot(r4.xyz, icb[r11.w+0].xyz);
  r4.x = dot(r6.xyz, icb[r11.z+0].xyz);
  r4.y = dot(r6.xyz, icb[r11.w+0].xyz);
  r4.xy = t11.SampleGrad(s0_s, r10.xy, r8.xy, r4.xy).xy;
  r1.zw = r4.xy * r1.zz;
  r1.yz = r3.zw * r1.yy + r1.zw;
  r1.yz = r1.yz / r2.ww;
  r3.xy = t11.SampleGrad(s0_s, r18.xy, r3.xy, r16.xy).xy;
  r3.xy = r3.xy + -r1.yz;
  r1.yz = r0.ww * r3.xy + r1.yz;
  r0.w = r1.z + -r0.z;
  r3.x = saturate(r0.x * r0.w + r0.z);
  r0.z = cb4[13].w * r1.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb4[14].x * r0.z;
  r0.w = saturate(cb4[14].z + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r3.y = saturate(cb4[14].w * r0.z);
  r0.y = cb4[15].x + r0.y;
  r0.z = cb4[15].y + r1.y;
  r0.z = r0.z + -r0.y;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yzw = min(float3(1,1,1), r5.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = mad((int)v2.x, 36, 20);
  r1.x = cmp(0 < cb0[215].x);
  r1.y = t2[r0.x].val[4/4];
  r1.z = t2[r0.x].val[4/4+1];
  r0.x = cmp(0 < r1.z);
  if (r0.x != 0) {
    r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.x = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r0.xxx + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.x = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r1.z = mad((int)v2.x, 36, 18);
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r1.x ? r1.z : 0;
    r0.x = r1.z ? cb1[5].x : 1;
  }
  r1.z = 0.0799999982 * r3.y;
  r4.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r4.xyz = r3.xxx * r4.xyz + r1.zzz;
  r5.xyz = -r0.yzw * r3.xxx + r0.yzw;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r6.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.zzz ? r6.xyz : r5.xyz;
  r4.xyz = r1.zzz ? float3(0,0,0) : r4.xyz;
  r1.z = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r1.z * 2.04040003 + -0.332399994;
  r1.w = r1.z * -4.79510021 + r1.w;
  r1.z = r1.z * 2.75519991 + r1.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  if (r1.x != 0) {
    r6.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r6.xyz = max(cb1[2].xyz, r6.xyz);
    r6.xyz = min(cb1[3].xyz, r6.xyz);
    r8.xyzw = t3.Sample(s2_s, r6.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r6.xyz).xyzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.ywx;
    r12.xw = r8.xw;
    r12.y = r10.x;
    r12.z = r6.x;
    r11.x = 0.886227548;
    r12.x = dot(r12.xyzw, r11.xyzw);
    r13.x = r8.y;
    r13.yw = r10.yw;
    r13.z = r6.y;
    r12.y = dot(r13.xyzw, r11.xyzw);
    r6.x = r8.z;
    r6.y = r10.z;
    r12.z = dot(r6.xyzw, r11.xyzw);
    r6.xyz = max(float3(0,0,0), r12.xyz);
    r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r6.xyz = cb0[157].xyz * r6.xyz;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r8.xyz = r0.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.yzw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = max(float3(0,0,0), r9.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r3.zw = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r8.x = t2[r3.z].val[0/4];
    r8.y = t2[r3.z].val[0/4+1];
    r8.z = t2[r3.z].val[0/4+2];
    r8.xyz = -r8.xyz + r2.xyz;
    r9.x = t2[r3.w].val[0/4];
    r9.y = t2[r3.w].val[0/4+1];
    r9.z = t2[r3.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.w = (int)r8.y | (int)r8.x;
    r1.w = (int)r8.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.www ? r2.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r1.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r7.xyw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r1.z;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
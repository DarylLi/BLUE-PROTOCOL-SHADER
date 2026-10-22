// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[17];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xyz = r3.xyz / cb5[6].zzz;
  r5.xy = t4.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t4.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
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
  r5.zw = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
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
  r6.xyz = r3.xyz / cb5[7].yyy;
  r5.zw = t4.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t4.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r5.xzw = r5.xxx * r9.xyz + r8.xyz;
  r8.xy = t4.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r5.xzw;
  r5.xyz = r5.yyy * r8.xyz + r5.xzw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r8.x = dot(v0.xyz, r5.xyz);
  r8.y = dot(r0.xyz, r5.xyz);
  r8.z = dot(v1.xyz, r5.xyz);
  r5.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w / cb5[7].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[7].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r5.xyz = r8.xyz + -r7.xyz;
  r5.xyz = r1.www * r5.xyz + r7.xyz;
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[8].xxx * r7.xyz + r5.xyz;
  r7.xy = cb5[8].yy * v2.xy;
  r2.w = cb5[8].z + cb0[143].y;
  r7.xy = t5.SampleBias(s3_s, r7.xy, r2.w).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r7.xy, r7.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r7.z = sqrt(r2.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb5[8].www * r8.xyz + r7.xyz;
  r5.xyz = cb5[9].xxx * r7.xyz + r5.xyz;
  r8.xyz = r3.xyz / cb5[10].xxx;
  r9.xyzw = cb5[1].xyxy + r8.xzyz;
  r2.w = t6.SampleBias(s4_s, r9.xy, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r8.xz, cb0[143].y).w;
  r9.x = -r3.w + r2.w;
  r10.xyzw = cb5[2].xyxy + r8.xzyz;
  r2.w = t6.SampleBias(s4_s, r10.xy, cb0[143].y).w;
  r9.y = r2.w + -r3.w;
  r11.xy = float2(-1.20000005,-1.20000005) * r9.xy;
  r11.z = 0;
  r11.xyz = float3(0,0,1) + -r11.xyz;
  r2.w = t6.SampleBias(s4_s, r9.zw, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r8.yz, cb0[143].y).w;
  r9.x = -r3.w + r2.w;
  r2.w = t6.SampleBias(s4_s, r10.zw, cb0[143].y).w;
  r9.y = r2.w + -r3.w;
  r9.xy = float2(-1.20000005,-1.20000005) * r9.xy;
  r9.zw = float2(0,1);
  r9.xyz = float3(0,0,1) + -r9.xyz;
  r2.w = cb5[10].z + -cb5[10].w;
  r10.xy = saturate(abs(v1.xz) * r2.ww + cb5[10].ww);
  r9.xyz = r9.xyz + -r11.xyz;
  r9.xyz = r10.xxx * r9.xyz + r11.xyz;
  r10.zw = cb5[1].xy + r8.xy;
  r2.w = t6.SampleBias(s4_s, r10.zw, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r8.xy, cb0[143].y).w;
  r11.x = -r3.w + r2.w;
  r10.zw = cb5[2].xy + r8.xy;
  r2.w = t6.SampleBias(s4_s, r10.zw, cb0[143].y).w;
  r11.y = r2.w + -r3.w;
  r11.xy = float2(-1.20000005,-1.20000005) * r11.xy;
  r11.z = 0;
  r11.xyz = float3(0,0,1) + -r11.xyz;
  r11.xyz = r11.xyz + -r9.xyz;
  r9.xyz = r10.yyy * r11.xyz + r9.xyz;
  r3.xyz = r3.xyz / cb5[11].zzz;
  r11.xyzw = cb5[1].xyxy + r3.xzyz;
  r2.w = t6.SampleBias(s4_s, r11.xy, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r3.xz, cb0[143].y).w;
  r11.x = -r3.w + r2.w;
  r12.xyzw = cb5[2].xyxy + r3.xzyz;
  r2.w = t6.SampleBias(s4_s, r12.xy, cb0[143].y).w;
  r11.y = r2.w + -r3.w;
  r13.xy = float2(-1.20000005,-1.20000005) * r11.xy;
  r13.z = 0;
  r13.xyz = float3(0,0,1) + -r13.xyz;
  r2.w = t6.SampleBias(s4_s, r11.zw, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r3.yz, cb0[143].y).w;
  r11.x = -r3.w + r2.w;
  r2.w = t6.SampleBias(s4_s, r12.zw, cb0[143].y).w;
  r11.y = r2.w + -r3.w;
  r11.xy = float2(-1.20000005,-1.20000005) * r11.xy;
  r11.z = 0;
  r11.xyz = float3(0,0,1) + -r11.xyz;
  r11.xyz = r11.xyz + -r13.xyz;
  r10.xzw = r10.xxx * r11.xyz + r13.xyz;
  r11.xy = cb5[1].xy + r3.xy;
  r2.w = t6.SampleBias(s4_s, r11.xy, cb0[143].y).w;
  r3.w = t6.SampleBias(s4_s, r3.xy, cb0[143].y).w;
  r11.x = -r3.w + r2.w;
  r11.zw = cb5[2].xy + r3.xy;
  r2.w = t6.SampleBias(s4_s, r11.zw, cb0[143].y).w;
  r11.y = r2.w + -r3.w;
  r11.xy = float2(-1.20000005,-1.20000005) * r11.xy;
  r11.z = 0;
  r11.xyz = float3(0,0,1) + -r11.xyz;
  r11.xyz = r11.xyz + -r10.xzw;
  r10.xyz = r10.yyy * r11.xyz + r10.xzw;
  r0.w = r0.w / cb5[11].w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[12].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r0.www * r10.xyz + r9.xyz;
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r9.xyz = cb5[12].yyy * r10.xyz + r9.xyz;
  r7.xyz = cb5[12].zzz * r7.xyz + r9.xyz;
  r2.w = v1.z * 0.5 + 0.5;
  r2.w = saturate(r2.w * cb5[12].w + cb5[13].z);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r2.www * r7.xyz + r5.xyz;
  r7.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r9.xyz = r7.yyy * r0.yzx;
  r7.xyw = r7.xxx * v0.yzx + r9.xyz;
  r7.xyz = r7.zzz * v1.yzx + r7.xyw;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r9.xyz = r7.xyz * r2.www;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r10.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r10.yzx, r9.xyz);
  r3.w = 1 + r3.w;
  r11.xyz = cb0[67].xyz + -r2.xyz;
  r4.w = dot(r11.xyz, r11.xyz);
  r4.w = sqrt(r4.w);
  r11.xyz = r11.xyz / r4.www;
  r4.w = saturate(dot(-r11.xyz, r10.xyz));
  r5.w = 1 + -cb3[1].x;
  r4.w = saturate(r5.w + r4.w);
  r3.w = r4.w * r3.w;
  r1.x = dot(r9.zxy, r1.xyz);
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
  r1.z = r7.y * r2.w + 1;
  r4.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r4.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r7.y * r2.w + 1;
  r4.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r4.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb3[0].z * r1.y;
  r1.z = r3.w * r1.y;
  r10.xyz = cb4[4].xyz * r1.zzz;
  r1.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r1.z = sqrt(r1.z);
  r12.xyz = -cb4[8].xyz / r1.zzz;
  r1.z = dot(r12.yzx, r9.xyz);
  r1.z = 1 + r1.z;
  r3.w = saturate(dot(-r11.xyz, r12.xyz));
  r3.w = saturate(r3.w + r5.w);
  r1.z = r3.w * r1.z;
  r1.y = r1.z * r1.y;
  r11.xyz = cb4[9].xyz * r1.yyy;
  r11.xyz = cb4[1].yyy * r11.xyz;
  r10.xyz = r10.xyz * cb4[1].xxx + r11.xyz;
  r10.xyz = cb3[2].xyz * r10.xyz;
  r11.xyz = cb5[4].xyz * r10.xyz;
  r10.xyz = -r10.xyz * cb5[4].xyz + cb5[5].xyz;
  r10.xyz = cb5[13].www * r10.xyz + r11.xyz;
  r11.xyzw = cmp(abs(r9.xyyz) < abs(r9.zzxx));
  r1.y = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r1.yz = cmp(abs(r9.zx) < abs(r9.yy));
  r1.y = r1.y ? r11.w : 0;
  r12.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r1.yyy ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r13.x = dot(abs(r9.zxy), icb[r11.x+0].xyz);
  r13.y = dot(abs(r9.zxy), icb[r12.x+0].xyz);
  r1.yz = float2(-0.577300012,-0.577300012) + r13.xy;
  r1.yz = saturate(float2(2.36574411,2.36574411) * r1.yz);
  r3.w = cmp((int)r11.z < (int)r11.y);
  r11.xy = r3.ww ? r11.zy : r11.yz;
  r3.w = cmp((int)r12.z < (int)r12.y);
  r11.zw = r3.ww ? r12.zy : r12.yz;
  r12.xyz = ddx_coarse(r4.xyz);
  r13.xyz = ddy_coarse(r4.xyz);
  r14.x = dot(r4.xyz, icb[r11.x+0].xyz);
  r14.y = dot(r4.xyz, icb[r11.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r14.xyzw = t7.SampleGrad(s0_s, r14.xy, r15.xyxx, r16.xyxx).xyzw;
  r15.x = dot(r4.xyz, icb[r11.z+0].xyz);
  r15.y = dot(r4.xyz, icb[r11.w+0].xyz);
  r4.x = dot(r12.xyz, icb[r11.z+0].xyz);
  r4.y = dot(r12.xyz, icb[r11.w+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.z+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.w+0].xyz);
  r4.xyzw = t7.SampleGrad(s0_s, r15.xy, r4.xyxx, r12.xyxx).xyzw;
  r4.xyzw = r4.xyzw * r1.zzzz;
  r4.xyzw = r14.xyzw * r1.yyyy + r4.xyzw;
  r3.w = r1.y + r1.z;
  r4.xyzw = r4.xyzw / r3.wwww;
  r5.w = dot(r2.xy, float2(17,0.100000001));
  r5.w = sin(r5.w);
  r5.w = 10000 * r5.w;
  r6.w = 0.100000001 * r2.z;
  r7.w = r2.y * 13 + r2.x;
  r7.w = sin(r7.w);
  r7.w = 0.100000001 + abs(r7.w);
  r5.w = r7.w * r5.w;
  r5.w = frac(r5.w);
  r6.w = r5.w * 17 + r6.w;
  r6.w = sin(r6.w);
  r6.w = 10000 * r6.w;
  r5.w = r2.z * 13 + r5.w;
  r5.w = sin(r5.w);
  r5.w = 0.100000001 + abs(r5.w);
  r5.w = r6.w * r5.w;
  r5.w = frac(r5.w);
  r12.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r6.w = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r6.www ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r13.xy = cmp(abs(v1.xy) < abs(v1.zz));
  r6.w = r12.w ? r13.x : 0;
  r13.xy = r13.yy ? float2(3,1) : float2(2,3);
  r13.xy = r6.ww ? float2(1,2) : r13.xy;
  r13.xy = (int2)-r12.zy + (int2)r13.xy;
  r13.xy = max(int2(0,0), (int2)r13.xy);
  r13.xy = min(int2(2,2), (int2)r13.xy);
  r6.w = dot(abs(v1.xyz), icb[r12.x+0].xyz);
  r6.w = -0.577300012 + r6.w;
  r6.w = saturate(2.36574411 * r6.w);
  r7.w = cmp((int)r12.z < (int)r12.y);
  r12.xy = r7.ww ? r12.zy : r12.yz;
  r7.w = cmp((int)r13.x < (int)r13.y);
  r12.zw = r7.ww ? r13.xy : r13.yx;
  r5.w = cmp(r5.w < r6.w);
  r12.xy = r5.ww ? r12.xy : r12.zw;
  r13.xyz = ddx_coarse(r6.xyz);
  r14.xyz = ddy_coarse(r6.xyz);
  r15.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r15.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r6.xyzw = t7.SampleGrad(s0_s, r15.xy, r6.xyxx, r13.xyxx).xyzw;
  r6.xyzw = r6.xyzw + -r4.xyzw;
  r4.xyzw = r1.wwww * r6.xyzw + r4.xyzw;
  r6.xyz = ddx_coarse(r8.xyz);
  r13.xyz = ddy_coarse(r8.xyz);
  r14.x = dot(r8.xyz, icb[r11.x+0].xyz);
  r14.y = dot(r8.xyz, icb[r11.y+0].xyz);
  r15.x = dot(r6.xyz, icb[r11.x+0].xyz);
  r15.y = dot(r6.xyz, icb[r11.y+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r14.xyz = t6.SampleGrad(s0_s, r14.xy, r15.xyx, r16.xyx).xyz;
  r11.x = dot(r8.xyz, icb[r11.z+0].xyz);
  r11.y = dot(r8.xyz, icb[r11.w+0].xyz);
  r8.x = dot(r6.xyz, icb[r11.z+0].xyz);
  r8.y = dot(r6.xyz, icb[r11.w+0].xyz);
  r6.x = dot(r13.xyz, icb[r11.z+0].xyz);
  r6.y = dot(r13.xyz, icb[r11.w+0].xyz);
  r6.xyz = t6.SampleGrad(s0_s, r11.xy, r8.xyx, r6.xyx).xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r1.yzw = r14.xyz * r1.yyy + r6.xyz;
  r1.yzw = r1.yzw / r3.www;
  r6.xyz = ddx_coarse(r3.xyz);
  r8.xyz = ddy_coarse(r3.xyz);
  r11.x = dot(r3.xyz, icb[r12.x+0].xyz);
  r11.y = dot(r3.xyz, icb[r12.y+0].xyz);
  r3.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r3.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r8.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r8.xyz, icb[r12.y+0].xyz);
  r3.xyz = t6.SampleGrad(s0_s, r11.xy, r3.xyx, r6.xyx).xyz;
  r3.xyz = r3.xyz + -r1.yzw;
  r1.yzw = r0.www * r3.xyz + r1.yzw;
  r0.w = cmp(0 >= r4.w);
  r3.x = log2(r4.w);
  r3.x = cb5[14].x * r3.x;
  r3.x = exp2(r3.x);
  r3.x = cb5[14].y * r3.x;
  r0.w = r0.w ? 0 : r3.x;
  r3.xyz = float3(0,0,1) + r5.xyz;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.z / r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r0.y = r0.w * r0.x;
  r0.y = saturate(r0.y * cb5[12].w + cb5[13].z);
  r0.x = saturate(r0.x * cb5[12].w + cb5[13].z);
  r0.x = r0.y + r0.x;
  r0.x = min(1, r0.x);
  r0.yzw = r1.yzw + -r4.xyz;
  r0.yzw = r0.xxx * r0.yzw + r4.xyz;
  r0.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.yzw);
  r3.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.y = saturate(cb5[14].z + r3.x);
  r1.y = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.z = saturate(cb5[14].w + r1.y);
  r1.z = r1.z + -r3.y;
  r4.x = saturate(r0.x * r1.z + r3.y);
  r1.x = cb5[15].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.959999979 + 0.0399999991;
  r1.x = cb5[15].y * r1.x;
  r1.z = saturate(cb5[15].w + v1.z);
  r1.x = r1.z * r1.x;
  r1.x = max(0, r1.x);
  r1.x = min(0.5, r1.x);
  r4.y = saturate(cb5[16].x * r1.x);
  r1.x = saturate(cb5[16].y + r3.x);
  r1.y = saturate(cb5[16].z + r1.y);
  r1.y = r1.y + -r1.x;
  r0.x = saturate(r0.x * r1.y + r1.x);
  r0.yzw = min(float3(1,1,1), r0.yzw);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r1.xyzw = t3.Sample(s1_s, v3.zw).xyzw;
  r3.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r1.xyzw = saturate(r1.xyzw * cb2[1].xyzw + r3.xyzw);
  r1.xyzw = r1.xyzw * r1.xyzw;
  o5.xyzw = cb2[0].xyzw * r1.xyzw;
  r0.x = 0.0799999982 * r4.y;
  r1.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r1.xyz = r4.xxx * r1.xyz + r0.xxx;
  r3.xyz = -r0.yzw * r4.xxx + r0.yzw;
  r3.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r5.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r3.xyz = r0.xxx ? r5.xyz : r3.xyz;
  r1.xyz = r0.xxx ? float3(0,0,0) : r1.xyz;
  r0.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.x * 2.04040003 + -0.332399994;
  r1.w = r0.x * -4.79510021 + r1.w;
  r0.x = r0.x * 2.75519991 + r1.w;
  r0.x = 1.33200002 + r0.x;
  r0.x = max(1, r0.x);
  r4.zw = float2(1,0.5) * v3.xy;
  r5.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t1.Sample(s1_s, r4.zw).xyzw;
  r5.xyzw = t1.Sample(s1_s, r5.xy).xyzw;
  r1.w = r5.w * 0.00392156886 + r6.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r6.xyz = r6.xyz * r6.xyz;
  r6.xyz = r6.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r5.xyzw = r5.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r3.w = dot(r5.xyzw, r9.xyzw);
  r3.w = max(0, r3.w);
  r1.w = r3.w * r1.w;
  r5.xyz = r1.www * r6.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r6.xyzw = t2.Sample(s1_s, v3.xy).xyzw;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.x = r6.w * r6.w;
    r1.w = dot(r6.xyz, r6.xyz);
    r1.w = rsqrt(r1.w);
    r6.xyz = r6.xyz * r1.www;
    r1.w = -r6.w * r6.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r7.xyz = r7.zxy * r2.www + -r6.xyz;
    r7.xyz = r1.www * r7.xyz + r6.xyz;
    r2.w = saturate(dot(r6.yzx, r9.xyz));
    r3.w = 1 + -r2.w;
    r8.y = r1.w * r3.w + r2.w;
  } else {
    r7.xyz = r9.zxy;
    r8.xy = float2(1,1);
  }
  r6.x = t0[0].val[0/4];
  r6.y = t0[0].val[0/4+1];
  r6.z = t0[0].val[0/4+2];
  r6.w = t0[0].val[0/4+3];
  r7.w = 1;
  r6.x = dot(r6.xyzw, r7.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r6.y = dot(r11.xyzw, r7.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r6.z = dot(r11.xyzw, r7.xyzw);
  r11.xyzw = r7.xyzz * r7.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r1.w = r7.y * r7.y;
  r1.w = r7.x * r7.x + -r1.w;
  r7.x = t0[6].val[0/4];
  r7.y = t0[6].val[0/4+1];
  r7.z = t0[6].val[0/4+2];
  r6.xyz = r12.xyz + r6.xyz;
  r6.xyz = r7.xyz * r1.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r1.w = r8.x * r8.y;
  r6.xyz = r6.xyz * r1.www;
  r5.xyz = r5.xyz * cb0[157].xyz + r6.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r3.xyz;
  r6.xyz = r0.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r0.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r0.yzw * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r3.xyz = max(float3(0,0,0), r10.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r2.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r5.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r9.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r0.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
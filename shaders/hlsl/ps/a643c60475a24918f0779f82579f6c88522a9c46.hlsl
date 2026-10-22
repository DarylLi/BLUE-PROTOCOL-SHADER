// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[50];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z / cb3[24].z;
  r0.y = 0.5 + r0.x;
  r0.xy = frac(r0.xy);
  r0.z = r0.y + r0.y;
  r0.w = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.w = -1 + r0.w;
  r0.w = r0.w + r0.w;
  r0.zw = min(float2(1,1), r0.zw);
  r0.w = 1 + -r0.w;
  r0.z = r0.w * r0.z;
  r1.xy = mad((int2)v4.xx, int2(36,36), int2(4,18));
  r1.y = t0[r1.y].val[0/4];
  r1.z = t0[r1.y].val[0/4+1];
  r1.w = t0[r1.y].val[0/4+2];
  r0.w = t0[r1.x].val[12/4];
  r0.w = cb1[141].w * r0.w;
  r1.x = r1.y + r1.z;
  r1.x = r1.x + r1.w;
  r1.x = frac(r1.x);
  r1.x = cb1[142].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.y = cb3[23].z * r1.x;
  r1.x = cb3[20].x * r1.x;
  r1.z = cb3[22].z * v3.y + cb3[22].w;
  r2.y = cb3[23].x * r1.z;
  r2.xz = v3.xx;
  r2.xy = cb3[2].xy * r2.xy;
  r1.yw = r1.yy * cb3[22].xy + r2.xy;
  r1.yw = t1.SampleBias(s0_s, r1.yw, cb1[143].y).xy;
  r1.yw = r1.yw * float2(2,2) + float2(-1,-1);
  r1.yw = float2(0.200000003,0.200000003) * r1.yw;
  r3.xy = r2.xy / cb3[24].yy;
  r2.xy = r2.xy / cb3[23].yy;
  r2.xy = r1.xx * cb3[22].xy + r2.xy;
  r3.xy = r1.xx * cb3[22].xy + r3.xy;
  r3.zw = r1.yw * r0.yy + r3.xy;
  r0.xy = r1.yw * r0.xx + r3.xy;
  r0.xy = t1.SampleBias(s0_s, r0.xy, cb1[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t1.SampleBias(s0_s, r3.zw, cb1[143].y).xy;
  r3.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.xyz = -r4.xyz + r3.xyz;
  r0.xyz = r0.zzz * r3.xyz + r4.xyz;
  r3.xyz = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb3[24].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r1.x = cb1[142].z / cb3[23].w;
  r3.x = 0.5 + r1.x;
  r1.x = frac(r1.x);
  r3.yz = r1.yw * r1.xx + r2.xy;
  r3.yz = t1.SampleBias(s0_s, r3.yz, cb1[143].y).xy;
  r4.xy = r3.yz * float2(2,2) + float2(-1,-1);
  r1.x = frac(r3.x);
  r1.yw = r1.yw * r1.xx + r2.xy;
  r1.x = r1.x + r1.x;
  r1.yw = t1.SampleBias(s0_s, r1.yw, cb1[143].y).xy;
  r3.xy = r1.yw * float2(2,2) + float2(-1,-1);
  r1.y = dot(r3.xy, r3.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = dot(r4.xy, r4.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r4.z = sqrt(r1.y);
  r3.xyz = -r4.xyz + r3.xyz;
  r1.y = max(1, r1.x);
  r1.x = min(1, r1.x);
  r1.x = r1.x + r1.x;
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.xy = min(float2(1,1), r1.xy);
  r1.y = 1 + -r1.y;
  r1.x = r1.y * r1.x;
  r1.xyw = r1.xxx * r3.xyz + r4.xyz;
  r3.xyz = r1.xyw + r1.xyw;
  r1.xyw = -r1.xyw * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb3[24].xxx * r1.xyw + r3.xyz;
  r3.w = 1 + r3.z;
  r1.x = dot(r3.xyw, r0.xyz);
  r1.y = 1 + r3.z;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r3.xyw * r1.xxx + -r0.xyz;
  r1.xyw = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[25].xxx * r1.xyw + r0.xyz;
  r1.x = 0.5 + cb1[142].z;
  r1.x = frac(r1.x);
  r1.y = r1.x + r1.x;
  r1.w = max(1, r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.y + r1.y;
  r1.w = -1 + r1.w;
  r1.w = r1.w + r1.w;
  r1.yw = min(float2(1,1), r1.yw);
  r1.w = 1 + -r1.w;
  r1.y = r1.w * r1.y;
  r3.xyzw = cb1[45].xyzw * v7.yyyy;
  r3.xyzw = v7.xxxx * cb1[44].xyzw + r3.xyzw;
  r3.xyzw = v7.zzzz * cb1[46].xyzw + r3.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb1[70].xyz + r3.xyz;
  r1.w = -cb3[25].y + r4.z;
  r1.w = abs(r1.w) / cb3[25].z;
  r1.w = -r1.w * cb3[25].w + 1;
  r2.x = -cb3[23].x * r1.z + 1;
  r2.w = -r2.x * r1.w + 1;
  r1.w = cb2[2].x * cb1[142].z;
  r2.x = cb3[26].z * r1.w;
  r1.w = cb3[43].y * r1.w;
  r2.xy = cb3[5].xy * r2.xx;
  r5.xy = r2.zw * cb3[3].xy + r2.xy;
  r2.zw = r2.zw * cb3[4].xy + float2(0.200000003,0.200000003);
  r2.xy = r2.xy * float2(0.699999988,0.699999988) + r2.zw;
  r2.z = t2.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r6.w = r2.z * 2 + -1;
  r6.yz = float2(1,0);
  r2.zw = cb3[27].zz * r6.zw;
  r5.zw = r2.zw * r1.xx + r5.xy;
  r6.zw = r2.zw * r1.xx + r2.xy;
  r6.zw = t2.SampleBias(s1_s, r6.zw, cb1[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r5.zw = t2.SampleBias(s1_s, r5.zw, cb1[143].y).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.x = dot(r8.xy, r8.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r8.z = sqrt(r1.x);
  r1.x = frac(cb1[142].z);
  r5.xy = r2.zw * r1.xx + r5.xy;
  r2.xy = r2.zw * r1.xx + r2.xy;
  r2.xy = t2.SampleBias(s1_s, r2.xy, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r5.xy = t2.SampleBias(s1_s, r5.xy, cb1[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r5.xy, r5.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r5.z = sqrt(r1.x);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r1.yyy * r8.xyz + r5.xyz;
  r8.xyz = r5.xyz + r5.xyz;
  r5.yzw = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r5.yzw = cb3[24].www * r5.yzw + r8.xyz;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r1.x = dot(r7.xy, r7.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r7.z = sqrt(r1.x);
  r1.x = dot(r2.xy, r2.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r2.z = sqrt(r1.x);
  r7.xyz = r7.xyz + -r2.xyz;
  r2.xyz = r1.yyy * r7.xyz + r2.xyz;
  r7.xyz = r2.xyz + r2.xyz;
  r2.xzw = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r1.x = r5.x + -r2.y;
  r2.xyz = cb3[24].xxx * r2.xzw + r7.xyz;
  r2.w = 1 + r2.z;
  r1.y = dot(r2.xyw, r5.yzw);
  r2.z = 1 + r2.z;
  r5.xyz = r2.zzz * r5.yzw;
  r2.xyz = r2.xyw * r1.yyy + -r5.xyz;
  r5.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb3[25].xxx * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r0.xyz;
  r1.y = -0.5 + r1.x;
  r1.x = r1.x * cb3[28].x + v3.x;
  r1.x = r1.x * 2 + -1;
  r1.x = 1 + -abs(r1.x);
  r1.x = r1.x * cb3[48].w + -cb3[48].w;
  r1.x = saturate(cb3[49].y + r1.x);
  r1.x = cb3[49].z * r1.x;
  r1.y = dot(r1.yy, cb3[28].zz);
  r1.y = v3.y + r1.y;
  r1.y = r1.y * cb3[29].x + -cb3[29].x;
  r1.y = saturate(cb3[29].w + r1.y);
  r2.w = cb3[30].z * r1.y;
  r1.y = -cb3[30].z * r1.y + 1;
  r1.y = cb3[31].x * r1.y + r2.w;
  r0.xyz = r1.yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v0.xyz + r2.xyz;
  r0.xyz = r0.zzz * v1.xyz + r2.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r3.xyz * r0.www;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * 3 + -0.299999952);
  r0.y = cb3[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb3[33].y + cb3[33].x;
  r6.x = v7.z;
  r0.zw = v7.ww * r6.xy;
  r2.x = r0.z * cb1[65].z + -cb1[65].w;
  r2.x = 1 / r2.x;
  r0.z = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z + r2.x;
  r2.x = cmp(cb1[31].w < 1);
  r0.z = r2.x ? r0.w : r0.z;
  r0.z = 1000000 + -r0.z;
  r0.z = saturate(r0.z / cb3[33].w);
  r0.z = cb3[34].x * r0.z;
  r0.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r0.w = cb3[34].y * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.y = saturate(r0.y * r0.z);
  r0.zw = float2(1,1) + -v2.wy;
  r2.x = log2(r0.z);
  r2.y = cb3[34].z * r2.x;
  r2.x = cb3[43].x * r2.x;
  r2.x = exp2(r2.x);
  r2.y = exp2(r2.y);
  r2.xy = float2(1,1) + -r2.xy;
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[47].w * r0.w;
  r2.y = r0.z ? 1 : r2.y;
  r0.z = r0.z ? 1 : r2.x;
  r0.y = r2.y * r0.y;
  r0.y = r0.z * r0.y;
  r2.x = -cb3[46].z + r4.z;
  r2.x = r2.x / cb3[46].w;
  r2.y = cmp(r2.x >= 1);
  r2.y = r2.y ? 1 : r2.x;
  r2.x = -1 + r2.x;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = r2.x ? r2.y : 1;
  r2.y = cmp(r2.x >= 0);
  r2.y = r2.y ? r2.x : 1;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = r2.x ? r2.y : 1;
  r2.y = log2(r2.x);
  r2.x = cmp(0 >= r2.x);
  r2.y = cb3[47].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = 1 + -r2.y;
  r2.x = r2.x ? 1 : r2.y;
  r2.x = cb3[47].y * r2.x;
  r2.yzw = r4.xyz / cb3[44].zzz;
  r3.xyz = r4.xyz / cb3[45].yyy;
  r4.xy = cb3[44].ww * r2.yz;
  r5.z = -r2.w;
  r5.xy = -r4.xy;
  r6.x = cb3[43].w * r1.w;
  r6.y = cb3[44].x * r1.w;
  r6.xyzw = r6.xyxy + r5.xzyz;
  r4.z = r5.z;
  r4.xyzw = r1.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r2.yz = t4.SampleBias(s3_s, r3.yz, cb1[143].y).xy;
  r3.xy = t4.SampleBias(s3_s, r3.xz, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.xy = cb3[45].zz * -r3.xy + r3.xy;
  r2.yz = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = cb3[45].zz * -r2.yz + r2.yz;
  r2.yz = r2.yz + -r3.xy;
  r1.w = cb3[46].x + -cb3[46].y;
  r1.w = saturate(abs(v1.x) * r1.w + cb3[46].y);
  r2.yz = r1.ww * r2.yz + r3.xy;
  r3.xyzw = r6.xyzw + r2.yzyz;
  r4.xyzw = r4.xyzw + r2.yzyz;
  r2.y = t3.SampleLevel(s2_s, r3.zw, r2.x).y;
  r2.z = t3.SampleLevel(s2_s, r3.xy, r2.x).y;
  r2.x = 0.75 * r2.x;
  r2.y = r2.y + -r2.z;
  r2.y = r1.w * r2.y + r2.z;
  r2.z = t3.SampleLevel(s2_s, r4.zw, r2.x).y;
  r2.x = t3.SampleLevel(s2_s, r4.xy, r2.x).y;
  r2.z = r2.z + -r2.x;
  r1.w = r1.w * r2.z + r2.x;
  r1.w = r2.y + r1.w;
  r2.x = log2(r1.w);
  r1.w = cmp(0 >= r1.w);
  r2.x = cb3[47].z * r2.x;
  r2.x = exp2(r2.x);
  r0.w = r2.x * r0.w;
  r0.w = r1.w ? 0 : r0.w;
  r0.w = -r0.z * r0.w + 1;
  r0.z = r0.w / r0.z;
  r0.z = cb3[48].x + -r0.z;
  r0.z = 1 + r0.z;
  r0.w = v1.z * 0.5 + 0.5;
  r0.w = saturate(r0.w * cb3[34].w + cb3[35].z);
  r0.z = saturate(r0.z * cb3[48].y + r0.w);
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r1.x + -r0.y;
  r0.x = r1.y * r0.x + r0.y;
  r0.y = 1 + -r1.z;
  r0.z = saturate(cb3[42].x * r1.z);
  r0.y = saturate(cb3[42].w * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = cb0[1].x + v5.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[49];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z / cb3[21].z;
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
  r1.y = cb3[17].x * r1.x;
  r2.x = v3.x;
  r1.z = cb3[19].z * v3.y + cb3[19].w;
  r2.y = cb3[20].x * r1.z;
  r2.xy = cb3[2].xy * r2.xy;
  r2.zw = r2.xy / cb3[21].yy;
  r2.zw = r1.yy * cb3[19].xy + r2.zw;
  r1.w = cb3[20].z * r1.x;
  r1.x = cb3[32].w * r1.x;
  r3.xy = r1.xx * cb3[19].xy + r2.xy;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r1.x = t3.SampleBias(s2_s, r3.xy, cb1[143].y).x;
  r3.xy = r1.ww * cb3[19].xy + r2.xy;
  r2.xy = r2.xy / cb3[20].yy;
  r1.yw = r1.yy * cb3[19].xy + r2.xy;
  r2.xy = t1.SampleBias(s0_s, r3.xy, cb1[143].y).xy;
  r3.x = t3.SampleBias(s2_s, r3.xy, cb1[143].y).x;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.yz = r2.xy * r0.yy + r2.zw;
  r0.xy = r2.xy * r0.xx + r2.zw;
  r0.xy = t1.SampleBias(s0_s, r0.xy, cb1[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t1.SampleBias(s0_s, r3.yz, cb1[143].y).xy;
  r5.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.yzw = r5.xyz + -r4.xyz;
  r0.xyz = r0.zzz * r3.yzw + r4.xyz;
  r3.yzw = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb3[21].www * r0.xyz + r3.yzw;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r2.z = cb1[142].z / cb3[20].w;
  r2.w = 0.5 + r2.z;
  r2.z = frac(r2.z);
  r3.yz = r2.xy * r2.zz + r1.yw;
  r3.yz = t1.SampleBias(s0_s, r3.yz, cb1[143].y).xy;
  r4.xy = r3.yz * float2(2,2) + float2(-1,-1);
  r2.z = frac(r2.w);
  r1.yw = r2.xy * r2.zz + r1.yw;
  r2.x = r2.z + r2.z;
  r1.yw = t1.SampleBias(s0_s, r1.yw, cb1[143].y).xy;
  r5.xy = r1.yw * float2(2,2) + float2(-1,-1);
  r1.y = dot(r5.xy, r5.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r5.z = sqrt(r1.y);
  r1.y = dot(r4.xy, r4.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r4.z = sqrt(r1.y);
  r2.yzw = r5.xyz + -r4.xyz;
  r1.y = max(1, r2.x);
  r1.w = min(1, r2.x);
  r1.w = r1.w + r1.w;
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.yw = min(float2(1,1), r1.yw);
  r1.y = 1 + -r1.y;
  r1.y = r1.y * r1.w;
  r2.xyz = r1.yyy * r2.yzw + r4.xyz;
  r3.yzw = r2.xyz + r2.xyz;
  r2.xyz = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r2.xyz = cb3[21].xxx * r2.xyz + r3.yzw;
  r2.w = 1 + r2.z;
  r1.y = dot(r2.xyw, r0.xyz);
  r1.w = 1 + r2.z;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r2.xyw * r1.yyy + -r0.xyz;
  r2.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[22].xxx * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v0.xyz + r2.xyz;
  r0.xyz = r0.zzz * v1.xyz + r2.xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xyzw = cb1[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.yzw = -r2.xyz * r0.www;
  r2.xyz = -cb1[70].xyz + r2.xyz;
  r0.x = dot(r0.xyz, r3.yzw);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = cb3[29].w * r0.x;
  r0.x = cb3[35].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb3[35].w + cb3[35].z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[30].x * r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r4.x = v7.z;
  r4.y = 1;
  r0.zw = v7.ww * r4.xy;
  r1.y = r0.z * cb1[65].z + -cb1[65].w;
  r1.y = 1 / r1.y;
  r0.z = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z + r1.y;
  r1.y = cmp(cb1[31].w < 1);
  r0.z = r1.y ? r0.w : r0.z;
  r0.z = 1000000 + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = -r0.y * cb3[30].y + 1;
  r1.yw = r2.xy / cb3[31].yy;
  r3.yz = cb1[142].zz * cb3[30].ww + r1.yw;
  r1.yw = cb1[142].zz * cb3[31].ww + r1.yw;
  r0.w = t3.SampleBias(s2_s, r1.yw, cb1[143].y).x;
  r1.y = t3.SampleBias(s2_s, r3.yz, cb1[143].y).x;
  r0.w = r1.y * r0.w;
  r0.w = cb3[32].x * r0.w;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb3[32].y * r1.y;
  r1.y = exp2(r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r0.y = r0.y / r0.w;
  r0.y = cb3[32].z + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = 1 + -r0.y;
  r0.w = 1 + -r1.x;
  r1.x = dot(r3.xx, r1.xx);
  r1.y = 1 + -r3.x;
  r1.w = cmp(r3.x >= 0.5);
  r1.y = r1.y + r1.y;
  r0.w = -r1.y * r0.w + 1;
  r0.w = r1.w ? r0.w : r1.x;
  r1.x = cb2[2].x * cb1[142].z;
  r1.y = cb3[33].x * r1.x;
  r1.x = cb3[24].x * r1.x;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb3[33].y + cb3[33].z;
  r1.w = -r1.y + r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r0.w >= r1.y);
  r1.y = cb3[33].w + r1.y;
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r1.w ? r2.w : 1;
  r1.w = cb3[34].x * r1.w;
  r2.w = cmp(r0.w >= r1.y);
  r0.w = -r1.y + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.y = r2.w ? 0 : r1.w;
  r0.w = r0.w ? r1.y : 0;
  r0.y = r0.y / r0.w;
  r0.y = 1 + -r0.y;
  r0.w = saturate(r0.z / cb3[34].z);
  r0.z = saturate(r0.z / cb3[36].y);
  r0.z = cb3[36].z * r0.z;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb3[34].w * r1.y;
  r1.y = exp2(r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r0.y = saturate(r0.y * r0.w);
  r1.y = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = 1 / r1.y;
  r1.y = cb3[35].x * r1.y;
  r0.y = r1.y * r0.y;
  r0.y = r0.w ? 0 : r0.y;
  r0.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r0.w = cb3[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.x = saturate(r0.x * r0.z);
  r0.x = saturate(r0.y + r0.x);
  r0.yz = float2(1,1) + -v2.wy;
  r0.w = log2(r0.y);
  r1.y = cb3[37].x * r0.w;
  r0.w = cb3[23].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r1.y = exp2(r1.y);
  r1.y = 1 + -r1.y;
  r0.y = cmp(0 >= r0.y);
  r1.y = r0.y ? 1 : r1.y;
  r0.y = r0.y ? 1 : r0.w;
  r0.x = r1.y * r0.x;
  r0.x = r0.y * r0.x;
  r0.w = -cb3[27].y + r2.z;
  r0.w = r0.w / cb3[27].z;
  r1.y = cmp(r0.w >= 1);
  r1.y = r1.y ? 1 : r0.w;
  r0.w = -1 + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.y : 1;
  r1.y = cmp(r0.w >= 0);
  r1.y = r1.y ? r0.w : 1;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.y : 1;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb3[27].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = 1 + -r1.y;
  r0.w = r0.w ? 1 : r1.y;
  r0.zw = cb3[28].zx * r0.zw;
  r3.xyz = r2.xyz / cb3[25].yyy;
  r2.xyz = r2.xyz / cb3[26].xxx;
  r4.xy = cb3[25].zz * r3.xy;
  r3.z = -r3.z;
  r3.xy = -r4.xy;
  r5.xyzw = r1.xxxx * cb3[24].zwzw + r3.xzyz;
  r4.z = r3.z;
  r3.xyzw = r1.xxxx * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r1.xy = t2.SampleBias(s1_s, r2.yz, cb1[143].y).xy;
  r2.xy = t2.SampleBias(s1_s, r2.xz, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = cb3[26].yy * -r2.xy + r2.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = cb3[26].yy * -r1.xy + r1.xy;
  r1.xy = r1.xy + -r2.xy;
  r1.w = -cb3[27].x + cb3[26].w;
  r1.w = saturate(abs(v1.x) * r1.w + cb3[27].x);
  r1.xy = r1.ww * r1.xy + r2.xy;
  r2.xyzw = r5.xyzw + r1.xyxy;
  r3.xyzw = r3.xyzw + r1.xyxy;
  r1.x = t3.SampleLevel(s2_s, r2.zw, r0.w).y;
  r1.y = t3.SampleLevel(s2_s, r2.xy, r0.w).y;
  r0.w = 0.75 * r0.w;
  r1.x = r1.x + -r1.y;
  r1.x = r1.w * r1.x + r1.y;
  r1.y = t3.SampleLevel(s2_s, r3.zw, r0.w).y;
  r0.w = t3.SampleLevel(s2_s, r3.xy, r0.w).y;
  r1.y = r1.y + -r0.w;
  r0.w = r1.w * r1.y + r0.w;
  r0.w = r1.x + r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb3[28].y * r1.x;
  r1.x = exp2(r1.x);
  r0.z = r1.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.z = -r0.y * r0.z + 1;
  r0.y = r0.z / r0.y;
  r0.y = cb3[48].y + -r0.y;
  r0.y = 1 + r0.y;
  r0.z = v1.z * 0.5 + 0.5;
  r0.z = saturate(r0.z * cb3[28].w + cb3[29].z);
  r0.y = saturate(r0.y * cb3[48].z + r0.z);
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.z;
  r0.z = saturate(cb3[47].y * r1.z);
  r0.y = saturate(cb3[48].x * r0.y);
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
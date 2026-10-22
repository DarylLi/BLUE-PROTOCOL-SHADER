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
  float4 cb3[56];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
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
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z / cb3[24].z;
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
  r0.w = cb0[141].w * r0.w;
  r1.x = r1.y + r1.z;
  r1.x = r1.x + r1.w;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.y = cb3[23].z * r1.x;
  r1.x = cb3[20].x * r1.x;
  r1.z = cb3[22].z * v3.y + cb3[22].w;
  r2.y = cb3[23].x * r1.z;
  r2.xz = v3.xx;
  r2.xy = cb3[2].xy * r2.xy;
  r1.yw = r1.yy * cb3[22].xy + r2.xy;
  r1.yw = t2.SampleBias(s1_s, r1.yw, cb0[143].y).xy;
  r1.yw = r1.yw * float2(2,2) + float2(-1,-1);
  r1.yw = float2(0.200000003,0.200000003) * r1.yw;
  r3.xy = r2.xy / cb3[24].yy;
  r2.xy = r2.xy / cb3[23].yy;
  r2.xy = r1.xx * cb3[22].xy + r2.xy;
  r3.xy = r1.xx * cb3[22].xy + r3.xy;
  r3.zw = r1.yw * r0.yy + r3.xy;
  r0.xy = r1.yw * r0.xx + r3.xy;
  r0.xy = t2.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t2.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
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
  r1.x = cb0[142].z / cb3[23].w;
  r3.x = 0.5 + r1.x;
  r1.x = frac(r1.x);
  r3.yz = r1.yw * r1.xx + r2.xy;
  r3.yz = t2.SampleBias(s1_s, r3.yz, cb0[143].y).xy;
  r4.xy = r3.yz * float2(2,2) + float2(-1,-1);
  r1.x = frac(r3.x);
  r1.yw = r1.yw * r1.xx + r2.xy;
  r1.x = r1.x + r1.x;
  r1.yw = t2.SampleBias(s1_s, r1.yw, cb0[143].y).xy;
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
  r3.xyzw = cb0[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r1.xyw = r3.xyz / r3.www;
  r3.xyz = -cb0[70].xyz + r1.xyw;
  r2.x = -cb3[25].y + r3.z;
  r3.xyz = -cb0[67].xyz + r3.xyz;
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = sqrt(r2.y);
  r2.y = saturate(r2.y * 0.000104999992 + -0.0500000007);
  r2.y = saturate(r2.y * 3 + -1);
  r2.x = abs(r2.x) / cb3[25].z;
  r2.x = -r2.x * cb3[25].w + 1;
  r3.x = -cb3[23].x * r1.z + 1;
  r2.w = -r3.x * r2.x + 1;
  r2.x = cb2[2].x * cb0[142].z;
  r2.x = cb3[26].z * r2.x;
  r3.xy = cb3[5].xy * r2.xx;
  r3.zw = r2.zw * cb3[3].xy + r3.xy;
  r2.xz = r2.zw * cb3[4].xy + float2(0.200000003,0.200000003);
  r2.xz = r3.xy * float2(0.699999988,0.699999988) + r2.xz;
  r2.w = t3.SampleBias(s2_s, r2.xz, cb0[143].y).x;
  r3.y = r2.w * 2 + -1;
  r3.x = 0;
  r3.xy = cb3[27].zz * r3.xy;
  r2.w = 0.5 + cb0[142].z;
  r2.w = frac(r2.w);
  r4.xy = r3.xy * r2.ww + r3.zw;
  r4.xy = t3.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.z = sqrt(r4.w);
  r4.w = frac(cb0[142].z);
  r3.zw = r3.xy * r4.ww + r3.zw;
  r5.xy = r3.xy * r4.ww + r2.xz;
  r2.xz = r3.xy * r2.ww + r2.xz;
  r2.w = r2.w + r2.w;
  r2.xz = t3.SampleBias(s2_s, r2.xz, cb0[143].y).xy;
  r6.xy = r2.xz * float2(2,2) + float2(-1,-1);
  r2.xz = t3.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r5.xy = r2.xz * float2(2,2) + float2(-1,-1);
  r2.xz = t3.SampleBias(s2_s, r3.zw, cb0[143].y).xy;
  r3.xy = r2.xz * float2(2,2) + float2(-1,-1);
  r2.x = dot(r3.xy, r3.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r3.z = sqrt(r2.x);
  r4.xyz = r4.xyz + -r3.xyz;
  r2.x = max(1, r2.w);
  r2.z = min(1, r2.w);
  r2.z = r2.z + r2.z;
  r2.x = -1 + r2.x;
  r2.x = r2.x + r2.x;
  r2.xz = min(float2(1,1), r2.xz);
  r2.x = 1 + -r2.x;
  r2.x = r2.x * r2.z;
  r3.xyz = r2.xxx * r4.xyz + r3.xyz;
  r4.xyz = r3.xyz + r3.xyz;
  r3.yzw = -r3.xyz * float3(2,2,2) + float3(0,0,1);
  r3.yzw = cb3[24].www * r3.yzw + r4.xyz;
  r3.yzw = float3(-1,-1,1) * r3.yzw;
  r2.z = dot(r6.xy, r6.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r6.z = sqrt(r2.z);
  r2.z = dot(r5.xy, r5.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r5.z = sqrt(r2.z);
  r4.xyz = r6.xyz + -r5.xyz;
  r2.xzw = r2.xxx * r4.xyz + r5.xyz;
  r4.xyz = r2.xzw + r2.xzw;
  r5.xyz = -r2.xzw * float3(2,2,2) + float3(0,0,1);
  r2.x = r3.x + -r2.z;
  r4.xyz = cb3[24].xxx * r5.xyz + r4.xyz;
  r4.w = 1 + r4.z;
  r2.z = dot(r4.xyw, r3.yzw);
  r2.w = 1 + r4.z;
  r3.xyz = r2.www * r3.yzw;
  r3.xyz = r4.xyw * r2.zzz + -r3.xyz;
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[25].xxx * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r2.z = -0.5 + r2.x;
  r2.x = r2.x * cb3[28].x + v3.x;
  r2.x = r2.x * 2 + -1;
  r2.x = 1 + -abs(r2.x);
  r2.x = r2.x * cb3[53].x + -cb3[53].x;
  r2.x = saturate(cb3[53].z + r2.x);
  r2.z = dot(r2.zz, cb3[28].zz);
  r2.z = v3.y + r2.z;
  r2.z = r2.z * cb3[29].x + -cb3[29].x;
  r2.z = saturate(cb3[29].w + r2.z);
  r2.w = cb3[30].z * r2.z;
  r2.z = -cb3[30].z * r2.z + 1;
  r2.z = cb3[31].x * r2.z + r2.w;
  r0.xyz = r2.zzz * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r2.www * r0.xyz;
  r4.xyz = v1.zxy * v0.yzx;
  r4.xyz = v1.yzx * v0.zxy + -r4.xyz;
  r4.xyz = v1.www * r4.xyz;
  r5.xyz = r4.xyz * r3.yyy;
  r4.xyz = r4.xyz * r0.yyy;
  r4.xyz = r0.xxx * v0.xyz + r4.xyz;
  r0.xyz = r0.zzz * v1.xyz + r4.xyz;
  r3.xyw = r3.xxx * v0.xyz + r5.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.w = v7.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(-r1.xyw, -r1.xyw);
  r0.w = rsqrt(r0.w);
  r1.xyw = -r1.xyw * r0.www;
  r0.w = dot(r3.xyz, r1.xyw);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = 0.400000006 + -r0.w;
  r0.w = max(0, r0.w);
  r1.xy = -cb0[129].xy + v6.xy;
  r1.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r3.xy = v6.ww * r1.xy;
  r4.z = v6.w;
  r3.zw = v6.zw;
  r4.xyw = float3(2,-2,1);
  r5.xyzw = r4.xyzw * r3.xyzw;
  r1.x = r5.z * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.y = r5.z * cb0[65].x + cb0[65].y;
  r1.x = r1.y + r1.x;
  r1.y = cmp(cb0[31].w < 1);
  r1.x = r1.y ? r5.w : r1.x;
  r1.yw = r5.xy / r5.ww;
  r1.yw = r1.yw * cb0[66].xy + cb0[66].wz;
  r2.w = t1.SampleLevel(s0_s, r1.yw, 0).x;
  r3.x = r2.w * cb0[65].z + -cb0[65].w;
  r2.w = r2.w * cb0[65].x + cb0[65].y;
  r3.x = 1 / r3.x;
  r2.w = r3.x + r2.w;
  r1.x = r2.w + -r1.x;
  r1.x = saturate(r1.x / cb3[54].w);
  r0.w = r1.x * r0.w;
  r1.x = 1 + -r1.z;
  r1.z = saturate(cb3[51].y * r1.z);
  r1.x = saturate(cb3[52].x * r1.x);
  r1.x = r1.z * r1.x;
  r1.x = r2.x * r1.x;
  r1.z = 1 + -cb3[54].y;
  r1.z = r2.y * r1.z + cb3[54].y;
  r1.z = -cb3[19].x + r1.z;
  r1.z = r2.z * r1.z + cb3[19].x;
  r1.z = -1 + r1.z;
  r1.x = r1.x * r1.z;
  r0.w = r1.x * r0.w;
  r2.xyz = cb0[13].xyz * r0.yyy;
  r2.xyz = r0.xxx * cb0[12].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb0[14].xyz + r2.xyz;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.xy = r0.xy * r0.ww;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = -9.99999975e-006 + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.w = cb1[7].y * cb1[7].x;
  r0.z = cb1[7].x;
  r0.zw = cb1[7].zw * r0.zw;
  r0.xy = r0.zw * r0.xy;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r1.yw;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t1.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r3.w * r4.w + r0.z;
  r0.w = -0.5 * cb3[55].x;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb3[55].x);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  o0.xy = max(float2(0,0), r0.xy);
  r0.xy = min(float2(0,0), r0.xy);
  o0.zw = -r0.xy;
  return;
}
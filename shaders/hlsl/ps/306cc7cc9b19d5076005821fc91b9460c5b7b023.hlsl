// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t1.Sample(s0_s, v2.xy).xyz;
  r0.w = cmp(cb1[4].x == 0.000000);
  if (r0.w != 0) {
    r1.xyz = r0.xyz;
    r1.w = 0;
  } else {
    r1.w = cb1[4].y;
  }
  if (r0.w == 0) {
    r2.xy = cb1[4].xx / cb0[130].xy;
    r0.w = (uint)r1.w;
    r0.w = (uint)r0.w;
    r3.xyz = float3(0,0,0);
    r2.z = 0;
    while (true) {
      r2.w = (int)r2.z;
      r2.w = cmp(r2.w >= r1.w);
      if (r2.w != 0) break;
      r2.w = (uint)r2.z;
      r2.w = r2.w / r0.w;
      r2.w = frac(r2.w);
      r3.w = reversebits((uint)r2.z);
      r3.w = (int)r3.w ^ 0;
      r3.w = (uint)r3.w;
      r3.w = 2.32830644e-010 * r3.w;
      r2.w = 6.28318548 * r2.w;
      r3.w = sqrt(r3.w);
      r3.w = 1 + -r3.w;
      r3.w = sqrt(r3.w);
      sincos(r2.w, r4.x, r5.x);
      r5.x = r5.x * r3.w;
      r5.y = r4.x * r3.w;
      r4.xy = saturate(r5.xy * r2.xy + v2.xy);
      r4.xyz = t1.Sample(s0_s, r4.xy).xyz;
      r3.xyz = r4.xyz + r3.xyz;
      r2.z = (int)r2.z + 1;
    }
    r1.xyz = r3.xyz / r1.www;
  }
  r2.xy = float2(-0.5,-0.5) + v2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r1.w = cb1[4].w + -cb1[4].z;
  r0.w = -cb1[4].z + r0.w;
  r1.w = 1 / r1.w;
  r0.w = saturate(r1.w * r0.w);
  r1.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = -r1.w * r0.w + 1;
  r2.xyz = r1.xyz / r0.www;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb1[5].xxx * r2.xyz + r1.xyz;
  r0.w = dot(r1.xzy, float3(1,1,2));
  r2.x = dot(r1.xz, float2(2,-2));
  r2.y = dot(r1.xzy, float3(-1,-1,2));
  r1.xy = r2.xy / r0.ww;
  r1.z = dot(cb1[2].xzy, float3(1,1,2));
  r2.x = dot(cb1[2].xz, float2(2,-2));
  r2.y = dot(cb1[2].xzy, float3(-1,-1,2));
  r2.xy = r2.xy / r1.zz;
  r1.xy = -r2.xy + r1.xy;
  r1.xy = -cb1[5].yy + abs(r1.xy);
  r1.xy = cb1[5].zz * r1.xy;
  r1.x = saturate(max(r1.x, r1.y));
  r1.x = 1 + -r1.x;
  r1.y = log2(r1.z);
  r1.z = cb1[5].w + r1.y;
  r0.w = log2(r0.w);
  r1.z = r1.z + -r0.w;
  r1.z = saturate(cb1[6].x * r1.z);
  r1.y = -cb1[5].w + r1.y;
  r0.w = -r1.y + r0.w;
  r0.w = saturate(cb1[6].x * r0.w);
  r0.w = r1.z * r0.w;
  r0.w = -r1.x * r0.w + 1;
  r1.x = 1 / cb1[6].y;
  r1.x = -2 + r1.x;
  r1.y = 1 + -r0.w;
  r1.x = r1.x * r1.y + 1;
  r0.w = r0.w / r1.x;
  r1.x = cb1[7].y + -cb1[7].x;
  r0.w = -cb1[7].x + r0.w;
  r1.x = 1 / r1.x;
  r0.w = saturate(r1.x * r0.w);
  r1.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r1.x * r0.w;
  r1.x = t2.Sample(s1_s, v2.xy).w;
  r1.w = r1.x * r0.w;
  r2.xyz = r1.www * r0.xyz;
  r0.xyz = -r0.xyz * r1.www + cb1[3].xyz;
  r0.xyz = cb1[7].zzz * r0.xyz + r2.xyz;
  r1.w = saturate(r1.w);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xyzw = cb0[45].xyzw * v4.yyyy;
    r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
    r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
    r0.xyzw = cb0[47].xyzw + r0.xyzw;
    r0.xyz = r0.xyz / r0.www;
    r0.xyz = -cb0[70].xyz + r0.xyz;
    r2.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r0.xyz;
    r3.x = t0[r2.y].val[0/4];
    r3.y = t0[r2.y].val[0/4+1];
    r3.z = t0[r2.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xzw));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r0.x = dot(r0.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.x = 0.00200000009 * r0.x;
    r0.x = frac(r0.x);
    r0.x = cmp(0.5 < r0.x);
    r2.yzw = r0.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r1.xyzw = r0.wwww ? r2.yzwx : r1.xyzw;
    o0.w = r1.w;
  } else {
    o0.w = r1.w;
  }
  o0.xyz = cb0[135].yyy * r1.xyz;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
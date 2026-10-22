// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[65];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r1.xyz = cb1[63].xxx * cb1[50].xyz;
  r0.w = saturate(cb1[64].y + v1.z);
  r0.w = cb1[63].w * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r2.y = saturate(cb1[64].z * r0.w);
  r2.x = saturate(cb1[63].y);
  r0.w = saturate(cb1[64].w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v2.x, 36, 20);
  r3.x = t2[r0.w].val[4/4];
  r3.y = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r3.y);
  if (r0.w != 0) {
    r4.xyz = r0.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r0.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.w = t1.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r2.y;
  r1.w = r2.x * -r1.w + r1.w;
  r4.xyz = r1.www * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.xyz = r1.www ? r4.xyz : cb0[136].xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r4.xyz = r5.xyz + r4.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r2.zw = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r5.x = t2[r2.z].val[0/4];
    r5.y = t2[r2.z].val[0/4+1];
    r5.z = t2[r2.z].val[0/4+2];
    r5.xyz = -r5.xyz + r0.xyz;
    r6.x = t2[r2.w].val[0/4];
    r6.y = t2[r2.w].val[0/4+1];
    r6.z = t2[r2.w].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r0.x = dot(r0.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.x = 0.00200000009 * r0.x;
    r0.x = frac(r0.x);
    r0.x = cmp(0.5 < r0.x);
    r0.xyz = r0.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r0.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o3.w = 0.00392156886 * r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  r3.z = 0xffc10000;
  o1.xyzw = r3.zzzx;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}
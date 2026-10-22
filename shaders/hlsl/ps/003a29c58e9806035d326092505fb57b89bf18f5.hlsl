// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[65];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD4,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  nointerpolation uint w3 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[63].xxx * cb1[50].xyz;
  r0.w = saturate(cb1[64].y + v1.z);
  r0.w = cb1[63].w * r0.w;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.w = min(0.5, r0.w);
  r1.y = saturate(cb1[64].z * r0.w);
  r1.x = saturate(cb1[63].y);
  r0.w = saturate(cb1[64].w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = (int)w3.x * 15;
  r1.zw = mad((int2)v3.xy, int2(36,15), int2(20,1));
  o1.w = t0[r1.z].val[4/4];
  r2.xyzw = t2.Sample(s0_s, v2.zw).xyzw;
  r3.x = t1[r1.w].val[0/4];
  r3.y = t1[r1.w].val[0/4+1];
  r3.z = t1[r1.w].val[0/4+2];
  r3.w = t1[r1.w].val[0/4+3];
  r4.xyzw = r3.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = saturate(r2.xyzw * r3.xyzw + r4.xyzw);
  r3.x = t1[r0.w].val[0/4];
  r3.y = t1[r0.w].val[0/4+1];
  r3.z = t1[r0.w].val[0/4+2];
  r3.w = t1[r0.w].val[0/4+3];
  r2.xyzw = r2.xyzw * r2.xyzw;
  o5.xyzw = r2.xyzw * r3.xyzw;
  r0.w = 0.0799999982 * r1.y;
  r0.w = r1.x * -r0.w + r0.w;
  r2.xyz = r0.www * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r3.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r2.xyz = r0.www ? r2.xyz : cb0[136].xyz;
  r3.xyz = r0.www ? float3(0,0,0) : r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xyzw = cb0[45].xyzw * v5.yyyy;
    r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
    r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
    r3.xyzw = cb0[47].xyzw + r3.xyzw;
    r3.xyz = r3.xyz / r3.www;
    r3.xyz = -cb0[70].xyz + r3.xyz;
    r1.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t0[r1.z].val[0/4];
    r4.y = t0[r1.z].val[0/4+1];
    r4.z = t0[r1.z].val[0/4+2];
    r4.xyz = -r4.xyz + r3.xyz;
    r5.x = t0[r1.w].val[0/4];
    r5.y = t0[r1.w].val[0/4+1];
    r5.z = t0[r1.w].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xyz));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.z = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.z = 0.00200000009 * r1.z;
    r1.z = frac(r1.z);
    r1.z = cmp(0.5 < r1.z);
    r3.xyz = r1.zzz ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r3.xyz : r0.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyz = float3(0,0,0);
  o2.w = 0.505882382;
  o2.xy = r1.xy;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
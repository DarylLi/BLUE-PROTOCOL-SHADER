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
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].x * cb0[142].z;
  r1.x = cb1[5].w * r0.x;
  r1.y = cb1[6].x * r0.x;
  r0.xy = cb1[6].yz * v2.xy + r1.xy;
  r0.z = cb1[6].w * cb0[142].z;
  r1.xy = cb1[8].xx * v2.xy;
  r0.zw = r0.zz * cb1[7].zw + r1.xy;
  r0.z = t1.Sample(s0_s, r0.zw).x;
  r0.z = cb1[8].y * r0.z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb1[8].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.xy = r0.xy + r0.zz;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.y = cmp(0 >= r0.x);
  r0.x = log2(r0.x);
  r0.x = cb1[8].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb1[9].x * r0.x;
  r0.x = r0.y ? 0 : r0.x;
  r0.y = cb1[9].y * cb0[142].z;
  r1.xy = cb1[10].zw * v2.xy;
  r0.yw = r0.yy * cb1[10].xy + r1.xy;
  r0.yz = r0.yw + r0.zz;
  r0.y = t2.Sample(s1_s, r0.yz).x;
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[8].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = cb1[11].x * r0.y;
  r0.y = r0.z ? 0 : r0.y;
  r0.x = r0.x + r0.y;
  r0.y = cb1[11].y * r0.x;
  r0.xzw = -r0.xxx * cb1[11].yyy + cb1[4].xyz;
  r0.xyz = cb1[11].zzz * r0.xzw + r0.yyy;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xyzw = cb0[45].xyzw * v4.yyyy;
    r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
    r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
    r1.xyzw = cb0[47].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r2.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r1.xyz;
    r3.x = t0[r2.y].val[0/4];
    r3.y = t0[r2.y].val[0/4+1];
    r3.z = t0[r2.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xzw));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r1.xyz : r0.xyz;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}
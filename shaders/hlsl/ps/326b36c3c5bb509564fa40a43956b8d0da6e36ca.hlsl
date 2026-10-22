// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
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
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[9].yyy * cb1[3].xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
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
    r1.w = (int)r2.y | (int)r2.x;
    r1.w = (int)r2.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r2.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r0.w = 0;
    r0.xyzw = r1.wwww ? r2.yzwx : r0.xyzw;
    o0.w = r0.w;
  } else {
    o0.w = 0;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  return;
}
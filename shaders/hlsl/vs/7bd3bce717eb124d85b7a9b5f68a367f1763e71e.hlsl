// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[29];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE2,
  uint v2 : ATTRIBUTE1,
  uint v3 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out float o3 : TEXCOORD6,
  out float3 p3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  o2.x = 0;
  o3.x = 0;
  r0.x = (int)v2.x * 36;
  r0.yz = mad((int2)v2.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r2.xyz = v0.yyy * r1.xyz;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v2.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  p3.xyz = r0.xyz;
  r0.w = mad((int)v2.x, 36, 4);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r1.xyz = r2.yyy * r1.xyz;
  r1.xyz = v1.yyy * r1.xyz;
  r2.xyw = r2.xxx * r3.xyz;
  r3.xyz = r2.zzz * r4.xyz;
  r1.xyz = r2.xyw * v1.xxx + r1.xyz;
  r1.xyz = r3.xyz * v1.zzz + r1.xyz;
  r2.x = cb1[23].z;
  r2.y = cb1[24].z;
  r2.z = cb1[25].z;
  r0.w = dot(r2.xyz, r1.xyz);
  r1.x = -abs(r0.w) * abs(r0.w) + 1;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / abs(r0.w);
  r0.w = cmp(0 < abs(r0.w));
  r0.w = r0.w ? r1.x : cb1[27].z;
  r0.w = max(0, r0.w);
  r0.w = min(cb1[27].z, r0.w);
  r0.w = cb1[27].y * r0.w + cb1[27].x;
  r1.xyzw = cb1[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[21].xyzw + r1.xyzw;
  r1.xyzw = cb1[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb1[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o4.xy = r1.xy;
  r0.x = r0.x * cb1[27].w + r0.w;
  o4.z = r0.x * r0.y;
  o4.w = r0.y;
  return;
}
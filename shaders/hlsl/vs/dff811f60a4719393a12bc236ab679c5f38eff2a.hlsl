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
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.x = mad((int)v2.x, 36, 4);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.w = (int)v2.x * 36;
  r1.xy = mad((int2)v2.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = r1.xzw * r0.yyy;
  r1.xyz = v0.yyy * r1.xzw;
  r3.xyz = v1.yyy * r3.xyz;
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v2.x, 36, 2);
  r5.x = t0[r0.y].val[0/4];
  r5.y = t0[r0.y].val[0/4+1];
  r5.z = t0[r0.y].val[0/4+2];
  r0.xyw = r4.xyz * r0.xxx;
  r1.xyz = r4.xyz * v0.xxx + r1.xyz;
  r1.xyz = r5.xyz * v0.zzz + r1.xyz;
  r4.xyz = r5.xyz * r0.zzz;
  r1.xyz = r1.xyz + r2.xyz;
  r0.xyz = r0.xyw * v1.xxx + r3.xyz;
  r0.xyz = r4.xyz * v1.zzz + r0.xyz;
  r2.x = cb1[23].z;
  r2.y = cb1[24].z;
  r2.z = cb1[25].z;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  r0.x = cb1[27].y * r0.x + cb1[27].x;
  r2.xyzw = cb1[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[21].xyzw + r2.xyzw;
  r1.xyzw = cb1[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb1[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o1.xy = r1.xy;
  r0.x = r0.y * cb1[27].w + r0.x;
  o1.z = r0.x * r0.z;
  o1.w = r0.z;
  return;
}
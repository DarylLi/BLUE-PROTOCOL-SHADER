// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[23];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = frac(cb0[142].z);
  r0.y = r0.x * 2 + -1;
  r0.x = r0.x + r0.x;
  r0.xy = saturate(cb2[22].zz * r0.xy);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb0[142].z + cb0[142].z;
  r0.y = frac(r0.y);
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.y = 1 + r0.y;
  r0.y = 0.5 * r0.y;
  r0.z = asint(cb1[0].y) + -1;
  r1.xyz = min(uint3(1,2,3), (uint3)r0.zzz);
  r0.z = (int)v2.x + asint(cb1[0].w);
  r1.xyz = mad(asint(cb1[0].yyy), (int3)r0.zzz, (int3)r1.xyz);
  r2.yz = t1.Load(r1.z).xy;
  r0.zw = t1.Load(r1.y).xy;
  r1.xy = t1.Load(r1.x).xy;
  r2.x = r0.w;
  r1.z = r0.z;
  r0.z = (int)v1.x * 36;
  r0.w = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.w].val[0/4];
  r3.y = t0[r0.w].val[0/4+1];
  r3.z = t0[r0.w].val[0/4+2];
  r4.z = r3.x;
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r6.x = t0[r0.z].val[0/4];
  r6.y = t0[r0.z].val[0/4+1];
  r6.z = t0[r0.z].val[0/4+2];
  r5.x = t0[r5.x].val[0/4];
  r5.z = t0[r5.x].val[0/4+2];
  r5.w = t0[r5.x].val[0/4+1];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r7.xyz = cb0[70].xyz + r7.xyz;
  r4.y = r5.x;
  r4.x = r6.x;
  r8.x = dot(r2.xyz, r4.xyz);
  r4.x = dot(r1.xyz, r4.xyz);
  r9.y = r5.w;
  r9.z = r3.y;
  r9.x = r6.y;
  r8.y = dot(r2.xyz, r9.xyz);
  r4.y = dot(r1.xyz, r9.xyz);
  r9.xyz = v0.yyy * r5.xwz;
  r6.xyw = r6.xyz * v0.xxx + r9.xyz;
  r5.x = r6.z;
  r3.xyw = r3.xyz * v0.zzz + r6.xyw;
  r5.w = r3.z;
  r3.xyz = r3.xyw + r7.xyz;
  r8.z = dot(r2.xyz, r5.xzw);
  r4.z = dot(r1.xyz, r5.xzw);
  r0.yzw = r0.yyy * r8.xyz + -r4.xyz;
  r0.xyz = r0.xxx * r0.yzw + r4.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
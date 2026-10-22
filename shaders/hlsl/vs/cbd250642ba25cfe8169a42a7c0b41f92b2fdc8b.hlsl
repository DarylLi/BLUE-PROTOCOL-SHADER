// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[130].x / cb0[130].y;
  r0.x = 1.77777779 / r0.x;
  r0.x = max(1, r0.x);
  r0.y = 0.763943851 * cb0[128].x;
  r0.x = r0.y * r0.x;
  r0.y = (int)v1.x * 36;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xyz;
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r3.xyz = r0.yzw * v0.xxx + r3.xyz;
  r3.xyz = r4.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[67].xyz + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r5.xy = r1.ww * r0.xx + -cb2[6].zw;
  r3.xyz = r3.xyz / r1.www;
  r0.x = saturate(r5.x / cb2[7].x);
  r1.w = saturate(r5.y / cb2[8].y);
  r2.w = cb2[7].y + -cb2[7].z;
  r0.x = r0.x * r2.w + cb2[7].z;
  r0.x = cb2[8].z * r1.w + r0.x;
  r0.x = cb2[9].x * r0.x;
  r1.w = mad((int)v1.x, 36, 4);
  r5.x = t0[r1.w].val[0/4];
  r5.y = t0[r1.w].val[0/4+1];
  r5.z = t0[r1.w].val[0/4+2];
  r0.yzw = r5.xxx * r0.yzw;
  r1.xyz = r5.yyy * r1.xyz;
  r4.xyz = r5.zzz * r4.xyz;
  r1.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.w = (int)r1.w & asint(cb1[0].x);
  r5.xy = t2.Load(r1.w).yz;
  r6.xyz = t1.Load(r2.w).xyz;
  r1.xyz = r6.yyy * r1.xyz;
  r0.yzw = r6.xxx * r0.yzw + r1.xyz;
  r0.yzw = r6.zzz * r4.xyz + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = sqrt(r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.xyz = -r0.yzw * r0.xxx;
  r0.w = 1 + -r5.x;
  r1.x = cb2[9].y * r5.y;
  r1.yzw = r3.xyz * r0.www;
  r1.yzw = cb2[9].zzz * r1.yzw;
  r0.xyz = r0.xyz * r1.xxx + r1.yzw;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.xyz = min(uint3(1,2,3), (uint3)r0.xxx);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r0.xyz = mad(asint(cb1[0].yyy), (int3)r0.www, (int3)r0.xyz);
  r1.xy = t1.Load(r0.x).xy;
  r0.x = (int)v1.x * 36;
  r1.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r3.z = r2.x;
  r4.xy = t1.Load(r0.y).xy;
  r5.yz = t1.Load(r0.z).xy;
  r1.z = r4.x;
  r5.x = r4.y;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r6.x = t0[r0.y].val[0/4];
  r6.y = t0[r0.y].val[0/4+1];
  r6.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.z].val[0/4];
  r0.y = t0[r0.z].val[0/4+1];
  r0.z = t0[r0.z].val[0/4+2];
  r0.xyz = cb0[70].xyz + r0.xyz;
  r3.y = r6.x;
  r3.x = r4.x;
  r7.x = dot(r1.xyz, r3.xyz);
  r3.x = dot(r5.xyz, r3.xyz);
  r8.y = r6.y;
  r8.z = r2.y;
  r8.x = r4.y;
  r7.y = dot(r1.xyz, r8.xyz);
  r3.y = dot(r5.xyz, r8.xyz);
  r8.y = r6.z;
  r8.z = r2.z;
  r8.x = r4.z;
  r7.z = dot(r1.xyz, r8.xyz);
  r3.z = dot(r5.xyz, r8.xyz);
  r7.xyz = -cb2[5].www * r3.xyz + r7.xyz;
  r3.xyz = cb2[5].www * r3.xyz;
  r3.xyz = cb2[6].yyy * r7.xyz + r3.xyz;
  r7.xyz = v0.yyy * r6.xyz;
  r7.xyz = r4.xyz * v0.xxx + r7.xyz;
  r7.xyz = r2.xyz * v0.zzz + r7.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r3.xyzw = cb0[1].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb0[0].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb0[2].xyzw + r3.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r0.x = 0.00100000005 * r3.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r3.z + r0.x;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r3.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r7.x = t0[r3.y].val[0/4+1];
  r7.y = t0[r3.y].val[0/4];
  r7.z = t0[r3.y].val[0/4+2];
  r8.x = r7.y;
  r9.x = t0[r3.z].val[0/4];
  r9.y = t0[r3.z].val[0/4+2];
  r9.z = t0[r3.z].val[0/4+1];
  r8.y = r9.x;
  r0.x = t0[r3.w].val[0/4];
  r0.y = t0[r3.w].val[0/4+1];
  r0.z = t0[r3.w].val[0/4+2];
  r3.x = t0[r3.x].val[0/4];
  r3.y = t0[r3.x].val[0/4+1];
  r3.z = t0[r3.x].val[0/4+2];
  r3.w = t0[r3.x].val[0/4+3];
  r8.z = r0.x;
  r10.x = dot(r1.xyz, r8.xyz);
  r9.x = r7.z;
  r7.y = r9.z;
  r7.z = r0.y;
  r9.z = r0.z;
  r10.y = dot(r1.xyz, r7.xyz);
  r10.z = dot(r1.xyz, r9.xyz);
  r0.x = dot(r5.xyz, r8.xyz);
  r0.y = dot(r5.xyz, r7.xyz);
  r0.z = dot(r5.xyz, r9.xyz);
  r1.xyz = -cb2[5].www * r0.xyz + r10.xyz;
  r0.xyz = cb2[5].www * r0.xyz;
  r0.xyz = cb2[6].yyy * r1.xyz + r0.xyz;
  r1.x = mad((int)v1.x, 36, 13);
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r8.w = r1.x;
  r5.x = dot(v0.xyzw, r8.xyzw);
  r7.w = r1.y;
  r9.w = r1.z;
  r5.z = dot(v0.xyzw, r9.xyzw);
  r5.y = dot(v0.xyzw, r7.xyzw);
  r0.xyz = r5.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.xyz = r6.xyz * r3.yyy;
  r1.x = (uint)r0.w << 1;
  r1.xyz = t2.Load(r1.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = (int)r0.w * asint(cb1[0].y);
  r5.xy = t1.Load(r0.w).xy;
  o5.xy = r5.xy;
  r5.xyzw = t2.Load(r1.w).xyzw;
  r6.xyz = r5.yzx * r1.xyz;
  r1.xyz = r5.xyz * r1.yzx + -r6.xyz;
  r1.xyz = r1.xyz * r5.www;
  r6.xyz = r1.xyz * r5.yzx;
  r1.xyz = r1.zxy * r5.zxy + -r6.xyz;
  r1.xyz = r1.xyz * r5.www;
  r6.xyz = r1.yyy * r0.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r4.xyz = r4.xyz * r3.xxx;
  r1.xyw = r1.xxx * r4.xyz + r6.xyz;
  r0.xyz = r5.xxx * r4.xyz + r0.xyz;
  r2.xyz = r3.zzz * r2.xyz;
  o4.w = r5.w * r3.w;
  o4.xyz = r5.zzz * r2.xyz + r0.xyz;
  o3.xyz = r1.zzz * r2.xyz + r1.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}
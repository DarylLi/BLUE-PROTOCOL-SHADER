// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float o5 : TEXCOORD6,
  out float3 p5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r3.x = (int)v1.x * 36;
  r3.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+1];
  r4.z = t0[r3.y].val[0/4+2];
  r3.y = t0[r3.z].val[0/4];
  r3.z = t0[r3.z].val[0/4+1];
  r3.w = t0[r3.z].val[0/4+2];
  r3.yzw = cb0[70].xyz + r3.yzw;
  r5.xyz = r4.xyz * r2.yyy;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r3.x].val[0/4+2];
  r7.z = t0[r3.x].val[0/4];
  r7.w = t0[r3.x].val[0/4+1];
  r0.z = mad((int)v1.x, 36, 2);
  r8.y = t0[r0.z].val[0/4];
  r8.z = t0[r0.z].val[0/4+1];
  r8.w = t0[r0.z].val[0/4+2];
  r9.xyz = r7.zwx * r2.xxx;
  r6.xyz = r0.yyy * r9.xyz + r6.xyz;
  r5.xyz = r1.xxx * r9.xyz + r5.xyz;
  r2.xyz = r8.yzw * r2.zzz;
  o1.w = r2.w * r1.w;
  r1.xyz = r1.zzz * r2.xyz + r5.xyz;
  o0.xyz = r0.www * r2.xyz + r6.xyz;
  o1.xyz = r1.xyz;
  r0.y = (int)r0.x & asint(cb2[0].x);
  r2.xyzw = t3.Load(r0.y).xyzw;
  o2.xyzw = r2.zyxw;
  r0.y = (int)r0.x * asint(cb2[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o3.xy = r0.yz;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  r0.yzw = v0.yyy * r4.xyz;
  r0.yzw = r7.zwx * v0.xxx + r0.yzw;
  r0.yzw = r8.yzw * v0.zzz + r0.yzw;
  r0.yzw = r0.yzw + r3.yzw;
  r2.y = r4.x;
  r2.z = r8.y;
  r1.w = asint(cb2[0].y) + -1;
  r3.xy = min(uint2(1,2), (uint2)r1.ww);
  r3.xy = mad(asint(cb2[0].yy), (int2)r0.xx, (int2)r3.xy);
  r3.xz = t1.Load(r3.x).xy;
  r3.w = t1.Load(r3.y).x;
  r2.x = r7.z;
  r2.y = dot(r3.xzw, r2.xyz);
  r8.y = r4.y;
  r7.y = r4.z;
  r7.z = r8.w;
  r8.x = r7.w;
  r2.w = dot(r3.xzw, r7.xyz);
  r2.z = dot(r3.xzw, r8.xyz);
  r0.xyz = r2.yzw + r0.yzw;
  p5.xyz = r0.xyz;
  o5.x = 0;
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
  o6.xy = r1.xy;
  r0.x = r0.x * cb1[27].w + r0.w;
  o6.z = r0.x * r0.y;
  o6.w = r0.y;
  return;
}
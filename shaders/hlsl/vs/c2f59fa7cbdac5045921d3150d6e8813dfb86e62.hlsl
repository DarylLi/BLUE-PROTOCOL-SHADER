// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[84];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD4,
  out uint o6 : PRIMITIVE_ID0,
  out uint p6 : LIGHTMAP_ID0,
  out float4 o7 : TEXCOORD6,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4];
  r8.y = t0[r2.x].val[0/4+1];
  r8.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  o1.xyz = r1.xyz;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r5.xyzw = t4.Load(r0.y).xyzw;
  o2.xyzw = r5.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.yz = t2.Load(r0.y).xy;
  o3.zw = r0.yz;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  o3.xy = r0.yw;
  r5.xyz = cb0[21].xyz * r1.yyy;
  r1.xyw = r1.xxx * cb0[20].xyz + r5.xyz;
  r1.xyz = r1.zzz * cb0[22].xyz + r1.xyw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.yw = r1.xy / r0.yy;
  o4.xy = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
  o4.zw = float2(0,0);
  r0.y = mad((int)v1.x, 36, 24);
  r0.y = t0[r0.y].val[12/4];
  r0.y = (int)r0.y + asint(cb1[1].y);
  r0.w = mad((int)r0.y, 15, 2);
  p6.x = r0.y;
  r1.x = t1[r0.w].val[0/4];
  r1.y = t1[r0.w].val[0/4+1];
  r1.z = t1[r0.w].val[0/4+2];
  r1.w = t1[r0.w].val[0/4+3];
  o5.xy = r0.xz * r1.xy + r1.zw;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  r0.xyz = v0.yyy * r3.xyz;
  r0.xyz = r8.xyz * v0.xxx + r0.xyz;
  r0.xyz = r9.xyz * v0.zzz + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = -cb2[46].xyz + r1.xyz;
  r0.w = dot(r3.xyz, r2.xyz);
  r5.xyz = r3.xyz * r0.www + cb2[46].xyz;
  r6.xyz = -r5.xyz + r1.xyz;
  r7.xyz = r6.yzx * r3.zxy;
  r3.xyz = r3.yzx * r6.zxy + -r7.xyz;
  r7.x = t0[r4.y].val[8/4];
  r7.y = t0[r4.z].val[8/4];
  r7.z = t0[r4.w].val[8/4];
  r0.w = saturate(dot(r2.xyz, r7.xyz));
  r0.w = ceil(r0.w);
  r2.xyz = cb2[46].xyz + -r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[82].w;
  r1.w = cb2[83].x * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r2.x, r4.x);
  r2.xyz = r3.xyz * r2.xxx;
  r2.xyz = r6.xyz * r4.xxx + r2.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r1.xyz = r2.xyz + -r1.xyz;
  r0.xyz = r1.xyz * cb2[83].yyy + r0.xyz;
  o7.xyz = r0.xyz;
  o7.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o8.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}
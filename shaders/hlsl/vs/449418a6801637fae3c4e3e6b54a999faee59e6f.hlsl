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
  float4 cb2[104];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
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
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,28,29,30));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
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
  r3.xyz = r8.xyz * v0.xxx + r3.xyz;
  r3.xyz = r9.xyz * v0.zzz + r3.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r2.xyz = r3.xyz + r2.yzw;
  r3.xyz = r0.yyy * r10.xyz + r7.xyz;
  o0.xyz = r0.www * r5.xyz + r3.xyz;
  r0.yzw = r1.xxx * r10.xyz + r6.xyz;
  o1.xyz = r1.zzz * r5.xyz + r0.yzw;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  o2.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o3.xy = cb2[60].xy + r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o3.zw = r0.xy;
  r0.xyz = -cb0[70].xyz + r2.xyz;
  r1.x = t0[r4.y].val[0/4+1];
  r1.y = t0[r4.y].val[0/4];
  r1.z = t0[r4.y].val[0/4+2];
  r1.w = t0[r4.y].val[0/4+3];
  r3.x = r1.z;
  r5.x = t0[r4.z].val[0/4];
  r5.y = t0[r4.z].val[0/4+1];
  r5.z = t0[r4.z].val[0/4+2];
  r5.w = t0[r4.z].val[0/4+3];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r4.w = t0[r4.w].val[0/4+3];
  r3.y = r5.z;
  r3.zw = r4.zw;
  r0.w = 1;
  r2.w = dot(r0.xyzw, r3.xyzw);
  o4.zw = cb2[103].zz + -r2.ww;
  r3.xw = r1.yw;
  r3.y = r5.x;
  r1.yw = r5.yw;
  r3.z = r4.x;
  r1.z = r4.y;
  o4.y = dot(r0.xyzw, r1.xyzw);
  o4.x = dot(r0.xyzw, r3.xyzw);
  o5.x = v1.x;
  r1.xyz = -cb2[52].xyz + r0.xyz;
  r0.w = dot(cb2[56].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb2[99].y;
  r1.x = r1.x * 2 + cb2[100].x;
  r1.x = saturate(-2 + r1.x);
  r1.yzw = cb2[56].xyz * r0.www + cb2[52].xyz;
  r3.xyz = -r1.yzw + r0.xyz;
  r4.xyz = cb2[56].zxy * r3.yzx;
  r4.xyz = cb2[56].yzx * r3.zxy + -r4.xyz;
  r5.xy = float2(3.14159274,6.28318548) * r1.xx;
  r5.xz = sin(r5.xy);
  r0.w = cos(r5.y);
  r4.xyz = r5.zzz * r4.xyz;
  r5.z = 50 * r5.x;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r1.yzw = r3.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = cb2[54].xyz + -r0.xyz;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = r1.xxx * r1.yzw + r0.xyz;
  r5.xy = float2(0,0);
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  o6.xyz = r0.xyz;
  o6.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o7.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}
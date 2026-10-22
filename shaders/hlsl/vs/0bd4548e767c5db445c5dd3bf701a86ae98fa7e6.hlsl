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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out uint o6 : PRIMITIVE_ID0,
  out float4 o7 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
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
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyz = -cb0[70].xyz + r0.xyz;
  r5.xyz = -cb2[52].xyz + r2.xyz;
  r0.w = dot(cb2[56].xyz, r5.xyz);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[99].y;
  r1.w = r1.w * 2 + cb2[100].x;
  r1.w = saturate(-2 + r1.w);
  r5.xyz = cb2[56].xyz * r0.www + cb2[52].xyz;
  r6.xyz = -r5.xyz + r2.xyz;
  r7.xyz = cb2[56].zxy * r6.yzx;
  r7.xyz = cb2[56].yzx * r6.zxy + -r7.xyz;
  r8.xy = float2(3.14159274,6.28318548) * r1.ww;
  r8.xz = sin(r8.xy);
  r0.w = cos(r8.y);
  r7.xyz = r8.zzz * r7.xyz;
  r8.z = 50 * r8.x;
  r6.xyz = r6.xyz * r0.www + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r6.xyz = cb2[54].xyz + -r2.xyz;
  r5.xyz = -r6.xyz + r5.xyz;
  r5.xyz = r1.www * r5.xyz + r6.xyz;
  r8.xy = float2(0,0);
  r5.xyz = r8.xyz + r5.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r5.xyzw = cb0[1].xyzw * r0.yyyy;
  r5.xyzw = r0.xxxx * cb0[0].xyzw + r5.xyzw;
  r5.xyzw = r0.zzzz * cb0[2].xyzw + r5.xyzw;
  o7.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r5.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t2.Load(r1.w).xyzw;
  r6.xyz = r5.yzx * r0.yzw;
  r0.yzw = r5.xyz * r0.zwy + -r6.xyz;
  r0.yzw = r0.yzw * r5.www;
  r6.xyz = r0.yzw * r5.yzx;
  r0.yzw = r0.wyz * r5.zxy + -r6.xyz;
  r0.yzw = r0.yzw * r5.www;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,28,29,30));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r7.w = t0[r6.x].val[0/4+3];
  r1.xyz = r7.yyy * r1.xyz;
  r8.xyz = r1.xyz * r0.zzz;
  r1.xyz = r5.yyy * r1.xyz;
  r3.xyz = r7.xxx * r3.xyz;
  r8.xyz = r0.yyy * r3.xyz + r8.xyz;
  r1.xyz = r5.xxx * r3.xyz + r1.xyz;
  r3.xyz = r7.zzz * r4.xyz;
  o2.w = r7.w * r5.w;
  o2.xyz = r5.zzz * r3.xyz + r1.xyz;
  o1.xyz = r0.www * r3.xyz + r8.xyz;
  o1.w = 0;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  o3.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o4.xy = cb2[60].xy + r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o4.zw = r0.xy;
  r0.x = t0[r6.y].val[0/4+1];
  r0.y = t0[r6.y].val[0/4];
  r0.z = t0[r6.y].val[0/4+2];
  r0.w = t0[r6.y].val[0/4+3];
  r1.x = r0.z;
  r3.x = t0[r6.z].val[0/4];
  r3.y = t0[r6.z].val[0/4+1];
  r3.z = t0[r6.z].val[0/4+2];
  r3.w = t0[r6.z].val[0/4+3];
  r4.x = t0[r6.w].val[0/4];
  r4.y = t0[r6.w].val[0/4+1];
  r4.z = t0[r6.w].val[0/4+2];
  r4.w = t0[r6.w].val[0/4+3];
  r1.y = r3.z;
  r1.zw = r4.zw;
  r2.w = 1;
  r1.x = dot(r2.xyzw, r1.xyzw);
  o5.zw = cb2[103].zz + -r1.xx;
  r1.xw = r0.yw;
  r1.y = r3.x;
  r0.yw = r3.yw;
  r1.z = r4.x;
  r0.z = r4.y;
  o5.y = dot(r2.xyzw, r0.xyzw);
  o5.x = dot(r2.xyzw, r1.xyzw);
  o6.x = v1.x;
  o7.w = 1;
  return;
}
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
  float4 cb2[84];
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
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD6)
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
  r5.xyz = -cb2[40].xyz + r2.xyz;
  r0.w = dot(cb2[44].xyz, r5.xyz);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[82].y;
  r1.w = r1.w * 2 + cb2[83].x;
  r1.w = saturate(-2 + r1.w);
  r5.xyz = cb2[44].xyz * r0.www + cb2[40].xyz;
  r6.xyz = -r5.xyz + r2.xyz;
  r7.xyz = cb2[44].zxy * r6.yzx;
  r7.xyz = cb2[44].yzx * r6.zxy + -r7.xyz;
  r8.xy = float2(3.14159274,6.28318548) * r1.ww;
  r8.xz = sin(r8.xy);
  r0.w = cos(r8.y);
  r7.xyz = r8.zzz * r7.xyz;
  r8.z = 50 * r8.x;
  r6.xyz = r6.xyz * r0.www + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r2.xyz = cb2[42].xyz + -r2.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r2.xyz = r1.www * r5.xyz + r2.xyz;
  r8.xy = float2(0,0);
  r2.xyz = r8.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o6.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = mad((int)v1.x, 36, 4);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.w = t0[r0.x].val[0/4+3];
  r2.xyz = r3.xyz * r0.xxx;
  r1.xyz = r1.xyz * r0.yyy;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r3.xyz = t2.Load(r0.y).xyz;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r5.xyzw = t2.Load(r0.y).xyzw;
  r6.xyz = r5.yzx * r3.xyz;
  r3.xyz = r5.xyz * r3.yzx + -r6.xyz;
  r3.xyz = r3.xyz * r5.www;
  r6.xyz = r3.xyz * r5.yzx;
  r3.xyz = r3.zxy * r5.zxy + -r6.xyz;
  r3.xyz = r3.xyz * r5.www;
  r6.xyz = r3.yyy * r1.xyz;
  r1.xyz = r5.yyy * r1.xyz;
  r1.xyz = r5.xxx * r2.xyz + r1.xyz;
  r2.xyz = r3.xxx * r2.xyz + r6.xyz;
  r3.xyw = r4.xyz * r0.zzz;
  o2.w = r5.w * r0.w;
  o2.xyz = r5.zzz * r3.xyw + r1.xyz;
  o1.xyz = r3.zzz * r3.xyw + r2.xyz;
  o1.w = 0;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  o3.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o4.xy = r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o4.zw = r0.xy;
  o5.x = v1.x;
  o6.w = 1;
  return;
}
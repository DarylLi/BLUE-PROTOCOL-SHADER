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
  float4 cb2[83];
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
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD8)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r3.w = mad((int)v1.x, 36, 4);
  r4.x = t0[r3.w].val[0/4];
  r4.y = t0[r3.w].val[0/4+1];
  r4.z = t0[r3.w].val[0/4+2];
  r4.w = t0[r3.w].val[0/4+3];
  r5.xyz = r4.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r2.x].val[0/4];
  r7.y = t0[r2.x].val[0/4+1];
  r7.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r4.xxx;
  r3.xyz = r7.xyz * v0.xxx + r3.xyz;
  r3.xyz = r8.xyz * v0.zzz + r3.xyz;
  r4.xyz = r8.xyz * r4.zzz;
  o1.w = r4.w * r1.w;
  r2.xyz = r3.xyz + r2.yzw;
  r3.xyz = r0.yyy * r9.xyz + r6.xyz;
  o0.xyz = r0.www * r4.xyz + r3.xyz;
  r0.yzw = r1.xxx * r9.xyz + r5.xyz;
  r0.yzw = r1.zzz * r4.xyz + r0.yzw;
  o1.xyz = r0.yzw;
  o7.xyz = r0.yzw;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  o2.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o3.xy = r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o3.zw = r0.xy;
  o4.x = v1.x;
  r0.xyz = -cb0[70].xyz + r2.xyz;
  r1.xyz = -cb2[40].xyz + r0.xyz;
  r0.w = dot(cb2[44].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb2[82].x;
  r1.x = r1.x * 2 + cb2[82].w;
  r1.x = saturate(-2 + r1.x);
  r1.yzw = cb2[44].xyz * r0.www + cb2[40].xyz;
  r3.xyz = -r1.yzw + r0.xyz;
  r4.xyz = cb2[44].zxy * r3.yzx;
  r4.xyz = cb2[44].yzx * r3.zxy + -r4.xyz;
  r5.xy = float2(3.14159274,6.28318548) * r1.xx;
  r5.xz = sin(r5.xy);
  r0.w = cos(r5.y);
  r4.xyz = r5.zzz * r4.xyz;
  r5.z = 50 * r5.x;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r1.yzw = r3.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = cb2[42].xyz + -r0.xyz;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = r1.xxx * r1.yzw + r0.xyz;
  r5.xy = float2(0,0);
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  o5.xyz = r0.xyz;
  o6.xyz = r0.xyz;
  o6.w = 1;
  return;
}
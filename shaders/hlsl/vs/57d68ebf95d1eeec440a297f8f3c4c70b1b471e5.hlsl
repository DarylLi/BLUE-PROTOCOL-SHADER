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
  float4 cb2[50];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o7.xyz = r0.xyz;
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
  r0.yzw = r5.zzz * r3.xyw + r1.xyz;
  o1.xyz = r3.zzz * r3.xyw + r2.xyz;
  o1.w = 0;
  o2.xyz = r0.yzw;
  r1.x = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  o3.xyzw = r1.zyxw;
  r1.x = asint(cb1[0].y) + -1;
  r1.x = min(1, (uint)r1.x);
  r1.x = mad(asint(cb1[0].y), (int)r0.x, (int)r1.x);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o4.xy = cb2[49].xy + r1.yz;
  r1.xy = t1.Load(r1.x).xy;
  o4.zw = r1.xy;
  r1.xyz = cb0[21].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb0[20].xyz + r1.xyz;
  r0.xyz = r0.www * cb0[22].xyz + r0.xyz;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = sqrt(r0.z);
  r0.xy = r0.xy / r0.zz;
  o5.xy = r0.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  o5.zw = float2(0,0);
  o6.x = v1.x;
  o7.w = 1;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[21];
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
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : SV_POSITION0)
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
  r0.x = (int)r0.x * asint(cb1[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o2.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r2.y = mad((int)v1.x, 36, 4);
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r4.w = t0[r2.y].val[0/4+3];
  r5.xyz = r4.yyy * r2.xzw;
  r2.xyz = v0.yyy * r2.xzw;
  r6.xyz = r5.xyz * r0.yyy;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r0.w].val[0/4];
  r7.y = t0[r0.w].val[0/4+1];
  r7.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.y].val[0/4];
  r8.y = t0[r0.y].val[0/4+1];
  r8.z = t0[r0.y].val[0/4+2];
  r9.xyz = r7.xyz * r4.xxx;
  r2.xyz = r7.xyz * v0.xxx + r2.xyz;
  r2.xyz = r8.xyz * v0.zzz + r2.xyz;
  r4.xyz = r8.xyz * r4.zzz;
  o1.w = r4.w * r1.w;
  r2.xyz = r2.xyz + r3.xyz;
  r0.xyw = r0.xxx * r9.xyz + r6.xyz;
  o0.xyz = r0.zzz * r4.xyz + r0.xyw;
  r0.xyz = r1.xxx * r9.xyz + r5.xyz;
  o1.xyz = r1.zzz * r4.xyz + r0.xyz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.xyz = -cb0[70].xyz + r2.xyz;
  r1.xyz = -cb2[9].xyz + r0.xyz;
  r0.w = dot(cb2[13].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb2[19].y;
  r1.x = r1.x * 2 + cb2[20].x;
  r1.x = saturate(-2 + r1.x);
  r1.yzw = cb2[13].xyz * r0.www + cb2[9].xyz;
  r3.xyz = -r1.yzw + r0.xyz;
  r4.xyz = cb2[13].zxy * r3.yzx;
  r4.xyz = cb2[13].yzx * r3.zxy + -r4.xyz;
  r5.xy = float2(3.14159274,6.28318548) * r1.xx;
  r5.xz = sin(r5.xy);
  r0.w = cos(r5.y);
  r4.xyz = r5.zzz * r4.xyz;
  r5.z = 50 * r5.x;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r1.yzw = r3.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = cb2[11].xyz + -r0.xyz;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = r1.xxx * r1.yzw + r0.xyz;
  r5.xy = float2(0,0);
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o4.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}
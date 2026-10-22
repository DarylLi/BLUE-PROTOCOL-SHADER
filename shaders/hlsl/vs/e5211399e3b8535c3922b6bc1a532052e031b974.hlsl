// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[95];
}

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
  r1.x = (int)r0.x & asint(cb2[0].x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  o2.xyzw = r1.zyxw;
  r1.x = asint(cb2[0].y) + -1;
  r1.x = min(1, (uint)r1.x);
  r1.x = mad(asint(cb2[0].y), (int)r0.x, (int)r1.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o3.xy = cb3[55].xy + r1.yz;
  r1.xy = t1.Load(r1.x).xy;
  o3.zw = r1.xy;
  o4.x = v1.x;
  r1.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = -cb3[48].xyz + r1.xyz;
  r0.x = dot(cb3[52].xyz, r3.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb3[93].y;
  r1.w = r1.w * 2 + cb3[94].x;
  r1.w = saturate(-2 + r1.w);
  r3.xyz = cb3[52].xyz * r0.xxx + cb3[48].xyz;
  r4.xyz = -r3.xyz + r1.xyz;
  r5.xyz = cb3[52].zxy * r4.yzx;
  r5.xyz = cb3[52].yzx * r4.zxy + -r5.xyz;
  r6.xy = float2(3.14159274,6.28318548) * r1.ww;
  r6.xz = sin(r6.xy);
  r0.x = cos(r6.y);
  r5.xyz = r6.zzz * r5.xyz;
  r6.w = 50 * r6.x;
  r4.xyz = r4.xyz * r0.xxx + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r1.xyz;
  r1.xyz = cb3[50].xyz + -r1.xyz;
  r3.xyz = r3.xyz + -r1.xyz;
  r1.xyz = r1.www * r3.xyz + r1.xyz;
  r6.yz = float2(0,0);
  r1.xyz = r6.yzw + r1.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  p5.xyz = r1.xyz;
  o5.x = 0;
  r2.x = cb1[23].z;
  r2.y = cb1[24].z;
  r2.z = cb1[25].z;
  r0.x = dot(r2.xyz, r0.yzw);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  r0.x = cb1[27].y * r0.x + cb1[27].x;
  r2.xyzw = cb1[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[21].xyzw + r2.xyzw;
  r1.xyzw = cb1[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb1[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o6.xy = r1.xy;
  r0.x = r0.y * cb1[27].w + r0.x;
  o6.z = r0.x * r0.z;
  o6.w = r0.z;
  return;
}
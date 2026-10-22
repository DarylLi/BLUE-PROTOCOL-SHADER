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
  float4 cb2[23];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = frac(cb0[142].z);
  r0.y = r0.x * 2 + -1;
  r0.x = r0.x + r0.x;
  r0.xy = saturate(cb2[22].zz * r0.xy);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb0[142].z + cb0[142].z;
  r0.y = frac(r0.y);
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.y = 1 + r0.y;
  r0.y = 0.5 * r0.y;
  r0.z = asint(cb1[0].y) + -1;
  r1.xyz = min(uint3(1,2,3), (uint3)r0.zzz);
  r0.z = (int)v2.x + asint(cb1[0].w);
  r1.xyz = mad(asint(cb1[0].yyy), (int3)r0.zzz, (int3)r1.xyz);
  r2.yz = t1.Load(r1.z).xy;
  r1.yz = t1.Load(r1.y).xy;
  r3.xy = t1.Load(r1.x).xy;
  r2.x = r1.z;
  r3.z = r1.y;
  r0.w = (int)v1.x * 36;
  r1.x = mad((int)v1.x, 36, 2);
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r4.z = r1.x;
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r6.x = t0[r0.w].val[0/4];
  r6.y = t0[r0.w].val[0/4+1];
  r6.z = t0[r0.w].val[0/4+2];
  r5.x = t0[r5.x].val[0/4];
  r5.z = t0[r5.x].val[0/4+1];
  r5.w = t0[r5.x].val[0/4+2];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r7.xyz = cb0[70].xyz + r7.xyz;
  r4.y = r5.x;
  r4.x = r6.x;
  r8.x = dot(r2.xyz, r4.xyz);
  r4.x = dot(r3.xyz, r4.xyz);
  r9.y = r5.z;
  r9.z = r1.y;
  r9.x = r6.y;
  r8.y = dot(r2.xyz, r9.xyz);
  r4.y = dot(r3.xyz, r9.xyz);
  r9.y = r5.w;
  r9.z = r1.z;
  r9.x = r6.z;
  r8.z = dot(r2.xyz, r9.xyz);
  r4.z = dot(r3.xyz, r9.xyz);
  r2.xyz = r0.yyy * r8.xyz + -r4.xyz;
  r0.xyw = r0.xxx * r2.xyz + r4.xyz;
  r2.xyz = v0.yyy * r5.xzw;
  r2.xyz = r6.xyz * v0.xxx + r2.xyz;
  r2.xyz = r1.xyz * v0.zzz + r2.xyz;
  r2.xyz = r2.xyz + r7.xyz;
  r0.xyw = r2.xyz + r0.xyw;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb0[2].xyzw + r2.xyzw;
  o6.xyz = r0.xyw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  r0.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r2.w = t0[r0.x].val[0/4+3];
  r0.xyw = r5.xzw * r2.yyy;
  r1.w = (uint)r0.z << 1;
  r3.xyz = t2.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t2.Load(r1.w).xyzw;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.xyz * r4.yzx;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.yyy * r0.xyw;
  r0.xyw = r4.yyy * r0.xyw;
  r6.xyz = r6.xyz * r2.xxx;
  r3.xyw = r3.xxx * r6.xyz + r5.xyz;
  r0.xyw = r4.xxx * r6.xyz + r0.xyw;
  r1.xyz = r2.zzz * r1.xyz;
  o2.w = r4.w * r2.w;
  o2.xyz = r4.zzz * r1.xyz + r0.xyw;
  o1.xyz = r3.zzz * r1.xyz + r3.xyw;
  o1.w = 0;
  r0.x = (int)r0.z & asint(cb1[0].x);
  r0.y = (int)r0.z * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o4.xy = r0.yz;
  r0.xyzw = t3.Load(r0.x).xyzw;
  o3.xyzw = r0.zyxw;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.w = 1;
  return;
}
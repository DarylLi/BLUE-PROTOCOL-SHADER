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
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r0.z = (int)v1.x * 36;
  r0.w = mad((int)v1.x, 36, 2);
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r2.z = r1.x;
  r0.w = asint(cb1[0].y) + -1;
  r3.xyz = min(uint3(1,2,3), (uint3)r0.www);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r3.xyz = mad(asint(cb1[0].yyy), (int3)r0.www, (int3)r3.xyz);
  r4.yz = t1.Load(r3.z).xy;
  r3.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r6.x = t0[r3.z].val[0/4];
  r6.y = t0[r3.z].val[0/4+1];
  r6.z = t0[r3.z].val[0/4+2];
  r7.x = t0[r3.w].val[0/4];
  r7.y = t0[r3.w].val[0/4+1];
  r7.z = t0[r3.w].val[0/4+2];
  r7.xyz = cb0[70].xyz + r7.xyz;
  r2.y = r6.x;
  r3.yz = t1.Load(r3.y).xy;
  r8.xy = t1.Load(r3.x).xy;
  r4.x = r3.z;
  r8.z = r3.y;
  r2.x = r5.x;
  r3.x = dot(r4.xyz, r2.xyz);
  r2.x = dot(r8.xyz, r2.xyz);
  r9.y = r6.y;
  r9.z = r1.y;
  r9.x = r5.y;
  r3.y = dot(r4.xyz, r9.xyz);
  r2.y = dot(r8.xyz, r9.xyz);
  r9.y = r6.z;
  r9.z = r1.z;
  r9.x = r5.z;
  r3.z = dot(r4.xyz, r9.xyz);
  r2.z = dot(r8.xyz, r9.xyz);
  r3.xyz = r0.yyy * r3.xyz + -r2.xyz;
  r0.xyz = r0.xxx * r3.xyz + r2.xyz;
  r2.xyz = v0.yyy * r6.xyz;
  r2.xyz = r5.xyz * v0.xxx + r2.xyz;
  r2.xyz = r1.xyz * v0.zzz + r2.xyz;
  r2.xyz = r2.xyz + r7.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r0.x = 0.00100000005 * r2.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r0.x = frac(cb0[139].z);
  r0.y = r0.x * 2 + -1;
  r0.x = r0.x + r0.x;
  r0.xy = saturate(cb2[22].zz * r0.xy);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb0[139].z + cb0[139].z;
  r0.y = frac(r0.y);
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.y = 1 + r0.y;
  r0.y = 0.5 * r0.y;
  r2.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r3.x = t0[r2.y].val[0/4+1];
  r3.y = t0[r2.y].val[0/4];
  r3.z = t0[r2.y].val[0/4+2];
  r7.x = r3.y;
  r9.x = t0[r2.z].val[0/4];
  r9.y = t0[r2.z].val[0/4+2];
  r9.z = t0[r2.z].val[0/4+1];
  r7.y = r9.x;
  r2.y = t0[r2.w].val[0/4];
  r2.z = t0[r2.w].val[0/4+1];
  r2.w = t0[r2.w].val[0/4+2];
  r10.x = t0[r2.x].val[0/4];
  r10.y = t0[r2.x].val[0/4+1];
  r10.z = t0[r2.x].val[0/4+2];
  r10.w = t0[r2.x].val[0/4+3];
  r7.z = r2.y;
  r11.x = dot(r4.xyz, r7.xyz);
  r9.x = r3.z;
  r3.y = r9.z;
  r3.z = r2.z;
  r9.z = r2.w;
  r11.y = dot(r4.xyz, r3.xyz);
  r11.z = dot(r4.xyz, r9.xyz);
  r2.x = dot(r8.xyz, r7.xyz);
  r2.y = dot(r8.xyz, r3.xyz);
  r2.z = dot(r8.xyz, r9.xyz);
  r4.xyz = r0.yyy * r11.xyz + -r2.xyz;
  r0.xyz = r0.xxx * r4.xyz + r2.xyz;
  r1.w = mad((int)v1.x, 36, 13);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r7.w = r2.x;
  r4.x = dot(v0.xyzw, r7.xyzw);
  r3.w = r2.y;
  r9.w = r2.z;
  r4.z = dot(v0.xyzw, r9.xyzw);
  r4.y = dot(v0.xyzw, r3.xyzw);
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r0.xyz = r10.yyy * r6.xyz;
  r1.w = (uint)r0.w << 1;
  r2.xyz = t2.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.xyzw = t2.Load(r1.w).xyzw;
  r4.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.yyy * r0.xyz;
  r0.xyz = r3.yyy * r0.xyz;
  r5.xyz = r10.xxx * r5.xyz;
  r2.xyw = r2.xxx * r5.xyz + r4.xyz;
  r0.xyz = r3.xxx * r5.xyz + r0.xyz;
  r1.xyz = r10.zzz * r1.xyz;
  o4.w = r3.w * r10.w;
  o4.xyz = r3.zzz * r1.xyz + r0.xyz;
  o3.xyz = r2.zzz * r1.xyz + r2.xyw;
  o3.w = 0;
  r0.x = (int)r0.w & asint(cb1[0].x);
  r0.y = (int)r0.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyzw = t3.Load(r0.x).xyzw;
  o5.xyzw = r0.zyxw;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}
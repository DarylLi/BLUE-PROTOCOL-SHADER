// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[94];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
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
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
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
  r1.xyz = v0.yyy * r1.xyz;
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r3.xyz * v0.zzz + r1.xyz;
  r0.xyz = r1.xyz + r0.yzw;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = -cb2[46].xyz + r1.xyz;
  r0.w = dot(cb2[50].xyz, r2.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[92].w;
  r1.w = r1.w * 2 + cb2[93].z;
  r1.w = saturate(-2 + r1.w);
  r2.xyz = cb2[50].xyz * r0.www + cb2[46].xyz;
  r3.xyz = -r2.xyz + r1.xyz;
  r4.xyz = cb2[50].zxy * r3.yzx;
  r4.xyz = cb2[50].yzx * r3.zxy + -r4.xyz;
  r5.xy = float2(3.14159274,6.28318548) * r1.ww;
  r5.xz = sin(r5.xy);
  r0.w = cos(r5.y);
  r4.xyz = r5.zzz * r4.xyz;
  r5.z = 50 * r5.x;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb2[48].xyz + -r1.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  r5.xy = float2(0,0);
  r1.xyz = r5.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = 0.00100000005 * r0.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r2.w = r1.x;
  r3.x = t0[r0.x].val[0/4+1];
  r3.y = t0[r0.x].val[0/4];
  r3.z = t0[r0.x].val[0/4+2];
  r2.x = r3.y;
  r4.x = t0[r0.y].val[0/4];
  r4.y = t0[r0.y].val[0/4+2];
  r4.z = t0[r0.y].val[0/4+1];
  r0.x = t0[r0.z].val[0/4];
  r0.y = t0[r0.z].val[0/4+1];
  r0.z = t0[r0.z].val[0/4+2];
  r2.y = r4.x;
  r2.z = r0.x;
  r2.x = dot(v0.xyzw, r2.xyzw);
  r3.w = r1.y;
  r4.w = r1.z;
  r4.x = r3.z;
  r3.y = r4.z;
  r3.z = r0.y;
  r4.z = r0.z;
  r2.z = dot(v0.xyzw, r4.xyzw);
  r2.y = dot(v0.xyzw, r3.xyzw);
  r0.xyz = -cb0[113].xyz + r2.xyz;
  r1.xyz = -cb2[46].xyz + r0.xyz;
  r0.w = dot(cb2[50].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb2[92].w;
  r1.x = r1.x * 2 + cb2[93].z;
  r1.x = saturate(-2 + r1.x);
  r1.yzw = cb2[50].xyz * r0.www + cb2[46].xyz;
  r3.xyz = -r1.yzw + r0.xyz;
  r4.xyz = cb2[50].zxy * r3.yzx;
  r4.xyz = cb2[50].yzx * r3.zxy + -r4.xyz;
  r5.xy = float2(3.14159274,6.28318548) * r1.xx;
  r5.xz = sin(r5.xy);
  r0.w = cos(r5.y);
  r4.xyz = r5.zzz * r4.xyz;
  r5.z = 50 * r5.x;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r1.yzw = r3.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = cb2[48].xyz + -r0.xyz;
  r1.yzw = r1.yzw + -r0.xyz;
  r0.xyz = r1.xxx * r1.yzw + r0.xyz;
  r5.xy = float2(0,0);
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t2.Load(r0.y).xyzw;
  o3.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o4.xy = r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o4.zw = r0.xy;
  return;
}
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
  float4 cb2[95];
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
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r5.xyz = -cb2[48].xyz + r2.xyz;
  r0.w = dot(cb2[52].xyz, r5.xyz);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[93].y;
  r1.w = r1.w * 2 + cb2[94].x;
  r1.w = saturate(-2 + r1.w);
  r5.xyz = cb2[52].xyz * r0.www + cb2[48].xyz;
  r6.xyz = -r5.xyz + r2.xyz;
  r7.xyz = cb2[52].zxy * r6.yzx;
  r7.xyz = cb2[52].yzx * r6.zxy + -r7.xyz;
  r8.xy = float2(3.14159274,6.28318548) * r1.ww;
  r8.xz = sin(r8.xy);
  r0.w = cos(r8.y);
  r7.xyz = r8.zzz * r7.xyz;
  r8.z = 50 * r8.x;
  r6.xyz = r6.xyz * r0.www + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r2.xyz = cb2[50].xyz + -r2.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r2.xyz = r1.www * r5.xyz + r2.xyz;
  r8.xy = float2(0,0);
  r2.xyz = r8.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.w = 0.00100000005 * r0.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r1.w = r2.x ? r1.w : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.xyz = cb0[113].xyz + r0.xyz;
  r2.w = r0.x;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r6.x = t0[r5.y].val[0/4+1];
  r6.y = t0[r5.y].val[0/4];
  r6.z = t0[r5.y].val[0/4+2];
  r2.x = r6.y;
  r7.x = t0[r5.z].val[0/4];
  r7.y = t0[r5.z].val[0/4+2];
  r7.z = t0[r5.z].val[0/4+1];
  r2.y = r7.x;
  r5.y = t0[r5.w].val[0/4];
  r5.z = t0[r5.w].val[0/4+1];
  r5.w = t0[r5.w].val[0/4+2];
  r8.x = t0[r5.x].val[0/4];
  r8.y = t0[r5.x].val[0/4+1];
  r8.z = t0[r5.x].val[0/4+2];
  r8.w = t0[r5.x].val[0/4+3];
  r2.z = r5.y;
  r2.x = dot(v0.xyzw, r2.xyzw);
  r6.w = r0.y;
  r7.w = r0.z;
  r7.x = r6.z;
  r6.y = r7.z;
  r6.z = r5.z;
  r7.z = r5.w;
  r2.z = dot(v0.xyzw, r7.xyzw);
  r2.y = dot(v0.xyzw, r6.xyzw);
  r0.xyz = -cb0[113].xyz + r2.xyz;
  r5.xyz = -cb2[48].xyz + r0.xyz;
  r0.w = dot(cb2[52].xyz, r5.xyz);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[93].y;
  r1.w = r1.w * 2 + cb2[94].x;
  r1.w = saturate(-2 + r1.w);
  r5.xyz = cb2[52].xyz * r0.www + cb2[48].xyz;
  r6.xyz = -r5.xyz + r0.xyz;
  r7.xyz = cb2[52].zxy * r6.yzx;
  r7.xyz = cb2[52].yzx * r6.zxy + -r7.xyz;
  r9.xy = float2(3.14159274,6.28318548) * r1.ww;
  r9.xz = sin(r9.xy);
  r0.w = cos(r9.y);
  r7.xyz = r9.zzz * r7.xyz;
  r9.z = 50 * r9.x;
  r6.xyz = r6.xyz * r0.www + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r0.xyz;
  r0.xyz = cb2[50].xyz + -r0.xyz;
  r5.xyz = r5.xyz + -r0.xyz;
  r0.xyz = r1.www * r5.xyz + r0.xyz;
  r9.xy = float2(0,0);
  r0.xyz = r9.xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = r8.xxx * r3.xyz;
  r1.xyz = r8.yyy * r1.xyz;
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (uint)r0.w << 1;
  r2.xyz = t2.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.xyzw = t2.Load(r1.w).xyzw;
  r5.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r5.xyz;
  r2.xyz = r2.xyz * r3.www;
  r5.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r5.xyz;
  r2.xyz = r2.xyz * r3.www;
  r5.xyz = r2.yyy * r1.xyz;
  r1.xyz = r3.yyy * r1.xyz;
  r1.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r2.xxx * r0.xyz + r5.xyz;
  r2.xyw = r8.zzz * r4.xyz;
  o4.w = r3.w * r8.w;
  o4.xyz = r3.zzz * r2.xyw + r1.xyz;
  o3.xyz = r2.zzz * r2.xyw + r0.xyz;
  o3.w = 0;
  r0.x = (int)r0.w & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.x).xyzw;
  o5.xyzw = r1.zyxw;
  r0.x = asint(cb1[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.x = mad(asint(cb1[0].y), (int)r0.w, (int)r0.x);
  r0.y = (int)r0.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = cb2[55].xy + r0.yz;
  r0.xy = t1.Load(r0.x).xy;
  o6.zw = r0.xy;
  o7.x = v1.x;
  return;
}
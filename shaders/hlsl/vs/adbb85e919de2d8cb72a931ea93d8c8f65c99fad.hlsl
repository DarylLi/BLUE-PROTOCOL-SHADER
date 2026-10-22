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
  float4 cb2[91];
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
  out float4 o7 : TEXCOORD1,
  out uint o8 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.xyz = cb0[70].xyz + r1.xyz;
  r1.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r3.x = t0[r1.w].val[0/4];
  r3.y = t0[r1.w].val[0/4+1];
  r3.z = t0[r1.w].val[0/4+2];
  r4.xyz = v0.yyy * r0.yzw;
  r4.xyz = r2.xyz * v0.xxx + r4.xyz;
  r4.xyz = r3.xyz * v0.zzz + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = -cb0[70].xyz + r1.xyz;
  r5.xyz = cb2[48].xyz + -r4.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb2[89].z;
  r0.x = cb2[89].w * r0.x;
  r5.xyz = -cb2[48].xyz + r4.xyz;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r7.x = t0[r6.y].val[8/4];
  r7.y = t0[r6.z].val[8/4];
  r7.z = t0[r6.w].val[8/4];
  r6.x = t0[r6.x].val[0/4];
  r6.y = t0[r6.x].val[0/4+1];
  r6.z = t0[r6.x].val[0/4+2];
  r6.w = t0[r6.x].val[0/4+3];
  r1.w = saturate(dot(r5.xyz, r7.xyz));
  r2.w = dot(r0.yzw, r5.xyz);
  r5.xyz = r0.yzw * r2.www + cb2[48].xyz;
  r1.w = ceil(r1.w);
  r0.x = r1.w * r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r7.x);
  r7.yzw = -r5.xyz + r4.xyz;
  r8.xyz = r7.zwy * r0.wyz;
  r8.xyz = r0.zwy * r7.wyz + -r8.xyz;
  r0.yzw = r6.yyy * r0.yzw;
  r8.xyz = r8.xyz * r0.xxx;
  r7.xyz = r7.yzw * r7.xxx + r8.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r4.xyz = r5.xyz + -r4.xyz;
  r1.xyz = r4.xyz * cb2[90].xxx + r1.xyz;
  r4.xyzw = cb0[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb0[0].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r4.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r2.w = cmp(1 < asint(cb0[135].x));
  r0.x = r2.w ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r4.xyz = cb0[113].xyz + r4.xyz;
  r5.w = r4.x;
  r7.x = t0[r1.x].val[0/4+1];
  r7.y = t0[r1.x].val[0/4];
  r7.z = t0[r1.x].val[0/4+2];
  r5.x = r7.y;
  r8.x = t0[r1.z].val[0/4];
  r8.y = t0[r1.z].val[0/4+1];
  r8.z = t0[r1.z].val[0/4+2];
  r1.x = t0[r1.y].val[0/4];
  r1.y = t0[r1.y].val[0/4+1];
  r1.z = t0[r1.y].val[0/4+2];
  r5.z = r8.x;
  r5.y = r1.x;
  r5.x = dot(v0.xyzw, r5.xyzw);
  r7.w = r4.y;
  r8.w = r4.z;
  r8.x = r7.z;
  r7.z = r8.y;
  r7.y = r1.y;
  r5.y = dot(v0.xyzw, r7.xyzw);
  r8.y = r1.z;
  r5.z = dot(v0.xyzw, r8.xyzw);
  r4.xyz = -cb0[113].xyz + r5.xyz;
  r7.xyz = -cb2[48].xyz + r4.xyz;
  r0.x = dot(r1.xyz, r7.xyz);
  r8.xyz = r1.xyz * r0.xxx + cb2[48].xyz;
  r9.xyz = -r8.xyz + r4.xyz;
  r10.xyz = r9.yzx * r1.zxy;
  r1.xyz = r1.yzx * r9.zxy + -r10.xyz;
  r10.xyz = cb2[48].xyz + -r4.xyz;
  r0.x = dot(r10.xyz, r10.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb2[89].z;
  r0.x = cb2[89].w * r0.x;
  r10.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(14,15,16));
  r11.x = t0[r10.x].val[8/4];
  r11.y = t0[r10.y].val[8/4];
  r11.z = t0[r10.z].val[8/4];
  r1.w = saturate(dot(r7.xyz, r11.xyz));
  r1.w = ceil(r1.w);
  r0.x = r1.w * r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r7.x);
  r1.xyz = r1.xyz * r0.xxx;
  r1.xyz = r9.xyz * r7.xxx + r1.xyz;
  r1.xyz = r8.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r4.xyz;
  r1.xyz = r1.xyz * cb2[90].xxx + r5.xyz;
  r4.xyzw = cb0[92].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb0[91].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r4.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r1.xyz = r6.zzz * r3.xyz;
  r2.xyz = r6.xxx * r2.xyz;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r1.w = (uint)r0.x << 1;
  r3.xyz = t2.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t2.Load(r1.w).xyzw;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.xyz * r4.yzx;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.yyy * r0.yzw;
  r0.yzw = r4.yyy * r0.yzw;
  r0.yzw = r4.xxx * r2.xyz + r0.yzw;
  r2.xyz = r3.xxx * r2.xyz + r5.xyz;
  o3.xyz = r3.zzz * r1.xyz + r2.xyz;
  r0.yzw = r4.zzz * r1.xyz + r0.yzw;
  o4.w = r4.w * r6.w;
  o3.w = 0;
  o4.xyz = r0.yzw;
  r1.x = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  o5.xyzw = r1.zyxw;
  r1.x = asint(cb1[0].y) + -1;
  r1.x = min(1, (uint)r1.x);
  r1.x = mad(asint(cb1[0].y), (int)r0.x, (int)r1.x);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o6.xy = cb2[51].xy + r1.yz;
  r1.xy = t1.Load(r1.x).xy;
  o6.zw = r1.xy;
  r1.xyz = cb0[21].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb0[20].xyz + r1.xyz;
  r0.xyz = r0.www * cb0[22].xyz + r0.xyz;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = sqrt(r0.z);
  r0.xy = r0.xy / r0.zz;
  o7.xy = r0.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  o7.zw = float2(0,0);
  o8.x = v1.x;
  return;
}
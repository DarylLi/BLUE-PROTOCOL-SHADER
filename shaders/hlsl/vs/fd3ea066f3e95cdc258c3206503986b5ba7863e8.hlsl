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
  float4 cb2[67];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r2.xyz = cb0[67].xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.w = (int)r1.w & asint(cb1[0].x);
  r5.xyzw = t3.Load(r2.w).xyzw;
  r2.w = 1 + -r5.y;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = cb2[66].yyy * r2.xyz;
  r3.w = 0.763943851 * cb0[128].x;
  r4.w = cb0[130].x / cb0[130].y;
  r4.w = 1.77777779 / r4.w;
  r4.w = max(1, r4.w);
  r3.w = r4.w * r3.w;
  r4.w = cb0[128].z * r4.w;
  r6.xy = r0.ww * r3.ww + -cb2[63].yz;
  r0.w = saturate(r6.y / cb2[65].x);
  r3.w = saturate(r6.x / cb2[63].w);
  r6.x = cb2[64].x + -cb2[64].y;
  r3.w = r3.w * r6.x + cb2[64].y;
  r0.w = cb2[65].y * r0.w + r3.w;
  r0.w = cb2[65].w * r0.w;
  r7.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r8.x = t0[r7.x].val[0/4];
  r8.y = t0[r7.x].val[0/4+1];
  r8.z = t0[r7.x].val[0/4+2];
  r8.w = t0[r7.x].val[0/4+3];
  r4.xyz = r8.zzz * r4.xyz;
  r3.xyz = r8.xxx * r3.xyz;
  r1.xyz = r8.yyy * r1.xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r9.xyzw = t2.Load(r3.w).xyzw;
  r6.yzw = r9.yyy * r1.xyz;
  r6.yzw = r9.xxx * r3.xyz + r6.yzw;
  r6.yzw = r9.zzz * r4.xyz + r6.yzw;
  r3.w = dot(r6.yzw, r6.yzw);
  r3.w = sqrt(r3.w);
  r8.xyz = r6.yzw / r3.www;
  o4.xyz = r6.yzw;
  r6.yzw = -r8.xyz * r0.www;
  r0.w = cb2[66].x * r5.z;
  o5.xyzw = r5.zyxw;
  r2.xyz = r6.yzw * r0.www + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r5.xyzw = cb0[1].xyzw * r0.yyyy;
  r5.xyzw = r0.xxxx * cb0[0].xyzw + r5.xyzw;
  r5.xyzw = r0.zzzz * cb0[2].xyzw + r5.xyzw;
  r5.xyzw = cb0[3].xyzw + r5.xyzw;
  r0.x = 0.00100000005 * r5.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r5.z + r0.x;
  o0.xyw = r5.xyw;
  o1.xyzw = r5.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.xyz = cb0[113].xyz + r0.xyz;
  r5.w = r0.x;
  r10.x = t0[r7.y].val[0/4+1];
  r10.y = t0[r7.y].val[0/4];
  r10.z = t0[r7.y].val[0/4+2];
  r5.x = r10.y;
  r11.x = t0[r7.z].val[0/4];
  r11.y = t0[r7.z].val[0/4+2];
  r11.z = t0[r7.z].val[0/4+1];
  r2.x = t0[r7.w].val[0/4];
  r2.y = t0[r7.w].val[0/4+1];
  r2.z = t0[r7.w].val[0/4+2];
  r5.y = r11.x;
  r5.z = r2.x;
  r5.x = dot(v0.xyzw, r5.xyzw);
  r10.w = r0.y;
  r11.w = r0.z;
  r11.x = r10.z;
  r10.y = r11.z;
  r10.z = r2.y;
  r11.z = r2.z;
  r5.z = dot(v0.xyzw, r11.xyzw);
  r5.y = dot(v0.xyzw, r10.xyzw);
  r0.xyz = -cb0[113].xyz + r5.xyz;
  r0.xyz = cb0[111].xyz + -r0.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = sqrt(r2.x);
  r0.xyz = r0.xyz / r2.xxx;
  r2.x = r4.w * r2.x;
  r2.xy = r2.xx * float2(0.763943851,0.763943851) + -cb2[63].yz;
  r0.xyz = r0.xyz * r2.www;
  r0.xyz = cb2[66].yyy * r0.xyz;
  r2.x = saturate(r2.x / cb2[63].w);
  r2.y = saturate(r2.y / cb2[65].x);
  r2.x = r2.x * r6.x + cb2[64].y;
  r2.x = cb2[65].y * r2.y + r2.x;
  r2.x = cb2[65].w * r2.x;
  r2.xyz = -r8.xyz * r2.xxx;
  r0.xyz = r2.xyz * r0.www + r0.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (uint)r1.w << 1;
  r0.y = (int)r1.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyz = t2.Load(r0.x).xyz;
  r2.xyz = r9.yzx * r0.xyz;
  r0.xyz = r9.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r9.www;
  r2.xyz = r0.xyz * r9.yzx;
  r0.xyz = r0.zxy * r9.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r9.www;
  o4.w = r9.w * r8.w;
  r1.xyz = r0.yyy * r1.xyz;
  r0.xyw = r0.xxx * r3.xyz + r1.xyz;
  o3.xyz = r0.zzz * r4.xyz + r0.xyw;
  o3.w = 0;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}
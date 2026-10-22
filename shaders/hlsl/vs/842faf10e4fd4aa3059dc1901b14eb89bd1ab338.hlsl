// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  r0.w = cb0[142].z * cb3[14].z + r0.y;
  r1.y = cb3[15].y * r0.w;
  r0.w = floor(r1.y);
  r0.w = (int)r0.w;
  r0.w = mad((int)r0.w, 0x0019660d, 0xd17070a0);
  r1.z = mad(0x3c6ef35f, (int)r0.w, 0x3c6ef35f);
  r1.w = mad((int)r0.w, (int)r1.z, 0x3c6ef35f);
  r0.w = mad((int)r1.z, (int)r1.w, (int)r0.w);
  r1.z = mad((int)r1.w, (int)r0.w, (int)r1.z);
  r0.w = mad((int)r0.w, (int)r1.z, (int)r1.w);
  r0.w = (uint)r0.w >> 16;
  r0.w = (uint)r0.w;
  r0.w = r0.w * 1.52590223e-006 + 0.100000001;
  r1.z = cb0[142].z * cb3[15].z + r0.z;
  r1.z = cb3[15].w * r1.z;
  r1.x = cb0[142].z * r0.w + r1.z;
  r0.w = t3.SampleLevel(s0_s, r1.xy, -1).x;
  r1.x = -0.5 + r0.w;
  r0.w = r0.w * cb3[17].z + -cb3[17].z;
  r0.w = saturate(cb3[18].y + r0.w);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.x = dot(r1.xx, cb3[16].yy);
  r1.xy = r1.xx + r0.yz;
  r1.xy = -cb3[7].xy + r1.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb3[18].z;
  r1.x = 1 + -r1.x;
  r1.y = cb3[18].w * r1.x;
  r1.y = r1.y * r1.y;
  r1.y = 1.44269514 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = 1 / r1.y;
  r1.y = 1 + -r1.y;
  r1.y = -r1.y * 0.899999976 + 1;
  r1.z = cmp(r1.x >= 0);
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r1.y = r1.z ? r1.y : 1;
  r1.x = r1.x ? r1.y : 1;
  r0.w = -r0.w * r1.x + 1;
  r0.w = 1 + -r0.w;
  r1.x = asint(cb1[0].y) + -1;
  r1.xy = min(uint2(2,3), (uint2)r1.xx);
  r1.xy = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r1.xy);
  r1.x = t1.Load(r1.x).y;
  r1.zw = t1.Load(r1.y).xy;
  r1.y = (int)v1.x * 36;
  r2.x = mad((int)v1.x, 36, 2);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r3.z = r2.x;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r1.y].val[0/4];
  r5.y = t0[r1.y].val[0/4+1];
  r5.z = t0[r1.y].val[0/4+2];
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+1];
  r4.w = t0[r4.x].val[0/4+2];
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r6.xyz = cb0[70].xyz + r6.xyz;
  r3.y = r4.x;
  r3.x = r5.x;
  r3.x = dot(r1.xzw, r3.xyz);
  r7.y = r4.z;
  r7.z = r2.y;
  r7.x = r5.y;
  r3.y = dot(r1.xzw, r7.xyz);
  r7.y = r4.w;
  r7.z = r2.z;
  r7.x = r5.z;
  r3.z = dot(r1.xzw, r7.xyz);
  r7.xyz = cb3[21].yyy * r3.xyz;
  r7.xyz = r0.www * r7.xyz + -r3.xyz;
  r8.xyz = v0.yyy * r4.xzw;
  r8.xyz = r5.xyz * v0.xxx + r8.xyz;
  r8.xyz = r2.xyz * v0.zzz + r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r8.xyz = -cb0[70].xyz + r6.xyz;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,10,11));
  r10.x = t0[r9.y].val[0/4];
  r10.y = t0[r9.y].val[0/4+1];
  r10.z = t0[r9.y].val[0/4+2];
  r8.xyz = r10.xyz + -r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.00499999989 * r0.w;
  r0.w = min(1, r0.w);
  r0.w = r0.w * 5 + -5;
  r0.w = saturate(cb2[2].w * 6 + r0.w);
  r3.xyz = r0.www * r7.xyz + r3.xyz;
  r3.xyz = r6.xyz + r3.xyz;
  r6.xyzw = cb0[1].xyzw * r3.yyyy;
  r6.xyzw = r3.xxxx * cb0[0].xyzw + r6.xyzw;
  r3.xyzw = r3.zzzz * cb0[2].xyzw + r6.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r0.w = 0.00100000005 * r3.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r0.w = r1.y ? r0.w : 0;
  o0.z = r3.z + r0.w;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r0.w = cb0[139].z * cb3[14].z + r0.y;
  r3.y = cb3[15].y * r0.w;
  r0.w = floor(r3.y);
  r0.w = (int)r0.w;
  r0.w = mad((int)r0.w, 0x0019660d, 0xd17070a0);
  r1.y = mad(0x3c6ef35f, (int)r0.w, 0x3c6ef35f);
  r2.w = mad((int)r0.w, (int)r1.y, 0x3c6ef35f);
  r0.w = mad((int)r1.y, (int)r2.w, (int)r0.w);
  r1.y = mad((int)r2.w, (int)r0.w, (int)r1.y);
  r0.w = mad((int)r0.w, (int)r1.y, (int)r2.w);
  r0.w = (uint)r0.w >> 16;
  r0.w = (uint)r0.w;
  r0.w = r0.w * 1.52590223e-006 + 0.100000001;
  r1.y = cb0[139].z * cb3[15].z + r0.z;
  r1.y = cb3[15].w * r1.y;
  r3.x = cb0[139].z * r0.w + r1.y;
  r0.w = t3.SampleLevel(s0_s, r3.xy, -1).x;
  r1.y = -0.5 + r0.w;
  r0.w = r0.w * cb3[17].z + -cb3[17].z;
  r0.w = saturate(cb3[18].y + r0.w);
  r0.w = 1 + -r0.w;
  r1.y = dot(r1.yy, cb3[16].yy);
  r3.xy = r1.yy + r0.yz;
  o5.xy = r0.yz;
  r0.yz = -cb3[7].xy + r3.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb3[18].z;
  r0.yw = float2(1,1) + -r0.yw;
  r0.z = cb3[18].w * r0.y;
  r0.z = r0.z * r0.z;
  r0.z = 1.44269514 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 / r0.z;
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * 0.899999976 + 1;
  r1.y = cmp(r0.y >= 0);
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r1.y ? r0.z : 1;
  r0.y = r0.y ? r0.z : 1;
  r0.y = -r0.w * r0.y + 1;
  r0.y = 1 + -r0.y;
  r3.x = t0[r9.z].val[0/4+1];
  r3.y = t0[r9.z].val[0/4];
  r3.z = t0[r9.z].val[0/4+2];
  r6.x = r3.y;
  r7.x = t0[r9.w].val[0/4];
  r7.y = t0[r9.w].val[0/4+2];
  r7.z = t0[r9.w].val[0/4+1];
  r8.x = t0[r9.x].val[0/4];
  r8.y = t0[r9.x].val[0/4+1];
  r8.z = t0[r9.x].val[0/4+2];
  r8.w = t0[r9.x].val[0/4+3];
  r6.y = r7.x;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r11.x = t0[r0.w].val[0/4];
  r11.y = t0[r0.w].val[0/4+1];
  r11.z = t0[r0.w].val[0/4+2];
  r11.xyz = cb0[113].xyz + r11.xyz;
  r6.z = r9.x;
  r12.x = dot(r1.xzw, r6.xyz);
  r7.x = r3.z;
  r3.y = r7.z;
  r3.z = r9.y;
  r7.z = r9.z;
  r12.y = dot(r1.xzw, r3.xyz);
  r12.z = dot(r1.xzw, r7.xyz);
  r1.xyz = cb3[21].yyy * r12.xyz;
  r0.yzw = r0.yyy * r1.xyz + -r12.xyz;
  r6.w = r11.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r3.w = r11.y;
  r7.w = r11.z;
  r1.z = dot(v0.xyzw, r7.xyzw);
  r1.y = dot(v0.xyzw, r3.xyzw);
  r3.xyz = -cb0[113].xyz + r1.xyz;
  r3.xyz = r10.xyz + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = 0.00499999989 * r1.w;
  r1.w = min(1, r1.w);
  r2.w = 6 * cb2[2].w;
  r1.w = r1.w * 5 + r2.w;
  r1.w = saturate(-5 + r1.w);
  r0.yzw = r1.www * r0.yzw + r12.xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyzw = cb0[92].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[91].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.y = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r0.x).xyzw;
  r0.xyz = t2.Load(r0.y).xyz;
  r3.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r3.xyz;
  r0.xyz = r0.xyz * r1.www;
  r3.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r1.www;
  r3.xyz = r8.yyy * r4.xzw;
  r4.xyz = r3.xyz * r0.yyy;
  r3.xyz = r3.xyz * r1.yyy;
  r5.xyz = r8.xxx * r5.xyz;
  r0.xyw = r0.xxx * r5.xyz + r4.xyz;
  r3.xyz = r1.xxx * r5.xyz + r3.xyz;
  r2.xyz = r8.zzz * r2.xyz;
  o4.w = r1.w * r8.w;
  o4.xyz = r1.zzz * r2.xyz + r3.xyz;
  o3.xyz = r0.zzz * r2.xyz + r0.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}
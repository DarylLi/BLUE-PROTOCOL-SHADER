// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  out float4 o3 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.763943851 * cb0[128].x;
  r0.y = cb0[130].x / cb0[130].y;
  r0.y = 1.77777779 / r0.y;
  r0.y = max(1, r0.y);
  r0.x = r0.x * r0.y;
  r0.y = cb0[128].z * r0.y;
  r0.z = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xzw;
  r4.x = t0[r0.z].val[0/4];
  r4.y = t0[r0.z].val[0/4+1];
  r4.z = t0[r0.z].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.xw = r0.zz * r0.xx + -cb2[6].zw;
  r3.xyz = r3.xyz / r0.zzz;
  r0.z = saturate(r0.w / cb2[8].y);
  r0.x = saturate(r0.x / cb2[7].x);
  r0.w = cb2[7].y + -cb2[7].z;
  r0.x = r0.x * r0.w + cb2[7].z;
  r0.x = cb2[8].z * r0.z + r0.x;
  r0.x = cb2[9].x * r0.x;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r1.xyz = r7.yyy * r1.xzw;
  r0.z = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.z = (int)r0.z & asint(cb1[0].x);
  r8.xyzw = t2.Load(r0.z).xyzw;
  r9.xyz = t1.Load(r1.w).xyz;
  r1.xyz = r9.yyy * r1.xyz;
  r4.xyz = r7.xxx * r4.xyz;
  r5.xyz = r7.zzz * r5.xyz;
  r1.xyz = r9.xxx * r4.xyz + r1.xyz;
  r1.xyz = r9.zzz * r5.xyz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r1.xyz = r1.xyz / r0.zzz;
  r4.xyz = -r1.xyz * r0.xxx;
  r0.x = 1 + -r8.y;
  r3.xyz = r3.xyz * r0.xxx;
  r3.xyz = cb2[9].zzz * r3.xyz;
  r0.z = cb2[9].y * r8.z;
  o3.xyzw = r8.zyxw;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyzw = cb0[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[0].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[2].xyzw + r3.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.w = 0.00100000005 * r2.w;
  r3.x = cmp(1 < asint(cb0[135].x));
  r1.w = r3.x ? r1.w : 0;
  o0.z = r2.z + r1.w;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r1.w = mad((int)v1.x, 36, 13);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r3.w = r2.x;
  r4.x = t0[r6.y].val[0/4+1];
  r4.y = t0[r6.y].val[0/4];
  r4.z = t0[r6.y].val[0/4+2];
  r3.x = r4.y;
  r5.x = t0[r6.z].val[0/4];
  r5.y = t0[r6.z].val[0/4+2];
  r5.z = t0[r6.z].val[0/4+1];
  r6.x = t0[r6.w].val[0/4];
  r6.y = t0[r6.w].val[0/4+1];
  r6.z = t0[r6.w].val[0/4+2];
  r3.y = r5.x;
  r3.z = r6.x;
  r3.x = dot(v0.xyzw, r3.xyzw);
  r4.w = r2.y;
  r5.w = r2.z;
  r5.x = r4.z;
  r4.y = r5.z;
  r4.z = r6.y;
  r5.z = r6.z;
  r3.z = dot(v0.xyzw, r5.xyzw);
  r3.y = dot(v0.xyzw, r4.xyzw);
  r2.xyz = -cb0[113].xyz + r3.xyz;
  r2.xyz = cb0[111].xyz + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r0.y = r1.w * r0.y;
  r2.xyz = r2.xyz / r1.www;
  r2.xyz = r2.xyz * r0.xxx;
  r2.xyz = cb2[9].zzz * r2.xyz;
  r0.xy = r0.yy * float2(0.763943851,0.763943851) + -cb2[6].zw;
  r0.x = saturate(r0.x / cb2[7].x);
  r0.y = saturate(r0.y / cb2[8].y);
  r0.x = r0.x * r0.w + cb2[7].z;
  r0.x = cb2[8].z * r0.y + r0.x;
  r0.x = cb2[9].x * r0.x;
  r0.xyw = -r1.xyz * r0.xxx;
  r0.xyz = r0.xyw * r0.zzz + r2.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}
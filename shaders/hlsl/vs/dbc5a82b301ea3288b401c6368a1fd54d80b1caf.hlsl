// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[74];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.x = (int)r0.x & asint(cb1[0].x);
  r0.xz = t2.Load(r0.x).yz;
  r1.xyz = t1.Load(r0.y).xyz;
  r0.y = mad((int)v1.x, 36, 4);
  r2.x = t0[r0.y].val[0/4];
  r2.y = t0[r0.y].val[0/4+1];
  r2.z = t0[r0.y].val[0/4+2];
  r0.y = (int)v1.x * 36;
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+1];
  r4.z = t0[r3.y].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r5.xyz = r3.xzw * r2.yyy;
  r3.xyz = v0.yyy * r3.xzw;
  r5.xyz = r5.xyz * r1.yyy;
  r6.x = t0[r0.y].val[0/4];
  r6.y = t0[r0.y].val[0/4+1];
  r6.z = t0[r0.y].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r7.x = t0[r0.y].val[0/4];
  r7.y = t0[r0.y].val[0/4+1];
  r7.z = t0[r0.y].val[0/4+2];
  r2.xyw = r6.xyz * r2.xxx;
  r3.xyz = r6.xyz * v0.xxx + r3.xyz;
  r3.xyz = r7.xyz * v0.zzz + r3.xyz;
  r6.xyz = r7.xyz * r2.zzz;
  r3.xyz = r3.xyz + r4.xyz;
  r1.xyw = r1.xxx * r2.xyw + r5.xyz;
  r1.xyz = r1.zzz * r6.xyz + r1.xyw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r1.xyz = r1.xyz / r0.yyy;
  r0.y = cb0[130].x / cb0[130].y;
  r0.y = 1.77777779 / r0.y;
  r0.y = max(1, r0.y);
  r0.w = 0.763943851 * cb0[128].x;
  r0.y = r0.w * r0.y;
  r2.xyz = -cb0[70].xyz + r3.xyz;
  r4.xyz = cb0[67].xyz + -r2.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w * r0.y + -cb2[70].w;
  r0.y = r0.w * r0.y + -cb2[71].x;
  r4.xyz = r4.xyz / r0.www;
  r0.y = saturate(r0.y / cb2[72].z);
  r0.w = saturate(r1.w / cb2[71].y);
  r1.w = cb2[71].z + -cb2[71].w;
  r0.w = r0.w * r1.w + cb2[71].w;
  r0.y = cb2[72].w * r0.y + r0.w;
  r0.y = cb2[73].y * r0.y;
  r1.xyz = -r1.xyz * r0.yyy;
  r0.x = 1 + -r0.x;
  r0.y = cb2[73].z * r0.z;
  r0.xzw = r4.xyz * r0.xxx;
  r0.xzw = cb2[73].www * r0.xzw;
  r0.xyz = r1.xyz * r0.yyy + r0.xzw;
  r1.xyz = r2.xyz + r0.xyz;
  r4.xyz = -cb2[35].xyz + r1.xyz;
  r0.w = dot(cb2[39].xyz, r4.xyz);
  r4.xyz = cb2[39].xyz * r0.www + cb2[35].xyz;
  r5.xyz = -r4.xyz + r1.xyz;
  r6.xyz = cb2[39].zxy * r5.yzx;
  r6.xyz = cb2[39].yzx * r5.zxy + -r6.xyz;
  r7.xyz = -cb2[35].xyz + r2.xyz;
  r2.xyz = cb2[37].xyz + -r2.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb2[69].y;
  r0.w = r0.w * 2 + cb2[70].x;
  r0.w = saturate(-2 + r0.w);
  r7.xy = float2(3.14159274,6.28318548) * r0.ww;
  r7.xz = sin(r7.xy);
  r1.w = cos(r7.y);
  r6.xyz = r7.zzz * r6.xyz;
  r7.z = 50 * r7.x;
  r5.xyz = r5.xyz * r1.www + r6.xyz;
  r4.xyz = r5.xyz + r4.xyz;
  r1.xyz = r4.xyz + -r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + -r2.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r7.xy = float2(0,0);
  r0.xyz = r7.xyz + r0.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
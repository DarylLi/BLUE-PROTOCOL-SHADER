// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[211];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[147];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r0.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 4);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r5.w = t0[r0.w].val[0/4+3];
  r6.xyz = r5.xxx * r2.xyz;
  r7.xyz = r5.yyy * r3.xzw;
  r5.xyz = r5.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.yyy;
  r0.xyw = r0.xxx * r6.xyz + r8.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r7.xyz * r1.yyy;
  r0.xyz = r1.xxx * r6.xyz + r0.xyz;
  o1.xyz = r1.zzz * r5.xyz + r0.xyz;
  o1.w = r5.w * r1.w;
  r0.x = t0[r3.y].val[0/4];
  r0.y = t0[r3.y].val[0/4+1];
  r0.z = t0[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r2.xyz = -cb1[68].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r3.x = dot(r2.xyz, cb1[60].xyz);
  r0.w = r0.w / r3.x;
  r0.w = cb1[210].z * r0.w;
  r0.w = max(0, r0.w);
  r3.x = min(cb1[67].z, cb0[143].z);
  r3.y = cb1[67].z + -r3.x;
  r2.w = r3.y + r2.z;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.y = rsqrt(r2.x);
  r2.x = r2.x * r2.y;
  r0.w = max(cb0[143].w, r0.w);
  r2.z = cmp(0 < r0.w);
  r3.y = r0.w * r2.y;
  r3.x = r3.y * r2.w + r3.x;
  r3.y = -r3.y * r2.w + r2.w;
  r0.w = -r0.w * r2.y + 1;
  r0.w = r0.w * r2.x;
  r2.y = -cb0[146].y + r3.x;
  r2.y = cb0[143].y * r2.y;
  r2.y = max(-127, r2.y);
  r2.y = exp2(-r2.y);
  r2.y = cb0[146].x * r2.y;
  r3.x = -cb0[144].w + r3.x;
  r3.x = cb0[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb0[144].z * r3.x;
  r2.y = r2.z ? r2.y : cb0[143].x;
  r3.x = r2.z ? r3.x : cb0[144].x;
  r0.w = r2.z ? r0.w : r2.x;
  r2.z = r2.z ? r3.y : r2.w;
  r2.w = cb0[143].y * r2.z;
  r2.w = max(-127, r2.w);
  r3.y = exp2(-r2.w);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r2.w;
  r3.z = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r3.y : r3.z;
  r2.z = cb0[144].y * r2.z;
  r2.z = max(-127, r2.z);
  r3.y = exp2(-r2.z);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r2.z;
  r3.z = -r2.z * 0.240226507 + 0.693147182;
  r2.z = cmp(0.00999999978 < abs(r2.z));
  r2.z = r2.z ? r3.y : r3.z;
  r2.z = r3.x * r2.z;
  r2.y = r2.y * r2.w + r2.z;
  r0.w = r2.y * r0.w;
  r0.w = exp2(-r0.w);
  r0.w = min(1, r0.w);
  r0.w = max(cb0[145].w, r0.w);
  r2.y = cmp(0 < cb0[146].w);
  r2.x = cmp(cb0[146].w < r2.x);
  r2.x = r2.x ? r2.y : 0;
  r0.w = r2.x ? 1 : r0.w;
  r2.x = cmp(0 < cb1[182].y);
  if (r2.x != 0) {
    r2.x = cmp(0 != cb1[184].x);
    r2.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r3.xy = r1.xy / r1.ww;
    r3.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r2.yzw;
    r2.y = dot(r0.xyz, r0.xyz);
    r2.z = sqrt(r2.y);
    r2.z = -cb1[181].x + r2.z;
    r2.z = max(0, r2.z);
    r2.z = cb1[182].x * r2.z;
    r2.z = cb1[181].z * r2.z;
    r4.z = sqrt(r2.z);
    r2.z = cb1[181].y * r4.z;
    r2.w = cmp(r2.z < 0.707106769);
    r2.z = dot(r2.zz, r2.zz);
    r2.z = min(1, r2.z);
    r2.z = r2.w ? r2.z : 1;
    r2.y = rsqrt(r2.y);
    r0.xyz = r2.yyy * r0.xyz;
    r2.y = -r0.z * r0.z + 1;
    r2.y = sqrt(r2.y);
    r5.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r2.yy;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r2.y = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r2.y = r2.y * abs(r0.x) + -0.212114394;
    r2.y = r2.y * abs(r0.x) + 1.57072878;
    r2.w = r2.y * r0.z;
    r2.w = r2.w * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r2.w : 0;
    r0.x = r2.y * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r5.x = 0.159154937 * r0.x;
    r0.xy = cb1[180].zw * float2(0.5,0.5) + r5.xy;
    r2.yw = float2(1,1) + cb1[180].xy;
    r2.yw = cb1[180].xy / r2.yw;
    r0.xy = r2.yw * r0.xy;
    r4.xy = r2.xx ? r0.xy : r3.xy;
    r3.xyzw = t1.SampleLevel(s0_s, r4.xyz, 0).xyzw;
    r0.xyz = r3.xyz * r2.zzz;
    r2.x = 1 + -r3.w;
    r2.x = -r2.z * r2.x + 1;
    r0.xyz = cb1[135].zzz * r0.xyz;
    o3.xyz = r0.xyz * r0.www;
    o3.w = r2.x * r0.w;
  } else {
    o3.xyz = float3(0,0,0);
    o3.w = r0.w;
  }
  o0.w = 0;
  o4.xyzw = r1.xyzw;
  o2.x = v1.x;
  return;
}
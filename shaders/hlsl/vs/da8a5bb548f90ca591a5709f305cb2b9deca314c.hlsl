// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

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
  out float4 o2 : COLOR0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (int)r0.x & asint(cb2[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t2.Load(r0.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.xyz = r2.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.w = (int)v1.x * 36;
  r3.x = t0[r0.w].val[0/4];
  r3.y = t0[r0.w].val[0/4+1];
  r3.z = t0[r0.w].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+1];
  r4.w = t0[r4.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 4);
  r6.x = t0[r0.w].val[0/4];
  r6.y = t0[r0.w].val[0/4+1];
  r6.z = t0[r0.w].val[0/4+2];
  r6.w = t0[r0.w].val[0/4+3];
  r7.xyz = r6.xxx * r3.xyz;
  r8.xyz = r6.yyy * r4.xzw;
  r6.xyz = r6.zzz * r5.xyz;
  r9.xyz = r8.xyz * r0.yyy;
  r0.xyw = r0.xxx * r7.xyz + r9.xyz;
  o0.xyz = r0.zzz * r6.xyz + r0.xyw;
  r0.xyz = r8.xyz * r2.yyy;
  r0.xyz = r2.xxx * r7.xyz + r0.xyz;
  o1.xyz = r2.zzz * r6.xyz + r0.xyz;
  o1.w = r6.w * r2.w;
  r0.x = t0[r4.y].val[0/4];
  r0.y = t0[r4.y].val[0/4+1];
  r0.z = t0[r4.y].val[0/4+2];
  r2.xyz = v0.yyy * r4.xzw;
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r5.xyz * v0.zzz + r2.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb1[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r3.xyz = -cb1[68].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r4.x = dot(r3.xyz, cb1[60].xyz);
  r0.w = r0.w / r4.x;
  r0.w = cb1[210].z * r0.w;
  r0.w = max(0, r0.w);
  r4.x = min(cb1[67].z, cb0[143].z);
  r4.y = cb1[67].z + -r4.x;
  r3.w = r4.y + r3.z;
  r3.x = dot(r3.xyw, r3.xyw);
  r3.y = rsqrt(r3.x);
  r3.x = r3.x * r3.y;
  r0.w = max(cb0[143].w, r0.w);
  r3.z = cmp(0 < r0.w);
  r4.y = r0.w * r3.y;
  r4.x = r4.y * r3.w + r4.x;
  r4.y = -r4.y * r3.w + r3.w;
  r0.w = -r0.w * r3.y + 1;
  r0.w = r0.w * r3.x;
  r3.y = -cb0[146].y + r4.x;
  r3.y = cb0[143].y * r3.y;
  r3.y = max(-127, r3.y);
  r3.y = exp2(-r3.y);
  r3.y = cb0[146].x * r3.y;
  r4.x = -cb0[144].w + r4.x;
  r4.x = cb0[144].y * r4.x;
  r4.x = max(-127, r4.x);
  r4.x = exp2(-r4.x);
  r4.x = cb0[144].z * r4.x;
  r3.y = r3.z ? r3.y : cb0[143].x;
  r4.x = r3.z ? r4.x : cb0[144].x;
  r0.w = r3.z ? r0.w : r3.x;
  r3.z = r3.z ? r4.y : r3.w;
  r3.w = cb0[143].y * r3.z;
  r3.w = max(-127, r3.w);
  r4.y = exp2(-r3.w);
  r4.y = 1 + -r4.y;
  r4.y = r4.y / r3.w;
  r4.z = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r4.y : r4.z;
  r3.z = cb0[144].y * r3.z;
  r3.z = max(-127, r3.z);
  r4.y = exp2(-r3.z);
  r4.y = 1 + -r4.y;
  r4.y = r4.y / r3.z;
  r4.z = -r3.z * 0.240226507 + 0.693147182;
  r3.z = cmp(0.00999999978 < abs(r3.z));
  r3.z = r3.z ? r4.y : r4.z;
  r3.z = r4.x * r3.z;
  r3.y = r3.y * r3.w + r3.z;
  r0.w = r3.y * r0.w;
  r0.w = exp2(-r0.w);
  r0.w = min(1, r0.w);
  r0.w = max(cb0[145].w, r0.w);
  r3.y = cmp(0 < cb0[146].w);
  r3.x = cmp(cb0[146].w < r3.x);
  r3.x = r3.x ? r3.y : 0;
  r0.w = r3.x ? 1 : r0.w;
  r3.x = cmp(0 < cb1[182].y);
  if (r3.x != 0) {
    r3.x = cmp(0 != cb1[184].x);
    r3.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r4.xy = r2.xy / r2.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.yzw;
    r3.y = dot(r0.xyz, r0.xyz);
    r3.z = sqrt(r3.y);
    r3.z = -cb1[181].x + r3.z;
    r3.z = max(0, r3.z);
    r3.z = cb1[182].x * r3.z;
    r3.z = cb1[181].z * r3.z;
    r5.z = sqrt(r3.z);
    r3.z = cb1[181].y * r5.z;
    r3.w = cmp(r3.z < 0.707106769);
    r3.z = dot(r3.zz, r3.zz);
    r3.z = min(1, r3.z);
    r3.z = r3.w ? r3.z : 1;
    r3.y = rsqrt(r3.y);
    r0.xyz = r3.yyy * r0.xyz;
    r3.y = -r0.z * r0.z + 1;
    r3.y = sqrt(r3.y);
    r6.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r3.yy;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r3.y = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r3.y = r3.y * abs(r0.x) + -0.212114394;
    r3.y = r3.y * abs(r0.x) + 1.57072878;
    r3.w = r3.y * r0.z;
    r3.w = r3.w * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r3.w : 0;
    r0.x = r3.y * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r6.x = 0.159154937 * r0.x;
    r0.xy = cb1[180].zw * float2(0.5,0.5) + r6.xy;
    r3.yw = float2(1,1) + cb1[180].xy;
    r3.yw = cb1[180].xy / r3.yw;
    r0.xy = r3.yw * r0.xy;
    r5.xy = r3.xx ? r0.xy : r4.xy;
    r4.xyzw = t1.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r0.xyz = r4.xyz * r3.zzz;
    r3.x = 1 + -r4.w;
    r3.x = -r3.z * r3.x + 1;
    r0.xyz = cb1[135].zzz * r0.xyz;
    o4.xyz = r0.xyz * r0.www;
    o4.w = r3.x * r0.w;
  } else {
    o4.xyz = float3(0,0,0);
    o4.w = r0.w;
  }
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o5.xyzw = r2.xyzw;
  o3.x = v1.x;
  return;
}
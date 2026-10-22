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
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r2.w].val[0/4];
  r4.y = t0[r2.w].val[0/4+1];
  r4.z = t0[r2.w].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 4);
  r5.x = t0[r2.w].val[0/4];
  r5.y = t0[r2.w].val[0/4+1];
  r5.z = t0[r2.w].val[0/4+2];
  r5.w = t0[r2.w].val[0/4+3];
  r6.xyz = r5.xxx * r2.xyz;
  r7.xyz = r5.yyy * r3.xzw;
  r5.xyz = r5.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.zzz;
  r8.xyz = r0.yyy * r6.xyz + r8.xyz;
  o0.xyz = r0.www * r5.xyz + r8.xyz;
  r0.yzw = r7.xyz * r1.yyy;
  r0.yzw = r1.xxx * r6.xyz + r0.yzw;
  o1.xyz = r1.zzz * r5.xyz + r0.yzw;
  o1.w = r5.w * r1.w;
  r0.y = t0[r3.y].val[0/4];
  r0.z = t0[r3.y].val[0/4+1];
  r0.w = t0[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.yzw = r1.xyz + r0.yzw;
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.xy = t2.Load(r0.x).xy;
  r2.xyzw = cb1[1].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r3.xyz = -cb1[68].xyz + r0.yzw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r1.z = dot(r3.xyz, cb1[60].xyz);
  r0.x = r0.x / r1.z;
  r0.x = cb1[210].z * r0.x;
  r0.x = max(0, r0.x);
  r1.z = min(cb1[67].z, cb0[143].z);
  r1.w = cb1[67].z + -r1.z;
  r3.w = r3.z + r1.w;
  r1.w = dot(r3.xyw, r3.xyw);
  r3.x = rsqrt(r1.w);
  r1.w = r3.x * r1.w;
  r0.x = max(cb0[143].w, r0.x);
  r3.y = cmp(0 < r0.x);
  r3.z = r0.x * r3.x;
  r1.z = r3.z * r3.w + r1.z;
  r3.z = -r3.z * r3.w + r3.w;
  r0.x = -r0.x * r3.x + 1;
  r0.x = r0.x * r1.w;
  r3.x = -cb0[146].y + r1.z;
  r3.x = cb0[143].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb0[146].x * r3.x;
  r1.z = -cb0[144].w + r1.z;
  r1.z = cb0[144].y * r1.z;
  r1.z = max(-127, r1.z);
  r1.z = exp2(-r1.z);
  r1.z = cb0[144].z * r1.z;
  r3.x = r3.y ? r3.x : cb0[143].x;
  r1.z = r3.y ? r1.z : cb0[144].x;
  r0.x = r3.y ? r0.x : r1.w;
  r3.y = r3.y ? r3.z : r3.w;
  r3.z = cb0[143].y * r3.y;
  r3.z = max(-127, r3.z);
  r3.w = exp2(-r3.z);
  r3.w = 1 + -r3.w;
  r3.w = r3.w / r3.z;
  r4.x = -r3.z * 0.240226507 + 0.693147182;
  r3.z = cmp(0.00999999978 < abs(r3.z));
  r3.z = r3.z ? r3.w : r4.x;
  r3.y = cb0[144].y * r3.y;
  r3.y = max(-127, r3.y);
  r3.w = exp2(-r3.y);
  r3.w = 1 + -r3.w;
  r3.w = r3.w / r3.y;
  r4.x = -r3.y * 0.240226507 + 0.693147182;
  r3.y = cmp(0.00999999978 < abs(r3.y));
  r3.y = r3.y ? r3.w : r4.x;
  r1.z = r3.y * r1.z;
  r1.z = r3.x * r3.z + r1.z;
  r0.x = r1.z * r0.x;
  r0.x = exp2(-r0.x);
  r0.x = min(1, r0.x);
  r0.x = max(cb0[145].w, r0.x);
  r1.z = cmp(0 < cb0[146].w);
  r1.w = cmp(cb0[146].w < r1.w);
  r1.z = r1.w ? r1.z : 0;
  r0.x = r1.z ? 1 : r0.x;
  r1.z = cmp(0 < cb1[182].y);
  if (r1.z != 0) {
    r1.z = cmp(0 != cb1[184].x);
    r3.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r4.xy = r2.xy / r2.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yzw = r0.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.xyz;
    r1.w = dot(r0.yzw, r0.yzw);
    r3.x = sqrt(r1.w);
    r3.x = -cb1[181].x + r3.x;
    r3.x = max(0, r3.x);
    r3.x = cb1[182].x * r3.x;
    r3.x = cb1[181].z * r3.x;
    r3.z = sqrt(r3.x);
    r3.w = cb1[181].y * r3.z;
    r4.z = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.z ? r3.w : 1;
    r1.w = rsqrt(r1.w);
    r0.yzw = r1.www * r0.yzw;
    r1.w = -r0.w * r0.w + 1;
    r1.w = sqrt(r1.w);
    r5.y = r0.w * 0.5 + 0.5;
    r0.yz = r0.yz / r1.ww;
    r0.w = 1 + -abs(r0.y);
    r0.w = sqrt(r0.w);
    r1.w = abs(r0.y) * -0.0187292993 + 0.0742610022;
    r1.w = r1.w * abs(r0.y) + -0.212114394;
    r1.w = r1.w * abs(r0.y) + 1.57072878;
    r4.z = r1.w * r0.w;
    r4.z = r4.z * -2 + 3.14159274;
    r0.y = cmp(r0.y < -r0.y);
    r0.y = r0.y ? r4.z : 0;
    r0.y = r1.w * r0.w + r0.y;
    r0.z = cmp(r0.z < 0);
    r0.w = 6.28318548 + -r0.y;
    r0.y = r0.z ? r0.w : r0.y;
    r5.x = 0.159154937 * r0.y;
    r0.yz = cb1[180].zw * float2(0.5,0.5) + r5.xy;
    r4.zw = float2(1,1) + cb1[180].xy;
    r4.zw = cb1[180].xy / r4.zw;
    r0.yz = r4.zw * r0.yz;
    r3.xy = r1.zz ? r0.yz : r4.xy;
    r4.xyzw = t1.SampleLevel(s0_s, r3.xyz, 0).xyzw;
    r0.yzw = r4.xyz * r3.www;
    r1.z = 1 + -r4.w;
    r1.z = -r3.w * r1.z + 1;
    r0.yzw = cb1[135].zzz * r0.yzw;
    o4.xyz = r0.yzw * r0.xxx;
    o4.w = r1.z * r0.x;
  } else {
    o4.xyz = float3(0,0,0);
    o4.w = r0.x;
  }
  o0.w = 0;
  o2.xy = r1.xy;
  o2.zw = float2(0,0);
  o5.xyzw = r2.xyzw;
  o3.x = v1.x;
  return;
}
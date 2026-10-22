// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

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
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (int)r0.x & asint(cb2[0].x);
  r1.xyzw = t4.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t3.Load(r2.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.yzw = r2.xyz * r0.zwy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.xyz = r0.yzw * r2.yzx;
  r0.yzw = r0.wyz * r2.zxy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.x = (int)v1.x * 36;
  r3.x = t0[r3.x].val[0/4];
  r3.y = t0[r3.x].val[0/4+1];
  r3.z = t0[r3.x].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+1];
  r4.w = t0[r4.x].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 2);
  r5.x = t0[r3.w].val[0/4];
  r5.y = t0[r3.w].val[0/4+1];
  r5.z = t0[r3.w].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 4);
  r6.x = t0[r3.w].val[0/4];
  r6.y = t0[r3.w].val[0/4+1];
  r6.z = t0[r3.w].val[0/4+2];
  r6.w = t0[r3.w].val[0/4+3];
  r7.xyz = r6.xxx * r3.xyz;
  r8.xyz = r6.yyy * r4.xzw;
  r6.xyz = r6.zzz * r5.xyz;
  r9.xyz = r8.xyz * r0.zzz;
  r9.xyz = r0.yyy * r7.xyz + r9.xyz;
  o0.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r2.yyy;
  r0.yzw = r2.xxx * r7.xyz + r0.yzw;
  o1.xyz = r2.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r2.w;
  r0.y = t0[r4.y].val[0/4];
  r0.z = t0[r4.y].val[0/4+1];
  r0.w = t0[r4.y].val[0/4+2];
  r2.xyz = v0.yyy * r4.xzw;
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r5.xyz * v0.zzz + r2.xyz;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.yzw = r2.xyz + r0.yzw;
  r0.x = (int)r0.x * asint(cb2[0].y);
  r2.xy = t2.Load(r0.x).xy;
  r3.xyzw = cb1[1].xyzw * r0.zzzz;
  r3.xyzw = r0.yyyy * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r0.wwww * cb1[2].xyzw + r3.xyzw;
  r3.xyzw = cb1[3].xyzw + r3.xyzw;
  r4.xyz = -cb1[68].xyz + r0.yzw;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r2.z = dot(r4.xyz, cb1[60].xyz);
  r0.x = r0.x / r2.z;
  r0.x = cb1[210].z * r0.x;
  r0.x = max(0, r0.x);
  r2.z = min(cb1[67].z, cb0[143].z);
  r2.w = cb1[67].z + -r2.z;
  r4.w = r4.z + r2.w;
  r2.w = dot(r4.xyw, r4.xyw);
  r4.x = rsqrt(r2.w);
  r2.w = r4.x * r2.w;
  r0.x = max(cb0[143].w, r0.x);
  r4.y = cmp(0 < r0.x);
  r4.z = r0.x * r4.x;
  r2.z = r4.z * r4.w + r2.z;
  r4.z = -r4.z * r4.w + r4.w;
  r0.x = -r0.x * r4.x + 1;
  r0.x = r0.x * r2.w;
  r4.x = -cb0[146].y + r2.z;
  r4.x = cb0[143].y * r4.x;
  r4.x = max(-127, r4.x);
  r4.x = exp2(-r4.x);
  r4.x = cb0[146].x * r4.x;
  r2.z = -cb0[144].w + r2.z;
  r2.z = cb0[144].y * r2.z;
  r2.z = max(-127, r2.z);
  r2.z = exp2(-r2.z);
  r2.z = cb0[144].z * r2.z;
  r4.x = r4.y ? r4.x : cb0[143].x;
  r2.z = r4.y ? r2.z : cb0[144].x;
  r0.x = r4.y ? r0.x : r2.w;
  r4.y = r4.y ? r4.z : r4.w;
  r4.z = cb0[143].y * r4.y;
  r4.z = max(-127, r4.z);
  r4.w = exp2(-r4.z);
  r4.w = 1 + -r4.w;
  r4.w = r4.w / r4.z;
  r5.x = -r4.z * 0.240226507 + 0.693147182;
  r4.z = cmp(0.00999999978 < abs(r4.z));
  r4.z = r4.z ? r4.w : r5.x;
  r4.y = cb0[144].y * r4.y;
  r4.y = max(-127, r4.y);
  r4.w = exp2(-r4.y);
  r4.w = 1 + -r4.w;
  r4.w = r4.w / r4.y;
  r5.x = -r4.y * 0.240226507 + 0.693147182;
  r4.y = cmp(0.00999999978 < abs(r4.y));
  r4.y = r4.y ? r4.w : r5.x;
  r2.z = r4.y * r2.z;
  r2.z = r4.x * r4.z + r2.z;
  r0.x = r2.z * r0.x;
  r0.x = exp2(-r0.x);
  r0.x = min(1, r0.x);
  r0.x = max(cb0[145].w, r0.x);
  r2.z = cmp(0 < cb0[146].w);
  r2.w = cmp(cb0[146].w < r2.w);
  r2.z = r2.w ? r2.z : 0;
  r0.x = r2.z ? 1 : r0.x;
  r2.z = cmp(0 < cb1[182].y);
  if (r2.z != 0) {
    r2.z = cmp(0 != cb1[184].x);
    r4.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r5.xy = r3.xy / r3.ww;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yzw = r0.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.xyz;
    r2.w = dot(r0.yzw, r0.yzw);
    r4.x = sqrt(r2.w);
    r4.x = -cb1[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb1[182].x * r4.x;
    r4.x = cb1[181].z * r4.x;
    r4.z = sqrt(r4.x);
    r4.w = cb1[181].y * r4.z;
    r5.z = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.z ? r4.w : 1;
    r2.w = rsqrt(r2.w);
    r0.yzw = r2.www * r0.yzw;
    r2.w = -r0.w * r0.w + 1;
    r2.w = sqrt(r2.w);
    r6.y = r0.w * 0.5 + 0.5;
    r0.yz = r0.yz / r2.ww;
    r0.w = 1 + -abs(r0.y);
    r0.w = sqrt(r0.w);
    r2.w = abs(r0.y) * -0.0187292993 + 0.0742610022;
    r2.w = r2.w * abs(r0.y) + -0.212114394;
    r2.w = r2.w * abs(r0.y) + 1.57072878;
    r5.z = r2.w * r0.w;
    r5.z = r5.z * -2 + 3.14159274;
    r0.y = cmp(r0.y < -r0.y);
    r0.y = r0.y ? r5.z : 0;
    r0.y = r2.w * r0.w + r0.y;
    r0.z = cmp(r0.z < 0);
    r0.w = 6.28318548 + -r0.y;
    r0.y = r0.z ? r0.w : r0.y;
    r6.x = 0.159154937 * r0.y;
    r0.yz = cb1[180].zw * float2(0.5,0.5) + r6.xy;
    r5.zw = float2(1,1) + cb1[180].xy;
    r5.zw = cb1[180].xy / r5.zw;
    r0.yz = r5.zw * r0.yz;
    r4.xy = r2.zz ? r0.yz : r5.xy;
    r5.xyzw = t1.SampleLevel(s0_s, r4.xyz, 0).xyzw;
    r0.yzw = r5.xyz * r4.www;
    r2.z = 1 + -r5.w;
    r2.z = -r4.w * r2.z + 1;
    r0.yzw = cb1[135].zzz * r0.yzw;
    o5.xyz = r0.yzw * r0.xxx;
    o5.w = r2.z * r0.x;
  } else {
    o5.xyz = float3(0,0,0);
    o5.w = r0.x;
  }
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o6.xyzw = r3.xyzw;
  o4.x = v1.x;
  return;
}
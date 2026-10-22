// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb0[151];
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
  r1.xyzw = t5.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t4.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t4.Load(r2.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.yzw = r2.xyz * r0.zwy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.xyz = r0.yzw * r2.yzx;
  r0.yzw = r0.wyz * r2.zxy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.x = (int)v1.x * 36;
  r3.x = t1[r3.x].val[0/4];
  r3.y = t1[r3.x].val[0/4+1];
  r3.z = t1[r3.x].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t1[r4.x].val[0/4];
  r4.z = t1[r4.x].val[0/4+1];
  r4.w = t1[r4.x].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 2);
  r5.x = t1[r3.w].val[0/4];
  r5.y = t1[r3.w].val[0/4+1];
  r5.z = t1[r3.w].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 4);
  r6.x = t1[r3.w].val[0/4];
  r6.y = t1[r3.w].val[0/4+1];
  r6.z = t1[r3.w].val[0/4+2];
  r6.w = t1[r3.w].val[0/4+3];
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
  r0.y = t1[r4.y].val[0/4];
  r0.z = t1[r4.y].val[0/4+1];
  r0.w = t1[r4.y].val[0/4+2];
  r2.xyz = v0.yyy * r4.xzw;
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r5.xyz * v0.zzz + r2.xyz;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.yzw = r2.xyz + r0.yzw;
  r0.x = (int)r0.x * asint(cb2[0].y);
  r2.xy = t3.Load(r0.x).xy;
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
  r4.z = rsqrt(r2.w);
  r2.w = r4.z * r2.w;
  r0.x = max(cb0[143].w, r0.x);
  r5.x = cmp(0 < r0.x);
  r5.y = r0.x * r4.z;
  r2.z = r5.y * r4.w + r2.z;
  r5.y = -r5.y * r4.w + r4.w;
  r0.x = -r0.x * r4.z + 1;
  r0.x = r0.x * r2.w;
  r5.z = -cb0[146].y + r2.z;
  r5.z = cb0[143].y * r5.z;
  r5.z = max(-127, r5.z);
  r5.z = exp2(-r5.z);
  r5.z = cb0[146].x * r5.z;
  r2.z = -cb0[144].w + r2.z;
  r2.z = cb0[144].y * r2.z;
  r2.z = max(-127, r2.z);
  r2.z = exp2(-r2.z);
  r2.z = cb0[144].z * r2.z;
  r5.z = r5.x ? r5.z : cb0[143].x;
  r2.z = r5.x ? r2.z : cb0[144].x;
  r0.x = r5.x ? r0.x : r2.w;
  r5.x = r5.x ? r5.y : r4.w;
  r5.y = cb0[143].y * r5.x;
  r5.y = max(-127, r5.y);
  r5.w = exp2(-r5.y);
  r5.w = 1 + -r5.w;
  r5.w = r5.w / r5.y;
  r6.x = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r5.w : r6.x;
  r5.x = cb0[144].y * r5.x;
  r5.x = max(-127, r5.x);
  r5.w = exp2(-r5.x);
  r5.w = 1 + -r5.w;
  r5.w = r5.w / r5.x;
  r6.x = -r5.x * 0.240226507 + 0.693147182;
  r5.x = cmp(0.00999999978 < abs(r5.x));
  r5.x = r5.x ? r5.w : r6.x;
  r2.z = r5.x * r2.z;
  r2.z = r5.z * r5.y + r2.z;
  r5.x = r2.z * r0.x;
  r5.yz = cmp(float2(0,0) < cb0[146].zw);
  if (r5.y != 0) {
    r5.y = saturate(r2.w * cb0[150].x + cb0[150].y);
    r6.xy = float2(1,-1) * cb0[149].yx;
    r6.x = dot(r4.xy, r6.xy);
    r6.y = dot(r4.xy, cb0[149].xy);
    r6.z = r4.w;
    r7.xyz = t0.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = t0.SampleLevel(s0_s, r6.xyz, cb0[150].z).xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r6.xyz = r5.yyy * r7.xyz + r6.xyz;
    r6.xyz = cb0[145].xyz * r6.xyz;
  } else {
    r6.xyz = cb0[145].xyz;
  }
  r5.y = cmp(cb0[147].w >= 0);
  r5.w = cmp(cb0[146].z == 0.000000);
  r5.y = r5.w ? r5.y : 0;
  if (r5.y != 0) {
    r4.xyz = r4.xyw * r4.zzz;
    r4.x = saturate(dot(r4.xyz, cb0[147].xyz));
    r4.x = log2(r4.x);
    r4.x = cb0[148].w * r4.x;
    r4.x = exp2(r4.x);
    r4.xyz = cb0[148].xyz * r4.xxx;
    r0.x = -cb0[147].w + r0.x;
    r0.x = max(0, r0.x);
    r0.x = r2.z * r0.x;
    r0.x = exp2(-r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r4.xyz = r4.xyz * r0.xxx;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r0.x = exp2(-r5.x);
  r0.x = min(1, r0.x);
  r4.w = max(cb0[145].w, r0.x);
  r0.x = cmp(cb0[146].w < r2.w);
  r0.x = r0.x ? r5.z : 0;
  r4.xyzw = r0.xxxx ? float4(0,0,0,1) : r4.xyzw;
  r0.x = 1 + -r4.w;
  r4.xyz = r6.xyz * r0.xxx + r4.xyz;
  r0.x = cmp(0 < cb1[182].y);
  if (r0.x != 0) {
    r0.x = cmp(0 != cb1[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r2.zw = r3.xy / r3.ww;
    r2.zw = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yzw = r0.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r5.x = dot(r0.yzw, r0.yzw);
    r5.y = sqrt(r5.x);
    r5.y = -cb1[181].x + r5.y;
    r5.y = max(0, r5.y);
    r5.y = cb1[182].x * r5.y;
    r5.y = cb1[181].z * r5.y;
    r6.z = sqrt(r5.y);
    r5.y = cb1[181].y * r6.z;
    r5.z = cmp(r5.y < 0.707106769);
    r5.y = dot(r5.yy, r5.yy);
    r5.y = min(1, r5.y);
    r5.y = r5.z ? r5.y : 1;
    r5.x = rsqrt(r5.x);
    r0.yzw = r5.xxx * r0.yzw;
    r5.x = -r0.w * r0.w + 1;
    r5.x = sqrt(r5.x);
    r7.y = r0.w * 0.5 + 0.5;
    r0.yz = r0.yz / r5.xx;
    r0.w = 1 + -abs(r0.y);
    r0.w = sqrt(r0.w);
    r5.x = abs(r0.y) * -0.0187292993 + 0.0742610022;
    r5.x = r5.x * abs(r0.y) + -0.212114394;
    r5.x = r5.x * abs(r0.y) + 1.57072878;
    r5.z = r5.x * r0.w;
    r5.z = r5.z * -2 + 3.14159274;
    r0.y = cmp(r0.y < -r0.y);
    r0.y = r0.y ? r5.z : 0;
    r0.y = r5.x * r0.w + r0.y;
    r0.z = cmp(r0.z < 0);
    r0.w = 6.28318548 + -r0.y;
    r0.y = r0.z ? r0.w : r0.y;
    r7.x = 0.159154937 * r0.y;
    r0.yz = cb1[180].zw * float2(0.5,0.5) + r7.xy;
    r5.xz = float2(1,1) + cb1[180].xy;
    r5.xz = cb1[180].xy / r5.xz;
    r0.yz = r5.xz * r0.yz;
    r6.xy = r0.xx ? r0.yz : r2.zw;
    r0.xyzw = t2.SampleLevel(s1_s, r6.xyz, 0).xyzw;
    r0.xyz = r0.xyz * r5.yyy;
    r0.w = 1 + -r0.w;
    r0.w = -r5.y * r0.w + 1;
    r0.xyz = cb1[135].zzz * r0.xyz;
    o5.xyz = r0.xyz * r4.www + r4.xyz;
    o5.w = r4.w * r0.w;
  } else {
    o5.xyzw = r4.xyzw;
  }
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o6.xyzw = r3.xyzw;
  o4.x = v1.x;
  return;
}
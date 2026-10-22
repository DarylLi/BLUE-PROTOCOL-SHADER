// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[147];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t2.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t2.Load(r0.y).xyz;
  r3.xyz = t2.Load(r0.z).xyz;
  r0.xyzw = t1.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t4.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t4.Load(r4.w).xyzw;
  r6.xyz = r5.yzx * r4.xyz;
  r4.xyz = r5.xyz * r4.yzx + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = r4.xyz * r5.yzx;
  r4.xyz = r4.zxy * r5.zxy + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = cb3[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb3[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb3[2].xyz + r6.xyz;
  r7.xyz = cb3[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb3[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb3[2].xyz + r7.xyz;
  r8.xyz = cb3[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb3[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb3[2].xyz + r8.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = r7.xyz * r4.www;
  r4.w = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = r8.xyz * r4.www;
  r9.xyz = r7.xyz * r4.yyy;
  r4.xyw = r4.xxx * r6.xyz + r9.xyz;
  o0.xyz = r4.zzz * r8.xyz + r4.xyw;
  r4.xyz = r7.xyz * r5.yyy;
  r4.xyz = r5.xxx * r6.xyz + r4.xyz;
  o1.xyz = r5.zzz * r8.xyz + r4.xyz;
  o1.w = cb3[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[6].xyz + r0.xyz;
  r5.xyz = cb3[1].xyz * r4.yyy;
  r4.xyw = cb3[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb3[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb3[3].xyz + r4.xyz;
  r5.xyz = cb2[70].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = -cb0[7].x + r4.w;
  r4.w = saturate(cb0[7].y * r4.w);
  o2.y = 1 + -r4.w;
  r4.w = 1 + -r1.w;
  r4.w = cb0[7].w * r4.w;
  r1.w = cb0[7].z * r1.w + r4.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[1].w * r0.w + r4.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[1].w * r0.w + r4.x;
  r4.yzw = cmp(cb0[1].xyz < r4.www);
  r4.yzw = r4.yzw ? float3(1,1,1) : 0;
  r4.y = dot(r4.yzw, cb0[3].xyz);
  r4.xzw = cmp(cb0[2].xyz < r4.xxx);
  r4.xzw = r4.xzw ? float3(1,1,1) : 0;
  r4.x = dot(r4.xzw, cb0[3].xyz);
  r4.x = cb0[5].w * r4.x;
  r4.w = r4.y * cb0[4].w + r4.x;
  r4.x = cmp(abs(r4.w) < 0.999000013);
  r4.x = r4.x ? 1.000000 : 0;
  r4.z = r4.x * r1.w;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r0.x;
  r0.x = dot(v0.xyzw, r5.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r3.y;
  r5.w = r0.y;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r0.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb3[1].xyz * r0.yyy;
  r1.xyz = cb3[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb3[2].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb3[3].xyz + cb2[70].xyz;
  r1.xyz = r1.xyz + r0.xyz;
  r1.w = 1;
  r3.xyzw = r1.xyzw * r4.zzzz;
  r0.x = (int)r2.w * asint(cb4[0].y);
  r0.xy = t3.Load(r0.x).xy;
  r2.xyzw = cb2[1].xyzw * r3.yyyy;
  r2.xyzw = r3.xxxx * cb2[0].xyzw + r2.xyzw;
  r2.xyzw = r3.zzzz * cb2[2].xyzw + r2.xyzw;
  r2.xyzw = r3.wwww * cb2[3].xyzw + r2.xyzw;
  r1.xyz = r1.xyz * r4.zzz + -cb2[68].xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r3.w = dot(r1.xyz, cb2[60].xyz);
  r0.z = r0.z / r3.w;
  r0.z = cb2[210].z * r0.z;
  r0.z = max(0, r0.z);
  r3.w = min(cb2[67].z, cb1[143].z);
  r4.x = cb2[67].z + -r3.w;
  r1.w = r4.x + r1.z;
  r1.x = dot(r1.xyw, r1.xyw);
  r1.y = rsqrt(r1.x);
  r1.x = r1.x * r1.y;
  r0.z = max(cb1[143].w, r0.z);
  r1.z = cmp(0 < r0.z);
  r4.x = r0.z * r1.y;
  r3.w = r4.x * r1.w + r3.w;
  r4.x = -r4.x * r1.w + r1.w;
  r0.z = -r0.z * r1.y + 1;
  r0.z = r0.z * r1.x;
  r1.y = -cb1[146].y + r3.w;
  r1.y = cb1[143].y * r1.y;
  r1.y = max(-127, r1.y);
  r1.y = exp2(-r1.y);
  r1.y = cb1[146].x * r1.y;
  r3.w = -cb1[144].w + r3.w;
  r3.w = cb1[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r3.w = exp2(-r3.w);
  r3.w = cb1[144].z * r3.w;
  r1.y = r1.z ? r1.y : cb1[143].x;
  r3.w = r1.z ? r3.w : cb1[144].x;
  r0.z = r1.z ? r0.z : r1.x;
  r1.z = r1.z ? r4.x : r1.w;
  r1.w = cb1[143].y * r1.z;
  r1.w = max(-127, r1.w);
  r4.x = exp2(-r1.w);
  r4.x = 1 + -r4.x;
  r4.x = r4.x / r1.w;
  r4.y = -r1.w * 0.240226507 + 0.693147182;
  r1.w = cmp(0.00999999978 < abs(r1.w));
  r1.w = r1.w ? r4.x : r4.y;
  r1.z = cb1[144].y * r1.z;
  r1.z = max(-127, r1.z);
  r4.x = exp2(-r1.z);
  r4.x = 1 + -r4.x;
  r4.x = r4.x / r1.z;
  r4.y = -r1.z * 0.240226507 + 0.693147182;
  r1.z = cmp(0.00999999978 < abs(r1.z));
  r1.z = r1.z ? r4.x : r4.y;
  r1.z = r3.w * r1.z;
  r1.y = r1.y * r1.w + r1.z;
  r0.z = r1.y * r0.z;
  r0.z = exp2(-r0.z);
  r0.z = min(1, r0.z);
  r0.z = max(cb1[145].w, r0.z);
  r1.y = cmp(0 < cb1[146].w);
  r1.x = cmp(cb1[146].w < r1.x);
  r1.x = r1.x ? r1.y : 0;
  r0.z = r1.x ? 1 : r0.z;
  r1.x = cmp(0 < cb2[182].y);
  if (r1.x != 0) {
    r1.x = cmp(0 != cb2[184].x);
    r1.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r4.xy = r2.xy / r2.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.yzw = r3.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r1.yzw;
    r3.x = dot(r1.yzw, r1.yzw);
    r3.y = sqrt(r3.x);
    r3.y = -cb2[181].x + r3.y;
    r3.y = max(0, r3.y);
    r3.y = cb2[182].x * r3.y;
    r3.y = cb2[181].z * r3.y;
    r5.z = sqrt(r3.y);
    r3.y = cb2[181].y * r5.z;
    r3.z = cmp(r3.y < 0.707106769);
    r3.y = dot(r3.yy, r3.yy);
    r3.y = min(1, r3.y);
    r3.y = r3.z ? r3.y : 1;
    r3.x = rsqrt(r3.x);
    r1.yzw = r3.xxx * r1.yzw;
    r3.x = -r1.w * r1.w + 1;
    r3.x = sqrt(r3.x);
    r6.y = r1.w * 0.5 + 0.5;
    r1.yz = r1.yz / r3.xx;
    r1.w = 1 + -abs(r1.y);
    r1.w = sqrt(r1.w);
    r3.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
    r3.x = r3.x * abs(r1.y) + -0.212114394;
    r3.x = r3.x * abs(r1.y) + 1.57072878;
    r3.z = r3.x * r1.w;
    r3.z = r3.z * -2 + 3.14159274;
    r1.y = cmp(r1.y < -r1.y);
    r1.y = r1.y ? r3.z : 0;
    r1.y = r3.x * r1.w + r1.y;
    r1.z = cmp(r1.z < 0);
    r1.w = 6.28318548 + -r1.y;
    r1.y = r1.z ? r1.w : r1.y;
    r6.x = 0.159154937 * r1.y;
    r1.yz = cb2[180].zw * float2(0.5,0.5) + r6.xy;
    r3.xz = float2(1,1) + cb2[180].xy;
    r3.xz = cb2[180].xy / r3.xz;
    r1.yz = r3.xz * r1.yz;
    r5.xy = r1.xx ? r1.yz : r4.xy;
    r1.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r3.yyy;
    r1.w = 1 + -r1.w;
    r1.w = -r3.y * r1.w + 1;
    r1.xyz = cb2[135].zzz * r1.xyz;
    o4.xyz = r1.xyz * r0.zzz;
    o4.w = r1.w * r0.z;
  } else {
    o4.xyz = float3(0,0,0);
    o4.w = r0.z;
  }
  o0.w = 0;
  o2.x = r0.w;
  o2.zw = r4.zw;
  o3.xy = r0.xy;
  o3.zw = float2(0,0);
  o5.xyzw = r2.xyzw;
  return;
}
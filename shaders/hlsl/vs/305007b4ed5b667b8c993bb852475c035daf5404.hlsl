// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb1[151];
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
  out float4 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
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
  r1.xyzw = t3.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t3.Load(r0.y).xyz;
  r3.xyz = t3.Load(r0.z).xyz;
  r0.xyzw = t2.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t4.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t4.Load(r2.w).xyzw;
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
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r8.xyz = r8.xyz * r2.www;
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
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[7].x + r2.w;
  r2.w = saturate(cb0[7].y * r2.w);
  o2.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[7].w * r2.w;
  r1.w = cb0[7].z * r1.w + r2.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r0.w + r2.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[1].w * r0.w + r4.x;
  r4.yzw = cmp(cb0[1].xyz < r2.www);
  r4.yzw = r4.yzw ? float3(1,1,1) : 0;
  r2.w = dot(r4.yzw, cb0[3].xyz);
  r4.xyz = cmp(cb0[2].xyz < r4.xxx);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r4.x = dot(r4.xyz, cb0[3].xyz);
  r4.x = cb0[5].w * r4.x;
  r4.w = r2.w * cb0[4].w + r4.x;
  r2.w = cmp(abs(r4.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r4.z = r2.w * r1.w;
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
  r2.xyzw = r1.xyzw * r4.zzzz;
  r3.xyzw = cb2[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb2[0].xyzw + r3.xyzw;
  r3.xyzw = r2.zzzz * cb2[2].xyzw + r3.xyzw;
  r3.xyzw = r2.wwww * cb2[3].xyzw + r3.xyzw;
  r1.xyz = r1.xyz * r4.zzz + -cb2[68].xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r0.y = dot(r1.xyz, cb2[60].xyz);
  r0.x = r0.x / r0.y;
  r0.x = cb2[210].z * r0.x;
  r0.x = max(0, r0.x);
  r0.y = min(cb2[67].z, cb1[143].z);
  r0.z = cb2[67].z + -r0.y;
  r1.w = r1.z + r0.z;
  r0.z = dot(r1.xyw, r1.xyw);
  r1.z = rsqrt(r0.z);
  r0.z = r1.z * r0.z;
  r0.x = max(cb1[143].w, r0.x);
  r2.w = cmp(0 < r0.x);
  r4.x = r0.x * r1.z;
  r0.y = r4.x * r1.w + r0.y;
  r4.x = -r4.x * r1.w + r1.w;
  r0.x = -r0.x * r1.z + 1;
  r0.x = r0.x * r0.z;
  r4.y = -cb1[146].y + r0.y;
  r4.y = cb1[143].y * r4.y;
  r4.y = max(-127, r4.y);
  r4.y = exp2(-r4.y);
  r4.y = cb1[146].x * r4.y;
  r0.y = -cb1[144].w + r0.y;
  r0.y = cb1[144].y * r0.y;
  r0.y = max(-127, r0.y);
  r0.y = exp2(-r0.y);
  r0.y = cb1[144].z * r0.y;
  r4.y = r2.w ? r4.y : cb1[143].x;
  r0.y = r2.w ? r0.y : cb1[144].x;
  r0.x = r2.w ? r0.x : r0.z;
  r2.w = r2.w ? r4.x : r1.w;
  r4.x = cb1[143].y * r2.w;
  r4.x = max(-127, r4.x);
  r5.x = exp2(-r4.x);
  r5.x = 1 + -r5.x;
  r5.x = r5.x / r4.x;
  r5.y = -r4.x * 0.240226507 + 0.693147182;
  r4.x = cmp(0.00999999978 < abs(r4.x));
  r4.x = r4.x ? r5.x : r5.y;
  r2.w = cb1[144].y * r2.w;
  r2.w = max(-127, r2.w);
  r5.x = exp2(-r2.w);
  r5.x = 1 + -r5.x;
  r5.x = r5.x / r2.w;
  r5.y = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r5.x : r5.y;
  r0.y = r2.w * r0.y;
  r0.y = r4.y * r4.x + r0.y;
  r2.w = r0.y * r0.x;
  r4.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r4.x != 0) {
    r4.x = saturate(r0.z * cb1[150].x + cb1[150].y);
    r5.xy = float2(1,-1) * cb1[149].yx;
    r5.x = dot(r1.xy, r5.xy);
    r5.y = dot(r1.xy, cb1[149].xy);
    r5.z = r1.w;
    r6.xyz = t0.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = t0.SampleLevel(s0_s, r5.xyz, cb1[150].z).xyz;
    r6.xyz = r6.xyz + -r5.xyz;
    r5.xyz = r4.xxx * r6.xyz + r5.xyz;
    r5.xyz = cb1[145].xyz * r5.xyz;
  } else {
    r5.xyz = cb1[145].xyz;
  }
  r4.x = cmp(cb1[147].w >= 0);
  r5.w = cmp(cb1[146].z == 0.000000);
  r4.x = r4.x ? r5.w : 0;
  if (r4.x != 0) {
    r1.xyz = r1.xyw * r1.zzz;
    r1.x = saturate(dot(r1.xyz, cb1[147].xyz));
    r1.x = log2(r1.x);
    r1.x = cb1[148].w * r1.x;
    r1.x = exp2(r1.x);
    r1.xyz = cb1[148].xyz * r1.xxx;
    r0.x = -cb1[147].w + r0.x;
    r0.x = max(0, r0.x);
    r0.x = r0.y * r0.x;
    r0.x = exp2(-r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r1.xyz = r1.xyz * r0.xxx;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.x = exp2(-r2.w);
  r0.x = min(1, r0.x);
  r1.w = max(cb1[145].w, r0.x);
  r0.x = cmp(cb1[146].w < r0.z);
  r0.x = r0.x ? r4.y : 0;
  r1.xyzw = r0.xxxx ? float4(0,0,0,1) : r1.xyzw;
  r0.x = 1 + -r1.w;
  r0.xyz = r5.xyz * r0.xxx + r1.xyz;
  r1.x = cmp(0 < cb2[182].y);
  if (r1.x != 0) {
    r1.x = cmp(0 != cb2[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r1.yz = r3.xy / r3.ww;
    r1.yz = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r4.x = sqrt(r2.w);
    r4.x = -cb2[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb2[182].x * r4.x;
    r4.x = cb2[181].z * r4.x;
    r5.z = sqrt(r4.x);
    r4.x = cb2[181].y * r5.z;
    r4.y = cmp(r4.x < 0.707106769);
    r4.x = dot(r4.xx, r4.xx);
    r4.x = min(1, r4.x);
    r4.x = r4.y ? r4.x : 1;
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r2.w = -r2.z * r2.z + 1;
    r2.w = sqrt(r2.w);
    r6.y = r2.z * 0.5 + 0.5;
    r2.xy = r2.xy / r2.ww;
    r2.z = 1 + -abs(r2.x);
    r2.z = sqrt(r2.z);
    r2.w = abs(r2.x) * -0.0187292993 + 0.0742610022;
    r2.w = r2.w * abs(r2.x) + -0.212114394;
    r2.w = r2.w * abs(r2.x) + 1.57072878;
    r4.y = r2.w * r2.z;
    r4.y = r4.y * -2 + 3.14159274;
    r2.x = cmp(r2.x < -r2.x);
    r2.x = r2.x ? r4.y : 0;
    r2.x = r2.w * r2.z + r2.x;
    r2.y = cmp(r2.y < 0);
    r2.z = 6.28318548 + -r2.x;
    r2.x = r2.y ? r2.z : r2.x;
    r6.x = 0.159154937 * r2.x;
    r2.xy = cb2[180].zw * float2(0.5,0.5) + r6.xy;
    r2.zw = float2(1,1) + cb2[180].xy;
    r2.zw = cb2[180].xy / r2.zw;
    r2.xy = r2.xy * r2.zw;
    r5.xy = r1.xx ? r2.xy : r1.yz;
    r2.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r1.xyz = r2.xyz * r4.xxx;
    r2.x = 1 + -r2.w;
    r2.x = -r4.x * r2.x + 1;
    r1.xyz = cb2[135].zzz * r1.xyz;
    o3.xyz = r1.xyz * r1.www + r0.xyz;
    o3.w = r2.x * r1.w;
  } else {
    o3.w = r1.w;
    o3.xyz = r0.xyz;
  }
  o0.w = 0;
  o2.x = r0.w;
  o2.zw = r4.zw;
  o4.xyzw = r3.xyzw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
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
  out float4 o2 : TEXCOORD15,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : HIT_PROXY_ID0,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyzw = t1.Load(r0.y).xyzw;
  r3.xyzw = t1.Load(r0.z).xyzw;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r4.x = (int)v2.x + asint(cb3[0].w);
  r4.y = (uint)r4.x << 1;
  r4.yzw = t3.Load(r4.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r4.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.xyzw = t3.Load(r5.x).xyzw;
  r6.xyz = r5.yzx * r4.yzw;
  r4.yzw = r5.xyz * r4.zwy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = r4.yzw * r5.yzx;
  r4.yzw = r4.wyz * r5.zxy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r6.w = dot(r6.xyz, r6.xyz);
  r6.w = rsqrt(r6.w);
  r9.xyz = r6.xyz * r6.www;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = rsqrt(r6.w);
  r10.xyz = r7.xyz * r6.www;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = rsqrt(r6.w);
  r11.xyz = r8.xyz * r6.www;
  r12.xyz = r10.xyz * r4.zzz;
  r12.xyz = r4.yyy * r9.xyz + r12.xyz;
  o0.xyz = r4.www * r11.xyz + r12.xyz;
  r4.yzw = r10.xyz * r5.yyy;
  r4.yzw = r5.xxx * r9.xyz + r4.yzw;
  r9.xyz = r5.zzz * r11.xyz + r4.yzw;
  r9.w = cb2[4].w * r5.w;
  r4.y = 0.00390625 * r1.w;
  r4.y = trunc(r4.y);
  r5.xyz = cb0[6].xyz + r0.xyz;
  r10.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r10.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r10.xyz = cb1[70].xyz + r5.xyz;
  r4.z = dot(r10.xyz, r10.xyz);
  r4.z = sqrt(r4.z);
  r4.z = -cb0[7].x + r4.z;
  r4.z = saturate(cb0[7].y * r4.z);
  o3.y = 1 + -r4.z;
  r4.z = 1 + -r4.y;
  r4.z = cb0[7].w * r4.z;
  r4.z = cb0[7].z * r4.y + r4.z;
  r10.xyz = -cb0[4].xyz + r5.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[1].w * r0.w + r4.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r0.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r4.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r4.w = dot(r5.yzw, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r4.w * cb0[4].w + r5.x;
  r4.w = cmp(abs(r5.w) < 0.999000013);
  r4.w = r4.w ? 1.000000 : 0;
  r5.z = r4.z * r4.w;
  r10.x = r1.x;
  r10.y = r2.x;
  r10.z = r3.x;
  r10.w = r0.x;
  r1.x = dot(v0.xyzw, r10.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r0.y;
  r1.y = dot(v0.xyzw, r10.xyzw);
  r10.x = r1.z;
  r10.y = r2.z;
  r10.z = r3.z;
  r10.w = r0.z;
  r1.z = dot(v0.xyzw, r10.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r10.xyz = r2.xyz + r1.xyz;
  r10.w = 1;
  r11.xyzw = r10.xyzw * r5.zzzz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r1.xyz = r0.xxx * cb2[0].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb2[2].xyz + r1.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.x = (int)r4.x * asint(cb3[0].y);
  r1.xy = t2.Load(r1.x).xy;
  r1.z = cmp(r5.z >= 1);
  if (r1.z != 0) {
    r2.xyz = -cb1[67].xyz + r0.xyz;
    r1.z = dot(r2.xyz, r2.xyz);
    r1.z = sqrt(r1.z);
    r2.xyz = r2.xyz / r1.zzz;
    r1.z = dot(cb2[21].xyz, r2.xyz);
    r2.xyz = -cb2[21].xyz * r1.zzz + r2.xyz;
    r3.x = dot(r2.xyz, r2.xyz);
    r3.x = sqrt(r3.x);
    r2.xyz = r2.xyz / r3.xxx;
    r2.x = dot(r2.xyz, r9.xyz);
    r2.x = r2.x * r2.x;
    r2.y = cb4[6].z * r2.x;
    r2.z = cb2[7].z * r9.y;
    r2.z = r9.x * cb2[6].z + r2.z;
    r2.z = r9.z * cb2[8].z + r2.z;
    r1.z = r1.z * r1.z;
    r1.z = r1.z * r1.z;
    r1.z = r1.z * r1.z;
    r2.x = -r2.x * cb4[6].z + r2.z;
    r1.z = r1.z * r2.x + r2.y;
    r1.z = saturate(0.0199999996 + r1.z);
    r2.xyz = r10.xyz * r5.zzz + -cb1[70].xyz;
    r3.xyz = r2.xyz + -r0.xyz;
    r4.x = dot(r3.xyz, r3.xyz);
    r4.z = -9.99999997e-007 + cb4[6].w;
    r4.z = cmp(9.99999975e-006 < abs(r4.z));
    r4.w = cmp(cb4[6].w >= 9.99999997e-007);
    r12.xyz = r4.www ? cb4[5].zxy : float3(0,1,0);
    r12.xyz = r4.zzz ? r12.xyz : float3(0,1,0);
    r4.z = cb2[7].z * r2.y;
    r4.z = r2.x * cb2[6].z + r4.z;
    r4.z = r2.z * cb2[8].z + r4.z;
    r4.z = cb2[9].z + r4.z;
    r4.z = -cb2[23].z + r4.z;
    r4.w = cb2[24].z + -cb2[23].z;
    r4.z = r4.z / r4.w;
    r4.z = -cb4[7].w + r4.z;
    r4.z = saturate(r4.z / cb4[8].x);
    r4.z = r4.z * r4.z;
    r4.w = cb4[8].y * r4.z;
    r4.w = cb1[142].z * cb4[7].z + -r4.w;
    r5.xy = float2(-1,0) * r4.ww;
    r5.xy = r0.xy * cb4[7].yy + r5.xy;
    r13.xyz = t4.SampleLevel(s0_s, r5.xy, -1).xyz;
    r13.xyz = float3(-0.5,-0.5,-0.5) + r13.xyz;
    r5.xy = r13.xy + r13.xy;
    r4.w = r13.z * 2 + 1;
    r4.w = cb4[8].z * r4.w;
    r13.xyz = float3(0,1,0) * r12.xyz;
    r13.xyz = r12.zxy * float3(1,0,0) + -r13.xyz;
    r13.xyz = cb4[8].www * r13.xyz;
    r13.xyz = r13.xyz * r5.yyy;
    r13.xyz = r12.yzx * r5.xxx + r13.xyz;
    r13.xyz = cb4[9].xxx * r13.xyz;
    r12.xyz = r12.yzx * r4.www + r13.xyz;
    r3.xyz = r12.xyz * r4.zzz + r3.xyz;
    r4.z = dot(r3.xyz, r3.xyz);
    r4.xw = sqrt(r4.xz);
    r3.xyz = r3.xyz / r4.www;
    r4.w = -9.99999997e-007 + r4.z;
    r4.w = cmp(9.99999975e-006 < abs(r4.w));
    r4.z = cmp(r4.z >= 9.99999997e-007);
    r3.xyz = r4.zzz ? r3.xyz : 0;
    r3.xyz = r4.www ? r3.xyz : 0;
    r3.xyz = r4.xxx * r3.xyz + r0.xyz;
    r3.xyz = r3.xyz + -r2.xyz;
    r4.x = dot(-r6.xyz, -r6.xyz);
    r6.x = sqrt(r4.x);
    r4.x = dot(-r7.xyz, -r7.xyz);
    r6.y = sqrt(r4.x);
    r4.x = dot(-r8.xyz, -r8.xyz);
    r6.z = sqrt(r4.x);
    r3.xyz = r6.xyz * r3.xyz;
    r1.z = cmp(r1.z >= 0.100000001);
    r2.xyz = r1.zzz ? r3.xyz : -r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r10.xyz * r5.zzz + r2.xyz;
  r1.z = -r4.y * 256 + r1.w;
  o5.x = 0.00392156886 * r1.z;
  o5.y = 0.00392156886 * r2.w;
  o5.z = 0.00392156886 * r3.w;
  r3.xyzw = cb1[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r2.zzzz * cb1[2].xyzw + r3.xyzw;
  o8.xyzw = r11.wwww * cb1[3].xyzw + r3.xyzw;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = sqrt(r1.z);
  r0.xyz = r0.xyz / r1.zzz;
  r1.z = dot(cb2[21].xyz, r0.xyz);
  r0.xyz = -cb2[21].xyz * r1.zzz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r1.w);
  r0.xyz = r0.xyz / r1.www;
  r0.x = dot(r0.xyz, r9.xyz);
  r0.x = r0.x * r0.x;
  r0.y = cb4[6].z * r0.x;
  r0.z = cb2[7].z * r9.y;
  r0.z = r9.x * cb2[6].z + r0.z;
  r0.z = r9.z * cb2[8].z + r0.z;
  r1.z = r1.z * r1.z;
  r1.z = r1.z * r1.z;
  r1.z = r1.z * r1.z;
  r0.x = -r0.x * cb4[6].z + r0.z;
  r0.x = r1.z * r0.x + r0.y;
  r0.x = 0.0199999996 + r0.x;
  o4.zw = saturate(r0.xx);
  o0.w = 0;
  o1.xyzw = r9.xyzw;
  o2.xyzw = r9.xyzw;
  o3.x = r0.w;
  o3.zw = r5.zw;
  o4.xy = r1.xy;
  o5.w = 0;
  o6.w = r11.w;
  o6.xyz = r2.xyz;
  o7.xyz = r11.xyz;
  return;
}
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
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD15,
  out float4 o4 : COLOR1,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb3[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t3.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r4.w).xyzw;
  r6.xyz = r5.yzx * r4.xyz;
  r4.xyz = r5.xyz * r4.yzx + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = r4.xyz * r5.yzx;
  r4.xyz = r4.zxy * r5.zxy + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r9.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r10.xyz = r7.xyz * r4.www;
  r4.w = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.w);
  r11.xyz = r8.xyz * r4.www;
  r12.xyz = r10.xyz * r4.yyy;
  r4.xyw = r4.xxx * r9.xyz + r12.xyz;
  o1.xyz = r4.zzz * r11.xyz + r4.xyw;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  r4.xyz = r5.zzz * r11.xyz + r4.xyz;
  r4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[6].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r9.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r9.xyz = cb1[70].xyz + r5.xyz;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r5.w = -cb0[7].x + r5.w;
  r5.w = saturate(cb0[7].y * r5.w);
  o4.y = 1 + -r5.w;
  r5.w = 1 + -r1.w;
  r5.w = cb0[7].w * r5.w;
  r1.w = cb0[7].z * r1.w + r5.w;
  r9.xyz = -cb0[4].xyz + r5.xyz;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[1].w * r0.w + r5.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r0.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r5.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r5.y = dot(r5.yzw, cb0[3].xyz);
  r5.xzw = cmp(cb0[2].xyz < r5.xxx);
  r5.xzw = r5.xzw ? float3(1,1,1) : 0;
  r5.x = dot(r5.xzw, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r5.y * cb0[4].w + r5.x;
  r5.x = cmp(abs(r5.w) < 0.999000013);
  r5.x = r5.x ? 1.000000 : 0;
  r5.z = r5.x * r1.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r1.x = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.y;
  r9.y = r2.y;
  r9.z = r3.y;
  r9.w = r0.y;
  r1.y = dot(v0.xyzw, r9.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r3.xyzw = r1.xyzw * r5.zzzz;
  r2.xyz = cb2[1].xyz * r0.yyy;
  r2.xyz = r0.xxx * cb2[0].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb2[2].xyz + r2.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.w = (int)r2.w * asint(cb3[0].y);
  r2.xy = t2.Load(r1.w).xy;
  r1.w = cmp(r5.z >= 1);
  if (r1.w != 0) {
    r9.xyz = -cb1[67].xyz + r0.xyz;
    r1.w = dot(r9.xyz, r9.xyz);
    r1.w = sqrt(r1.w);
    r9.xyz = r9.xyz / r1.www;
    r1.w = dot(cb2[21].xyz, r9.xyz);
    r9.xyz = -cb2[21].xyz * r1.www + r9.xyz;
    r2.z = dot(r9.xyz, r9.xyz);
    r2.z = sqrt(r2.z);
    r9.xyz = r9.xyz / r2.zzz;
    r2.z = dot(r9.xyz, r4.xyz);
    r2.z = r2.z * r2.z;
    r2.w = cb4[6].z * r2.z;
    r5.x = cb2[7].z * r4.y;
    r5.x = r4.x * cb2[6].z + r5.x;
    r5.x = r4.z * cb2[8].z + r5.x;
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r2.z = -r2.z * cb4[6].z + r5.x;
    r1.w = r1.w * r2.z + r2.w;
    r1.w = saturate(0.0199999996 + r1.w);
    r9.xyz = r1.xyz * r5.zzz + -cb1[70].xyz;
    r10.xyz = r9.xyz + -r0.xyz;
    r2.z = dot(r10.xyz, r10.xyz);
    r2.z = sqrt(r2.z);
    r2.w = -9.99999997e-007 + cb4[6].w;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r5.x = cmp(cb4[6].w >= 9.99999997e-007);
    r11.xyz = r5.xxx ? cb4[5].zxy : float3(0,1,0);
    r11.xyz = r2.www ? r11.xyz : float3(0,1,0);
    r2.w = cb2[7].z * r9.y;
    r2.w = r9.x * cb2[6].z + r2.w;
    r2.w = r9.z * cb2[8].z + r2.w;
    r2.w = cb2[9].z + r2.w;
    r2.w = -cb2[23].z + r2.w;
    r5.x = cb2[24].z + -cb2[23].z;
    r2.w = r2.w / r5.x;
    r2.w = -cb4[7].w + r2.w;
    r2.w = saturate(r2.w / cb4[8].x);
    r2.w = r2.w * r2.w;
    r5.x = cb4[8].y * r2.w;
    r5.x = cb1[142].z * cb4[7].z + -r5.x;
    r5.xy = float2(-1,0) * r5.xx;
    r5.xy = r0.xy * cb4[7].yy + r5.xy;
    r12.xyz = t4.SampleLevel(s0_s, r5.xy, -1).xyz;
    r12.xyz = float3(-0.5,-0.5,-0.5) + r12.xyz;
    r5.xy = r12.xy + r12.xy;
    r6.w = r12.z * 2 + 1;
    r6.w = cb4[8].z * r6.w;
    r12.xyz = float3(0,1,0) * r11.xyz;
    r12.xyz = r11.zxy * float3(1,0,0) + -r12.xyz;
    r12.xyz = cb4[8].www * r12.xyz;
    r12.xyz = r12.xyz * r5.yyy;
    r12.xyz = r11.yzx * r5.xxx + r12.xyz;
    r12.xyz = cb4[9].xxx * r12.xyz;
    r11.xyz = r11.yzx * r6.www + r12.xyz;
    r10.xyz = r11.xyz * r2.www + r10.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r5.x = sqrt(r2.w);
    r10.xyz = r10.xyz / r5.xxx;
    r5.x = -9.99999997e-007 + r2.w;
    r5.x = cmp(9.99999975e-006 < abs(r5.x));
    r2.w = cmp(r2.w >= 9.99999997e-007);
    r10.xyz = r2.www ? r10.xyz : 0;
    r10.xyz = r5.xxx ? r10.xyz : 0;
    r10.xyz = r2.zzz * r10.xyz + r0.xyz;
    r10.xyz = r10.xyz + -r9.xyz;
    r2.z = dot(-r6.xyz, -r6.xyz);
    r6.x = sqrt(r2.z);
    r2.z = dot(-r7.xyz, -r7.xyz);
    r6.y = sqrt(r2.z);
    r2.z = dot(-r8.xyz, -r8.xyz);
    r6.z = sqrt(r2.z);
    r6.xyz = r10.xyz * r6.xyz;
    r1.w = cmp(r1.w >= 0.100000001);
    r6.xyz = r1.www ? r6.xyz : -r9.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r6.xyz;
  r6.xyzw = cb1[1].xyzw * r1.yyyy;
  r6.xyzw = r1.xxxx * cb1[0].xyzw + r6.xyzw;
  r6.xyzw = r1.zzzz * cb1[2].xyzw + r6.xyzw;
  r6.xyzw = r3.wwww * cb1[3].xyzw + r6.xyzw;
  o0.xy = cb1[364].xy * r6.zz + r6.xy;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r1.w);
  r0.xyz = r0.xyz / r1.www;
  r1.w = dot(cb2[21].xyz, r0.xyz);
  r0.xyz = -cb2[21].xyz * r1.www + r0.xyz;
  r2.z = dot(r0.xyz, r0.xyz);
  r2.z = sqrt(r2.z);
  r0.xyz = r0.xyz / r2.zzz;
  r0.x = dot(r0.xyz, r4.xyz);
  r0.x = r0.x * r0.x;
  r0.y = cb4[6].z * r0.x;
  r0.z = cb2[7].z * r4.y;
  r0.z = r4.x * cb2[6].z + r0.z;
  r0.z = r4.z * cb2[8].z + r0.z;
  r1.w = r1.w * r1.w;
  r1.w = r1.w * r1.w;
  r1.w = r1.w * r1.w;
  r0.x = -r0.x * cb4[6].z + r0.z;
  r0.x = r1.w * r0.x + r0.y;
  r0.x = 0.0199999996 + r0.x;
  o5.zw = saturate(r0.xx);
  o0.zw = r6.zw;
  o1.w = 0;
  o2.xyzw = r4.xyzw;
  o3.xyzw = r4.xyzw;
  o4.x = r0.w;
  o4.zw = r5.zw;
  o5.xy = r2.xy;
  o6.w = r3.w;
  o6.xyz = r1.xyz;
  o7.xyz = r3.xyz;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[10];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
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
  out float4 o5 : TEXCOORD4,
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
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyzw = t0.Load(r0.x).xyzw;
  r0.xy = t2.Load(r0.x).xy;
  r0.z = (int)v2.x + asint(cb3[0].w);
  r0.w = (uint)r0.z << 1;
  r5.xyz = t4.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r0.w).xyzw;
  r7.xyz = r6.yzx * r5.xyz;
  r5.xyz = r6.xyz * r5.yzx + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = r5.xyz * r6.yzx;
  r5.xyz = r5.zxy * r6.zxy + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = cb2[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r10.xyz = r7.xyz * r0.www;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = r8.xyz * r0.www;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = r9.xyz * r0.www;
  r13.xyz = r11.xyz * r5.yyy;
  r5.xyw = r5.xxx * r10.xyz + r13.xyz;
  o0.xyz = r5.zzz * r12.xyz + r5.xyw;
  r5.xyz = r11.xyz * r6.yyy;
  r5.xyz = r6.xxx * r10.xyz + r5.xyz;
  r5.xyz = r6.zzz * r12.xyz + r5.xyz;
  r5.w = cb2[4].w * r6.w;
  r0.w = 0.00390625 * r1.w;
  r0.w = trunc(r0.w);
  r6.xyz = cb0[6].xyz + r4.xyz;
  r10.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r10.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r10.xyz = cb1[70].xyz + r6.xyz;
  r1.w = dot(r10.xyz, r10.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[7].x + r1.w;
  r1.w = saturate(cb0[7].y * r1.w);
  o3.y = 1 + -r1.w;
  r1.w = 1 + -r0.w;
  r1.w = cb0[7].w * r1.w;
  r0.w = cb0[7].z * r0.w + r1.w;
  r10.xyz = -cb0[4].xyz + r6.xyz;
  r1.w = dot(r10.xyz, r10.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r4.w + r1.w;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r4.w + r2.w;
  r6.xyz = cmp(cb0[1].xyz < r1.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r2.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r6.xyz, cb0[3].xyz);
  r2.w = cb0[5].w * r2.w;
  r6.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r6.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r6.z = r1.w * r0.w;
  r10.x = r1.x;
  r10.y = r2.x;
  r10.z = r3.x;
  r10.w = r4.x;
  r0.w = dot(v0.xyzw, r10.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r4.y;
  r1.x = dot(v0.xyzw, r10.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.y = dot(v0.xyzw, r3.xyzw);
  r1.xzw = cb2[1].xyz * r1.xxx;
  r1.xzw = cb2[0].xyz * r0.www + r1.xzw;
  r1.xyz = cb2[2].xyz * r1.yyy + r1.xzw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r2.xyzw = r1.xyzw * r6.zzzz;
  r3.xyz = cb2[1].xyz * r4.yyy;
  r3.xyz = r4.xxx * cb2[0].xyz + r3.xyz;
  r3.xyz = r4.zzz * cb2[2].xyz + r3.xyz;
  r3.xyz = cb2[3].xyz + r3.xyz;
  r0.w = (int)r0.z * asint(cb3[0].y);
  r4.xy = t3.Load(r0.w).xy;
  r0.w = cmp(r6.z >= 1);
  if (r0.w != 0) {
    r10.xyz = -cb1[67].xyz + r3.xyz;
    r0.w = dot(r10.xyz, r10.xyz);
    r0.w = sqrt(r0.w);
    r10.xyz = r10.xyz / r0.www;
    r0.w = dot(cb2[21].xyz, r10.xyz);
    r10.xyz = -cb2[21].xyz * r0.www + r10.xyz;
    r1.w = dot(r10.xyz, r10.xyz);
    r1.w = sqrt(r1.w);
    r10.xyz = r10.xyz / r1.www;
    r1.w = dot(r10.xyz, r5.xyz);
    r1.w = r1.w * r1.w;
    r3.w = cb5[6].z * r1.w;
    r4.z = cb2[7].z * r5.y;
    r4.z = r5.x * cb2[6].z + r4.z;
    r4.z = r5.z * cb2[8].z + r4.z;
    r0.w = r0.w * r0.w;
    r0.w = r0.w * r0.w;
    r0.w = r0.w * r0.w;
    r1.w = -r1.w * cb5[6].z + r4.z;
    r0.w = r0.w * r1.w + r3.w;
    r0.w = saturate(0.0199999996 + r0.w);
    r10.xyz = r1.xyz * r6.zzz + -cb1[70].xyz;
    r11.xyz = r10.xyz + -r3.xyz;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.w);
    r3.w = -9.99999997e-007 + cb5[6].w;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r4.z = cmp(cb5[6].w >= 9.99999997e-007);
    r12.xyz = r4.zzz ? cb5[5].zxy : float3(0,1,0);
    r12.xyz = r3.www ? r12.xyz : float3(0,1,0);
    r3.w = cb2[7].z * r10.y;
    r3.w = r10.x * cb2[6].z + r3.w;
    r3.w = r10.z * cb2[8].z + r3.w;
    r3.w = cb2[9].z + r3.w;
    r3.w = -cb2[23].z + r3.w;
    r4.z = cb2[24].z + -cb2[23].z;
    r3.w = r3.w / r4.z;
    r3.w = -cb5[7].w + r3.w;
    r3.w = saturate(r3.w / cb5[8].x);
    r3.w = r3.w * r3.w;
    r4.z = cb5[8].y * r3.w;
    r4.z = cb1[142].z * cb5[7].z + -r4.z;
    r6.xy = float2(-1,0) * r4.zz;
    r6.xy = r3.xy * cb5[7].yy + r6.xy;
    r13.xyz = t5.SampleLevel(s0_s, r6.xy, -1).xyz;
    r13.xyz = float3(-0.5,-0.5,-0.5) + r13.xyz;
    r6.xy = r13.xy + r13.xy;
    r4.z = r13.z * 2 + 1;
    r4.z = cb5[8].z * r4.z;
    r13.xyz = float3(0,1,0) * r12.xyz;
    r13.xyz = r12.zxy * float3(1,0,0) + -r13.xyz;
    r13.xyz = cb5[8].www * r13.xyz;
    r13.xyz = r13.xyz * r6.yyy;
    r13.xyz = r12.yzx * r6.xxx + r13.xyz;
    r13.xyz = cb5[9].xxx * r13.xyz;
    r12.xyz = r12.yzx * r4.zzz + r13.xyz;
    r11.xyz = r12.xyz * r3.www + r11.xyz;
    r3.w = dot(r11.xyz, r11.xyz);
    r4.z = sqrt(r3.w);
    r11.xyz = r11.xyz / r4.zzz;
    r4.z = -9.99999997e-007 + r3.w;
    r4.z = cmp(9.99999975e-006 < abs(r4.z));
    r3.w = cmp(r3.w >= 9.99999997e-007);
    r11.xyz = r3.www ? r11.xyz : 0;
    r11.xyz = r4.zzz ? r11.xyz : 0;
    r11.xyz = r1.www * r11.xyz + r3.xyz;
    r11.xyz = r11.xyz + -r10.xyz;
    r1.w = dot(-r7.xyz, -r7.xyz);
    r7.x = sqrt(r1.w);
    r1.w = dot(-r8.xyz, -r8.xyz);
    r7.y = sqrt(r1.w);
    r1.w = dot(-r9.xyz, -r9.xyz);
    r7.z = sqrt(r1.w);
    r7.xyz = r11.xyz * r7.xyz;
    r0.w = cmp(r0.w >= 0.100000001);
    r7.xyz = r0.www ? r7.xyz : -r10.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r6.zzz + r7.xyz;
  r7.xyzw = cb1[1].xyzw * r1.yyyy;
  r7.xyzw = r1.xxxx * cb1[0].xyzw + r7.xyzw;
  r7.xyzw = r1.zzzz * cb1[2].xyzw + r7.xyzw;
  o8.xyzw = r2.wwww * cb1[3].xyzw + r7.xyzw;
  r3.xyz = -cb1[67].xyz + r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r3.xyz = r3.xyz / r0.www;
  r0.w = dot(cb2[21].xyz, r3.xyz);
  r3.xyz = -cb2[21].xyz * r0.www + r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r3.xyz = r3.xyz / r1.www;
  r1.w = dot(r3.xyz, r5.xyz);
  r1.w = r1.w * r1.w;
  r3.x = cb5[6].z * r1.w;
  r3.y = cb2[7].z * r5.y;
  r3.y = r5.x * cb2[6].z + r3.y;
  r3.y = r5.z * cb2[8].z + r3.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r1.w = -r1.w * cb5[6].z + r3.y;
  r0.w = r0.w * r1.w + r3.x;
  r0.w = 0.0199999996 + r0.w;
  o4.zw = saturate(r0.ww);
  r0.z = mad(asint(cb3[0].y), (int)r0.z, asint(cb3[0].z));
  r0.zw = t3.Load(r0.z).xy;
  o5.xy = r0.zw * cb4[2].xy + r0.xy;
  o0.w = 0;
  o1.xyzw = r5.xyzw;
  o2.xyzw = r5.xyzw;
  o3.x = r4.w;
  o3.zw = r6.zw;
  o4.xy = r4.xy;
  o5.zw = float2(0,0);
  o6.w = r2.w;
  o6.xyz = r1.xyz;
  o7.xyz = r2.xyz;
  return;
}
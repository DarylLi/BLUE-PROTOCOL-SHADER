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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD15,
  out float4 o6 : COLOR1,
  out float4 o7 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = (int)v2.x + asint(cb3[0].w);
  r2.w = (uint)r0.x << 1;
  r4.xyz = t3.Load(r2.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r2.w).xyzw;
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
  r8.xyz = cb2[1].xyz * r0.zzz;
  r8.xyz = r0.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r0.www * cb2[2].xyz + r8.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r9.xyz = r6.xyz * r2.www;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r10.xyz = r7.xyz * r2.www;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r11.xyz = r8.xyz * r2.www;
  r12.xyz = r10.xyz * r4.yyy;
  r4.xyw = r4.xxx * r9.xyz + r12.xyz;
  o3.xyz = r4.zzz * r11.xyz + r4.xyw;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  r4.xyz = r5.zzz * r11.xyz + r4.xyz;
  r4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[6].xyz + r3.xyz;
  r9.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r9.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r9.xyz = cb1[70].xyz + r5.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[7].x + r2.w;
  r2.w = saturate(cb0[7].y * r2.w);
  o6.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[7].w * r2.w;
  r1.w = cb0[7].z * r1.w + r2.w;
  r9.xyz = -cb0[4].xyz + r5.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r3.w + r2.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r3.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r2.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r2.w = dot(r5.yzw, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r2.w * cb0[4].w + r5.x;
  r2.w = cmp(abs(r5.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r5.z = r2.w * r1.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r0.y;
  r9.w = r3.x;
  r10.x = dot(v0.xyzw, r9.xyzw);
  r11.x = r1.y;
  r11.y = r2.y;
  r11.z = r0.z;
  r11.w = r3.y;
  r10.y = dot(v0.xyzw, r11.xyzw);
  r12.x = r1.z;
  r12.y = r2.z;
  r12.z = r0.w;
  r12.w = r3.z;
  r10.z = dot(v0.xyzw, r12.xyzw);
  r9.yzw = cb2[1].xyz * r10.yyy;
  r9.yzw = cb2[0].xyz * r10.xxx + r9.yzw;
  r9.yzw = cb2[2].xyz * r10.zzz + r9.yzw;
  r11.xzw = cb2[3].xyz + cb1[70].xyz;
  r9.yzw = r11.xzw + r9.yzw;
  r11.xzw = cb2[1].xyz * r3.yyy;
  r11.xzw = r3.xxx * cb2[0].xyz + r11.xzw;
  r11.xzw = r3.zzz * cb2[2].xyz + r11.xzw;
  r11.xzw = cb2[3].xyz + r11.xzw;
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xw = t2.Load(r0.x).xy;
  r1.x = cmp(r5.z >= 1);
  if (r1.x != 0) {
    r12.xyw = -cb1[67].xyz + r11.xzw;
    r1.w = dot(r12.xyw, r12.xyw);
    r1.w = sqrt(r1.w);
    r12.xyw = r12.xyw / r1.www;
    r1.w = dot(cb2[21].xyz, r12.xyw);
    r12.xyw = -cb2[21].xyz * r1.www + r12.xyw;
    r2.y = dot(r12.xyw, r12.xyw);
    r2.y = sqrt(r2.y);
    r12.xyw = r12.xyw / r2.yyy;
    r2.y = dot(r12.xyw, r4.xyz);
    r2.y = r2.y * r2.y;
    r2.w = cb4[6].z * r2.y;
    r5.x = cb2[7].z * r4.y;
    r5.x = r4.x * cb2[6].z + r5.x;
    r5.x = r4.z * cb2[8].z + r5.x;
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r2.y = -r2.y * cb4[6].z + r5.x;
    r1.w = r1.w * r2.y + r2.w;
    r1.w = saturate(0.0199999996 + r1.w);
    r12.xyw = r9.yzw * r5.zzz + -cb1[70].xyz;
    r13.xyz = r12.xyw + -r11.xzw;
    r2.y = dot(r13.xyz, r13.xyz);
    r2.y = sqrt(r2.y);
    r2.w = -9.99999997e-007 + cb4[6].w;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r5.x = cmp(cb4[6].w >= 9.99999997e-007);
    r14.xyz = r5.xxx ? cb4[5].zxy : float3(0,1,0);
    r14.xyz = r2.www ? r14.xyz : float3(0,1,0);
    r2.w = cb2[7].z * r12.y;
    r2.w = r12.x * cb2[6].z + r2.w;
    r2.w = r12.w * cb2[8].z + r2.w;
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
    r5.xy = r11.xz * cb4[7].yy + r5.xy;
    r15.xyz = t4.SampleLevel(s0_s, r5.xy, -1).xyz;
    r15.xyz = float3(-0.5,-0.5,-0.5) + r15.xyz;
    r5.xy = r15.xy + r15.xy;
    r6.w = r15.z * 2 + 1;
    r6.w = cb4[8].z * r6.w;
    r15.xyz = float3(0,1,0) * r14.xyz;
    r15.xyz = r14.zxy * float3(1,0,0) + -r15.xyz;
    r15.xyz = cb4[8].www * r15.xyz;
    r15.xyz = r15.xyz * r5.yyy;
    r15.xyz = r14.yzx * r5.xxx + r15.xyz;
    r15.xyz = cb4[9].xxx * r15.xyz;
    r14.xyz = r14.yzx * r6.www + r15.xyz;
    r13.xyz = r14.xyz * r2.www + r13.xyz;
    r2.w = dot(r13.xyz, r13.xyz);
    r5.x = sqrt(r2.w);
    r13.xyz = r13.xyz / r5.xxx;
    r5.x = -9.99999997e-007 + r2.w;
    r5.x = cmp(9.99999975e-006 < abs(r5.x));
    r2.w = cmp(r2.w >= 9.99999997e-007);
    r13.xyz = r2.www ? r13.xyz : 0;
    r13.xyz = r5.xxx ? r13.xyz : 0;
    r13.xyz = r2.yyy * r13.xyz + r11.xzw;
    r13.xyz = r13.xyz + -r12.xyw;
    r2.y = dot(-r6.xyz, -r6.xyz);
    r6.x = sqrt(r2.y);
    r2.y = dot(-r7.xyz, -r7.xyz);
    r6.y = sqrt(r2.y);
    r2.y = dot(-r8.xyz, -r8.xyz);
    r6.z = sqrt(r2.y);
    r6.xyz = r13.xyz * r6.xyz;
    r1.w = cmp(r1.w >= 0.100000001);
    r6.xyz = r1.www ? r6.xyz : -r12.xyw;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r6.xyz = r9.yzw * r5.zzz + r6.xyz;
  r7.xyz = -cb1[67].xyz + r11.xzw;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r1.w = dot(cb2[21].xyz, r7.xyz);
  r7.xyz = -cb2[21].xyz * r1.www + r7.xyz;
  r2.y = dot(r7.xyz, r7.xyz);
  r2.y = sqrt(r2.y);
  r7.xyz = r7.xyz / r2.yyy;
  r2.y = dot(r7.xyz, r4.xyz);
  r2.y = r2.y * r2.y;
  r2.w = cb4[6].z * r2.y;
  r5.x = cb2[7].z * r4.y;
  r5.x = r4.x * cb2[6].z + r5.x;
  r5.x = r4.z * cb2[8].z + r5.x;
  r1.w = r1.w * r1.w;
  r1.w = r1.w * r1.w;
  r1.w = r1.w * r1.w;
  r2.y = -r2.y * cb4[6].z + r5.x;
  r1.w = r1.w * r2.y + r2.w;
  r1.w = 0.0199999996 + r1.w;
  o7.zw = saturate(r1.ww);
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r10.w = v0.w;
  r8.x = cb2[10].x;
  r8.y = cb2[11].x;
  r8.z = cb2[12].x;
  r8.w = r7.x;
  r8.x = dot(r10.xyzw, r8.xyzw);
  r13.x = cb2[10].y;
  r13.y = cb2[11].y;
  r13.z = cb2[12].y;
  r13.w = r7.y;
  r8.y = dot(r10.xyzw, r13.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r8.z = dot(r10.xyzw, r7.xyzw);
  if (r1.x != 0) {
    r1.xyw = cb2[11].xyz * r1.yyy;
    r1.xyw = r9.xxx * cb2[10].xyz + r1.xyw;
    r1.xyz = r1.zzz * cb2[12].xyz + r1.xyw;
    r7.xyz = cb2[11].xyz * r11.yyy;
    r2.xyw = r2.xxx * cb2[10].xyz + r7.xyz;
    r2.xyz = r2.zzz * cb2[12].xyz + r2.xyw;
    r7.xyz = cb2[11].xyz * r0.zzz;
    r7.xyz = r0.yyy * cb2[10].xyz + r7.xyz;
    r7.xyz = r12.zzz * cb2[12].xyz + r7.xyz;
    r9.xyz = cb2[11].xyz * r3.yyy;
    r9.xyz = r3.xxx * cb2[10].xyz + r9.xyz;
    r3.xyz = r3.zzz * cb2[12].xyz + r9.xyz;
    r3.xyz = cb2[13].xyz + r3.xyz;
    r0.y = -9.99999997e-007 + cb4[6].w;
    r0.y = cmp(9.99999975e-006 < abs(r0.y));
    r0.z = cmp(cb4[6].w >= 9.99999997e-007);
    r9.xyz = r0.zzz ? cb4[5].xyz : float3(1,0,0);
    r9.xyz = r0.yyy ? r9.xyz : float3(1,0,0);
    r0.y = cb2[24].z + -cb2[23].z;
    r10.xyz = float3(0,1,0) * r9.zxy;
    r10.xyz = r9.yzx * float3(1,0,0) + -r10.xyz;
    r10.xyz = cb4[8].www * r10.xyz;
    r11.xyz = -cb1[111].xyz + r3.xyz;
    r0.z = dot(r11.xyz, r11.xyz);
    r0.z = sqrt(r0.z);
    r11.xyz = r11.xyz / r0.zzz;
    r0.z = dot(cb2[21].xyz, r11.xyz);
    r11.xyz = -cb2[21].xyz * r0.zzz + r11.xyz;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.w);
    r11.xyz = r11.xyz / r1.www;
    r1.w = dot(r11.xyz, r4.xyz);
    r1.w = r1.w * r1.w;
    r2.w = cb4[6].z * r1.w;
    r5.x = cb2[15].z * r4.y;
    r5.x = r4.x * cb2[14].z + r5.x;
    r5.x = r4.z * cb2[16].z + r5.x;
    r0.z = r0.z * r0.z;
    r0.z = r0.z * r0.z;
    r0.z = r0.z * r0.z;
    r1.w = -r1.w * cb4[6].z + r5.x;
    r0.z = r0.z * r1.w + r2.w;
    r0.z = saturate(0.0199999996 + r0.z);
    r11.xyz = -cb1[113].xyz + r8.xyz;
    r12.xyz = r11.xyz + -r3.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = sqrt(r1.w);
    r2.w = cb2[15].z * r11.y;
    r2.w = r11.x * cb2[14].z + r2.w;
    r2.w = r11.z * cb2[16].z + r2.w;
    r2.w = cb2[17].z + r2.w;
    r2.w = -cb2[23].z + r2.w;
    r0.y = r2.w / r0.y;
    r0.y = -cb4[7].w + r0.y;
    r0.y = saturate(r0.y / cb4[8].x);
    r0.y = r0.y * r0.y;
    r2.w = cb4[8].y * r0.y;
    r2.w = cb1[139].z * cb4[7].z + -r2.w;
    r5.xy = float2(-1,0) * r2.ww;
    r5.xy = r3.xy * cb4[7].yy + r5.xy;
    r13.xyz = t4.SampleLevel(s0_s, r5.xy, -1).xyz;
    r13.xyz = float3(-0.5,-0.5,-0.5) + r13.xyz;
    r5.xy = r13.xy + r13.xy;
    r2.w = r13.z * 2 + 1;
    r2.w = cb4[8].z * r2.w;
    r10.xyz = r5.yyy * r10.xyz;
    r10.xyz = r9.xyz * r5.xxx + r10.xyz;
    r10.xyz = cb4[9].xxx * r10.xyz;
    r9.xyz = r9.xyz * r2.www + r10.xyz;
    r9.xyz = r9.xyz * r0.yyy + r12.xyz;
    r0.y = dot(r9.xyz, r9.xyz);
    r2.w = sqrt(r0.y);
    r9.xyz = r9.xyz / r2.www;
    r2.w = -9.99999997e-007 + r0.y;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r0.y = cmp(r0.y >= 9.99999997e-007);
    r9.xyz = r0.yyy ? r9.xyz : 0;
    r9.xyz = r2.www ? r9.xyz : 0;
    r3.xyz = r1.www * r9.xyz + r3.xyz;
    r3.xyz = r3.xyz + -r11.xyz;
    r0.y = dot(-r1.xyz, -r1.xyz);
    r1.x = sqrt(r0.y);
    r0.y = dot(-r2.xyz, -r2.xyz);
    r1.y = sqrt(r0.y);
    r0.y = dot(-r7.xyz, -r7.xyz);
    r1.z = sqrt(r0.y);
    r1.xyz = r3.xyz * r1.xyz;
    r0.y = cmp(r0.z >= 0.100000001);
    r1.xyz = r0.yyy ? r1.xyz : -r11.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r1.xyz = r8.xyz + r1.xyz;
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r2.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r6.yyyy;
  r1.xyzw = r6.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r6.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.y = cmp(1 < asint(cb1[135].x));
  r0.z = 0.00100000005 * r1.w;
  r0.y = r0.y ? r0.z : 0;
  o0.z = r1.z + r0.y;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.w = 0;
  o4.xyzw = r4.xyzw;
  o5.xyzw = r4.xyzw;
  o6.x = r3.w;
  o6.zw = r5.zw;
  o7.xy = r0.xw;
  return;
}
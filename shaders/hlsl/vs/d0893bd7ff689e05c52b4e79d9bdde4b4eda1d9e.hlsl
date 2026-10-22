// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
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
  out float4 o2 : COLOR0,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0,
  out float3 o5 : TEXCOORD9,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r1.xyzw = t4.Load(r0.y).xyzw;
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyz = t1.Load(r0.w).xyz;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t3.Load(r3.w).xyzw;
  r7.xyz = r6.yzx * r0.yzw;
  r0.yzw = r6.xyz * r0.zwy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = r0.yzw * r6.yzx;
  r0.yzw = r0.wyz * r6.zxy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r4.yyy;
  r9.xyz = r4.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r4.zzz * cb2[2].xyz + r9.xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = rsqrt(r3.w);
  r10.xyz = r7.xyz * r3.www;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = rsqrt(r3.w);
  r11.xyz = r8.xyz * r3.www;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = rsqrt(r3.w);
  r12.xyz = r9.xyz * r3.www;
  r13.xyz = r11.xyz * r0.zzz;
  r13.xyz = r0.yyy * r10.xyz + r13.xyz;
  o0.xyz = r0.www * r12.xyz + r13.xyz;
  r0.yzw = r11.xyz * r6.yyy;
  r0.yzw = r6.xxx * r10.xyz + r0.yzw;
  o1.xyz = r6.zzz * r12.xyz + r0.yzw;
  o1.w = cb2[4].w * r6.w;
  r0.y = 0.00390625 * r2.w;
  r0.y = trunc(r0.y);
  r6.xyz = cb0[6].xyz + r5.xyz;
  r10.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r10.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r10.xyz = cb1[70].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o3.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r10.xyz = -cb0[4].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r5.w + r0.z;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r5.w + r0.w;
  r6.xyz = cmp(cb0[1].xyz < r0.zzz);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r0.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r6.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r2.w = cmp(abs(r0.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r0.z = r2.w * r0.y;
  r6.x = r2.x;
  r6.y = r3.x;
  r6.z = r4.x;
  r6.w = r5.x;
  r0.y = dot(v0.xyzw, r6.xyzw);
  r6.x = r2.y;
  r6.y = r3.y;
  r6.z = r4.y;
  r6.w = r5.y;
  r2.x = dot(v0.xyzw, r6.xyzw);
  r4.x = r2.z;
  r4.y = r3.z;
  r4.w = r5.z;
  r2.y = dot(v0.xyzw, r4.xyzw);
  r2.xzw = cb2[1].xyz * r2.xxx;
  r2.xzw = cb2[0].xyz * r0.yyy + r2.xzw;
  r2.xyz = cb2[2].xyz * r2.yyy + r2.xzw;
  r3.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.w = 1;
  r3.xyzw = r2.xyzw * r0.zzzz;
  r0.y = (int)r0.x * asint(cb3[0].y);
  r4.xy = t2.Load(r0.y).xy;
  r0.y = cmp(r0.z >= 1);
  if (r0.y != 0) {
    r6.xyz = cb2[1].xyz * r5.yyy;
    r6.xyz = r5.xxx * cb2[0].xyz + r6.xyz;
    r5.xyz = r5.zzz * cb2[2].xyz + r6.xyz;
    r5.xyz = cb2[3].xyz + r5.xyz;
    r0.y = asint(cb3[0].y) + -1;
    r4.zw = min(uint2(0,0), (uint2)r0.yy);
    r0.xy = mad(asint(cb3[0].yy), (int2)r0.xx, (int2)r4.zw);
    r4.zw = t2.Load(r0.x).xy;
    r0.xy = t2.Load(r0.y).xy;
    r2.w = -9.99999997e-007 + cb4[7].y;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r6.x = cmp(cb4[7].y >= 9.99999997e-007);
    r6.xyz = r6.xxx ? cb4[5].zxy : float3(0,1,0);
    r6.xyz = r2.www ? r6.xyz : float3(0,1,0);
    r10.xy = r2.xy * r0.zz + -cb1[70].xy;
    r10.xy = r10.xy + -r5.xy;
    r11.xyz = cb4[8].xxx * r5.xyz;
    r10.xy = cb4[7].ww * r10.xy + r11.xy;
    r2.w = cb4[8].z * r0.y;
    r2.w = cb1[142].z * cb4[8].y + -r2.w;
    r10.xy = r2.ww * float2(1,0) + r10.xy;
    r10.xy = t5.SampleLevel(s0_s, r10.xy, -1).xy;
    r10.xy = float2(-0.25,-0.5) + r10.xy;
    r2.w = cb4[9].x * r10.y;
    r6.w = dot(r10.xx, cb4[8].ww);
    r10.xyz = float3(0,0,2) * r2.www;
    r10.xyz = r6.yzx * r6.www + r10.xyz;
    r12.xyz = r2.xyz * r0.zzz + -cb1[70].xyz;
    r10.xyz = r10.xyz * r0.yyy + r12.xyz;
    r13.xyzw = float4(0.0625,1,16,256) * r4.wwwz;
    r13.xyz = frac(r13.xyz);
    r13.xyz = float3(-0.5,-0.5,-0.5) + r13.xyz;
    r13.xyz = r13.xyz + r13.xyz;
    r14.xyz = r13.yyy * r8.xyz;
    r14.xyz = r13.xxx * r7.xyz + r14.xyz;
    r13.xyz = r13.zzz * r9.xyz + r14.xyz;
    r0.y = cb4[9].y * r0.x;
    r14.xyz = -r13.xyz * r0.yyy + float3(1,1,1);
    r10.xyz = -r14.xyz + r10.xyz;
    r0.y = dot(r10.xyz, r10.xyz);
    r0.y = sqrt(r0.y);
    r2.w = dot(r13.xyz, r13.xyz);
    r2.w = sqrt(r2.w);
    r13.xyz = r13.xyz / r2.www;
    r2.w = dot(r6.yzx, r13.xyz);
    r2.w = r2.w * r2.w;
    r13.xyz = r2.www * float3(0,0,1) + r6.yzx;
    r2.w = dot(r13.xyz, r13.xyz);
    r2.w = sqrt(r2.w);
    r13.xyz = r13.xyz / r2.www;
    r2.w = 7.11111116 * r4.z;
    r2.w = floor(r2.w);
    r2.w = -r2.w * 36 + r13.w;
    r4.z = 0.166666672 * r2.w;
    r15.y = floor(r4.z);
    r15.x = -r15.y * 6 + r2.w;
    r4.zw = cb2[19].xy * r15.xy;
    r4.zw = cb4[9].zz * r4.zw;
    r4.zw = r4.zw * float2(0.200000003,0.200000003) + float2(1,1);
    r2.w = dot(r11.xyz, r11.xyz);
    r2.w = frac(r2.w);
    r2.w = cb1[142].z * cb4[9].w + r2.w;
    r2.w = -cb4[10].x * r0.x + r2.w;
    r4.zw = r2.ww * float2(-1,0) + r4.zw;
    r15.xyz = t5.SampleLevel(s0_s, r4.zw, -1).xyz;
    r15.xyz = float3(-0.5,-0.5,-0.5) + r15.xyz;
    r4.zw = r15.xy + r15.xy;
    r2.w = r15.z * 2 + 1;
    r2.w = cb4[10].y * r2.w;
    r15.xyz = cb4[6].xyz * r4.www;
    r15.xyz = r13.xyz * r4.zzz + r15.xyz;
    r15.xyz = cb4[10].www * r15.xyz;
    r13.xyz = r13.xyz * r2.www + r15.xyz;
    r10.xyz = r13.xyz * r0.xxx + r10.xyz;
    r0.x = dot(r10.xyz, r10.xyz);
    r2.w = sqrt(r0.x);
    r10.xyz = r10.xyz / r2.www;
    r2.w = -9.99999997e-007 + r0.x;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r0.x = cmp(r0.x >= 9.99999997e-007);
    r10.xyz = r0.xxx ? r10.xyz : 0;
    r10.xyz = r2.www ? r10.xyz : 0;
    r10.xyz = r0.yyy * r10.xyz + r14.xyz;
    r10.xyz = r10.xyz + -r5.xyz;
    r0.x = dot(r10.xyz, r10.xyz);
    r0.x = sqrt(r0.x);
    r0.y = cb2[7].z * r12.y;
    r0.y = r12.x * cb2[6].z + r0.y;
    r0.y = r12.z * cb2[8].z + r0.y;
    r0.y = cb2[9].z + r0.y;
    r0.y = -cb2[23].z + r0.y;
    r2.w = cb2[24].z + -cb2[23].z;
    r0.y = r0.y / r2.w;
    r0.y = -cb4[11].y + r0.y;
    r0.y = saturate(r0.y / cb4[11].z);
    r0.y = r0.y * r0.y;
    r2.w = cb4[11].w * r0.y;
    r2.w = cb1[142].z * cb4[11].x + -r2.w;
    r4.zw = r2.ww * float2(-1,0) + r11.xy;
    r11.xyz = t5.SampleLevel(s0_s, r4.zw, -1).xyz;
    r11.xyz = float3(-0.5,-0.5,-0.5) + r11.xyz;
    r4.zw = r11.xy + r11.xy;
    r2.w = r11.z * 2 + 1;
    r2.w = cb4[12].x * r2.w;
    r11.xyz = float3(0,1,0) * r6.xyz;
    r11.xyz = r6.zxy * float3(1,0,0) + -r11.xyz;
    r11.xyz = cb4[12].yyy * r11.xyz;
    r11.xyz = r11.xyz * r4.www;
    r11.xyz = r6.yzx * r4.zzz + r11.xyz;
    r11.xyz = cb4[12].zzz * r11.xyz;
    r6.xyz = r6.yzx * r2.www + r11.xyz;
    r6.xyz = r6.xyz * r0.yyy + r10.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r2.w = sqrt(r0.y);
    r6.xyz = r6.xyz / r2.www;
    r2.w = -9.99999997e-007 + r0.y;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r0.y = cmp(r0.y >= 9.99999997e-007);
    r6.xyz = r0.yyy ? r6.xyz : 0;
    r6.xyz = r2.www ? r6.xyz : 0;
    r5.xyz = r0.xxx * r6.xyz + r5.xyz;
    r5.xyz = r5.xyz + -r12.xyz;
    r0.x = dot(-r7.xyz, -r7.xyz);
    r6.x = sqrt(r0.x);
    r0.x = dot(-r8.xyz, -r8.xyz);
    r6.y = sqrt(r0.x);
    r0.x = dot(-r9.xyz, -r9.xyz);
    r6.z = sqrt(r0.x);
    r5.xyz = r6.xyz * r5.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r2.xyz = r2.xyz * r0.zzz + r5.xyz;
  r6.xyzw = cb1[1].xyzw * r2.yyyy;
  r6.xyzw = r2.xxxx * cb1[0].xyzw + r6.xyzw;
  r2.xyzw = r2.zzzz * cb1[2].xyzw + r6.xyzw;
  o6.xyzw = r3.wwww * cb1[3].xyzw + r2.xyzw;
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o3.x = r5.w;
  o3.zw = r0.zw;
  o4.xy = r4.xy;
  o4.zw = float2(0,0);
  o5.xyz = r3.xyz;
  return;
}
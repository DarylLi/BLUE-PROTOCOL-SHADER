// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[13];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
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
  float4 cb2[19];
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
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD4,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r1.xyzw = t5.Load(r0.y).xyzw;
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyz = t1.Load(r0.w).xyz;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r0.yz = t2.Load(r0.y).xy;
  r0.w = (uint)r0.x << 1;
  r6.xyz = t4.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r7.xyzw = t4.Load(r0.w).xyzw;
  r8.xyz = r7.yzx * r6.xyz;
  r6.xyz = r7.xyz * r6.yzx + -r8.xyz;
  r6.xyz = r6.xyz * r7.www;
  r8.xyz = r6.xyz * r7.yzx;
  r6.xyz = r6.zxy * r7.zxy + -r8.xyz;
  r6.xyz = r6.xyz * r7.www;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r10.xyz = cb2[1].xyz * r4.yyy;
  r10.xyz = r4.xxx * cb2[0].xyz + r10.xyz;
  r10.xyz = r4.zzz * cb2[2].xyz + r10.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = r8.xyz * r0.www;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = r9.xyz * r0.www;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = rsqrt(r0.w);
  r13.xyz = r10.xyz * r0.www;
  r14.xyz = r12.xyz * r6.yyy;
  r6.xyw = r6.xxx * r11.xyz + r14.xyz;
  o0.xyz = r6.zzz * r13.xyz + r6.xyw;
  r6.xyz = r12.xyz * r7.yyy;
  r6.xyz = r7.xxx * r11.xyz + r6.xyz;
  o1.xyz = r7.zzz * r13.xyz + r6.xyz;
  o1.w = cb2[4].w * r7.w;
  r0.w = 0.00390625 * r2.w;
  r0.w = trunc(r0.w);
  r6.xyz = cb0[6].xyz + r5.xyz;
  r7.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r7.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r7.xyz = cb1[70].xyz + r6.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[7].x + r2.w;
  r2.w = saturate(cb0[7].y * r2.w);
  o3.y = 1 + -r2.w;
  r2.w = 1 + -r0.w;
  r2.w = cb0[7].w * r2.w;
  r0.w = cb0[7].z * r0.w + r2.w;
  r7.xyz = -cb0[4].xyz + r6.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r5.w + r2.w;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r3.w = cb0[1].w * r5.w + r3.w;
  r6.xyz = cmp(cb0[1].xyz < r2.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r3.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r3.w = dot(r6.xyz, cb0[3].xyz);
  r3.w = cb0[5].w * r3.w;
  r6.w = r2.w * cb0[4].w + r3.w;
  r2.w = cmp(abs(r6.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r6.z = r2.w * r0.w;
  r7.x = r2.x;
  r7.y = r3.x;
  r7.z = r4.x;
  r7.w = r5.x;
  r0.w = dot(v0.xyzw, r7.xyzw);
  r7.x = r2.y;
  r7.y = r3.y;
  r7.z = r4.y;
  r7.w = r5.y;
  r2.x = dot(v0.xyzw, r7.xyzw);
  r4.x = r2.z;
  r4.y = r3.z;
  r4.w = r5.z;
  r2.y = dot(v0.xyzw, r4.xyzw);
  r2.xzw = cb2[1].xyz * r2.xxx;
  r2.xzw = cb2[0].xyz * r0.www + r2.xzw;
  r2.xyz = cb2[2].xyz * r2.yyy + r2.xzw;
  r3.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.w = 1;
  r0.w = r0.w * r6.z;
  r2.w = (int)r0.x * asint(cb3[0].y);
  r3.xy = t3.Load(r2.w).xy;
  r2.w = asint(cb3[0].y) + -1;
  r3.zw = min(uint2(0,0), (uint2)r2.ww);
  r3.zw = mad(asint(cb3[0].yy), (int2)r0.xx, (int2)r3.zw);
  r4.xy = t3.Load(r3.z).xy;
  r3.zw = t3.Load(r3.w).xy;
  r2.w = cmp(r6.z >= 1);
  if (r2.w != 0) {
    r2.w = cb2[18].x + cb2[18].y;
    r2.w = cb2[18].z + r2.w;
    r2.w = frac(r2.w);
    r2.w = cb1[142].z + r2.w;
    r2.w = r5.w + r2.w;
    r2.w = cb5[2].x * r2.w;
    r2.w = cb6[5].w * r2.w;
    r4.zw = r3.zw + -r3.xy;
    r4.zw = cb6[7].xx * r4.zw + r3.xy;
    r4.zw = cb6[7].yy * r4.zw;
    r4.zw = r2.ww * cb6[6].zw + r4.zw;
    r4.zw = t6.SampleLevel(s0_s, r4.zw, -1).xy;
    r5.xy = r4.zw + r4.zw;
    r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
    r2.w = dot(r4.zw, r4.zw);
    r2.w = 1 + -r2.w;
    r2.w = max(0, r2.w);
    r5.z = sqrt(r2.w);
    r5.xyz = float3(-1,-1,-1) + r5.xyz;
    r5.xyz = r1.zzz * r5.xyz + float3(0,0,1);
    r7.xyz = float3(0,0,1) + -r5.xyz;
    r5.xyz = cb6[7].zzz * r7.xyz + r5.xyz;
    r7.x = cb6[11].w * r5.x;
    r7.yz = cb6[12].xy * r5.yz;
    r2.w = dot(-r8.xyz, -r8.xyz);
    r2.w = sqrt(r2.w);
    r4.z = dot(-r9.xyz, -r9.xyz);
    r4.z = sqrt(r4.z);
    r2.w = r4.z + r2.w;
    r4.z = dot(-r10.xyz, -r10.xyz);
    r4.z = sqrt(r4.z);
    r2.w = r4.z + r2.w;
    r2.w = r2.w * 0.333333343 + -1;
    r2.w = cb6[12].z * r2.w + 1;
    r5.xyz = r7.xyz * r2.www;
    r5.xyz = cb6[12].www * r5.xyz;
    r5.xyz = r5.xyz * r1.zzz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r2.xyz = r2.xyz * r6.zzz + r5.xyz;
  r7.xyzw = cb1[1].xyzw * r2.yyyy;
  r7.xyzw = r2.xxxx * cb1[0].xyzw + r7.xyzw;
  r2.xyzw = r2.zzzz * cb1[2].xyzw + r7.xyzw;
  o7.xyzw = r0.wwww * cb1[3].xyzw + r2.xyzw;
  r0.x = mad(asint(cb3[0].y), (int)r0.x, asint(cb3[0].z));
  r0.xw = t3.Load(r0.x).xy;
  o6.xy = r0.xw * cb4[2].xy + r0.yz;
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o3.x = r5.w;
  o3.zw = r6.zw;
  o4.xy = r3.xy;
  o4.zw = r4.xy;
  o5.xy = r3.zw;
  o5.zw = float2(0,0);
  o6.zw = float2(0,0);
  return;
}
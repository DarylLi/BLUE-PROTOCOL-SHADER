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
  float4 cb4[4];
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
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r1.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r2.xyz = t1.Load(r0.z).xyz;
  r3.xyz = t1.Load(r0.w).xyz;
  r4.xyzw = t0.Load(r0.y).xyzw;
  r5.xyzw = t2.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t4.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r2.w).xyzw;
  r7.xyz = r6.yzx * r0.yzw;
  r0.yzw = r6.xyz * r0.zwy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = r0.yzw * r6.yzx;
  r0.yzw = r0.wyz * r6.zxy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = cb2[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r10.xyz = r7.xyz * r2.www;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r11.xyz = r8.xyz * r2.www;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = rsqrt(r2.w);
  r12.xyz = r9.xyz * r2.www;
  r13.xyz = r11.xyz * r0.zzz;
  r13.xyz = r0.yyy * r10.xyz + r13.xyz;
  o0.xyz = r0.www * r12.xyz + r13.xyz;
  r0.yzw = r11.xyz * r6.yyy;
  r0.yzw = r6.xxx * r10.xyz + r0.yzw;
  o1.xyz = r6.zzz * r12.xyz + r0.yzw;
  o1.w = cb2[4].w * r6.w;
  r0.y = 0.00390625 * r1.w;
  r0.y = trunc(r0.y);
  r6.xyz = cb0[6].xyz + r4.xyz;
  r10.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r10.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r10.xyz = cb1[70].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o2.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r10.xyz = -cb0[4].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r4.w + r0.z;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r4.w + r0.w;
  r6.xyz = cmp(cb0[1].xyz < r0.zzz);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r0.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r6.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r1.w = cmp(abs(r0.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.z = r1.w * r0.y;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r0.y = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.y = dot(v0.xyzw, r3.xyzw);
  r1.xzw = cb2[1].xyz * r1.xxx;
  r1.xzw = cb2[0].xyz * r0.yyy + r1.xzw;
  r1.xyz = cb2[2].xyz * r1.yyy + r1.xzw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.y = 1;
  r0.y = r0.y * r0.z;
  r1.w = (int)r0.x * asint(cb3[0].y);
  r2.xy = t3.Load(r1.w).xy;
  r1.w = cmp(r0.z >= 1);
  if (r1.w != 0) {
    r1.w = (int)r0.x & asint(cb3[0].x);
    r1.w = t5.Load(r1.w).z;
    r2.z = asint(cb3[0].y) + -1;
    r2.z = min(2, (uint)r2.z);
    r2.z = mad(asint(cb3[0].y), (int)r0.x, (int)r2.z);
    r2.zw = t3.Load(r2.z).xy;
    r3.x = cb2[18].x + cb2[18].y;
    r3.x = cb2[18].z + r3.x;
    r3.x = frac(r3.x);
    r3.x = cb1[142].z + r3.x;
    r3.x = r4.w + r3.x;
    r3.x = cb5[2].x * r3.x;
    r3.x = cb6[9].z * r3.x;
    r2.zw = r2.zw + -r2.xy;
    r2.zw = cb6[10].ww * r2.zw + r2.xy;
    r2.zw = cb6[11].xx * r2.zw;
    r2.zw = r3.xx * cb6[10].yz + r2.zw;
    r2.zw = t6.SampleLevel(s0_s, r2.zw, -1).xy;
    r3.xy = r2.zw + r2.zw;
    r2.zw = r2.zw * float2(2,2) + float2(-1,-1);
    r2.z = dot(r2.zw, r2.zw);
    r2.z = 1 + -r2.z;
    r2.z = max(0, r2.z);
    r3.z = sqrt(r2.z);
    r3.xyz = float3(-1,-1,-1) + r3.xyz;
    r3.xyz = r1.www * r3.xyz + float3(0,0,1);
    r4.xyz = float3(0,0,1) + -r3.xyz;
    r3.xyz = cb6[11].yyy * r4.xyz + r3.xyz;
    r4.xy = cb6[11].zw * r3.xy;
    r4.z = cb6[12].x * r3.z;
    r2.z = dot(-r7.xyz, -r7.xyz);
    r2.w = dot(-r8.xyz, -r8.xyz);
    r2.zw = sqrt(r2.zw);
    r2.z = r2.z + r2.w;
    r2.w = dot(-r9.xyz, -r9.xyz);
    r2.w = sqrt(r2.w);
    r2.z = r2.z + r2.w;
    r2.z = r2.z * 0.333333343 + -1;
    r2.z = cb6[12].y * r2.z + 1;
    r3.xyz = r4.xyz * r2.zzz;
    r3.xyz = cb6[12].zzz * r3.xyz;
    r3.xyz = r3.xyz * r1.www;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r0.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o5.xyzw = r0.yyyy * cb1[3].xyzw + r1.xyzw;
  r0.x = mad(asint(cb3[0].y), (int)r0.x, asint(cb3[0].z));
  r0.xy = t3.Load(r0.x).xy;
  o4.xy = r0.xy * cb4[2].xy + r5.xy;
  o4.zw = r0.xy * cb4[3].xy + r5.zw;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r0.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  return;
}
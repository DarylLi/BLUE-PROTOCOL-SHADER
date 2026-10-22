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
  float4 cb5[13];
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
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD6,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r2.w).xyzw;
  r6.xyz = r5.yzx * r0.yzw;
  r0.yzw = r5.xyz * r0.zwy + -r6.xyz;
  r0.yzw = r0.yzw * r5.www;
  r6.xyz = r0.yzw * r5.yzx;
  r0.yzw = r0.wyz * r5.zxy + -r6.xyz;
  r0.yzw = r0.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r9.xyz = r6.xyz * r2.www;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r10.xyz = r7.xyz * r2.www;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r11.xyz = r8.xyz * r2.www;
  r12.xyz = r10.xyz * r0.zzz;
  r12.xyz = r0.yyy * r9.xyz + r12.xyz;
  o0.xyz = r0.www * r11.xyz + r12.xyz;
  r0.yzw = r10.xyz * r5.yyy;
  r0.yzw = r5.xxx * r9.xyz + r0.yzw;
  o1.xyz = r5.zzz * r11.xyz + r0.yzw;
  o1.w = cb2[4].w * r5.w;
  r0.y = 0.00390625 * r1.w;
  r0.y = trunc(r0.y);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r9.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r9.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r9.xyz = cb1[70].xyz + r5.xyz;
  r0.z = dot(r9.xyz, r9.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o2.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r9.xyz = -cb0[4].xyz + r5.xyz;
  r0.z = dot(r9.xyz, r9.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r4.w + r0.z;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r4.w + r0.w;
  r5.xyz = cmp(cb0[1].xyz < r0.zzz);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r0.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r5.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r1.w = cmp(abs(r0.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.z = r1.w * r0.y;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r4.x;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r3.y;
  r5.w = r4.y;
  r1.x = dot(v0.xyzw, r5.xyzw);
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
  r2.xy = t2.Load(r1.w).xy;
  r1.w = cmp(r0.z >= 1);
  if (r1.w != 0) {
    r1.w = (int)r0.x & asint(cb3[0].x);
    r1.w = t4.Load(r1.w).z;
    r2.z = asint(cb3[0].y) + -1;
    r2.z = min(2, (uint)r2.z);
    r0.x = mad(asint(cb3[0].y), (int)r0.x, (int)r2.z);
    r2.zw = t2.Load(r0.x).xy;
    r0.x = cb2[18].x + cb2[18].y;
    r0.x = cb2[18].z + r0.x;
    r0.x = frac(r0.x);
    r0.x = cb1[142].z + r0.x;
    r0.x = r4.w + r0.x;
    r0.x = cb4[2].x * r0.x;
    r0.x = cb5[9].y * r0.x;
    r2.zw = r2.zw + -r2.xy;
    r2.zw = cb5[10].zz * r2.zw + r2.xy;
    r2.zw = cb5[10].ww * r2.zw;
    r2.zw = r0.xx * cb5[10].xy + r2.zw;
    r2.zw = t5.SampleLevel(s0_s, r2.zw, -1).xy;
    r3.xy = r2.zw + r2.zw;
    r2.zw = r2.zw * float2(2,2) + float2(-1,-1);
    r0.x = dot(r2.zw, r2.zw);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r3.z = sqrt(r0.x);
    r3.xyz = float3(-1,-1,-1) + r3.xyz;
    r3.xyz = r1.www * r3.xyz + float3(0,0,1);
    r4.xyz = float3(0,0,1) + -r3.xyz;
    r3.xyz = cb5[11].xxx * r4.xyz + r3.xyz;
    r3.xyz = cb5[11].yzw * r3.xyz;
    r0.x = dot(-r6.xyz, -r6.xyz);
    r0.x = sqrt(r0.x);
    r2.z = dot(-r7.xyz, -r7.xyz);
    r2.z = sqrt(r2.z);
    r0.x = r2.z + r0.x;
    r2.z = dot(-r8.xyz, -r8.xyz);
    r2.z = sqrt(r2.z);
    r0.x = r2.z + r0.x;
    r0.x = r0.x * 0.333333343 + -1;
    r0.x = cb5[12].x * r0.x + 1;
    r3.xyz = r3.xyz * r0.xxx;
    r3.xyz = cb5[12].yyy * r3.xyz;
    r3.xyz = r3.xyz * r1.www;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r0.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o5.xyzw = r0.yyyy * cb1[3].xyzw + r3.xyzw;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r0.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o4.w = r0.y;
  o4.xyz = r1.xyz;
  return;
}
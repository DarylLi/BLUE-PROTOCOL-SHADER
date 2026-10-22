// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyzw = t0.Load(r0.x).xyzw;
  r0.xy = t2.Load(r0.x).xy;
  r0.z = (int)v2.x + asint(cb4[0].w);
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
  r2.w = rsqrt(r0.w);
  r12.xyz = r9.xyz * r2.www;
  r13.xyz = r11.xyz * r5.yyy;
  r5.xyw = r5.xxx * r10.xyz + r13.xyz;
  o0.xyz = r5.zzz * r12.xyz + r5.xyw;
  r5.xyz = r11.xyz * r6.yyy;
  r5.xyz = r6.xxx * r10.xyz + r5.xyz;
  o1.xyz = r6.zzz * r12.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[7].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[8].x + r2.w;
  r2.w = saturate(cb0[8].y * r2.w);
  o2.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[8].w * r2.w;
  r1.w = cb0[8].z * r1.w + r2.w;
  r6.xyz = -cb0[5].xyz + r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r4.w + r2.w;
  r5.xyz = -cb0[6].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r4.w + r5.x;
  r5.yzw = cmp(cb0[2].xyz < r2.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r2.w = dot(r5.yzw, cb0[4].xyz);
  r5.xyz = cmp(cb0[3].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[4].xyz);
  r5.x = cb0[6].w * r5.x;
  r5.w = r2.w * cb0[5].w + r5.x;
  r2.w = cmp(abs(r5.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r5.z = r2.w * r1.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r1.w = r1.w * r5.z;
  r2.x = (int)r0.z * asint(cb4[0].y);
  r2.xy = t3.Load(r2.x).xy;
  r2.z = cmp(r5.z >= 1);
  if (r2.z != 0) {
    r2.zw = cb2[1].xy * r4.yy;
    r2.zw = r4.xx * cb2[0].xy + r2.zw;
    r2.zw = r4.zz * cb2[2].xy + r2.zw;
    r2.zw = cb2[3].xy + r2.zw;
    r3.x = asint(cb4[0].y) + -1;
    r3.x = min(2, (uint)r3.x);
    r3.x = mad(asint(cb4[0].y), (int)r0.z, (int)r3.x);
    r3.xy = t3.Load(r3.x).xy;
    r3.zw = float2(0.00100000005,0.00100000005) * r2.zw;
    r0.w = sqrt(r0.w);
    r4.xyz = v0.yyy * r8.xyz;
    r4.xyz = v0.xxx * r7.xyz + r4.xyz;
    r4.xyz = v0.zzz * r9.xyz + r4.xyz;
    r4.xyz = r4.xyz / r0.www;
    r6.xyz = float3(0.0625,1,16) * r3.yyy;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = r6.xyz * r3.xxx;
    r2.w = r3.z + r3.w;
    r2.w = cb3[2].x + r2.w;
    r7.x = r2.w + r3.y;
    r7.y = r2.w * cb3[3].y + r3.y;
    r2.w = cb3[3].y * r7.x;
    r7.z = 0.5 * r2.w;
    r3.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r3.xyz = frac(r3.xyz);
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = abs(r3.xyz) * abs(r3.xyz);
    r3.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
    r3.xyz = r7.xyz * r3.xyz + float3(-0.5,-0.5,-0.5);
    r3.xyz = r3.xyz + r3.xyz;
    r7.w = r3.y * r3.z;
    r2.w = cmp(r7.w < 0);
    r7.y = abs(r7.w);
    r7.xz = float2(-1,1);
    r5.xy = r2.ww ? r7.xy : r7.zw;
    r2.w = -r3.y * r3.z + r5.x;
    r2.w = r5.y * r2.w + r7.w;
    r3.y = r5.x + -r2.w;
    r2.w = r5.y * r3.y + r2.w;
    r2.w = cb3[3].x * r2.w;
    r3.y = 1 + -cb3[0].w;
    r3.z = 1 + -cb3[3].x;
    r3.x = r3.x * r3.z;
    r2.w = r2.w * r3.y + r3.x;
    r3.xyz = r6.xyz * r2.www;
    r3.xyz = r3.xyz * cb3[2].yyy + r4.xyz;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = sqrt(r2.w);
    r5.x = 1 / cb3[1].z;
    r5.x = -r5.x * 0.25 + r3.z;
    r5.x = max(0, r5.x);
    r5.x = cb3[1].z * r5.x;
    r5.y = cmp(r5.x != 0.000000);
    r6.x = log2(r5.x);
    r6.x = cb3[1].w * r6.x;
    r6.x = exp2(r6.x);
    r5.x = r5.y ? r6.x : r5.x;
    r6.x = r2.z * 0.00100000005 + cb3[1].x;
    r6.y = cb3[1].x * 0.800000012 + r3.w;
    r6.xy = float2(0.5,0.5) + r6.xy;
    r6.xy = frac(r6.xy);
    r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
    r6.zw = abs(r6.xy) * abs(r6.xy);
    r6.xy = -abs(r6.xy) * float2(2,2) + float2(3,3);
    r6.xy = r6.zw * r6.xy + float2(-0.5,-0.5);
    r6.xy = r6.xy + r6.xy;
    r2.z = r6.y * r6.y + r6.x;
    r3.w = cmp(cb3[1].z != 0.000000);
    r5.y = cb3[6].x / cb3[1].z;
    r3.w = r3.w ? r5.y : cb3[6].x;
    r2.z = cb3[1].y * r2.z + r3.w;
    r2.z = r2.z * r5.x;
    r3.xy = cb3[0].xy * r2.zz + r3.xy;
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = rsqrt(r2.z);
    r3.xyz = r3.xyz * r2.zzz;
    r3.xyz = r3.xyz * r2.www + -r4.xyz;
    r3.xyz = r3.xyz * r0.www;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o6.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  r0.z = mad(asint(cb4[0].y), (int)r0.z, asint(cb4[0].z));
  r0.zw = t3.Load(r0.z).xy;
  o4.xy = r0.zw * cb5[2].xy + r0.xy;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  o5.xyzw = r1.xyzw;
  return;
}
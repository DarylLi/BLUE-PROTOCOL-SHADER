// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR1,
  out float4 o6 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
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
  r6.w = rsqrt(r4.w);
  r11.xyz = r8.xyz * r6.www;
  r12.xyz = r10.xyz * r4.yyy;
  r12.xyz = r4.xxx * r9.xyz + r12.xyz;
  o3.xyz = r4.zzz * r11.xyz + r12.xyz;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  o4.xyz = r5.zzz * r11.xyz + r4.xyz;
  o4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[7].xyz + r0.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r5.xyz = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r5.xyz;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = -cb0[8].x + r5.x;
  r5.x = saturate(cb0[8].y * r5.x);
  o5.y = 1 + -r5.x;
  r5.x = 1 + -r1.w;
  r5.x = cb0[8].w * r5.x;
  r1.w = cb0[8].z * r1.w + r5.x;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r0.w + r5.x;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[2].w * r0.w + r4.x;
  r5.xyz = cmp(cb0[2].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r4.y = dot(r5.xyz, cb0[4].xyz);
  r5.xyz = cmp(cb0[3].xyz < r4.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r4.x = dot(r5.xyz, cb0[4].xyz);
  r4.x = cb0[6].w * r4.x;
  r5.w = r4.y * cb0[5].w + r4.x;
  r4.x = cmp(abs(r5.w) < 0.999000013);
  r4.x = r4.x ? 1.000000 : 0;
  r5.z = r4.x * r1.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r9.x = dot(v0.xyzw, r9.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r0.y;
  r9.y = dot(v0.xyzw, r10.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r9.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb2[1].xyz * r9.yyy;
  r1.xyz = cb2[0].xyz * r9.xxx + r1.xyz;
  r1.xyz = cb2[2].xyz * r9.zzz + r1.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xy = cb2[1].xy * r0.yy;
  r0.xy = r0.xx * cb2[0].xy + r2.xy;
  r0.xy = r0.zz * cb2[2].xy + r0.xy;
  r0.xy = cb2[3].xy + r0.xy;
  r0.z = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r0.z).xy;
  r0.z = asint(cb4[0].y) + -1;
  r0.z = min(2, (uint)r0.z);
  r0.z = mad(asint(cb4[0].y), (int)r2.w, (int)r0.z);
  r2.zw = t2.Load(r0.z).xy;
  r0.z = cmp(r5.z >= 1);
  if (r0.z != 0) {
    r3.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r1.w = sqrt(r4.w);
    r4.xyz = v0.yyy * r7.xyz;
    r4.xyz = v0.xxx * r6.xyz + r4.xyz;
    r4.xyz = v0.zzz * r8.xyz + r4.xyz;
    r4.xyz = r4.xyz / r1.www;
    r10.xyz = float3(0.0625,1,16) * r2.www;
    r10.xyz = frac(r10.xyz);
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyz = r10.xyz * r2.zzz;
    r3.x = r3.x + r3.y;
    r3.x = cb3[2].x + r3.x;
    r11.x = r3.x + r2.w;
    r11.y = r3.x * cb3[3].y + r2.w;
    r3.x = cb3[3].y * r11.x;
    r11.z = 0.5 * r3.x;
    r3.xzw = float3(0.5,0.5,0.5) + r11.xyz;
    r3.xzw = frac(r3.xzw);
    r3.xzw = r3.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r11.xyz = abs(r3.xzw) * abs(r3.xzw);
    r3.xzw = -abs(r3.xzw) * float3(2,2,2) + float3(3,3,3);
    r3.xzw = r11.xyz * r3.xzw + float3(-0.5,-0.5,-0.5);
    r3.xzw = r3.xzw + r3.xzw;
    r11.w = r3.z * r3.w;
    r5.x = cmp(r11.w < 0);
    r11.y = abs(r11.w);
    r11.xz = float2(-1,1);
    r5.xy = r5.xx ? r11.xy : r11.zw;
    r3.z = -r3.z * r3.w + r5.x;
    r3.z = r5.y * r3.z + r11.w;
    r3.w = r5.x + -r3.z;
    r3.z = r5.y * r3.w + r3.z;
    r3.z = cb3[3].x * r3.z;
    r3.w = 1 + -cb3[0].w;
    r5.x = 1 + -cb3[3].x;
    r3.x = r5.x * r3.x;
    r3.x = r3.z * r3.w + r3.x;
    r3.xzw = r10.xyz * r3.xxx;
    r3.xzw = r3.xzw * cb3[2].yyy + r4.xyz;
    r5.x = dot(r3.xzw, r3.xzw);
    r5.x = sqrt(r5.x);
    r5.y = 1 / cb3[1].z;
    r5.y = -r5.y * 0.25 + r3.w;
    r5.y = max(0, r5.y);
    r5.y = cb3[1].z * r5.y;
    r6.w = cmp(r5.y != 0.000000);
    r7.w = log2(r5.y);
    r7.w = cb3[1].w * r7.w;
    r7.w = exp2(r7.w);
    r5.y = r6.w ? r7.w : r5.y;
    r10.x = r0.x * 0.00100000005 + cb3[1].x;
    r10.y = cb3[1].x * 0.800000012 + r3.y;
    r10.xy = float2(0.5,0.5) + r10.xy;
    r10.xy = frac(r10.xy);
    r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
    r10.zw = abs(r10.xy) * abs(r10.xy);
    r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
    r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
    r10.xy = r10.xy + r10.xy;
    r3.y = r10.y * r10.y + r10.x;
    r6.w = cmp(cb3[1].z != 0.000000);
    r7.w = cb3[6].x / cb3[1].z;
    r6.w = r6.w ? r7.w : cb3[6].x;
    r3.y = cb3[1].y * r3.y + r6.w;
    r3.y = r3.y * r5.y;
    r3.xz = cb3[0].xy * r3.yy + r3.xz;
    r3.y = dot(r3.xzw, r3.xzw);
    r3.y = rsqrt(r3.y);
    r3.xyz = r3.xzw * r3.yyy;
    r3.xyz = r3.xyz * r5.xxx + -r4.xyz;
    r3.xyz = r3.xyz * r1.www;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r3.xyz;
  r3.xyw = cb2[13].xyz + cb1[113].xyz;
  r9.w = v0.w;
  r10.x = cb2[10].x;
  r10.y = cb2[11].x;
  r10.z = cb2[12].x;
  r10.w = r3.x;
  r4.x = dot(r9.xyzw, r10.xyzw);
  r10.x = cb2[10].y;
  r10.y = cb2[11].y;
  r10.z = cb2[12].y;
  r10.w = r3.y;
  r4.y = dot(r9.xyzw, r10.xyzw);
  r3.x = cb2[10].z;
  r3.y = cb2[11].z;
  r3.z = cb2[12].z;
  r4.z = dot(r9.xyzw, r3.xyzw);
  if (r0.z != 0) {
    r0.yz = float2(0.00100000005,0.00100000005) * r0.xy;
    r1.w = sqrt(r4.w);
    r3.xyz = v0.yyy * r7.xyz;
    r3.xyz = v0.xxx * r6.xyz + r3.xyz;
    r3.xyz = v0.zzz * r8.xyz + r3.xyz;
    r3.xyz = r3.xyz / r1.www;
    r6.xyz = float3(0.0625,1,16) * r2.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = r6.xyz * r2.zzz;
    r0.y = r0.y + r0.z;
    r0.y = cb3[2].x + r0.y;
    r7.x = r0.y + r2.w;
    r7.y = r0.y * cb3[3].y + r2.w;
    r0.y = cb3[3].y * r7.x;
    r7.z = 0.5 * r0.y;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = frac(r7.xyz);
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = abs(r7.xyz) * abs(r7.xyz);
    r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
    r7.xyz = r8.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
    r7.xyz = r7.xyz + r7.xyz;
    r8.w = r7.y * r7.z;
    r0.y = cmp(r8.w < 0);
    r8.y = abs(r8.w);
    r8.xz = float2(-1,1);
    r2.zw = r0.yy ? r8.xy : r8.zw;
    r0.y = -r7.y * r7.z + r2.z;
    r0.y = r2.w * r0.y + r8.w;
    r2.z = r2.z + -r0.y;
    r0.y = r2.w * r2.z + r0.y;
    r0.y = cb3[3].x * r0.y;
    r2.z = 1 + -cb3[0].w;
    r2.w = 1 + -cb3[3].x;
    r2.w = r7.x * r2.w;
    r0.y = r0.y * r2.z + r2.w;
    r6.xyz = r6.xyz * r0.yyy;
    r6.xyz = r6.xyz * cb3[2].yyy + r3.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r0.y = sqrt(r0.y);
    r2.z = 1 / cb3[1].z;
    r2.z = -r2.z * 0.25 + r6.z;
    r2.z = max(0, r2.z);
    r2.z = cb3[1].z * r2.z;
    r2.w = cmp(r2.z != 0.000000);
    r3.w = log2(r2.z);
    r3.w = cb3[1].w * r3.w;
    r3.w = exp2(r3.w);
    r2.z = r2.w ? r3.w : r2.z;
    r5.x = r0.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r0.z;
    r0.xz = float2(0.5,0.5) + r5.xy;
    r0.xz = frac(r0.xz);
    r0.xz = r0.xz * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r0.xz) * abs(r0.xz);
    r0.xz = -abs(r0.xz) * float2(2,2) + float2(3,3);
    r0.xz = r5.xy * r0.xz + float2(-0.5,-0.5);
    r0.xz = r0.xz + r0.xz;
    r0.x = r0.z * r0.z + r0.x;
    r0.z = cmp(cb3[1].z != 0.000000);
    r2.w = cb3[6].x / cb3[1].z;
    r0.z = r0.z ? r2.w : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r0.z;
    r0.x = r0.x * r2.z;
    r6.xy = cb3[0].xy * r0.xx + r6.xy;
    r0.x = dot(r6.xyz, r6.xyz);
    r0.x = rsqrt(r0.x);
    r6.xyz = r6.xyz * r0.xxx;
    r0.xyz = r6.xyz * r0.yyy + -r3.xyz;
    r0.xyz = r0.xyz * r1.www;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r4.xyz + r0.xyz;
  r3.xyzw = cb1[92].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb1[91].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r3.xyzw;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r1.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.w = 0;
  o5.x = r0.w;
  o5.zw = r5.zw;
  o6.xy = r2.xy;
  o6.zw = float2(0,0);
  return;
}
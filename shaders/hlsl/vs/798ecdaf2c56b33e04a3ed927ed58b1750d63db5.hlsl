// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[10];
}

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
  float4 cb3[19];
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
  r5.xyz = r6.zzz * r12.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r6.xyz = cb0[7].xyz + r4.xyz;
  r10.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r10.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r10.xyz = cb1[70].xyz + r6.xyz;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[8].x + r2.w;
  r2.w = saturate(cb0[8].y * r2.w);
  o2.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[8].w * r2.w;
  r1.w = cb0[8].z * r1.w + r2.w;
  r10.xyz = -cb0[5].xyz + r6.xyz;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r4.w + r2.w;
  r6.xyz = -cb0[6].xyz + r6.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[2].w * r4.w + r5.w;
  r6.xyz = cmp(cb0[2].xyz < r2.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r6.xyz, cb0[4].xyz);
  r6.xyz = cmp(cb0[3].xyz < r5.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r5.w = dot(r6.xyz, cb0[4].xyz);
  r5.w = cb0[6].w * r5.w;
  r6.w = r2.w * cb0[5].w + r5.w;
  r2.w = cmp(abs(r6.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r6.z = r2.w * r1.w;
  r10.x = r1.x;
  r10.y = r2.x;
  r10.z = r3.x;
  r10.w = r4.x;
  r1.x = dot(v0.xyzw, r10.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r4.y;
  r1.y = dot(v0.xyzw, r10.xyzw);
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
  r1.w = r1.w * r6.z;
  r2.x = (int)r0.z * asint(cb4[0].y);
  r2.xy = t3.Load(r2.x).xy;
  r2.z = cmp(r6.z >= 1);
  if (r2.z != 0) {
    r3.xyz = cb2[1].xyz * r4.yyy;
    r3.xyz = r4.xxx * cb2[0].xyz + r3.xyz;
    r3.xyz = r4.zzz * cb2[2].xyz + r3.xyz;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r2.z = asint(cb4[0].y) + -1;
    r2.w = min(5, (uint)r2.z);
    r2.w = mad(asint(cb4[0].y), (int)r0.z, (int)r2.w);
    r2.w = t3.Load(r2.w).y;
    r3.w = (int)cb6[7].z;
    r4.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r0.w = sqrt(r0.w);
    r8.xyz = v0.yyy * r8.xyz;
    r7.xyz = v0.xxx * r7.xyz + r8.xyz;
    r7.xyz = v0.zzz * r9.xyz + r7.xyz;
    r7.xyz = r7.xyz / r0.www;
    r3.y = cmp((int)r3.w == 5);
    r4.z = cmp(r2.x < 0.5);
    r4.z = r4.z ? 0.750000 : 0;
    r5.w = cb3[14].x + r2.y;
    r4.z = r5.w * cb3[14].z + r4.z;
    r4.z = 0.5 + r4.z;
    r4.z = frac(r4.z);
    r4.z = r4.z * 2 + -1;
    r5.w = abs(r4.z) * abs(r4.z);
    r4.z = -abs(r4.z) * 2 + 3;
    r4.z = r5.w * r4.z + -0.5;
    r2.w = r4.z * r2.w;
    r2.w = dot(cb3[14].yy, r2.ww);
    r8.xyz = r2.www * r5.xyz + r7.xyz;
    r8.xyz = r3.yyy ? r8.xyz : r7.xyz;
    r2.w = cmp(2 < (int)r3.w);
    if (r2.w != 0) {
      r2.z = min(2, (uint)r2.z);
      r2.z = mad(asint(cb4[0].y), (int)r0.z, (int)r2.z);
      r2.zw = t3.Load(r2.z).xy;
      if (r3.y != 0) {
        r9.xyz = float3(0.0625,1,16) * r2.www;
        r9.xyz = frac(r9.xyz);
        r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r9.xyz = r9.xyz * r2.zzz;
        r3.y = r4.x + r4.y;
        r3.y = cb3[2].x + r3.y;
        r10.x = r3.y + r2.w;
        r10.y = r3.y * cb3[3].y + r2.w;
        r4.z = cb3[3].y * r10.x;
        r10.z = 0.5 * r4.z;
        r10.w = r10.x + -r2.z;
        r10.xyzw = float4(0.5,0.5,0.5,1.5) + r10.xyzw;
        r10.xyzw = frac(r10.xyzw);
        r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r11.xyzw = abs(r10.xyzw) * abs(r10.xyzw);
        r10.xyzw = -abs(r10.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r10.xyzw = r11.xyzw * r10.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r10.xyzw = r10.xyzw + r10.xyzw;
        r11.w = r10.y * r10.z;
        r4.z = cmp(r11.w < 0);
        r11.y = abs(r11.w);
        r11.xz = float2(-1,1);
        r6.xy = r4.zz ? r11.xy : r11.zw;
        r4.z = -r10.y * r10.z + r6.x;
        r4.z = r6.y * r4.z + r11.w;
        r5.w = r6.x + -r4.z;
        r4.z = r6.y * r5.w + r4.z;
        r4.z = cb3[3].x * r4.z;
        r5.w = 1 + -cb3[0].w;
        r6.x = 1 + -cb3[3].x;
        r6.x = r10.x * r6.x;
        r4.z = r4.z * r5.w + r6.x;
        r5.w = r10.w * cb3[4].x + 1;
        r4.z = r5.w * r4.z;
        r9.xyz = r9.xyz * r4.zzz;
        r9.xyz = r9.xyz * cb3[2].yyy + r8.xyz;
        r6.x = r3.y * 0.100000001 + r2.w;
        r3.y = cb3[18].x * cb3[7].x;
        r6.y = r3.y * 0.100000001 + r2.w;
        r6.xy = float2(0.5,0.5) + r6.xy;
        r6.xy = frac(r6.xy);
        r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
        r10.xy = abs(r6.xy) * abs(r6.xy);
        r6.xy = -abs(r6.xy) * float2(2,2) + float2(3,3);
        r6.xy = r10.xy * r6.xy + float2(-0.5,-0.5);
        r6.xy = r6.xy + r6.xy;
        r6.xy = r6.xy * r6.xy;
        r3.y = r6.y * r6.x;
        r3.y = -r3.y * cb3[7].x + 1;
        r4.z = cb3[0].w * r10.w;
        r3.y = r4.z * cb3[4].x + r3.y;
        r10.xyz = cb3[5].xyz + -r9.xyz;
        r10.xyz = cb3[6].yyy * r10.xyz;
        r10.xyz = r10.xyz * r3.yyy;
        r8.xyz = r10.xyz * r2.zzz + r9.xyz;
      } else {
        r9.xyz = float3(0.0625,1,16) * r2.www;
        r9.xyz = frac(r9.xyz);
        r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r9.xyz = r9.xyz * r2.zzz;
        r2.z = r4.x + r4.y;
        r2.z = cb3[2].x + r2.z;
        r10.x = r2.z + r2.w;
        r10.y = r2.z * cb3[3].y + r2.w;
        r2.z = cb3[3].y * r10.x;
        r10.z = 0.5 * r2.z;
        r10.xyz = float3(0.5,0.5,0.5) + r10.xyz;
        r10.xyz = frac(r10.xyz);
        r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r11.xyz = abs(r10.xyz) * abs(r10.xyz);
        r10.xyz = -abs(r10.xyz) * float3(2,2,2) + float3(3,3,3);
        r10.xyz = r11.xyz * r10.xyz + float3(-0.5,-0.5,-0.5);
        r10.xyz = r10.xyz + r10.xyz;
        r11.w = r10.y * r10.z;
        r2.z = cmp(r11.w < 0);
        r11.y = abs(r11.w);
        r11.xz = float2(-1,1);
        r2.zw = r2.zz ? r11.xy : r11.zw;
        r3.y = -r10.y * r10.z + r2.z;
        r3.y = r2.w * r3.y + r11.w;
        r2.z = -r3.y + r2.z;
        r2.z = r2.w * r2.z + r3.y;
        r2.z = cb3[3].x * r2.z;
        r2.w = 1 + -cb3[0].w;
        r3.y = 1 + -cb3[3].x;
        r3.y = r10.x * r3.y;
        r2.z = r2.z * r2.w + r3.y;
        r9.xyz = r9.xyz * r2.zzz;
        r8.xyz = r9.xyz * cb3[2].yyy + r8.xyz;
      }
    }
    r2.z = dot(r8.xyz, r8.xyz);
    r2.z = sqrt(r2.z);
    r2.w = 1 / cb3[1].z;
    r2.w = -r2.w * 0.25 + r8.z;
    r2.w = max(0, r2.w);
    r2.w = cb3[1].z * r2.w;
    r3.y = cmp(r2.w != 0.000000);
    r4.x = log2(r2.w);
    r4.x = cb3[1].w * r4.x;
    r4.x = exp2(r4.x);
    r2.w = r3.y ? r4.x : r2.w;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r4.y;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r4.xy = abs(r3.xy) * abs(r3.xy);
    r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = r4.xy * r3.xy + float2(-0.5,-0.5);
    r3.xy = r3.xy + r3.xy;
    r3.x = r3.y * r3.y + r3.x;
    r3.y = cmp(cb3[1].z != 0.000000);
    r4.x = cb3[6].x / cb3[1].z;
    r3.y = r3.y ? r4.x : cb3[6].x;
    r3.x = cb3[1].y * r3.x + r3.y;
    r2.w = r3.x * r2.w;
    r3.xy = cb3[0].xy * r2.ww + r8.xy;
    r4.xy = r3.ww ? r3.xy : r8.xy;
    r4.z = r8.z;
    r2.w = dot(r4.xyz, r4.xyz);
    r2.w = rsqrt(r2.w);
    r4.xyz = r4.xyz * r2.www;
    r4.xyz = r4.xyz * r2.zzz;
    r3.xyw = r3.www ? r4.xyz : r8.xyz;
    r3.xyw = r3.xyw + -r7.xyz;
    r3.xyw = r3.xyw * r0.www;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r7.xyz = r1.zxy * r6.zzz + -cb1[70].zxy;
    r4.xyz = r7.xyz + -r4.xyz;
    r2.zw = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r0.w = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t5.SampleLevel(s0_s, r2.zw, -1).xyz;
    r5.w = cb6[8].y + r4.y;
    r6.x = -r5.w + r0.w;
    r6.x = max(0, r6.x);
    r4.x = r4.x + -r4.y;
    r4.x = max(9.99999975e-005, r4.x);
    r4.x = r6.x / r4.x;
    r4.x = min(1, r4.x);
    r4.y = ceil(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = min(0.200000003, r4.x);
    r4.x = r4.y * r4.x;
    r0.w = -r4.z + r0.w;
    r6.x = max(0, r0.w);
    r4.z = r5.w + -r4.z;
    r4.z = max(9.99999975e-005, r4.z);
    r4.z = r6.x / r4.z;
    r4.z = min(1, r4.z);
    r5.w = ceil(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = min(0.200000003, r4.z);
    r4.z = r5.w * r4.z;
    r4.yz = float2(5,5) * r4.xz;
    r6.xy = t6.SampleLevel(s1_s, r2.zw, -1).xy;
    r4.x = r4.x * 5 + -r4.z;
    r4.x = cmp(9.99999975e-006 < abs(r4.x));
    r5.w = cmp(r4.y >= r4.z);
    r5.w = r5.w ? r6.y : r6.x;
    r4.x = r4.x ? r5.w : r6.x;
    r4.x = cb6[8].z * r4.x;
    r4.y = max(r4.y, r4.z);
    r4.x = r4.x * r4.y;
    r0.w = 10000 * r0.w;
    r0.w = max(0, r0.w);
    r3.z = cb6[4].z + r3.z;
    r3.z = r7.x + -r3.z;
    r0.w = min(r3.z, r0.w);
    r0.w = cb6[9].x * r0.w;
    r0.w = r4.y * r0.w;
    r0.w = r4.x * r0.w;
    r2.zw = t7.SampleLevel(s2_s, r2.zw, -1).xy;
    r2.zw = float2(-1,-1) + r2.zw;
    r4.xy = r2.zw * r0.ww;
    r0.w = dot(r4.xy, r4.xy);
    r0.w = sqrt(r0.w);
    r4.z = -1.20000005 * r0.w;
    r3.xyz = r3.xyw * cb6[7].www + r4.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r6.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o6.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  r0.z = mad(asint(cb4[0].y), (int)r0.z, asint(cb4[0].z));
  r0.zw = t3.Load(r0.z).xy;
  o4.xy = r0.zw * cb5[2].xy + r0.xy;
  o0.w = 0;
  o1.xyz = r5.xyz;
  o2.x = r4.w;
  o2.zw = r6.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  o5.xyzw = r1.xyzw;
  return;
}
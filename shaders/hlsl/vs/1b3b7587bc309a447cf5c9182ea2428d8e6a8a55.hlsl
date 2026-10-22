// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[12];
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
  out float4 o4 : SV_POSITION0)
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
  o0.xyz = r4.zzz * r11.xyz + r12.xyz;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  o1.xyz = r5.zzz * r11.xyz + r4.xyz;
  o1.w = cb2[4].w * r5.w;
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
  o2.y = 1 + -r5.x;
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
  r1.w = r1.w * r5.z;
  r2.x = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r2.x).xy;
  r2.z = cmp(r5.z >= 1);
  if (r2.z != 0) {
    r3.xyz = cb2[1].xyz * r0.yyy;
    r3.xyz = r0.xxx * cb2[0].xyz + r3.xyz;
    r0.xyz = r0.zzz * cb2[2].xyz + r3.xyz;
    r0.xyz = cb2[3].xyz + r0.xyz;
    r2.z = (int)cb5[9].w;
    r3.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r4.w);
    r4.xyz = v0.yyy * r7.xyz;
    r4.xyz = v0.xxx * r6.xyz + r4.xyz;
    r4.xyz = v0.zzz * r8.xyz + r4.xyz;
    r4.xyz = r4.xyz / r0.yyy;
    r3.z = cmp(2 < (int)r2.z);
    if (r3.z != 0) {
      r3.z = asint(cb4[0].y) + -1;
      r3.z = min(2, (uint)r3.z);
      r2.w = mad(asint(cb4[0].y), (int)r2.w, (int)r3.z);
      r3.zw = t2.Load(r2.w).xy;
      r2.w = cmp((int)r2.z == 5);
      if (r2.w != 0) {
        r6.xyz = float3(0.0625,1,16) * r3.www;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r3.zzz;
        r2.w = r3.x + r3.y;
        r2.w = cb3[2].x + r2.w;
        r7.x = r2.w + r3.w;
        r7.y = r2.w * cb3[3].y + r3.w;
        r4.w = cb3[3].y * r7.x;
        r7.z = 0.5 * r4.w;
        r7.w = r7.x + -r3.z;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r8.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r8.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r8.w = r7.y * r7.z;
        r4.w = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r5.xy = r4.ww ? r8.xy : r8.zw;
        r4.w = -r7.y * r7.z + r5.x;
        r4.w = r5.y * r4.w + r8.w;
        r5.x = r5.x + -r4.w;
        r4.w = r5.y * r5.x + r4.w;
        r4.w = cb3[3].x * r4.w;
        r5.x = 1 + -cb3[0].w;
        r5.y = 1 + -cb3[3].x;
        r5.y = r7.x * r5.y;
        r4.w = r4.w * r5.x + r5.y;
        r5.x = r7.w * cb3[4].x + 1;
        r4.w = r5.x * r4.w;
        r6.xyz = r6.xyz * r4.www;
        r6.xyz = r6.xyz * cb3[2].yyy + r4.xyz;
        r5.x = r2.w * 0.100000001 + r3.w;
        r2.w = cb3[18].x * cb3[7].x;
        r5.y = r2.w * 0.100000001 + r3.w;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r7.xy = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r7.xy * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r5.xy = r5.xy * r5.xy;
        r2.w = r5.y * r5.x;
        r2.w = -r2.w * cb3[7].x + 1;
        r4.w = cb3[0].w * r7.w;
        r2.w = r4.w * cb3[4].x + r2.w;
        r7.xyz = cb3[5].xyz + -r6.xyz;
        r7.xyz = cb3[6].yyy * r7.xyz;
        r7.xyz = r7.xyz * r2.www;
        r6.xyz = r7.xyz * r3.zzz + r6.xyz;
      } else {
        r7.xyz = float3(0.0625,1,16) * r3.www;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r3.zzz;
        r2.w = r3.x + r3.y;
        r2.w = cb3[2].x + r2.w;
        r8.x = r2.w + r3.w;
        r8.y = r2.w * cb3[3].y + r3.w;
        r2.w = cb3[3].y * r8.x;
        r8.z = 0.5 * r2.w;
        r3.xzw = float3(0.5,0.5,0.5) + r8.xyz;
        r3.xzw = frac(r3.xzw);
        r3.xzw = r3.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = abs(r3.xzw) * abs(r3.xzw);
        r3.xzw = -abs(r3.xzw) * float3(2,2,2) + float3(3,3,3);
        r3.xzw = r8.xyz * r3.xzw + float3(-0.5,-0.5,-0.5);
        r3.xzw = r3.xzw + r3.xzw;
        r8.w = r3.z * r3.w;
        r2.w = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r5.xy = r2.ww ? r8.xy : r8.zw;
        r2.w = -r3.z * r3.w + r5.x;
        r2.w = r5.y * r2.w + r8.w;
        r3.z = r5.x + -r2.w;
        r2.w = r5.y * r3.z + r2.w;
        r2.w = cb3[3].x * r2.w;
        r3.z = 1 + -cb3[0].w;
        r3.w = 1 + -cb3[3].x;
        r3.x = r3.x * r3.w;
        r2.w = r2.w * r3.z + r3.x;
        r3.xzw = r7.xyz * r2.www;
        r6.xyz = r3.xzw * cb3[2].yyy + r4.xyz;
      }
    } else {
      r6.xyz = r4.xyz;
    }
    r2.w = dot(r6.xyz, r6.xyz);
    r2.w = sqrt(r2.w);
    r3.x = 1 / cb3[1].z;
    r3.x = -r3.x * 0.25 + r6.z;
    r3.x = max(0, r3.x);
    r3.x = cb3[1].z * r3.x;
    r3.z = cmp(r3.x != 0.000000);
    r3.w = log2(r3.x);
    r3.w = cb3[1].w * r3.w;
    r3.w = exp2(r3.w);
    r3.x = r3.z ? r3.w : r3.x;
    r5.x = r0.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r3.y;
    r3.yz = float2(0.5,0.5) + r5.xy;
    r3.yz = frac(r3.yz);
    r3.yz = r3.yz * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r3.yz) * abs(r3.yz);
    r3.yz = -abs(r3.yz) * float2(2,2) + float2(3,3);
    r3.yz = r5.xy * r3.yz + float2(-0.5,-0.5);
    r3.yz = r3.yz + r3.yz;
    r0.x = r3.z * r3.z + r3.y;
    r3.y = cmp(cb3[1].z != 0.000000);
    r3.z = cb3[6].x / cb3[1].z;
    r3.y = r3.y ? r3.z : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r3.y;
    r0.x = r0.x * r3.x;
    r3.xy = cb3[0].xy * r0.xx + r6.xy;
    r3.xy = r2.zz ? r3.xy : r6.xy;
    r3.z = r6.z;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r3.xyz * r0.xxx;
    r3.xyz = r3.xyz * r2.www;
    r3.xyz = r2.zzz ? r3.xyz : r6.xyz;
    r3.xyz = r3.xyz + -r4.xyz;
    r3.xyz = r3.xyz * r0.yyy;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r4.xyz = r6.xyz + -r4.xyz;
    r0.xy = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r2.z = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t4.SampleLevel(s0_s, r0.xy, -1).xyz;
    r2.w = cb5[10].z + r4.y;
    r3.w = r2.z + -r2.w;
    r3.w = max(0, r3.w);
    r4.x = r4.x + -r4.y;
    r4.x = max(9.99999975e-005, r4.x);
    r3.w = r3.w / r4.x;
    r3.w = min(1, r3.w);
    r4.x = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r4.x * r3.w;
    r4.x = 5 * r3.w;
    r2.zw = -r4.zz + r2.zw;
    r4.y = max(0, r2.z);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r4.y / r2.w;
    r2.w = min(1, r2.w);
    r4.y = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r4.y * r2.w;
    r2.zw = float2(10000,5) * r2.zw;
    r4.yz = t5.SampleLevel(s1_s, r0.xy, -1).xy;
    r3.w = r3.w * 5 + -r2.w;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r4.w = cmp(r4.x >= r2.w);
    r4.z = r4.w ? r4.z : r4.y;
    r3.w = r3.w ? r4.z : r4.y;
    r3.w = cb5[10].w * r3.w;
    r2.w = max(r4.x, r2.w);
    r3.w = r3.w * r2.w;
    r2.z = max(0, r2.z);
    r0.z = cb5[6].z + r0.z;
    r0.z = r6.x + -r0.z;
    r0.z = min(r2.z, r0.z);
    r0.z = cb5[11].y * r0.z;
    r0.z = r2.w * r0.z;
    r0.z = r3.w * r0.z;
    r0.xy = t6.SampleLevel(s2_s, r0.xy, -1).xy;
    r0.xy = float2(-1,-1) + r0.xy;
    r0.xy = r0.zz * r0.xy;
    r2.z = dot(r0.xy, r0.xy);
    r2.z = sqrt(r2.z);
    r0.z = -1.20000005 * r2.z;
    r0.xyz = r3.xyz * cb5[10].xxx + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r3.xyzw = cb1[1].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb1[2].xyzw + r3.xyzw;
  o4.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  o0.w = 0;
  o2.x = r0.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  return;
}
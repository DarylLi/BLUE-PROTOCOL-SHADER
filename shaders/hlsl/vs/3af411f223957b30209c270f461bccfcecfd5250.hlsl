// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r4.xyz = v0.yyy * r1.xzw;
  r4.xyz = r0.xyz * v0.xxx + r4.xyz;
  r4.xyz = r2.xyz * v0.zzz + r4.xyz;
  r3.xyz = cb0[70].xyz + r3.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.w = (int)cb3[10].x;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r8.x = t0[r5.w].val[0/4];
  r8.y = t0[r5.w].val[0/4+1];
  r8.w = t0[r5.w].val[0/4+2];
  r4.w = 1;
  r9.x = r6.x;
  r9.y = r7.x;
  r9.z = r5.x;
  r9.w = r8.x;
  r9.x = dot(r4.xyzw, r9.xyzw);
  r10.x = r6.y;
  r10.y = r7.y;
  r10.z = r5.y;
  r10.w = r8.y;
  r9.y = dot(r4.xyzw, r10.xyzw);
  r8.x = r6.z;
  r8.y = r7.z;
  r8.z = r5.z;
  r9.z = dot(r4.xyzw, r8.xyzw);
  r1.y = mad((int)v1.x, 36, 5);
  r5.x = t0[r1.y].val[0/4];
  r5.y = t0[r1.y].val[0/4+1];
  r5.z = t0[r1.y].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = sqrt(r1.y);
  r6.x = r0.x;
  r6.y = r1.x;
  r6.z = r2.x;
  r6.x = dot(r9.xyz, r6.xyz);
  r7.x = r0.y;
  r7.y = r1.z;
  r7.z = r2.y;
  r6.y = dot(r9.xyz, r7.xyz);
  r2.x = r0.z;
  r2.y = r1.w;
  r6.z = dot(r9.xyz, r2.xyz);
  r0.xyz = r6.xyz / r1.yyy;
  r1.x = cmp(2 < (int)r0.w);
  if (r1.x != 0) {
    r1.x = asint(cb2[0].y) + -1;
    r1.x = min(2, (uint)r1.x);
    r1.z = (int)v2.x + asint(cb2[0].w);
    r1.x = mad(asint(cb2[0].y), (int)r1.z, (int)r1.x);
    r1.xz = t1.Load(r1.x).xy;
    r1.w = cmp((int)r0.w == 5);
    if (r1.w != 0) {
      r2.xyz = float3(0.0625,1,16) * r1.zzz;
      r2.xyz = frac(r2.xyz);
      r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r2.xyz = r2.xyz * r1.xxx;
      r1.w = r5.y + r5.w;
      r1.w = cb1[2].x + r1.w;
      r6.x = r1.w + r1.z;
      r6.y = r1.w * cb1[3].y + r1.z;
      r2.w = cb1[3].y * r6.x;
      r6.z = 0.5 * r2.w;
      r6.w = r6.x + -r1.x;
      r6.xyzw = float4(0.5,0.5,0.5,1.5) + r6.xyzw;
      r6.xyzw = frac(r6.xyzw);
      r6.xyzw = r6.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r7.xyzw = abs(r6.xyzw) * abs(r6.xyzw);
      r6.xyzw = -abs(r6.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r6.xyzw = r7.xyzw * r6.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r6.xyzw = r6.xyzw + r6.xyzw;
      r7.w = r6.y * r6.z;
      r2.w = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r7.xy = r2.ww ? r7.xy : r7.zw;
      r2.w = -r6.y * r6.z + r7.x;
      r2.w = r7.y * r2.w + r7.w;
      r3.w = r7.x + -r2.w;
      r2.w = r7.y * r3.w + r2.w;
      r2.w = cb1[3].x * r2.w;
      r3.w = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r6.x * r4.w;
      r2.w = r2.w * r3.w + r4.w;
      r3.w = r6.w * cb1[4].x + 1;
      r2.w = r3.w * r2.w;
      r2.xyz = r2.xyz * r2.www;
      r2.xyz = r2.xyz * cb1[2].yyy + r0.xyz;
      r6.x = r1.w * 0.100000001 + r1.z;
      r1.w = cb1[18].x * cb1[7].x;
      r6.y = r1.w * 0.100000001 + r1.z;
      r6.xy = float2(0.5,0.5) + r6.xy;
      r6.xy = frac(r6.xy);
      r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
      r7.xy = abs(r6.xy) * abs(r6.xy);
      r6.xy = -abs(r6.xy) * float2(2,2) + float2(3,3);
      r6.xy = r7.xy * r6.xy + float2(-0.5,-0.5);
      r6.xy = r6.xy + r6.xy;
      r6.xy = r6.xy * r6.xy;
      r1.w = r6.y * r6.x;
      r1.w = -r1.w * cb1[7].x + 1;
      r2.w = cb1[0].w * r6.w;
      r1.w = r2.w * cb1[4].x + r1.w;
      r6.xyz = cb1[5].xyz + -r2.xyz;
      r6.xyz = cb1[6].yyy * r6.xyz;
      r6.xyz = r6.xyz * r1.www;
      r2.xyz = r6.xyz * r1.xxx + r2.xyz;
    } else {
      r6.xyz = float3(0.0625,1,16) * r1.zzz;
      r6.xyz = frac(r6.xyz);
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r6.xyz = r6.xyz * r1.xxx;
      r1.x = r5.y + r5.w;
      r1.x = cb1[2].x + r1.x;
      r7.x = r1.x + r1.z;
      r7.y = r1.x * cb1[3].y + r1.z;
      r1.x = cb1[3].y * r7.x;
      r7.z = 0.5 * r1.x;
      r1.xzw = float3(0.5,0.5,0.5) + r7.xyz;
      r1.xzw = frac(r1.xzw);
      r1.xzw = r1.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r7.xyz = abs(r1.xzw) * abs(r1.xzw);
      r1.xzw = -abs(r1.xzw) * float3(2,2,2) + float3(3,3,3);
      r1.xzw = r7.xyz * r1.xzw + float3(-0.5,-0.5,-0.5);
      r1.xzw = r1.xzw + r1.xzw;
      r7.w = r1.z * r1.w;
      r2.w = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r7.xy = r2.ww ? r7.xy : r7.zw;
      r1.z = -r1.z * r1.w + r7.x;
      r1.z = r7.y * r1.z + r7.w;
      r1.w = r7.x + -r1.z;
      r1.z = r7.y * r1.w + r1.z;
      r1.z = cb1[3].x * r1.z;
      r1.w = 1 + -cb1[0].w;
      r2.w = 1 + -cb1[3].x;
      r1.x = r2.w * r1.x;
      r1.x = r1.z * r1.w + r1.x;
      r1.xzw = r6.xyz * r1.xxx;
      r2.xyz = r1.xzw * cb1[2].yyy + r0.xyz;
    }
  } else {
    r2.xyz = r0.xyz;
  }
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = sqrt(r1.x);
  r1.z = 1 / cb1[1].z;
  r1.z = -r1.z * 0.25 + r2.z;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.w = cmp(r1.z != 0.000000);
  r2.w = log2(r1.z);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r1.z = r1.w ? r2.w : r1.z;
  r5.x = r5.x * 0.00100000005 + cb1[1].x;
  r5.y = cb1[1].x * 0.800000012 + r5.w;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r5.xy = frac(r5.xy);
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r6.xy = abs(r5.xy) * abs(r5.xy);
  r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
  r5.xy = r6.xy * r5.xy + float2(-0.5,-0.5);
  r5.xy = r5.xy + r5.xy;
  r1.w = r5.y * r5.y + r5.x;
  r2.w = cmp(cb1[1].z != 0.000000);
  r3.w = cb1[6].x / cb1[1].z;
  r2.w = r2.w ? r3.w : cb1[6].x;
  r1.w = cb1[1].y * r1.w + r2.w;
  r1.z = r1.w * r1.z;
  r1.zw = cb1[0].xy * r1.zz + r2.xy;
  r6.xy = r0.ww ? r1.zw : r2.xy;
  r6.z = r2.z;
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyw = r6.xyz * r1.zzz;
  r1.xzw = r5.xyw * r1.xxx;
  r1.xzw = r0.www ? r1.xzw : r2.xyz;
  r0.xyz = r1.xzw + -r0.xyz;
  r0.xyz = r0.xyz * r1.yyy;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xyz = r4.zxy + -r1.xyz;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t2.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.x = cb3[10].w + r2.y;
  r1.w = -r1.x + r0.w;
  r1.w = max(0, r1.w);
  r2.x = r2.x + -r2.y;
  r2.x = max(9.99999975e-005, r2.x);
  r1.w = r1.w / r2.x;
  r1.w = min(1, r1.w);
  r2.x = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r2.x * r1.w;
  r2.x = 5 * r1.w;
  r0.w = -r2.z + r0.w;
  r2.y = max(0, r0.w);
  r1.x = r1.x + -r2.z;
  r1.x = max(9.99999975e-005, r1.x);
  r1.x = r2.y / r1.x;
  r1.x = min(1, r1.x);
  r2.y = ceil(r1.x);
  r1.x = 1 + -r1.x;
  r1.x = min(0.200000003, r1.x);
  r1.x = r2.y * r1.x;
  r1.x = 5 * r1.x;
  r2.yz = t3.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.w = r1.w * 5 + -r1.x;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r2.x >= r1.x);
  r2.z = r2.w ? r2.z : r2.y;
  r1.w = r1.w ? r2.z : r2.y;
  r1.w = cb3[11].x * r1.w;
  r1.x = max(r2.x, r1.x);
  r1.w = r1.w * r1.x;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = cb3[6].z + r5.z;
  r2.x = r4.z + -r2.x;
  r0.w = min(r2.x, r0.w);
  r0.w = cb3[11].z * r0.w;
  r0.w = r1.x * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = t4.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.xy = float2(-1,-1) + r1.xy;
  r1.xy = r1.xy * r0.ww;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[10].yyy + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

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
  float4 cb3[9];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.yzw = t2.Load(r0.y).xyz;
  r1.x = (int)v1.x * 36;
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r3.x = t0[r1.w].val[0/4];
  r3.y = t0[r1.w].val[0/4+1];
  r3.z = t0[r1.w].val[0/4+2];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r6.xyz = r5.xxx * r1.xyz;
  r5.xyw = r5.yyy * r2.xzw;
  r7.xyz = r5.zzz * r3.xyz;
  r5.xyz = r5.xyw * r0.zzz;
  r5.xyz = r0.yyy * r6.xyz + r5.xyz;
  r0.yzw = r0.www * r7.xyz + r5.xyz;
  r5.x = t0[r2.y].val[0/4];
  r5.y = t0[r2.y].val[0/4+1];
  r5.z = t0[r2.y].val[0/4+2];
  r6.xyz = v0.yyy * r2.xzw;
  r6.xyz = r1.xyz * v0.xxx + r6.xyz;
  r6.xyz = r3.xyz * v0.zzz + r6.xyz;
  r5.xyz = cb0[70].xyz + r5.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r1.w = (int)r0.x * asint(cb2[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb2[0].y) + -1;
  r2.y = min(5, (uint)r1.w);
  r2.y = mad(asint(cb2[0].y), (int)r0.x, (int)r2.y);
  r2.y = t1.Load(r2.y).y;
  r3.w = (int)cb3[7].y;
  r7.xyz = -cb0[70].xyz + r5.xyz;
  r8.x = t0[r4.y].val[0/4];
  r8.y = t0[r4.y].val[0/4+1];
  r8.z = t0[r4.y].val[0/4+2];
  r4.x = t0[r4.z].val[0/4];
  r4.y = t0[r4.z].val[0/4+1];
  r4.z = t0[r4.z].val[0/4+2];
  r9.x = t0[r4.w].val[0/4];
  r9.y = t0[r4.w].val[0/4+1];
  r9.z = t0[r4.w].val[0/4+2];
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r10.x = t0[r6.z].val[0/4];
  r10.y = t0[r6.z].val[0/4+1];
  r10.w = t0[r6.z].val[0/4+2];
  r7.w = 1;
  r11.x = r8.x;
  r11.y = r4.x;
  r11.z = r9.x;
  r11.w = r10.x;
  r11.x = dot(r7.xyzw, r11.xyzw);
  r12.x = r8.y;
  r12.y = r4.y;
  r12.z = r9.y;
  r12.w = r10.y;
  r11.y = dot(r7.xyzw, r12.xyzw);
  r10.x = r8.z;
  r10.y = r4.z;
  r10.z = r9.z;
  r11.z = dot(r7.xyzw, r10.xyzw);
  r4.x = t0[r6.w].val[0/4];
  r4.y = t0[r6.w].val[0/4+1];
  r4.z = t0[r6.w].val[0/4+2];
  r4.yw = float2(0.00100000005,0.00100000005) * r4.xy;
  r5.w = dot(r3.xyz, r3.xyz);
  r5.w = sqrt(r5.w);
  r8.x = r1.x;
  r8.y = r2.x;
  r8.z = r3.x;
  r8.x = dot(r11.xyz, r8.xyz);
  r9.x = r1.y;
  r9.y = r2.z;
  r9.z = r3.y;
  r8.y = dot(r11.xyz, r9.xyz);
  r3.x = r1.z;
  r3.y = r2.w;
  r8.z = dot(r11.xyz, r3.xyz);
  r1.xyz = r8.xyz / r5.www;
  r2.x = cmp((int)r3.w == 5);
  r2.z = cmp(r6.x < 0.5);
  r2.z = r2.z ? 0.750000 : 0;
  r2.w = cb1[14].x + r6.y;
  r2.z = r2.w * cb1[14].z + r2.z;
  r2.z = 0.5 + r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 2 + -1;
  r2.w = abs(r2.z) * abs(r2.z);
  r2.z = -abs(r2.z) * 2 + 3;
  r2.z = r2.w * r2.z + -0.5;
  r2.y = r2.z * r2.y;
  r2.y = dot(cb1[14].yy, r2.yy);
  r0.yzw = r2.yyy * r0.yzw + r1.xyz;
  r0.yzw = r2.xxx ? r0.yzw : r1.xyz;
  r2.y = cmp(2 < (int)r3.w);
  if (r2.y != 0) {
    r1.w = min(2, (uint)r1.w);
    r0.x = mad(asint(cb2[0].y), (int)r0.x, (int)r1.w);
    r2.yz = t1.Load(r0.x).xy;
    if (r2.x != 0) {
      r3.xyz = float3(0.0625,1,16) * r2.zzz;
      r3.xyz = frac(r3.xyz);
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.xyz = r3.xyz * r2.yyy;
      r0.x = r4.y + r4.w;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r2.z;
      r8.y = r0.x * cb1[3].y + r2.z;
      r1.w = cb1[3].y * r8.x;
      r8.z = 0.5 * r1.w;
      r8.w = r8.x + -r2.y;
      r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
      r8.xyzw = frac(r8.xyzw);
      r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r9.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
      r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r8.xyzw = r9.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r8.xyzw = r8.xyzw + r8.xyzw;
      r9.w = r8.y * r8.z;
      r1.w = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r2.xw = r1.ww ? r9.xy : r9.zw;
      r1.w = -r8.y * r8.z + r2.x;
      r1.w = r2.w * r1.w + r9.w;
      r2.x = r2.x + -r1.w;
      r1.w = r2.w * r2.x + r1.w;
      r1.w = cb1[3].x * r1.w;
      r2.x = 1 + -cb1[0].w;
      r2.w = 1 + -cb1[3].x;
      r2.w = r8.x * r2.w;
      r1.w = r1.w * r2.x + r2.w;
      r2.x = r8.w * cb1[4].x + 1;
      r1.w = r2.x * r1.w;
      r3.xyz = r3.xyz * r1.www;
      r3.xyz = r3.xyz * cb1[2].yyy + r0.yzw;
      r8.x = r0.x * 0.100000001 + r2.z;
      r0.x = cb1[18].x * cb1[7].x;
      r8.y = r0.x * 0.100000001 + r2.z;
      r2.xw = float2(0.5,0.5) + r8.xy;
      r2.xw = frac(r2.xw);
      r2.xw = r2.xw * float2(2,2) + float2(-1,-1);
      r6.zw = abs(r2.xw) * abs(r2.xw);
      r2.xw = -abs(r2.xw) * float2(2,2) + float2(3,3);
      r2.xw = r6.zw * r2.xw + float2(-0.5,-0.5);
      r2.xw = r2.xw + r2.xw;
      r2.xw = r2.xw * r2.xw;
      r0.x = r2.w * r2.x;
      r0.x = -r0.x * cb1[7].x + 1;
      r1.w = cb1[0].w * r8.w;
      r0.x = r1.w * cb1[4].x + r0.x;
      r8.xyz = cb1[5].xyz + -r3.xyz;
      r8.xyz = cb1[6].yyy * r8.xyz;
      r8.xyz = r8.xyz * r0.xxx;
      r0.yzw = r8.xyz * r2.yyy + r3.xyz;
    } else {
      r3.xyz = float3(0.0625,1,16) * r2.zzz;
      r3.xyz = frac(r3.xyz);
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r2.xyw = r3.xyz * r2.yyy;
      r0.x = r4.y + r4.w;
      r0.x = cb1[2].x + r0.x;
      r3.x = r0.x + r2.z;
      r3.y = r0.x * cb1[3].y + r2.z;
      r0.x = cb1[3].y * r3.x;
      r3.z = 0.5 * r0.x;
      r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
      r3.xyz = frac(r3.xyz);
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = abs(r3.xyz) * abs(r3.xyz);
      r3.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
      r3.xyz = r8.xyz * r3.xyz + float3(-0.5,-0.5,-0.5);
      r3.xyz = r3.xyz + r3.xyz;
      r8.w = r3.y * r3.z;
      r0.x = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r6.zw = r0.xx ? r8.xy : r8.zw;
      r0.x = -r3.y * r3.z + r6.z;
      r0.x = r6.w * r0.x + r8.w;
      r1.w = r6.z + -r0.x;
      r0.x = r6.w * r1.w + r0.x;
      r0.x = cb1[3].x * r0.x;
      r1.w = 1 + -cb1[0].w;
      r2.z = 1 + -cb1[3].x;
      r2.z = r3.x * r2.z;
      r0.x = r0.x * r1.w + r2.z;
      r2.xyz = r2.xyw * r0.xxx;
      r0.yzw = r2.xyz * cb1[2].yyy + r0.yzw;
    }
  }
  r0.x = dot(r0.yzw, r0.yzw);
  r0.x = sqrt(r0.x);
  r1.w = 1 / cb1[1].z;
  r1.w = -r1.w * 0.25 + r0.w;
  r1.w = max(0, r1.w);
  r1.w = cb1[1].z * r1.w;
  r2.x = cmp(r1.w != 0.000000);
  r2.y = log2(r1.w);
  r2.y = cb1[1].w * r2.y;
  r2.y = exp2(r2.y);
  r1.w = r2.x ? r2.y : r1.w;
  r2.x = r4.x * 0.00100000005 + cb1[1].x;
  r2.y = cb1[1].x * 0.800000012 + r4.w;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = abs(r2.xy) * abs(r2.xy);
  r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = r2.zw * r2.xy + float2(-0.5,-0.5);
  r2.xy = r2.xy + r2.xy;
  r2.x = r2.y * r2.y + r2.x;
  r2.y = cmp(cb1[1].z != 0.000000);
  r2.z = cb1[6].x / cb1[1].z;
  r2.y = r2.y ? r2.z : cb1[6].x;
  r2.x = cb1[1].y * r2.x + r2.y;
  r1.w = r2.x * r1.w;
  r2.xy = cb1[0].xy * r1.ww + r0.yz;
  r2.xy = r3.ww ? r2.xy : r0.yz;
  r2.z = r0.w;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r2.xyz = r2.xyz * r0.xxx;
  r0.xyz = r3.www ? r2.xyz : r0.yzw;
  r0.xyz = r0.xyz + -r1.xyz;
  r0.xyz = r0.xyz * r5.www;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xyz = r7.zxy + -r1.xyz;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.x = cb3[8].x + r2.y;
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
  r2.yz = t4.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.w = r1.w * 5 + -r1.x;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r2.x >= r1.x);
  r2.z = r2.w ? r2.z : r2.y;
  r1.w = r1.w ? r2.z : r2.y;
  r1.w = cb3[8].y * r1.w;
  r1.x = max(r2.x, r1.x);
  r1.w = r1.w * r1.x;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = cb3[4].z + r4.z;
  r2.x = r7.z + -r2.x;
  r0.w = min(r2.x, r0.w);
  r0.w = cb3[8].w * r0.w;
  r0.w = r1.x * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = t5.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.xy = float2(-1,-1) + r1.xy;
  r1.xy = r1.xy * r0.ww;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[7].zzz + r1.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.xy = r6.xy;
  o1.zw = float2(0,0);
  return;
}
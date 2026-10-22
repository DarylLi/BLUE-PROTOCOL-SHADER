// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out uint o5 : PRIMITIVE_ID0,
  out uint p5 : LIGHTMAP_ID0,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,19,6,7));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4];
  r8.y = t0[r2.x].val[0/4+1];
  r8.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  o1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t4.Load(r0.y).xyzw;
  o2.xyzw = r1.zyxw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t2.Load(r0.y).xy;
  o3.xy = r0.yz;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r0.yz = t2.Load(r0.y).xy;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r5.x = t0[r1.w].val[8/4];
  r5.y = t0[r1.w].val[8/4+1];
  r0.w = (int)r5.y + asint(cb1[1].y);
  r1.w = mad((int)r0.w, 15, 2);
  p5.x = r0.w;
  r6.x = t1[r1.w].val[0/4];
  r6.y = t1[r1.w].val[0/4+1];
  r6.z = t1[r1.w].val[0/4+2];
  r6.w = t1[r1.w].val[0/4+3];
  o4.xy = r0.yz * r6.xy + r6.zw;
  o5.x = v1.x;
  r0.y = asint(cb1[0].y) + -1;
  r0.yz = min(uint2(0,0), (uint2)r0.yy);
  r0.xy = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r0.yz);
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  r6.xyzw = float4(0.0625,1,16,256) * r0.zzzx;
  r0.x = 7.11111116 * r0.x;
  r0.x = floor(r0.x);
  r0.x = -r0.x * 36 + r6.w;
  r5.yzw = frac(r6.xyz);
  r5.yzw = float3(-0.5,-0.5,-0.5) + r5.yzw;
  r5.yzw = r5.yzw + r5.yzw;
  r6.y = r3.x;
  r6.z = r9.x;
  r6.x = r8.x;
  r6.x = dot(r5.yzw, r6.xyz);
  r7.y = r3.y;
  r7.z = r9.y;
  r7.x = r8.y;
  r6.y = dot(r5.yzw, r7.xyz);
  r7.y = r3.z;
  r7.z = r9.z;
  r7.x = r8.z;
  r6.z = dot(r5.yzw, r7.xyz);
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r5.yzw = r6.xyz / r0.zzz;
  r0.z = -9.99999997e-007 + cb2[7].y;
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r1.w = cmp(cb2[7].y >= 9.99999997e-007);
  r7.xyz = r1.www ? cb2[5].zxy : float3(0,1,0);
  r7.xyz = r0.zzz ? r7.xyz : float3(0,1,0);
  r0.z = dot(r7.yzx, r5.yzw);
  r0.z = r0.z * r0.z;
  r5.yzw = r0.zzz * float3(0,0,1) + r7.yzx;
  r0.z = dot(r5.yzw, r5.yzw);
  r0.z = sqrt(r0.z);
  r5.yzw = r5.yzw / r0.zzz;
  r0.z = 0.166666672 * r0.x;
  r10.y = floor(r0.z);
  r10.x = -r10.y * 6 + r0.x;
  r0.xz = float2(0.200000003,0.200000003) * r10.xy;
  r4.x = t0[r4.y].val[0/4];
  r4.y = t0[r4.y].val[0/4+1];
  r0.xz = r4.xy * r0.xz;
  r0.xz = r0.xz * cb2[9].zz + float2(1,1);
  r10.xyz = cb2[8].xxx * r2.yzw;
  r1.w = dot(r10.xyz, r10.xyz);
  r1.w = frac(r1.w);
  r1.w = cb0[142].z * cb2[9].w + r1.w;
  r1.w = -cb2[10].x * r0.y + r1.w;
  r0.xz = r1.ww * float2(-1,0) + r0.xz;
  r11.xyz = t5.SampleLevel(s0_s, r0.xz, -1).xyz;
  r11.xyz = float3(-0.5,-0.5,-0.5) + r11.xyz;
  r0.xz = r11.xy + r11.xy;
  r1.w = r11.z * 2 + 1;
  r1.w = cb2[10].y * r1.w;
  r11.xyz = cb2[6].xyz * r0.zzz;
  r11.xyz = r5.yzw * r0.xxx + r11.xyz;
  r11.xyz = cb2[10].www * r11.xyz;
  r5.yzw = r5.yzw * r1.www + r11.xyz;
  r11.xyz = v0.yyy * r3.xyz;
  r0.x = dot(-r3.xyz, -r3.xyz);
  r3.y = sqrt(r0.x);
  r11.xyz = r8.xyz * v0.xxx + r11.xyz;
  r0.x = dot(-r8.xyz, -r8.xyz);
  r3.x = sqrt(r0.x);
  r8.xyz = r9.xyz * v0.zzz + r11.xyz;
  r0.x = dot(-r9.xyz, -r9.xyz);
  r3.z = sqrt(r0.x);
  r9.xyz = cb0[70].xyz + r2.yzw;
  r8.xyz = r9.xyz + r8.xyz;
  r0.xz = -cb0[70].xy + r8.xy;
  r0.xz = r0.xz + -r2.yz;
  r0.xz = cb2[7].ww * r0.xz + r10.xy;
  r1.w = cb2[8].z * r0.w;
  r1.w = cb0[142].z * cb2[8].y + -r1.w;
  r0.xz = r1.ww * float2(1,0) + r0.xz;
  r0.xz = t5.SampleLevel(s0_s, r0.xz, -1).xy;
  r0.xz = float2(-0.25,-0.5) + r0.xz;
  r0.z = cb2[9].x * r0.z;
  r0.x = dot(r0.xx, cb2[8].ww);
  r9.xyz = float3(0,0,2) * r0.zzz;
  r9.xyz = r7.yzx * r0.xxx + r9.xyz;
  r11.xyz = -cb0[70].xyz + r8.xyz;
  r0.xzw = r9.xyz * r0.www + r11.xyz;
  r1.w = cb2[9].y * r0.y;
  r6.xyz = -r6.xyz * r1.www + float3(1,1,1);
  r0.xzw = -r6.xyz + r0.xzw;
  r5.yzw = r5.yzw * r0.yyy + r0.xzw;
  r0.x = dot(r0.xzw, r0.xzw);
  r0.y = dot(r5.yzw, r5.yzw);
  r0.xz = sqrt(r0.xy);
  r5.yzw = r5.yzw / r0.zzz;
  r0.z = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r5.yzw = r0.zzz ? r5.yzw : 0;
  r0.yzw = r0.yyy ? r5.yzw : 0;
  r0.xyz = r0.xxx * r0.yzw + r6.xyz;
  r0.xyz = r0.xyz + -r2.yzw;
  r6.x = t0[r4.z].val[8/4];
  r6.y = t0[r4.w].val[8/4];
  r11.w = 1;
  r6.z = t0[r1.x].val[8/4];
  r6.w = t0[r1.y].val[8/4];
  r0.w = t0[r1.z].val[8/4];
  r1.x = dot(r11.xyzw, r6.xyzw);
  r1.x = r1.x + -r0.w;
  r0.w = r5.x + -r0.w;
  r0.w = r1.x / r0.w;
  r0.w = -cb2[11].y + r0.w;
  r0.w = saturate(r0.w / cb2[11].z);
  r0.w = r0.w * r0.w;
  r1.x = cb2[11].w * r0.w;
  r1.x = cb0[142].z * cb2[11].x + -r1.x;
  r1.xy = r1.xx * float2(-1,0) + r10.xy;
  r1.xyz = t5.SampleLevel(s0_s, r1.xy, -1).xyz;
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xy = r1.xy + r1.xy;
  r1.z = r1.z * 2 + 1;
  r1.z = cb2[12].x * r1.z;
  r4.xyz = float3(0,1,0) * r7.xyz;
  r4.xyz = r7.zxy * float3(1,0,0) + -r4.xyz;
  r4.xyz = cb2[12].yyy * r4.xyz;
  r4.xyz = r4.xyz * r1.yyy;
  r1.xyw = r7.yzx * r1.xxx + r4.xyz;
  r1.xyw = cb2[12].zzz * r1.xyw;
  r1.xyz = r7.yzx * r1.zzz + r1.xyw;
  r1.xyz = r1.xyz * r0.www + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.xz = sqrt(r0.xy);
  r1.xyz = r1.xyz / r0.zzz;
  r0.z = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r1.xyz = r0.zzz ? r1.xyz : 0;
  r0.yzw = r0.yyy ? r1.xyz : 0;
  r0.xyz = r0.xxx * r0.yzw + r2.yzw;
  r0.xyz = r0.xyz + -r11.xyz;
  r0.xyz = r0.xyz * r3.xyz + r8.xyz;
  o7.xyz = r8.xyz;
  o6.xyz = r0.xyz;
  o6.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o8.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}
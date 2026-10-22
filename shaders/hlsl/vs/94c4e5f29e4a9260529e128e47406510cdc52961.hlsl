// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

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
  float4 cb1[1];
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

  r0.x = asint(cb1[0].y) + -1;
  r0.xy = min(uint2(1,2), (uint2)r0.xx);
  r0.z = (int)v2.x + asint(cb1[0].w);
  r0.xy = mad(asint(cb1[0].yy), (int2)r0.zz, (int2)r0.xy);
  r0.xz = t1.Load(r0.x).xy;
  r0.yw = t1.Load(r0.y).xy;
  r1.xyzw = float4(0.0625,1,16,256) * r0.zzzx;
  r0.x = 7.11111116 * r0.x;
  r0.x = floor(r0.x);
  r0.x = -r0.x * 36 + r1.w;
  r1.xyz = frac(r1.xyz);
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xyz = r1.xyz + r1.xyz;
  r0.z = (int)v1.x * 36;
  r1.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r3.z = r2.x;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+1];
  r4.w = t0[r4.x].val[0/4+2];
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r3.y = r4.x;
  r3.x = r5.x;
  r3.x = dot(r1.xyz, r3.xyz);
  r7.y = r4.z;
  r7.z = r2.y;
  r7.x = r5.y;
  r3.y = dot(r1.xyz, r7.xyz);
  r7.y = r4.w;
  r7.z = r2.z;
  r7.x = r5.z;
  r3.z = dot(r1.xyz, r7.xyz);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r1.xyz = r3.xyz / r0.zzz;
  r0.z = -9.99999997e-007 + cb2[7].y;
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r1.w = cmp(cb2[7].y >= 9.99999997e-007);
  r7.xyz = r1.www ? cb2[5].zxy : float3(0,1,0);
  r7.xyz = r0.zzz ? r7.xyz : float3(0,1,0);
  r0.z = dot(r7.yzx, r1.xyz);
  r0.z = r0.z * r0.z;
  r1.xyz = r0.zzz * float3(0,0,1) + r7.yzx;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r1.xyz = r1.xyz / r0.zzz;
  r0.z = 0.166666672 * r0.x;
  r8.y = floor(r0.z);
  r8.x = -r8.y * 6 + r0.x;
  r0.xz = float2(0.200000003,0.200000003) * r8.xy;
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(19,6,7,8));
  r9.x = t0[r8.x].val[0/4];
  r9.y = t0[r8.x].val[0/4+1];
  r0.xz = r9.xy * r0.xz;
  r0.xz = r0.xz * cb2[9].zz + float2(1,1);
  r9.xyz = cb2[8].xxx * r6.xyz;
  r1.w = dot(r9.xyz, r9.xyz);
  r1.w = frac(r1.w);
  r1.w = cb0[142].z * cb2[9].w + r1.w;
  r1.w = -cb2[10].x * r0.y + r1.w;
  r0.xz = r1.ww * float2(-1,0) + r0.xz;
  r10.xyz = t2.SampleLevel(s0_s, r0.xz, -1).xyz;
  r10.xyz = float3(-0.5,-0.5,-0.5) + r10.xyz;
  r0.xz = r10.xy + r10.xy;
  r1.w = r10.z * 2 + 1;
  r1.w = cb2[10].y * r1.w;
  r10.xyz = cb2[6].xyz * r0.zzz;
  r10.xyz = r1.xyz * r0.xxx + r10.xyz;
  r10.xyz = cb2[10].www * r10.xyz;
  r1.xyz = r1.xyz * r1.www + r10.xyz;
  r10.xyz = v0.yyy * r4.xzw;
  r0.x = dot(-r4.xzw, -r4.xzw);
  r4.y = sqrt(r0.x);
  r10.xyz = r5.xyz * v0.xxx + r10.xyz;
  r0.x = dot(-r5.xyz, -r5.xyz);
  r4.x = sqrt(r0.x);
  r5.xyz = r2.xyz * v0.zzz + r10.xyz;
  r0.x = dot(-r2.xyz, -r2.xyz);
  r4.z = sqrt(r0.x);
  r2.xyz = cb0[70].xyz + r6.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r0.xz = -cb0[70].xy + r2.xy;
  r0.xz = r0.xz + -r6.xy;
  r0.xz = cb2[7].ww * r0.xz + r9.xy;
  r1.w = cb2[8].z * r0.w;
  r1.w = cb0[142].z * cb2[8].y + -r1.w;
  r0.xz = r1.ww * float2(1,0) + r0.xz;
  r0.xz = t2.SampleLevel(s0_s, r0.xz, -1).xy;
  r0.xz = float2(-0.25,-0.5) + r0.xz;
  r0.z = cb2[9].x * r0.z;
  r0.x = dot(r0.xx, cb2[8].ww);
  r5.xyz = float3(0,0,2) * r0.zzz;
  r5.xyz = r7.yzx * r0.xxx + r5.xyz;
  r10.xyz = -cb0[70].xyz + r2.xyz;
  r0.xzw = r5.xyz * r0.www + r10.xyz;
  r1.w = cb2[9].y * r0.y;
  r3.xyz = -r3.xyz * r1.www + float3(1,1,1);
  r0.xzw = -r3.xyz + r0.xzw;
  r1.xyz = r1.xyz * r0.yyy + r0.xzw;
  r0.x = dot(r0.xzw, r0.xzw);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.xz = sqrt(r0.xy);
  r1.xyz = r1.xyz / r0.zzz;
  r0.z = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r1.xyz = r0.zzz ? r1.xyz : 0;
  r0.yzw = r0.yyy ? r1.xyz : 0;
  r0.xyz = r0.xxx * r0.yzw + r3.xyz;
  r0.xyz = r0.xyz + -r6.xyz;
  r10.w = 1;
  r1.x = t0[r8.y].val[8/4];
  r1.y = t0[r8.z].val[8/4];
  r1.z = t0[r8.w].val[8/4];
  r3.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(9,23,24));
  r1.w = t0[r3.x].val[8/4];
  r0.w = dot(r10.xyzw, r1.xyzw);
  r1.x = t0[r3.y].val[8/4];
  r1.y = t0[r3.z].val[8/4];
  r1.y = r1.y + -r1.x;
  r0.w = -r1.x + r0.w;
  r0.w = r0.w / r1.y;
  r0.w = -cb2[11].y + r0.w;
  r0.w = saturate(r0.w / cb2[11].z);
  r0.w = r0.w * r0.w;
  r1.x = cb2[11].w * r0.w;
  r1.x = cb0[142].z * cb2[11].x + -r1.x;
  r1.xy = r1.xx * float2(-1,0) + r9.xy;
  r1.xyz = t2.SampleLevel(s0_s, r1.xy, -1).xyz;
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xy = r1.xy + r1.xy;
  r1.z = r1.z * 2 + 1;
  r1.z = cb2[12].x * r1.z;
  r3.xyz = float3(0,1,0) * r7.xyz;
  r3.xyz = r7.zxy * float3(1,0,0) + -r3.xyz;
  r3.xyz = cb2[12].yyy * r3.xyz;
  r3.xyz = r3.xyz * r1.yyy;
  r1.xyw = r7.yzx * r1.xxx + r3.xyz;
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
  r0.xyz = r0.xxx * r0.yzw + r6.xyz;
  r0.xyz = r0.xyz + -r10.xyz;
  r0.xyz = r0.xyz * r4.xyz + r2.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  nointerpolation uint w2 : SV_RenderTargetArrayIndex0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[12].y * cb2[12].y;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r0.yzw;
  r0.yz = float2(500000,500000) + r1.xy;
  r0.xy = r0.xx * r0.yz;
  r0.xy = t1.SampleLevel(s0_s, r0.xy, -1).xy;
  r0.z = log2(r0.y);
  r0.z = 0.25 * r0.z;
  r0.z = exp2(r0.z);
  r0.y = cmp(0 >= r0.y);
  r2.x = r0.y ? 0 : r0.z;
  r0.y = 100000 * cb1[20].x;
  r0.y = cb1[20].y * 100000 + -r0.y;
  r0.y = 1 / r0.y;
  r3.xyz = -cb1[19].xyz * float3(100000,100000,100000) + r1.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb1[20].x * 100000 + r0.z;
  r0.y = saturate(r0.z * r0.y);
  r2.y = 1 + -r0.y;
  r0.z = t2.SampleLevel(s1_s, r2.xy, -1).x;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[7].xxx * r1.xyz;
  r3.xyz = cb2[2].xyz * cb0[142].zzz;
  r4.xyz = r3.xyz * float3(0.150000006,0.150000006,0.150000006) + r2.xyz;
  r2.xyz = r3.xyz * float3(-0.100000001,-0.100000001,-0.100000001) + r2.xyz;
  r2.xyz = cb2[7].www * r2.xyz;
  r0.z = t4.SampleLevel(s3_s, r2.xyz, -1).x;
  r2.xyz = cb2[7].yyy * r4.xyz;
  r2.xyz = t3.SampleLevel(s2_s, r2.xyz, -1).xyz;
  r3.xyz = log2(r2.xyz);
  r2.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r3.xyz = cb2[7].zzz * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r2.xyz = r2.xyz ? float3(0,0,0) : r3.xyz;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r2.xyz = r2.xyz * r0.xxx;
  r0.x = cmp(r0.y < 0.0500000007);
  r0.w = cmp(0.949999988 < r0.y);
  r0.y = saturate(cb2[9].x * r0.y);
  r0.x = (int)r0.w | (int)r0.x;
  r2.xyz = r0.xxx ? float3(0,0,0) : r2.xyz;
  r0.x = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.x = cb2[8].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb2[8].y * r0.x;
  r0.x = r0.z ? -0 : -r0.x;
  r0.z = r2.x + r0.x;
  r0.x = cb2[8].z + r0.x;
  r0.x = saturate(r0.z / r0.x);
  r0.z = cb2[8].z + -cb2[8].w;
  r0.x = r0.z * r0.x + cb2[8].w;
  r0.xzw = r0.xxx + -r2.xyz;
  r2.w = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r2.w = cb2[9].y * r2.w;
  r2.w = exp2(r2.w);
  r0.y = r0.y ? 0 : r2.w;
  r0.xyz = r0.yyy * r0.xzw + r2.xyz;
  r0.yzw = cb2[3].xyz * r0.xyz;
  r0.x = cb2[6].x * r0.x;
  r0.x = max(0, r0.x);
  r0.yzw = saturate(cb2[9].zzz * r0.yzw);
  r2.xyz = log2(r0.yzw);
  r0.yzw = cmp(float3(0,0,0) >= r0.yzw);
  r2.xyz = cb2[9].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r0.yzw = r0.yzw ? float3(0,0,0) : r2.xyz;
  r0.xyzw = min(float4(65000,1,1,1), r0.xyzw);
  r0.yzw = r0.yzw * cb0[136].www + cb0[136].xyz;
  r0.yzw = r0.yzw * r0.xxx;
  r2.x = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.x = -r2.x + r0.x;
  r0.x = max(0, r0.x);
  r2.xy = mad((int2)v2.xx, int2(36,36), int2(8,9));
  r3.x = t0[r2.x].val[0/4];
  r3.y = t0[r2.x].val[0/4+2];
  r3.z = t0[r2.x].val[0/4+1];
  r2.x = t0[r2.y].val[0/4];
  r2.y = t0[r2.y].val[0/4+1];
  r2.w = t0[r2.y].val[0/4+2];
  r4.z = r3.x;
  r4.w = r2.x;
  r1.w = 1;
  r5.xyzw = mad((int4)v2.xxxx, int4(36,36,36,36), int4(23,24,6,7));
  r6.x = t0[r5.z].val[0/4];
  r6.y = t0[r5.z].val[0/4+1];
  r6.z = t0[r5.z].val[0/4+2];
  r4.x = r6.x;
  r7.x = t0[r5.w].val[0/4];
  r7.y = t0[r5.w].val[0/4+1];
  r7.z = t0[r5.w].val[0/4+2];
  r4.y = r7.x;
  r4.x = dot(r1.xyzw, r4.xyzw);
  r2.z = r3.y;
  r3.w = r2.y;
  r3.x = r6.y;
  r2.x = r6.z;
  r3.y = r7.y;
  r2.y = r7.z;
  r4.z = dot(r1.xyzw, r2.xyzw);
  r4.y = dot(r1.xyzw, r3.xyzw);
  r1.x = t0[r5.x].val[0/4];
  r1.y = t0[r5.x].val[0/4+1];
  r1.z = t0[r5.x].val[0/4+2];
  r2.x = t0[r5.y].val[0/4];
  r2.y = t0[r5.y].val[0/4+1];
  r2.z = t0[r5.y].val[0/4+2];
  r2.xyz = cmp(r2.xyz < r4.xyz);
  r1.xyz = cmp(r4.xyz < r1.xyz);
  r1.xyz = (int3)r2.xyz | (int3)r1.xyz;
  r1.x = (int)r1.y | (int)r1.x;
  r1.x = (int)r1.z | (int)r1.x;
  r1.y = v3.w / cb1[16].x;
  r1.y = -0.600000024 + r1.y;
  r1.y = saturate(2.50000024 * r1.y);
  r1.y = 1 + -r1.y;
  r1.z = r1.y * r1.y;
  r1.y = r1.z * r1.y;
  r1.y = 0.00999999978 * r1.y;
  r1.x = r1.x ? 0 : r1.y;
  o0.xyzw = r1.xxxx * r0.yzwx;
  o1.xyzw = float4(0,0,0,0);
  return;
}
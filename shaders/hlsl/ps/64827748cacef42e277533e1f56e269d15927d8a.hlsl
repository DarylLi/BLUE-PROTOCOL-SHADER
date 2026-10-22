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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v3.yyyy;
  r0.xyzw = v3.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v3.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r1.xy = float2(500000,500000) + r0.xy;
  r0.w = cb2[12].y * cb2[12].y;
  r1.xy = r0.ww * r1.xy;
  r1.xy = t1.SampleLevel(s0_s, r1.xy, -1).xy;
  r0.w = log2(r1.y);
  r0.w = 0.25 * r0.w;
  r0.w = exp2(r0.w);
  r1.y = cmp(0 >= r1.y);
  r2.x = r1.y ? 0 : r0.w;
  r1.yzw = -cb1[19].xyz * float3(100000,100000,100000) + r0.xyz;
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = sqrt(r0.w);
  r0.w = -cb1[20].x * 100000 + r0.w;
  r1.y = 100000 * cb1[20].x;
  r1.y = cb1[20].y * 100000 + -r1.y;
  r1.y = 1 / r1.y;
  r0.w = saturate(r1.y * r0.w);
  r2.y = 1 + -r0.w;
  r1.y = t2.SampleLevel(s1_s, r2.xy, -1).x;
  r1.x = r1.x * r1.y;
  r1.yzw = cb2[7].xxx * r0.xyz;
  r2.xyz = cb2[2].xyz * cb0[142].zzz;
  r3.xyz = r2.xyz * float3(0.150000006,0.150000006,0.150000006) + r1.yzw;
  r1.yzw = r2.xyz * float3(-0.100000001,-0.100000001,-0.100000001) + r1.yzw;
  r1.yzw = cb2[7].www * r1.yzw;
  r1.y = t4.SampleLevel(s3_s, r1.yzw, -1).x;
  r2.xyz = cb2[7].yyy * r3.xyz;
  r2.xyz = t3.SampleLevel(s2_s, r2.xyz, -1).xyz;
  r3.xyz = log2(r2.xyz);
  r2.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r3.xyz = cb2[7].zzz * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r2.xyz = r2.xyz ? float3(0,0,0) : r3.xyz;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.xzw = r2.xyz * r1.xxx;
  r2.x = cmp(r0.w < 0.0500000007);
  r2.y = cmp(0.949999988 < r0.w);
  r0.w = saturate(cb2[9].x * r0.w);
  r2.x = (int)r2.y | (int)r2.x;
  r1.xzw = r2.xxx ? float3(0,0,0) : r1.xzw;
  r2.x = log2(r1.y);
  r1.y = cmp(0 >= r1.y);
  r2.x = cb2[8].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb2[8].y * r2.x;
  r1.y = r1.y ? -0 : -r2.x;
  r2.x = r1.x + r1.y;
  r1.y = cb2[8].z + r1.y;
  r1.y = saturate(r2.x / r1.y);
  r2.x = cb2[8].z + -cb2[8].w;
  r1.y = r2.x * r1.y + cb2[8].w;
  r2.xyz = r1.yyy + -r1.xzw;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb2[9].y * r1.y;
  r1.y = exp2(r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r1.xyz = r0.www * r2.xyz + r1.xzw;
  r1.yzw = cb2[3].xyz * r1.xyz;
  r0.w = cb2[6].x * r1.x;
  r0.w = max(0, r0.w);
  r0.w = min(65000, r0.w);
  r1.xyz = saturate(cb2[9].zzz * r1.yzw);
  r2.xyz = log2(r1.xyz);
  r1.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r2.xyz = cb2[9].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r1.xyz ? float3(0,0,0) : r2.xyz;
  r1.xyz = min(float3(1,1,1), r1.xyz);
  r1.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = -r1.w + r0.w;
  r0.w = max(0, r0.w);
  r1.w = mad((int)v2.x, 36, 5);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r2.w = t0[r1.w].val[0/4+3];
  r0.xyz = r2.xyz + -r0.xyz;
  r1.w = r2.w * r2.w;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cmp(r1.w < r0.x);
  r0.y = v3.w / cb1[16].x;
  r0.y = -0.600000024 + r0.y;
  r0.y = saturate(2.50000024 * r0.y);
  r0.y = 1 + -r0.y;
  r0.z = r0.y * r0.y;
  r0.y = r0.z * r0.y;
  r0.y = 0.00999999978 * r0.y;
  r0.x = r0.x ? 0 : r0.y;
  o0.w = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o1.xyzw = float4(0,0,0,0);
  return;
}
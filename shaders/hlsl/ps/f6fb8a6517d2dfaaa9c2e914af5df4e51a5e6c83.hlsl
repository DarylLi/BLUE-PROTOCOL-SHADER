// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t3.Sample(s1_s, r0.xy).xyzw;
  r0.z = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.x + r0.w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r2.xyzw = cmp((int4)r0.zzzz == int4(2,3,5,6));
  r2.x = (int)r2.y | (int)r2.x;
  r3.xyzw = cmp((int4)r0.zzzz == int4(7,12,9,14));
  r2.y = (int)r3.w | (int)r3.y;
  if (r2.y != 0) {
    r2.y = r0.w / cb0[10].z;
    r2.y = min(1, r2.y);
    r4.xy = float2(1,1) + -cb0[10].xy;
    r4.xy = r2.yy * r4.xy + cb0[10].xy;
    r2.y = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = -r2.yyy + r1.xyz;
    r4.xzw = r4.xxx * r5.xyz + r2.yyy;
    r4.xzw = max(float3(0,0,0), r4.xzw);
    r4.xzw = float3(5.55555534,5.55555534,5.55555534) * r4.xzw;
    r4.xzw = log2(r4.xzw);
    r4.xyz = r4.yyy * r4.xzw;
    r4.xyz = exp2(r4.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r4.xyz;
  }
  if (r3.w != 0) {
    r4.xyz = t2.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.x = (int)r2.z | (int)r2.x;
    r0.x = (int)r2.w | (int)r0.x;
    r0.x = (int)r3.x | (int)r0.x;
    r0.x = (int)r3.y | (int)r0.x;
    r0.x = (int)r3.z | (int)r0.x;
    r4.xyz = (int3)r4.xyz & (int3)r0.xxx;
    r0.x = cmp(0.100000001 < r1.w);
    r4.xyz = r4.xyz * r4.xyz;
    r1.xyz = r0.xxx ? r4.xyz : r1.xyz;
  }
  r0.x = cmp((int)r0.z == 1);
  r0.y = (int)r2.z | (int)r2.x;
  r0.y = (int)r2.w | (int)r0.y;
  r0.y = (int)r3.x | (int)r0.y;
  r0.y = (int)r3.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    r0.x = saturate(r0.w / cb0[11].z);
    r0.yz = float2(-1,-1) + cb0[11].xy;
    r0.xy = r0.xx * r0.yz + float2(1,1);
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r2.xyz = r1.xyz + -r0.zzz;
    r2.xyz = r0.xxx * r2.xyz + r0.zzz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = float3(5.55555534,5.55555534,5.55555534) * r2.xyz;
    r2.xyz = log2(r2.xyz);
    r0.xyz = r2.xyz * r0.yyy;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  r0.x = r0.w * cb0[6].x + cb0[6].y;
  r0.x = log2(r0.x);
  r0.x = cb0[6].z * r0.x;
  r0.z = cb0[7].z * r0.x;
  r2.xy = -cb1[129].xy + v1.xy;
  r0.xy = cb0[8].xy * r2.xy;
  r0.xyz = t4.SampleLevel(s2_s, r0.xyz, 0).xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = r1.w;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[359];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t5.Sample(s1_s, r0.xy).xyzw;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.x + r0.w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r2.xyzw = cmp((int4)r0.zzzz == int4(12,13,2,3));
  r2.z = (int)r2.w | (int)r2.z;
  r3.xyzw = cmp((int4)r0.zzzz == int4(5,6,7,9));
  r4.xy = cmp((int2)r0.zz == int2(14,1));
  r0.z = (int)r2.x | (int)r4.x;
  if (r0.z != 0) {
    r0.z = r0.w / cb0[10].z;
    r0.z = min(1, r0.z);
    r4.zw = float2(1,1) + -cb0[10].xy;
    r4.zw = r0.zz * r4.zw + cb0[10].xy;
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = r1.xyz + -r0.zzz;
    r5.xyz = r4.zzz * r5.xyz + r0.zzz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = float3(5.55555534,5.55555534,5.55555534) * r5.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r5.xyz * r4.www;
    r5.xyz = exp2(r5.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
  }
  if (r4.x != 0) {
    r4.xzw = t4.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.z = (int)r2.z | (int)r3.x;
    r0.z = (int)r3.y | (int)r0.z;
    r0.z = (int)r3.z | (int)r0.z;
    r0.z = (int)r2.x | (int)r0.z;
    r0.z = (int)r2.y | (int)r0.z;
    r0.z = (int)r3.w | (int)r0.z;
    r4.xzw = (int3)r4.xzw & (int3)r0.zzz;
    r0.z = cmp(0.100000001 < r1.w);
    r4.xzw = r4.xzw * r4.xzw;
    r1.xyz = r0.zzz ? r4.xzw : r1.xyz;
  }
  r0.z = (int)r2.z | (int)r3.x;
  r0.z = (int)r3.y | (int)r0.z;
  r0.z = (int)r3.z | (int)r0.z;
  r0.z = (int)r3.w | (int)r0.z;
  r0.z = (int)r0.z | (int)r4.y;
  if (r0.z != 0) {
    r4.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xy = cb1[132].xy * r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.z = (uint)cb1[152].x;
    r0.x = (int)r0.y + (int)r0.x;
    r0.x = (int)r0.z + (int)r0.x;
    r0.x = (int)r0.x & 1;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.y = (int)r2.y | (int)r2.x;
    r0.z = (int)r3.w | (int)r3.x;
    r2.x = cmp(0 < cb1[156].y);
    r2.y = cmp(0 < cb1[207].z);
    r2.x = r2.y ? r2.x : 0;
    r2.y = cmp(0 != cb1[156].y);
    r2.yzw = r2.yyy ? float3(1,1,1) : r5.xyz;
    r0.x = r0.x ? 1 : 0;
    r2.xyz = r2.xxx ? r0.xxx : r2.yzw;
    r2.xyz = r0.zzz ? r2.xyz : r5.xyz;
    r0.xyz = r0.yyy ? r5.xyz : r2.xyz;
    r2.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r0.xyz);
    r2.xyz = r1.xyz / r2.xyz;
    r2.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = saturate(r2.w / cb0[0].x);
    r3.x = saturate(r0.w / cb0[0].y);
    r5.xyzw = cb0[3].xyzw + -cb0[1].xyzw;
    r5.xyzw = r3.xxxx * r5.xyzw + cb0[1].xyzw;
    r3.y = 1 + -r1.w;
    r3.zw = float2(2.29999995,2.29999995) * cb1[130].zw;
    r6.x = v1.x * cb1[132].z + r3.z;
    r6.y = v1.y * cb1[132].w + -r3.w;
    r6.xyz = t5.Gather(s1_s, r6.xy).yzw;
    r6.xyz = float3(1,1,1) + -r6.xzy;
    r3.z = r6.y + -r3.y;
    r3.yw = -r6.xz + r3.yy;
    r3.y = max(abs(r3.y), abs(r3.z));
    r3.y = max(r3.y, abs(r3.w));
    r6.xyzw = cb0[4].xyzw + -cb0[2].xyzw;
    r6.xyzw = r3.xxxx * r6.xyzw + cb0[2].xyzw;
    r3.z = cb0[0].w + -cb0[0].z;
    r3.x = r3.x * r3.z + cb0[0].z;
    r3.y = log2(r3.y);
    r3.x = r3.x * r3.y;
    r3.x = exp2(r3.x);
    r3.x = 100 * r3.x;
    r3.x = min(1, r3.x);
    r3.y = dot(r4.xyz, cb1[358].xyz);
    r3.y = cmp(r3.y >= 0);
    r3.y = r3.y ? 1.000000 : 0;
    r3.x = r3.x * r3.y;
    r4.xyzw = r6.xyzw + -r5.xyzw;
    r3.xyzw = r3.xxxx * r4.xyzw + r5.xyzw;
    r0.x = max(r0.x, r0.y);
    r0.x = max(r0.x, r0.z);
    r0.x = r3.z + r0.x;
    r4.xyz = float3(1,0.666666687,0.333333343) + r3.xxx;
    r4.xyz = frac(r4.xyz);
    r4.xyz = r4.xyz * float3(6,6,6) + float3(-3,-3,-3);
    r4.xyz = saturate(float3(-1,-1,-1) + abs(r4.xyz));
    r4.xyz = float3(-1,-1,-1) + r4.xyz;
    r3.xyz = r3.yyy * r4.xyz + float3(1,1,1);
    r0.xyz = r3.xyz * r0.xxx;
    r3.xyz = r0.xyz * r2.xyz;
    r2.w = -1 + r2.w;
    r2.w = r3.w * r2.w + 1;
    r0.xyz = -r0.xyz * r2.xyz + r1.xyz;
    r0.xyz = r2.www * r0.xyz + r3.xyz;
    r0.w = saturate(r0.w / cb0[11].z);
    r2.xy = float2(-1,-1) + cb0[11].xy;
    r2.xy = r0.ww * r2.xy + float2(1,1);
    r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = r0.xyz + -r0.www;
    r0.xyz = r2.xxx * r0.xyz + r0.www;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r2.yyy * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  o0.xyzw = r1.xyzw;
  return;
}
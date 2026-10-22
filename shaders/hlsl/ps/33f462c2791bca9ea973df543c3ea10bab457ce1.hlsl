// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r2.zw = (int2)r2.yw | (int2)r2.xz;
  r3.xyzw = cmp((int4)r0.zzzz == int4(5,6,7,9));
  r4.xy = cmp((int2)r0.zz == int2(14,1));
  r4.z = (int)r2.x | (int)r4.x;
  if (r4.z != 0) {
    r4.z = r0.w / cb0[10].z;
    r4.z = min(1, r4.z);
    r5.xy = float2(1,1) + -cb0[10].xy;
    r4.zw = r4.zz * r5.xy + cb0[10].xy;
    r5.x = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.yzw = -r5.xxx + r1.xyz;
    r5.xyz = r4.zzz * r5.yzw + r5.xxx;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = float3(5.55555534,5.55555534,5.55555534) * r5.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r5.xyz * r4.www;
    r5.xyz = exp2(r5.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
  }
  if (r4.x != 0) {
    r4.xzw = t4.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.x = (int)r2.w | (int)r3.x;
    r5.x = (int)r3.y | (int)r5.x;
    r5.x = (int)r3.z | (int)r5.x;
    r2.x = (int)r2.x | (int)r5.x;
    r2.x = (int)r2.y | (int)r2.x;
    r2.x = (int)r3.w | (int)r2.x;
    r4.xzw = r2.xxx ? r4.xzw : 0;
    r2.x = cmp(0.100000001 < r1.w);
    r4.xzw = r4.xzw * r4.xzw;
    r1.xyz = r2.xxx ? r4.xzw : r1.xyz;
  }
  r2.x = ~(int)r2.z;
  r0.z = cmp((int)r0.z != 14);
  r0.z = r0.z ? r2.x : 0;
  if (r0.z != 0) {
    r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xzw = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xy = cb1[132].xy * r0.xy;
    r5.xy = (uint2)r5.xy;
    r0.z = (uint)cb1[152].x;
    r5.x = (int)r5.y + (int)r5.x;
    r0.z = (int)r0.z + (int)r5.x;
    r0.z = (int)r0.z & 1;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.x = (int)r3.w | (int)r3.x;
    r5.y = cmp(0 < cb1[156].y);
    r5.z = cmp(0 < cb1[207].z);
    r5.y = r5.z ? r5.y : 0;
    r5.z = cmp(0 != cb1[156].y);
    r6.xyz = r5.zzz ? float3(1,1,1) : r4.xzw;
    r0.z = r0.z ? 1 : 0;
    r5.yzw = r5.yyy ? r0.zzz : r6.xyz;
    r4.xzw = r5.xxx ? r5.yzw : r4.xzw;
    r0.z = t6.SampleLevel(s2_s, r0.xy, 0).x;
    r5.x = dot(r2.xyz, -cb1[358].xyz);
    r5.x = saturate(r5.x * 0.5 + 0.5);
    r5.yzw = t7.SampleLevel(s3_s, r0.xy, 0).xyz;
    r6.xy = cb1[13].xy * r2.yy;
    r2.xy = r2.xx * cb1[12].xy + r6.xy;
    r2.xy = r2.zz * cb1[14].xy + r2.xy;
    r2.z = -5000 + r0.w;
    r2.z = saturate(0.000199999995 * r2.z);
    r2.z = r2.z * -0.899999976 + 1;
    r2.xy = r2.zz * r2.xy;
    r6.xyzw = r2.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
    r7.xyz = t7.SampleLevel(s3_s, r6.xy, 0).xyz;
    r6.xyz = t7.SampleLevel(s3_s, r6.zw, 0).xyz;
    r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
    r6.xyz = r7.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
    r0.xy = r2.xy * float2(0.300000012,-0.300000012) + r0.xy;
    r2.xyz = t7.SampleLevel(s3_s, r0.xy, 0).xyz;
    r2.xyz = r2.xyz * float3(0.300000012,0.300000012,0.300000012) + r6.xyz;
    r0.x = r5.x / cb0[5].y;
    r0.x = min(1, r0.x);
    r2.xyz = r2.xyz + -r5.yzw;
    r2.xyz = r0.xxx * r2.xyz + r5.yzw;
    r0.x = min(1, r0.z);
    r0.xyz = r2.xyz * r0.xxx;
    r2.xyz = cb0[5].xxx * r4.xzw;
    r1.xyz = r2.xyz * r0.xyz + r1.xyz;
  }
  r0.x = (int)r2.w | (int)r3.x;
  r0.x = (int)r3.y | (int)r0.x;
  r0.x = (int)r3.z | (int)r0.x;
  r0.x = (int)r3.w | (int)r0.x;
  r0.x = (int)r0.x | (int)r4.y;
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
  r0.xyz = t8.SampleLevel(s4_s, r0.xyz, 0).xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = r1.w;
  return;
}
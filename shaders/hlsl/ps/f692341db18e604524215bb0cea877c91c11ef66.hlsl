// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t6.Sample(s1_s, r0.xy).xyzw;
  r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).zw;
  r2.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r3.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r4.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r4.y = r4.x * cb1[65].x + cb1[65].y;
  r4.x = r4.x * cb1[65].z + -cb1[65].w;
  r4.x = 1 / r4.x;
  r4.x = r4.y + r4.x;
  r4.yz = cb1[132].xy * r0.xy;
  r4.yz = (uint2)r4.yz;
  r4.w = (uint)cb1[152].x;
  r4.y = (int)r4.z + (int)r4.y;
  r4.y = (int)r4.w + (int)r4.y;
  r4.y = (int)r4.y & 1;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r5.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
  r4.zw = (int2)r5.yw | (int2)r5.xz;
  r6.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
  r5.zw = (int2)r4.ww | (int2)r6.xy;
  r5.zw = (int2)r6.yz | (int2)r5.zw;
  r5.zw = (int2)r6.zw | (int2)r5.zw;
  r4.w = (int)r6.w | (int)r5.z;
  r7.xyzw = cmp((int4)r0.wwww == int4(8,9,14,1));
  r0.w = (int)r4.w | (int)r7.x;
  r0.w = (int)r5.x | (int)r0.w;
  r0.w = (int)r5.y | (int)r0.w;
  r0.w = (int)r7.y | (int)r0.w;
  r3.xyzw = (int4)r3.xyzw & (int4)r0.wwww;
  r0.w = (int)r6.y | (int)r7.y;
  r4.w = cmp(0 < cb1[156].y);
  r5.y = cmp(0 < cb1[207].z);
  r4.w = r4.w ? r5.y : 0;
  r5.y = cmp(0 != cb1[156].y);
  r6.xyz = r5.yyy ? float3(1,1,1) : r2.xyz;
  r4.y = r4.y ? 1 : 0;
  r6.xyz = r4.www ? r4.yyy : r6.xyz;
  r6.xyz = r0.www ? r6.xyz : r2.xyz;
  r2.xyz = r4.zzz ? r2.xyz : r6.xyz;
  r0.w = (int)r5.x | (int)r7.z;
  if (r0.w != 0) {
    r4.yw = t5.SampleLevel(s0_s, r0.xy, 0).yw;
    r0.w = r4.z ? r2.w : 1;
    r4.yz = (int2)r4.yw & (int2)r4.zz;
    r2.w = cmp(cb1[31].w < 1);
    r4.w = cb1[65].w + r4.x;
    r4.w = cb1[65].z * r4.w;
    r4.w = 1 / r4.w;
    r5.x = r4.x * cb1[30].z + cb1[31].z;
    r2.w = r2.w ? r4.w : r5.x;
    r4.w = r4.x / cb0[9].y;
    r4.w = min(1, r4.w);
    r4.w = 1 + -r4.w;
    r4.z = cb0[9].x * r4.z;
    r4.z = r4.z * r4.w;
    r5.xy = cb1[132].zw * r4.zz;
    r6.xy = cb1[130].xy + cb1[129].xy;
    r6.xy = r6.xy / cb1[132].xy;
    r8.xy = -r5.xy;
    r6.zw = v1.xy * cb1[132].zw + r8.xy;
    r4.z = t0.SampleLevel(s0_s, r6.zw, 0).x;
    r7.x = cmp(r2.w >= r4.z);
    if (r7.x != 0) {
      r6.z = t2.SampleLevel(s0_s, r6.zw, 0).w;
      r6.z = 255 * r6.z;
      r6.z = round(r6.z);
      r6.z = (uint)r6.z;
      r6.z = (int)r6.z & 15;
      r6.zw = cmp((int2)r6.zz == int2(12,14));
      r6.z = (int)r6.w | (int)r6.z;
      r4.z = r6.z ? r4.z : 0;
    } else {
      r4.z = r2.w;
    }
    r8.z = 0;
    r6.zw = v1.xy * cb1[132].zw + r8.zy;
    r7.x = t0.SampleLevel(s0_s, r6.zw, 0).x;
    r8.x = cmp(r2.w >= r7.x);
    if (r8.x != 0) {
      r6.z = t2.SampleLevel(s0_s, r6.zw, 0).w;
      r6.z = 255 * r6.z;
      r6.z = round(r6.z);
      r6.z = (uint)r6.z;
      r6.z = (int)r6.z & 15;
      r6.zw = cmp((int2)r6.zz == int2(12,14));
      r6.z = (int)r6.w | (int)r6.z;
      r6.z = r6.z ? r7.x : 0;
    } else {
      r6.z = r2.w;
    }
    r5.z = -r5.y;
    r5.xy = v1.xy * cb1[132].zw + r5.xz;
    r5.xy = min(r5.xy, r6.xy);
    r5.z = t0.SampleLevel(s0_s, r5.xy, 0).x;
    r6.x = cmp(r2.w >= r5.z);
    if (r6.x != 0) {
      r5.x = t2.SampleLevel(s0_s, r5.xy, 0).w;
      r5.x = 255 * r5.x;
      r5.x = round(r5.x);
      r5.x = (uint)r5.x;
      r5.x = (int)r5.x & 15;
      r5.xy = cmp((int2)r5.xx == int2(12,14));
      r5.x = (int)r5.y | (int)r5.x;
      r5.x = r5.x ? r5.z : 0;
    } else {
      r5.x = r2.w;
    }
    r5.y = -r5.x + r4.z;
    r4.z = r4.z + -r2.w;
    r5.z = r6.z + -r2.w;
    r4.z = r5.z * 2 + r4.z;
    r4.z = r4.z + r5.x;
    r4.z = r4.z + -r2.w;
    r4.z = r4.z * r4.z;
    r4.z = r5.y * r5.y + r4.z;
    r4.z = cb0[9].w * r4.z;
    r4.z = sqrt(r4.z);
    r2.w = cb0[9].z * r2.w;
    r2.w = cmp(r4.z >= r2.w);
    r2.w = r2.w ? 1.000000 : 0;
    r4.z = max(r2.x, r2.y);
    r4.z = max(r4.z, r2.z);
    r0.z = r4.z + r0.z;
    r0.z = max(0, r0.z);
    r4.z = max(0.00100000005, r4.z);
    r0.z = r0.z / r4.z;
    r5.xyz = r2.xyz * r0.zzz;
    r0.z = cmp(r3.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r0.w;
    r5.xyz = r5.xyz * r2.www;
    r5.xyz = r5.xyz * r4.yyy;
    r4.yzw = r5.xyz * r4.www;
    r4.yzw = r4.yzw * r0.zzz + r1.xyz;
    r0.z = r4.x / cb0[10].z;
    r0.z = min(1, r0.z);
    r5.xy = float2(1,1) + -cb0[10].xy;
    r0.zw = r0.zz * r5.xy + cb0[10].xy;
    r2.w = dot(r4.yzw, float3(0.272228718,0.674081743,0.0536895171));
    r4.yzw = r4.yzw + -r2.www;
    r4.yzw = r0.zzz * r4.yzw + r2.www;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = float3(5.55555534,5.55555534,5.55555534) * r4.yzw;
    r4.yzw = log2(r4.yzw);
    r4.yzw = r4.yzw * r0.www;
    r4.yzw = exp2(r4.yzw);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r4.yzw;
  }
  if (r7.z != 0) {
    r0.z = cmp(0.100000001 < r1.w);
    r3.xyz = r3.xyz * r3.xyz;
    r1.xyz = r0.zzz ? r3.xyz : r1.xyz;
  }
  r0.z = (int)r5.w | (int)r7.y;
  r0.z = (int)r0.z | (int)r7.w;
  if (r0.z != 0) {
    r0.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r2.xyz);
    r3.xyz = r1.xyz / r3.xyz;
    r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r0.w / cb0[0].x);
    r2.w = saturate(r4.x / cb0[0].y);
    r5.xyzw = cb0[3].xyzw + -cb0[1].xyzw;
    r5.xyzw = r2.wwww * r5.xyzw + cb0[1].xyzw;
    r3.w = 1 + -r1.w;
    r4.yz = float2(2.29999995,2.29999995) * cb1[130].zw;
    r6.x = v1.x * cb1[132].z + r4.y;
    r6.y = v1.y * cb1[132].w + -r4.z;
    r4.yzw = t6.Gather(s1_s, r6.xy).yzw;
    r4.yzw = float3(1,1,1) + -r4.ywz;
    r4.z = r4.z + -r3.w;
    r4.yw = -r4.yw + r3.ww;
    r3.w = max(abs(r4.y), abs(r4.z));
    r3.w = max(r3.w, abs(r4.w));
    r6.xyzw = cb0[4].xyzw + -cb0[2].xyzw;
    r6.xyzw = r2.wwww * r6.xyzw + cb0[2].xyzw;
    r4.y = cb0[0].w + -cb0[0].z;
    r2.w = r2.w * r4.y + cb0[0].z;
    r3.w = log2(r3.w);
    r2.w = r3.w * r2.w;
    r2.w = exp2(r2.w);
    r2.w = 100 * r2.w;
    r2.w = min(1, r2.w);
    r0.x = dot(r0.xyz, cb1[358].xyz);
    r0.x = cmp(r0.x >= 0);
    r0.x = r0.x ? 1.000000 : 0;
    r0.x = r2.w * r0.x;
    r6.xyzw = r6.xyzw + -r5.xyzw;
    r5.xyzw = r0.xxxx * r6.xyzw + r5.xyzw;
    r0.x = max(r2.x, r2.y);
    r0.x = max(r0.x, r2.z);
    r0.x = r5.z + r0.x;
    r2.xyz = float3(1,0.666666687,0.333333343) + r5.xxx;
    r2.xyz = frac(r2.xyz);
    r2.xyz = r2.xyz * float3(6,6,6) + float3(-3,-3,-3);
    r2.xyz = saturate(float3(-1,-1,-1) + abs(r2.xyz));
    r2.xyz = float3(-1,-1,-1) + r2.xyz;
    r2.xyz = r5.yyy * r2.xyz + float3(1,1,1);
    r0.xyz = r2.xyz * r0.xxx;
    r2.xyz = r0.xyz * r3.xyz;
    r0.w = -1 + r0.w;
    r0.w = r5.w * r0.w + 1;
    r0.xyz = -r0.xyz * r3.xyz + r1.xyz;
    r0.xyz = r0.www * r0.xyz + r2.xyz;
    r0.w = saturate(r4.x / cb0[11].z);
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
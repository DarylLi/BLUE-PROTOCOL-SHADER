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
  float4 cb1[208];
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
  r1.xyzw = t5.Sample(s1_s, r0.xy).xyzw;
  r0.zw = t1.SampleLevel(s0_s, r0.xy, 0).zw;
  r2.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r3.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r3.y = r3.x * cb1[65].x + cb1[65].y;
  r3.x = r3.x * cb1[65].z + -cb1[65].w;
  r3.x = 1 / r3.x;
  r3.x = r3.y + r3.x;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r4.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
  r3.y = (int)r4.w | (int)r4.z;
  r5.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
  r3.yz = (int2)r3.yy | (int2)r5.xy;
  r3.yz = (int2)r5.yz | (int2)r3.yz;
  r3.yz = (int2)r5.zw | (int2)r3.yz;
  r3.y = (int)r5.w | (int)r3.y;
  r6.xyzw = cmp((int4)r0.wwww == int4(8,9,14,1));
  r0.w = (int)r3.y | (int)r6.x;
  r0.w = (int)r4.x | (int)r0.w;
  r0.w = (int)r4.y | (int)r0.w;
  r0.w = (int)r6.y | (int)r0.w;
  r2.xyzw = (int4)r2.xyzw & (int4)r0.wwww;
  r0.w = (int)r4.x | (int)r6.z;
  if (r0.w != 0) {
    r7.xyzw = t2.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r3.yw = t4.SampleLevel(s0_s, r0.xy, 0).yw;
    r0.xy = cb1[132].xy * r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.w = (uint)cb1[152].x;
    r0.x = (int)r0.y + (int)r0.x;
    r0.x = (int)r0.w + (int)r0.x;
    r0.x = (int)r0.x & 1;
    r0.y = (int)r4.y | (int)r4.x;
    r0.w = r0.y ? r7.w : 1;
    r3.yw = (int2)r3.yw & (int2)r0.yy;
    r4.x = (int)r5.y | (int)r6.y;
    r4.y = cmp(0 < cb1[156].y);
    r4.z = cmp(0 < cb1[207].z);
    r4.y = r4.z ? r4.y : 0;
    r4.z = cmp(0 != cb1[156].y);
    r5.xyz = r4.zzz ? float3(1,1,1) : r7.xyz;
    r0.x = r0.x ? 1 : 0;
    r4.yzw = r4.yyy ? r0.xxx : r5.xyz;
    r4.xyz = r4.xxx ? r4.yzw : r7.xyz;
    r4.xyz = r0.yyy ? r7.xyz : r4.xyz;
    r0.x = cmp(cb1[31].w < 1);
    r0.y = cb1[65].w + r3.x;
    r0.y = cb1[65].z * r0.y;
    r0.y = 1 / r0.y;
    r4.w = r3.x * cb1[30].z + cb1[31].z;
    r0.x = r0.x ? r0.y : r4.w;
    r0.y = r3.x / cb0[9].y;
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r3.w = cb0[9].x * r3.w;
    r3.w = r3.w * r0.y;
    r5.xy = cb1[132].zw * r3.ww;
    r7.xy = cb1[130].xy + cb1[129].xy;
    r7.xy = r7.xy / cb1[132].xy;
    r8.xy = -r5.xy;
    r7.zw = v1.xy * cb1[132].zw + r8.xy;
    r3.w = t0.SampleLevel(s0_s, r7.zw, 0).x;
    r4.w = cmp(r0.x >= r3.w);
    if (r4.w != 0) {
      r4.w = t1.SampleLevel(s0_s, r7.zw, 0).w;
      r4.w = 255 * r4.w;
      r4.w = round(r4.w);
      r4.w = (uint)r4.w;
      r4.w = (int)r4.w & 15;
      r7.zw = cmp((int2)r4.ww == int2(12,14));
      r4.w = (int)r7.w | (int)r7.z;
      r3.w = (int)r3.w & (int)r4.w;
    } else {
      r3.w = r0.x;
    }
    r8.z = 0;
    r7.zw = v1.xy * cb1[132].zw + r8.zy;
    r4.w = t0.SampleLevel(s0_s, r7.zw, 0).x;
    r5.w = cmp(r0.x >= r4.w);
    if (r5.w != 0) {
      r5.w = t1.SampleLevel(s0_s, r7.zw, 0).w;
      r5.w = 255 * r5.w;
      r5.w = round(r5.w);
      r5.w = (uint)r5.w;
      r5.w = (int)r5.w & 15;
      r7.zw = cmp((int2)r5.ww == int2(12,14));
      r5.w = (int)r7.w | (int)r7.z;
      r4.w = (int)r4.w & (int)r5.w;
    } else {
      r4.w = r0.x;
    }
    r5.z = -r5.y;
    r5.xy = v1.xy * cb1[132].zw + r5.xz;
    r5.xy = min(r5.xy, r7.xy);
    r5.z = t0.SampleLevel(s0_s, r5.xy, 0).x;
    r5.w = cmp(r0.x >= r5.z);
    if (r5.w != 0) {
      r5.x = t1.SampleLevel(s0_s, r5.xy, 0).w;
      r5.x = 255 * r5.x;
      r5.x = round(r5.x);
      r5.x = (uint)r5.x;
      r5.x = (int)r5.x & 15;
      r5.xy = cmp((int2)r5.xx == int2(12,14));
      r5.x = (int)r5.y | (int)r5.x;
      r5.x = r5.x ? r5.z : 0;
    } else {
      r5.x = r0.x;
    }
    r5.y = -r5.x + r3.w;
    r3.w = r3.w + -r0.x;
    r4.w = r4.w + -r0.x;
    r3.w = r4.w * 2 + r3.w;
    r3.w = r3.w + r5.x;
    r3.w = r3.w + -r0.x;
    r3.w = r3.w * r3.w;
    r3.w = r5.y * r5.y + r3.w;
    r3.w = cb0[9].w * r3.w;
    r3.w = sqrt(r3.w);
    r0.x = cb0[9].z * r0.x;
    r0.x = cmp(r3.w >= r0.x);
    r0.x = r0.x ? 1.000000 : 0;
    r3.w = max(r4.x, r4.y);
    r3.w = max(r3.w, r4.z);
    r0.z = r3.w + r0.z;
    r0.z = max(0, r0.z);
    r3.w = max(0.00100000005, r3.w);
    r0.z = r0.z / r3.w;
    r4.xyz = r4.xyz * r0.zzz;
    r0.z = cmp(r2.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r0.w;
    r4.xyz = r4.xyz * r0.xxx;
    r4.xyz = r4.xyz * r3.yyy;
    r0.xyw = r4.xyz * r0.yyy;
    r0.xyz = r0.xyw * r0.zzz + r1.xyz;
    r0.w = r3.x / cb0[10].z;
    r0.w = min(1, r0.w);
    r3.yw = float2(1,1) + -cb0[10].xy;
    r3.yw = r0.ww * r3.yw + cb0[10].xy;
    r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = r0.xyz + -r0.www;
    r0.xyz = r3.yyy * r0.xyz + r0.www;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r3.www * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  if (r6.z != 0) {
    r0.x = cmp(0.100000001 < r1.w);
    r0.yzw = r2.xyz * r2.xyz;
    r1.xyz = r0.xxx ? r0.yzw : r1.xyz;
  }
  r0.x = (int)r3.z | (int)r6.y;
  r0.x = (int)r0.x | (int)r6.w;
  if (r0.x != 0) {
    r0.x = saturate(r3.x / cb0[11].z);
    r0.yz = float2(-1,-1) + cb0[11].xy;
    r0.xy = r0.xx * r0.yz + float2(1,1);
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r2.xyz = r1.xyz + -r0.zzz;
    r0.xzw = r0.xxx * r2.xyz + r0.zzz;
    r0.xzw = max(float3(0,0,0), r0.xzw);
    r0.xzw = float3(5.55555534,5.55555534,5.55555534) * r0.xzw;
    r0.xzw = log2(r0.xzw);
    r0.xyz = r0.yyy * r0.xzw;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  o0.xyzw = r1.xyzw;
  return;
}
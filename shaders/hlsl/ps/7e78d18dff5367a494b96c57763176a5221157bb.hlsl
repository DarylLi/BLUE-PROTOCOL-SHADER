// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[50];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t6.Sample(s1_s, r0.xy).xyzw;
  r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).zw;
  r2.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
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
    r7.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r3.yw = t5.SampleLevel(s0_s, r0.xy, 0).yw;
    r4.zw = cb1[132].xy * r0.xy;
    r4.zw = (uint2)r4.zw;
    r0.w = (uint)cb1[152].x;
    r4.z = (int)r4.w + (int)r4.z;
    r0.w = (int)r0.w + (int)r4.z;
    r0.w = (int)r0.w & 1;
    r4.x = (int)r4.y | (int)r4.x;
    r4.y = r4.x ? r7.w : 1;
    r3.yw = r4.xx ? r3.yw : 0;
    r4.z = (int)r5.y | (int)r6.y;
    r4.w = cmp(0 < cb1[156].y);
    r5.x = cmp(0 < cb1[207].z);
    r4.w = r4.w ? r5.x : 0;
    r5.x = cmp(0 != cb1[156].y);
    r5.xyz = r5.xxx ? float3(1,1,1) : r7.xyz;
    r0.w = r0.w ? 1 : 0;
    r5.xyz = r4.www ? r0.www : r5.xyz;
    r5.xyz = r4.zzz ? r5.xyz : r7.xyz;
    r4.xzw = r4.xxx ? r7.xyz : r5.xyz;
    r0.w = cmp(cb1[31].w < 1);
    r5.x = cb1[65].w + r3.x;
    r5.x = cb1[65].z * r5.x;
    r5.x = 1 / r5.x;
    r5.y = r3.x * cb1[30].z + cb1[31].z;
    r0.w = r0.w ? r5.x : r5.y;
    r5.x = r3.x / cb0[9].y;
    r5.x = min(1, r5.x);
    r5.x = 1 + -r5.x;
    r3.w = cb0[9].x * r3.w;
    r3.w = r3.w * r5.x;
    r7.xy = cb1[132].zw * r3.ww;
    r5.yz = cb1[130].xy + cb1[129].xy;
    r5.yz = r5.yz / cb1[132].xy;
    r8.xy = -r7.xy;
    r8.xw = v1.xy * cb1[132].zw + r8.xy;
    r3.w = t0.SampleLevel(s0_s, r8.xw, 0).x;
    r5.w = cmp(r0.w >= r3.w);
    if (r5.w != 0) {
      r5.w = t2.SampleLevel(s0_s, r8.xw, 0).w;
      r5.w = 255 * r5.w;
      r5.w = round(r5.w);
      r5.w = (uint)r5.w;
      r5.w = (int)r5.w & 15;
      r8.xw = cmp((int2)r5.ww == int2(12,14));
      r5.w = (int)r8.w | (int)r8.x;
      r3.w = (int)r3.w & (int)r5.w;
    } else {
      r3.w = r0.w;
    }
    r8.z = 0;
    r8.xy = v1.xy * cb1[132].zw + r8.zy;
    r5.w = t0.SampleLevel(s0_s, r8.xy, 0).x;
    r6.x = cmp(r0.w >= r5.w);
    if (r6.x != 0) {
      r6.x = t2.SampleLevel(s0_s, r8.xy, 0).w;
      r6.x = 255 * r6.x;
      r6.x = round(r6.x);
      r6.x = (uint)r6.x;
      r6.x = (int)r6.x & 15;
      r8.xy = cmp((int2)r6.xx == int2(12,14));
      r6.x = (int)r8.y | (int)r8.x;
      r5.w = (int)r5.w & (int)r6.x;
    } else {
      r5.w = r0.w;
    }
    r7.z = -r7.y;
    r7.xy = v1.xy * cb1[132].zw + r7.xz;
    r5.yz = min(r7.xy, r5.yz);
    r6.x = t0.SampleLevel(s0_s, r5.yz, 0).x;
    r7.x = cmp(r0.w >= r6.x);
    if (r7.x != 0) {
      r5.y = t2.SampleLevel(s0_s, r5.yz, 0).w;
      r5.y = 255 * r5.y;
      r5.y = round(r5.y);
      r5.y = (uint)r5.y;
      r5.y = (int)r5.y & 15;
      r5.yz = cmp((int2)r5.yy == int2(12,14));
      r5.y = (int)r5.z | (int)r5.y;
      r5.y = r5.y ? r6.x : 0;
    } else {
      r5.y = r0.w;
    }
    r5.z = -r5.y + r3.w;
    r3.w = r3.w + -r0.w;
    r5.w = r5.w + -r0.w;
    r3.w = r5.w * 2 + r3.w;
    r3.w = r3.w + r5.y;
    r3.w = r3.w + -r0.w;
    r3.w = r3.w * r3.w;
    r3.w = r5.z * r5.z + r3.w;
    r3.w = cb0[9].w * r3.w;
    r3.w = sqrt(r3.w);
    r0.w = cb0[9].z * r0.w;
    r0.w = cmp(r3.w >= r0.w);
    r0.w = r0.w ? 1.000000 : 0;
    r3.w = max(r4.x, r4.z);
    r3.w = max(r3.w, r4.w);
    r0.z = r3.w + r0.z;
    r0.z = max(0, r0.z);
    r3.w = max(0.00100000005, r3.w);
    r0.z = r0.z / r3.w;
    r4.xzw = r4.xzw * r0.zzz;
    r0.z = cmp(r2.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r4.y;
    r4.xyz = r4.xzw * r0.www;
    r4.xyz = r4.xyz * r3.yyy;
    r4.xyz = r4.xyz * r5.xxx;
    r4.xyz = r4.xyz * r0.zzz + r1.xyz;
    r0.z = r3.x / cb0[10].z;
    r0.z = min(1, r0.z);
    r3.yw = float2(1,1) + -cb0[10].xy;
    r0.zw = r0.zz * r3.yw + cb0[10].xy;
    r2.w = dot(r4.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r4.xyz = r4.xyz + -r2.www;
    r4.xyz = r0.zzz * r4.xyz + r2.www;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = float3(5.55555534,5.55555534,5.55555534) * r4.xyz;
    r4.xyz = log2(r4.xyz);
    r4.xyz = r4.xyz * r0.www;
    r4.xyz = exp2(r4.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r4.xyz;
  } else {
    r0.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.x = dot(cb0[14].xyz, r0.xyz);
    r0.y = cmp(0 < r0.x);
    r0.z = cmp(0 < asuint(cb0[15].w));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r0.y = cb0[15].w;
      r0.z = 0;
      while (true) {
        r0.w = cmp((uint)r0.z >= asuint(cb0[15].w));
        if (r0.w != 0) break;
        r0.w = dot(cb0[16].xyzw, icb[r0.z+0].xyzw);
        r0.w = cmp(r3.x < r0.w);
        if (r0.w != 0) {
          r0.y = r0.z;
          break;
        }
        r0.z = (int)r0.z + 1;
      }
      r0.z = cmp((uint)r0.y < asuint(cb0[15].w));
      if (r0.z != 0) {
        r0.zw = v1.xy * cb1[132].zw + -cb1[66].wz;
        r0.zw = r0.zw / cb1[66].xy;
        r0.zw = r0.zw * r3.xx;
        r2.w = (uint)r0.y << 2;
        r4.xyzw = cb0[r2.w+19].xyzw * r0.wwww;
        r4.xyzw = r0.zzzz * cb0[r2.w+18].xyzw + r4.xyzw;
        r4.xyzw = r3.xxxx * cb0[r2.w+20].xyzw + r4.xyzw;
        r4.xyzw = cb0[r2.w+21].xyzw + r4.xyzw;
        r0.z = min(0.999989986, r4.z);
        r0.y = dot(cb0[17].xyzw, icb[r0.y+0].xyzw);
        r0.w = t7.SampleLevel(s2_s, r4.xy, 0).x;
        r3.y = min(1, r0.w);
        r3.y = min(r3.y, r0.w);
        r3.y = min(r3.y, r0.w);
        r0.z = r0.z * r0.y + -1;
        r0.y = saturate(r0.w * r0.y + -r0.z);
        r0.y = -0.5 + r0.y;
        r0.y = saturate(r0.y * cb0[15].x + 0.5);
        r5.xyzw = cb0[r2.w+35].xyzw * r4.yyyy;
        r5.xyzw = r4.xxxx * cb0[r2.w+34].xyzw + r5.xyzw;
        r7.xyzw = r3.yyyy * cb0[r2.w+36].xyzw + r5.xyzw;
        r7.xyzw = r4.wwww * cb0[r2.w+37].xyzw + r7.xyzw;
        r5.xyzw = r4.zzzz * cb0[r2.w+36].xyzw + r5.xyzw;
        r4.xyzw = r4.wwww * cb0[r2.w+37].xyzw + r5.xyzw;
        r4.xyzw = r7.xyzw + -r4.xyzw;
        r0.z = dot(r4.xyzw, r4.xyzw);
        r0.z = sqrt(r0.z);
        r0.z = r0.z / cb0[14].w;
        r0.z = min(1, r0.z);
        r0.w = 1 + -r0.y;
        r0.y = r0.z * r0.w + r0.y;
        r0.x = saturate(r0.x);
        r0.y = -1 + r0.y;
        r0.x = r0.x * r0.y + 1;
        r0.y = saturate(r3.x * cb0[15].y + cb0[15].z);
        r0.y = r0.y * r0.y;
        r0.z = 1 + -r0.x;
        r0.x = r0.y * r0.z + r0.x;
        r0.yzw = float3(1,1,1) + -cb0[12].xyz;
        r0.xyz = r0.xxx * r0.yzw + cb0[12].xyz;
        r1.xyz = r1.xyz * r0.xyz;
      }
    }
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
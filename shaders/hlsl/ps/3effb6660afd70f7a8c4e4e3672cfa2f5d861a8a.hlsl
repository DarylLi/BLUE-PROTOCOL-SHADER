// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t5.Sample(s1_s, r0.xy).xyzw;
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.w + r0.w;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r3.xyzw = cmp((int4)r0.zzzz == int4(12,13,2,3));
  r3.zw = (int2)r3.yw | (int2)r3.xz;
  r4.xyzw = cmp((int4)r0.zzzz == int4(5,6,7,9));
  r5.xy = cmp((int2)r0.zz == int2(14,1));
  r2.w = (int)r3.x | (int)r5.x;
  if (r2.w != 0) {
    r2.w = r0.w / cb0[10].z;
    r2.w = min(1, r2.w);
    r5.zw = float2(1,1) + -cb0[10].xy;
    r5.zw = r2.ww * r5.zw + cb0[10].xy;
    r2.w = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r6.xyz = -r2.www + r1.xyz;
    r6.xyz = r5.zzz * r6.xyz + r2.www;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = float3(5.55555534,5.55555534,5.55555534) * r6.xyz;
    r6.xyz = log2(r6.xyz);
    r6.xyz = r6.xyz * r5.www;
    r6.xyz = exp2(r6.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r6.xyz;
  } else {
    r2.w = dot(cb0[14].xyz, r2.xyz);
    r5.z = cmp(0 < r2.w);
    r5.w = cmp(0 < asuint(cb0[15].w));
    r5.z = r5.w ? r5.z : 0;
    if (r5.z != 0) {
      r5.z = cb0[15].w;
      r5.w = 0;
      while (true) {
        r6.x = cmp((uint)r5.w >= asuint(cb0[15].w));
        if (r6.x != 0) break;
        r6.x = dot(cb0[16].xyzw, icb[r5.w+0].xyzw);
        r6.x = cmp(r0.w < r6.x);
        if (r6.x != 0) {
          r5.z = r5.w;
          break;
        }
        r5.w = (int)r5.w + 1;
      }
      r5.w = cmp((uint)r5.z < asuint(cb0[15].w));
      if (r5.w != 0) {
        r6.xy = v1.xy * cb1[132].zw + -cb1[66].wz;
        r6.xy = r6.xy / cb1[66].xy;
        r6.xy = r6.xy * r0.ww;
        r5.w = (uint)r5.z << 2;
        r7.xyzw = cb0[r5.w+19].xyzw * r6.yyyy;
        r6.xyzw = r6.xxxx * cb0[r5.w+18].xyzw + r7.xyzw;
        r6.xyzw = r0.wwww * cb0[r5.w+20].xyzw + r6.xyzw;
        r6.xyzw = cb0[r5.w+21].xyzw + r6.xyzw;
        r7.x = min(0.999989986, r6.z);
        r5.z = dot(cb0[17].xyzw, icb[r5.z+0].xyzw);
        r8.xyzw = r6.xyxy * cb0[13].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r7.yz = frac(r8.zw);
        r8.xyzw = floor(r8.xyzw);
        r9.xyzw = float4(0.5,1.5,0.5,0.5) + r8.zwzw;
        r9.xyzw = cb0[13].zwzw * r9.xyzw;
        r10.x = t9.SampleLevel(s5_s, r9.xy, 0).x;
        r8.xyzw = float4(1.5,1.5,1.5,0.5) + r8.xyzw;
        r8.xyzw = cb0[13].zwzw * r8.xyzw;
        r10.y = t9.SampleLevel(s5_s, r8.xy, 0).x;
        r10.z = t9.SampleLevel(s5_s, r8.zw, 0).x;
        r10.w = t9.SampleLevel(s5_s, r9.zw, 0).x;
        r7.w = min(1, r10.x);
        r7.w = min(r10.y, r7.w);
        r7.w = min(r10.z, r7.w);
        r7.w = min(r10.w, r7.w);
        r7.x = r7.x * r5.z + -1;
        r8.xyzw = saturate(r10.xyzw * r5.zzzz + -r7.xxxx);
        r8.yz = r8.zy + -r8.wx;
        r7.xy = r7.yy * r8.yz + r8.wx;
        r5.z = r7.y + -r7.x;
        r5.z = r7.z * r5.z + r7.x;
        r5.z = -0.5 + r5.z;
        r5.z = saturate(r5.z * cb0[15].x + 0.5);
        r8.xyzw = cb0[r5.w+35].xyzw * r6.yyyy;
        r8.xyzw = r6.xxxx * cb0[r5.w+34].xyzw + r8.xyzw;
        r7.xyzw = r7.wwww * cb0[r5.w+36].xyzw + r8.xyzw;
        r7.xyzw = r6.wwww * cb0[r5.w+37].xyzw + r7.xyzw;
        r8.xyzw = r6.zzzz * cb0[r5.w+36].xyzw + r8.xyzw;
        r6.xyzw = r6.wwww * cb0[r5.w+37].xyzw + r8.xyzw;
        r6.xyzw = r7.xyzw + -r6.xyzw;
        r5.w = dot(r6.xyzw, r6.xyzw);
        r5.w = sqrt(r5.w);
        r5.w = r5.w / cb0[14].w;
        r5.w = min(1, r5.w);
        r6.x = 1 + -r5.z;
        r5.z = r5.w * r6.x + r5.z;
        r2.w = saturate(r2.w);
        r5.z = -1 + r5.z;
        r2.w = r2.w * r5.z + 1;
        r5.z = saturate(r0.w * cb0[15].y + cb0[15].z);
        r5.z = r5.z * r5.z;
        r5.w = 1 + -r2.w;
        r2.w = r5.z * r5.w + r2.w;
        r6.xyz = float3(1,1,1) + -cb0[12].xyz;
        r6.xyz = r2.www * r6.xyz + cb0[12].xyz;
        r1.xyz = r6.xyz * r1.xyz;
      }
    }
  }
  if (r5.x != 0) {
    r5.xzw = t4.SampleLevel(s0_s, r0.xy, 0).xyz;
    r2.w = (int)r3.w | (int)r4.x;
    r2.w = (int)r4.y | (int)r2.w;
    r2.w = (int)r4.z | (int)r2.w;
    r2.w = (int)r3.x | (int)r2.w;
    r2.w = (int)r3.y | (int)r2.w;
    r2.w = (int)r4.w | (int)r2.w;
    r5.xzw = (int3)r5.xzw & (int3)r2.www;
    r2.w = cmp(0.100000001 < r1.w);
    r5.xzw = r5.xzw * r5.xzw;
    r1.xyz = r2.www ? r5.xzw : r1.xyz;
  }
  r2.w = ~(int)r3.z;
  r0.z = cmp((int)r0.z != 14);
  r0.z = r0.z ? r2.w : 0;
  if (r0.z != 0) {
    r3.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xz = cb1[132].xy * r0.xy;
    r5.xz = (uint2)r5.xz;
    r0.z = (uint)cb1[152].x;
    r2.w = (int)r5.z + (int)r5.x;
    r0.z = (int)r0.z + (int)r2.w;
    r0.z = (int)r0.z & 1;
    r2.w = (int)r4.w | (int)r4.x;
    r5.x = cmp(0 < cb1[156].y);
    r5.z = cmp(0 < cb1[207].z);
    r5.x = r5.z ? r5.x : 0;
    r5.z = cmp(0 != cb1[156].y);
    r6.xyz = r5.zzz ? float3(1,1,1) : r3.xyz;
    r0.z = r0.z ? 1 : 0;
    r5.xzw = r5.xxx ? r0.zzz : r6.xyz;
    r3.xyz = r2.www ? r5.xzw : r3.xyz;
    r0.z = t6.SampleLevel(s2_s, r0.xy, 0).x;
    r2.w = dot(r2.xyz, -cb1[358].xyz);
    r2.w = saturate(r2.w * 0.5 + 0.5);
    r5.xzw = t7.SampleLevel(s3_s, r0.xy, 0).xyz;
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
    r0.x = r2.w / cb0[5].y;
    r0.x = min(1, r0.x);
    r2.xyz = r2.xyz + -r5.xzw;
    r2.xyz = r0.xxx * r2.xyz + r5.xzw;
    r0.x = min(1, r0.z);
    r0.xyz = r2.xyz * r0.xxx;
    r2.xyz = cb0[5].xxx * r3.xyz;
    r1.xyz = r2.xyz * r0.xyz + r1.xyz;
  }
  r0.x = (int)r3.w | (int)r4.x;
  r0.x = (int)r4.y | (int)r0.x;
  r0.x = (int)r4.z | (int)r0.x;
  r0.x = (int)r4.w | (int)r0.x;
  r0.x = (int)r0.x | (int)r5.y;
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
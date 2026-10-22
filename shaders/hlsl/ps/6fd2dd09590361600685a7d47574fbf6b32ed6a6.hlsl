// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

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
  r3.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.w + r0.w;
  r4.xy = cb1[132].xy * r0.xy;
  r4.xy = (uint2)r4.xy;
  r2.w = (uint)cb1[152].x;
  r3.w = (int)r4.y + (int)r4.x;
  r2.w = (int)r2.w + (int)r3.w;
  r2.w = (int)r2.w & 1;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r4.xyzw = cmp((int4)r0.zzzz == int4(12,13,2,3));
  r4.zw = (int2)r4.yw | (int2)r4.xz;
  r5.xyzw = cmp((int4)r0.zzzz == int4(5,6,7,9));
  r3.w = (int)r5.w | (int)r5.x;
  r6.x = cmp(0 < cb1[156].y);
  r6.y = cmp(0 < cb1[207].z);
  r6.x = r6.y ? r6.x : 0;
  r6.y = cmp(0 != cb1[156].y);
  r6.yzw = r6.yyy ? float3(1,1,1) : r3.xyz;
  r2.w = r2.w ? 1 : 0;
  r6.xyz = r6.xxx ? r2.www : r6.yzw;
  r6.xyz = r3.www ? r6.xyz : r3.xyz;
  r3.xyz = r4.zzz ? r3.xyz : r6.xyz;
  r6.xy = cmp((int2)r0.zz == int2(14,1));
  r2.w = (int)r4.x | (int)r6.x;
  if (r2.w != 0) {
    r2.w = r0.w / cb0[10].z;
    r2.w = min(1, r2.w);
    r6.zw = float2(1,1) + -cb0[10].xy;
    r6.zw = r2.ww * r6.zw + cb0[10].xy;
    r2.w = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r7.xyz = -r2.www + r1.xyz;
    r7.xyz = r6.zzz * r7.xyz + r2.www;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = float3(5.55555534,5.55555534,5.55555534) * r7.xyz;
    r7.xyz = log2(r7.xyz);
    r7.xyz = r7.xyz * r6.www;
    r7.xyz = exp2(r7.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r7.xyz;
  } else {
    r2.w = dot(cb0[14].xyz, r2.xyz);
    r3.w = cmp(0 < r2.w);
    r6.z = cmp(0 < asuint(cb0[15].w));
    r3.w = r3.w ? r6.z : 0;
    if (r3.w != 0) {
      r3.w = cb0[15].w;
      r6.z = 0;
      while (true) {
        r6.w = cmp((uint)r6.z >= asuint(cb0[15].w));
        if (r6.w != 0) break;
        r6.w = dot(cb0[16].xyzw, icb[r6.z+0].xyzw);
        r6.w = cmp(r0.w < r6.w);
        if (r6.w != 0) {
          r3.w = r6.z;
          break;
        }
        r6.z = (int)r6.z + 1;
      }
      r6.z = cmp((uint)r3.w < asuint(cb0[15].w));
      if (r6.z != 0) {
        r6.zw = v1.xy * cb1[132].zw + -cb1[66].wz;
        r6.zw = r6.zw / cb1[66].xy;
        r6.zw = r6.zw * r0.ww;
        r7.x = (uint)r3.w << 2;
        r8.xyzw = cb0[r7.x+19].xyzw * r6.wwww;
        r8.xyzw = r6.zzzz * cb0[r7.x+18].xyzw + r8.xyzw;
        r8.xyzw = r0.wwww * cb0[r7.x+20].xyzw + r8.xyzw;
        r8.xyzw = cb0[r7.x+21].xyzw + r8.xyzw;
        r6.z = min(0.999989986, r8.z);
        r3.w = dot(cb0[17].xyzw, icb[r3.w+0].xyzw);
        r6.w = t10.SampleLevel(s4_s, r8.xy, 0).x;
        r7.y = min(1, r6.w);
        r7.y = min(r7.y, r6.w);
        r7.y = min(r7.y, r6.w);
        r6.z = r6.z * r3.w + -1;
        r3.w = saturate(r6.w * r3.w + -r6.z);
        r3.w = -0.5 + r3.w;
        r3.w = saturate(r3.w * cb0[15].x + 0.5);
        r9.xyzw = cb0[r7.x+35].xyzw * r8.yyyy;
        r9.xyzw = r8.xxxx * cb0[r7.x+34].xyzw + r9.xyzw;
        r10.xyzw = r7.yyyy * cb0[r7.x+36].xyzw + r9.xyzw;
        r10.xyzw = r8.wwww * cb0[r7.x+37].xyzw + r10.xyzw;
        r9.xyzw = r8.zzzz * cb0[r7.x+36].xyzw + r9.xyzw;
        r7.xyzw = r8.wwww * cb0[r7.x+37].xyzw + r9.xyzw;
        r7.xyzw = r10.xyzw + -r7.xyzw;
        r6.z = dot(r7.xyzw, r7.xyzw);
        r6.z = sqrt(r6.z);
        r6.z = r6.z / cb0[14].w;
        r6.z = min(1, r6.z);
        r6.w = 1 + -r3.w;
        r3.w = r6.z * r6.w + r3.w;
        r2.w = saturate(r2.w);
        r3.w = -1 + r3.w;
        r2.w = r2.w * r3.w + 1;
        r3.w = saturate(r0.w * cb0[15].y + cb0[15].z);
        r3.w = r3.w * r3.w;
        r6.z = 1 + -r2.w;
        r2.w = r3.w * r6.z + r2.w;
        r7.xyz = float3(1,1,1) + -cb0[12].xyz;
        r7.xyz = r2.www * r7.xyz + cb0[12].xyz;
        r1.xyz = r7.xyz * r1.xyz;
      }
    }
  }
  if (r6.x != 0) {
    r6.xzw = t4.SampleLevel(s0_s, r0.xy, 0).xyz;
    r2.w = (int)r4.w | (int)r5.x;
    r2.w = (int)r5.y | (int)r2.w;
    r2.w = (int)r5.z | (int)r2.w;
    r2.w = (int)r4.x | (int)r2.w;
    r2.w = (int)r4.y | (int)r2.w;
    r2.w = (int)r5.w | (int)r2.w;
    r6.xzw = (int3)r6.xzw & (int3)r2.www;
    r2.w = cmp(0.100000001 < r1.w);
    r6.xzw = r6.xzw * r6.xzw;
    r1.xyz = r2.www ? r6.xzw : r1.xyz;
  }
  r2.w = ~(int)r4.z;
  r0.z = cmp((int)r0.z != 14);
  r0.z = r0.z ? r2.w : 0;
  if (r0.z != 0) {
    r0.z = t6.SampleLevel(s2_s, r0.xy, 0).x;
    r2.w = dot(r2.xyz, -cb1[358].xyz);
    r2.w = saturate(r2.w * 0.5 + 0.5);
    r2.w = cmp(r2.w < cb0[5].y);
    if (r2.w != 0) {
      r3.w = cmp(1000 >= r0.w);
      if (r3.w != 0) {
        r4.xyz = t7.SampleLevel(s3_s, r0.xy, 0).xyz;
      } else {
        r3.w = cmp(1500 >= r0.w);
        if (r3.w != 0) {
          r6.xzw = t7.SampleLevel(s3_s, r0.xy, 0).xyz;
          r7.xyz = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
          r3.w = -1000 + r0.w;
          r3.w = saturate(0.00200000009 * r3.w);
          r7.xyz = r7.xyz + -r6.xzw;
          r4.xyz = r3.www * r7.xyz + r6.xzw;
        } else {
          r3.w = cmp(7000 >= r0.w);
          if (r3.w != 0) {
            r4.xyz = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
          } else {
            r3.w = cmp(8000 >= r0.w);
            if (r3.w != 0) {
              r6.xzw = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
              r7.xyz = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
              r3.w = -7000 + r0.w;
              r3.w = saturate(0.00100000005 * r3.w);
              r7.xyz = r7.xyz + -r6.xzw;
              r4.xyz = r3.www * r7.xyz + r6.xzw;
            } else {
              r4.xyz = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
            }
          }
        }
      }
    }
    if (r2.w == 0) {
      r6.xz = cb1[13].xy * r2.yy;
      r6.xz = r2.xx * cb1[12].xy + r6.xz;
      r6.xz = r2.zz * cb1[14].xy + r6.xz;
      r2.w = -5000 + r0.w;
      r2.w = saturate(0.000199999995 * r2.w);
      r2.w = r2.w * -0.899999976 + 1;
      r6.xz = r2.ww * r6.xz;
      r2.w = cmp(1000 >= r0.w);
      if (r2.w != 0) {
        r7.xyzw = r6.xzxz * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
        r8.xyz = t7.SampleLevel(s3_s, r7.xy, 0).xyz;
        r7.xyz = t7.SampleLevel(s3_s, r7.zw, 0).xyz;
        r7.xyz = float3(0.300000012,0.300000012,0.300000012) * r7.xyz;
        r7.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r7.xyz;
        r8.xy = r6.xz * float2(0.300000012,-0.300000012) + r0.xy;
        r8.xyz = t7.SampleLevel(s3_s, r8.xy, 0).xyz;
        r4.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r7.xyz;
      } else {
        r2.w = cmp(1500 >= r0.w);
        if (r2.w != 0) {
          r7.xyzw = r6.xzxz * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
          r8.xyz = t7.SampleLevel(s3_s, r7.xy, 0).xyz;
          r9.xyz = t7.SampleLevel(s3_s, r7.zw, 0).xyz;
          r9.xyz = float3(0.300000012,0.300000012,0.300000012) * r9.xyz;
          r8.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r9.xyz;
          r9.xy = r6.xz * float2(0.300000012,-0.300000012) + r0.xy;
          r10.xyz = t7.SampleLevel(s3_s, r9.xy, 0).xyz;
          r8.xyz = r10.xyz * float3(0.300000012,0.300000012,0.300000012) + r8.xyz;
          r10.xyz = t8.SampleLevel(s3_s, r7.xy, 0).xyz;
          r7.xyz = t8.SampleLevel(s3_s, r7.zw, 0).xyz;
          r7.xyz = float3(0.300000012,0.300000012,0.300000012) * r7.xyz;
          r7.xyz = r10.xyz * float3(0.400000006,0.400000006,0.400000006) + r7.xyz;
          r9.xyz = t8.SampleLevel(s3_s, r9.xy, 0).xyz;
          r7.xyz = r9.xyz * float3(0.300000012,0.300000012,0.300000012) + r7.xyz;
          r2.w = -1000 + r0.w;
          r2.w = saturate(0.00200000009 * r2.w);
          r7.xyz = r7.xyz + -r8.xyz;
          r4.xyz = r2.www * r7.xyz + r8.xyz;
        } else {
          r2.w = cmp(7000 >= r0.w);
          if (r2.w != 0) {
            r7.xyzw = r6.xzxz * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
            r8.xyz = t8.SampleLevel(s3_s, r7.xy, 0).xyz;
            r7.xyz = t8.SampleLevel(s3_s, r7.zw, 0).xyz;
            r7.xyz = float3(0.300000012,0.300000012,0.300000012) * r7.xyz;
            r7.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r7.xyz;
            r8.xy = r6.xz * float2(0.300000012,-0.300000012) + r0.xy;
            r8.xyz = t8.SampleLevel(s3_s, r8.xy, 0).xyz;
            r4.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r7.xyz;
          } else {
            r2.w = cmp(8000 >= r0.w);
            if (r2.w != 0) {
              r7.xyzw = r6.xzxz * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
              r8.xyz = t8.SampleLevel(s3_s, r7.xy, 0).xyz;
              r9.xyz = t8.SampleLevel(s3_s, r7.zw, 0).xyz;
              r9.xyz = float3(0.300000012,0.300000012,0.300000012) * r9.xyz;
              r8.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r9.xyz;
              r9.xy = r6.xz * float2(0.300000012,-0.300000012) + r0.xy;
              r10.xyz = t8.SampleLevel(s3_s, r9.xy, 0).xyz;
              r8.xyz = r10.xyz * float3(0.300000012,0.300000012,0.300000012) + r8.xyz;
              r10.xyz = t9.SampleLevel(s3_s, r7.xy, 0).xyz;
              r7.xyz = t9.SampleLevel(s3_s, r7.zw, 0).xyz;
              r7.xyz = float3(0.300000012,0.300000012,0.300000012) * r7.xyz;
              r7.xyz = r10.xyz * float3(0.400000006,0.400000006,0.400000006) + r7.xyz;
              r9.xyz = t9.SampleLevel(s3_s, r9.xy, 0).xyz;
              r7.xyz = r9.xyz * float3(0.300000012,0.300000012,0.300000012) + r7.xyz;
              r2.w = -7000 + r0.w;
              r2.w = saturate(0.00100000005 * r2.w);
              r7.xyz = r7.xyz + -r8.xyz;
              r4.xyz = r2.www * r7.xyz + r8.xyz;
            } else {
              r7.xyzw = r6.xzxz * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
              r8.xyz = t9.SampleLevel(s3_s, r7.xy, 0).xyz;
              r7.xyz = t9.SampleLevel(s3_s, r7.zw, 0).xyz;
              r7.xyz = float3(0.300000012,0.300000012,0.300000012) * r7.xyz;
              r7.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r7.xyz;
              r0.xy = r6.xz * float2(0.300000012,-0.300000012) + r0.xy;
              r6.xzw = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
              r4.xyz = r6.xzw * float3(0.300000012,0.300000012,0.300000012) + r7.xyz;
            }
          }
        }
      }
    }
    r0.x = min(1, r0.z);
    r0.xyz = r4.xyz * r0.xxx;
    r4.xyz = cb0[5].xxx * r3.xyz;
    r1.xyz = r4.xyz * r0.xyz + r1.xyz;
  }
  r0.x = (int)r4.w | (int)r5.x;
  r0.x = (int)r5.y | (int)r0.x;
  r0.x = (int)r5.z | (int)r0.x;
  r0.x = (int)r5.w | (int)r0.x;
  r0.x = (int)r0.x | (int)r6.y;
  if (r0.x != 0) {
    r0.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r3.xyz);
    r0.xyz = r1.xyz / r0.xyz;
    r2.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = saturate(r2.w / cb0[0].x);
    r3.w = saturate(r0.w / cb0[0].y);
    r4.xyzw = cb0[3].xyzw + -cb0[1].xyzw;
    r4.xyzw = r3.wwww * r4.xyzw + cb0[1].xyzw;
    r5.x = 1 + -r1.w;
    r5.yz = float2(2.29999995,2.29999995) * cb1[130].zw;
    r6.x = v1.x * cb1[132].z + r5.y;
    r6.y = v1.y * cb1[132].w + -r5.z;
    r5.yzw = t5.Gather(s1_s, r6.xy).yzw;
    r5.yzw = float3(1,1,1) + -r5.ywz;
    r5.z = r5.z + -r5.x;
    r5.xy = r5.xx + -r5.yw;
    r5.x = max(abs(r5.x), abs(r5.z));
    r5.x = max(r5.x, abs(r5.y));
    r6.xyzw = cb0[4].xyzw + -cb0[2].xyzw;
    r6.xyzw = r3.wwww * r6.xyzw + cb0[2].xyzw;
    r5.y = cb0[0].w + -cb0[0].z;
    r3.w = r3.w * r5.y + cb0[0].z;
    r5.x = log2(r5.x);
    r3.w = r5.x * r3.w;
    r3.w = exp2(r3.w);
    r3.w = 100 * r3.w;
    r3.w = min(1, r3.w);
    r2.x = dot(r2.xyz, cb1[358].xyz);
    r2.x = cmp(r2.x >= 0);
    r2.x = r2.x ? 1.000000 : 0;
    r2.x = r3.w * r2.x;
    r5.xyzw = r6.xyzw + -r4.xyzw;
    r4.xyzw = r2.xxxx * r5.xyzw + r4.xyzw;
    r2.x = max(r3.x, r3.y);
    r2.x = max(r2.x, r3.z);
    r2.x = r4.z + r2.x;
    r3.xyz = float3(1,0.666666687,0.333333343) + r4.xxx;
    r3.xyz = frac(r3.xyz);
    r3.xyz = r3.xyz * float3(6,6,6) + float3(-3,-3,-3);
    r3.xyz = saturate(float3(-1,-1,-1) + abs(r3.xyz));
    r3.xyz = float3(-1,-1,-1) + r3.xyz;
    r3.xyz = r4.yyy * r3.xyz + float3(1,1,1);
    r2.xyz = r3.xyz * r2.xxx;
    r3.xyz = r2.xyz * r0.xyz;
    r2.w = -1 + r2.w;
    r2.w = r4.w * r2.w + 1;
    r0.xyz = -r2.xyz * r0.xyz + r1.xyz;
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
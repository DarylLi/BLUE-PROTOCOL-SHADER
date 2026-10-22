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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r2.w = r4.z ? r2.w : 1;
  r6.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
  r5.zw = (int2)r4.ww | (int2)r6.xy;
  r5.zw = (int2)r6.yz | (int2)r5.zw;
  r5.zw = (int2)r6.zw | (int2)r5.zw;
  r4.w = (int)r6.w | (int)r5.z;
  r7.xyzw = cmp((int4)r0.wwww == int4(8,9,14,1));
  r4.w = (int)r4.w | (int)r7.x;
  r4.w = (int)r5.x | (int)r4.w;
  r4.w = (int)r5.y | (int)r4.w;
  r4.w = (int)r7.y | (int)r4.w;
  r3.xyzw = (int4)r3.xyzw & (int4)r4.wwww;
  r4.w = (int)r6.y | (int)r7.y;
  r5.y = cmp(0 < cb1[156].y);
  r5.z = cmp(0 < cb1[207].z);
  r5.y = r5.z ? r5.y : 0;
  r5.z = cmp(0 != cb1[156].y);
  r6.xyz = r5.zzz ? float3(1,1,1) : r2.xyz;
  r4.y = r4.y ? 1 : 0;
  r6.xyz = r5.yyy ? r4.yyy : r6.xyz;
  r6.xyz = r4.www ? r6.xyz : r2.xyz;
  r2.xyz = r4.zzz ? r2.xyz : r6.xyz;
  r4.y = (int)r5.x | (int)r7.z;
  if (r4.y != 0) {
    r4.yw = t5.SampleLevel(s0_s, r0.xy, 0).yw;
    r4.yw = (int2)r4.yw & (int2)r4.zz;
    r5.x = cmp(cb1[31].w < 1);
    r5.y = cb1[65].w + r4.x;
    r5.y = cb1[65].z * r5.y;
    r5.y = 1 / r5.y;
    r5.z = r4.x * cb1[30].z + cb1[31].z;
    r5.x = r5.x ? r5.y : r5.z;
    r5.y = r4.x / cb0[9].y;
    r5.y = min(1, r5.y);
    r5.y = 1 + -r5.y;
    r4.w = cb0[9].x * r4.w;
    r4.w = r4.w * r5.y;
    r6.xy = cb1[132].zw * r4.ww;
    r8.xy = cb1[130].xy + cb1[129].xy;
    r8.xy = r8.xy / cb1[132].xy;
    r9.xy = -r6.xy;
    r8.zw = v1.xy * cb1[132].zw + r9.xy;
    r4.w = t0.SampleLevel(s0_s, r8.zw, 0).x;
    r5.z = cmp(r5.x >= r4.w);
    if (r5.z != 0) {
      r5.z = t2.SampleLevel(s0_s, r8.zw, 0).w;
      r5.z = 255 * r5.z;
      r5.z = round(r5.z);
      r5.z = (uint)r5.z;
      r5.z = (int)r5.z & 15;
      r8.zw = cmp((int2)r5.zz == int2(12,14));
      r5.z = (int)r8.w | (int)r8.z;
      r4.w = (int)r4.w & (int)r5.z;
    } else {
      r4.w = r5.x;
    }
    r9.z = 0;
    r8.zw = v1.xy * cb1[132].zw + r9.zy;
    r5.z = t0.SampleLevel(s0_s, r8.zw, 0).x;
    r6.w = cmp(r5.x >= r5.z);
    if (r6.w != 0) {
      r6.w = t2.SampleLevel(s0_s, r8.zw, 0).w;
      r6.w = 255 * r6.w;
      r6.w = round(r6.w);
      r6.w = (uint)r6.w;
      r6.w = (int)r6.w & 15;
      r8.zw = cmp((int2)r6.ww == int2(12,14));
      r6.w = (int)r8.w | (int)r8.z;
      r5.z = (int)r5.z & (int)r6.w;
    } else {
      r5.z = r5.x;
    }
    r6.z = -r6.y;
    r6.xy = v1.xy * cb1[132].zw + r6.xz;
    r6.xy = min(r6.xy, r8.xy);
    r6.z = t0.SampleLevel(s0_s, r6.xy, 0).x;
    r6.w = cmp(r5.x >= r6.z);
    if (r6.w != 0) {
      r6.x = t2.SampleLevel(s0_s, r6.xy, 0).w;
      r6.x = 255 * r6.x;
      r6.x = round(r6.x);
      r6.x = (uint)r6.x;
      r6.x = (int)r6.x & 15;
      r6.xy = cmp((int2)r6.xx == int2(12,14));
      r6.x = (int)r6.y | (int)r6.x;
      r6.x = r6.x ? r6.z : 0;
    } else {
      r6.x = r5.x;
    }
    r6.y = -r6.x + r4.w;
    r4.w = r4.w + -r5.x;
    r5.z = r5.z + -r5.x;
    r4.w = r5.z * 2 + r4.w;
    r4.w = r4.w + r6.x;
    r4.w = r4.w + -r5.x;
    r4.w = r4.w * r4.w;
    r4.w = r6.y * r6.y + r4.w;
    r4.w = cb0[9].w * r4.w;
    r4.w = sqrt(r4.w);
    r5.x = cb0[9].z * r5.x;
    r4.w = cmp(r4.w >= r5.x);
    r4.w = r4.w ? 1.000000 : 0;
    r5.x = max(r2.x, r2.y);
    r5.x = max(r5.x, r2.z);
    r0.z = r5.x + r0.z;
    r0.z = max(0, r0.z);
    r5.x = max(0.00100000005, r5.x);
    r0.z = r0.z / r5.x;
    r6.xyz = r2.xyz * r0.zzz;
    r0.z = cmp(r3.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r2.w;
    r6.xyz = r6.xyz * r4.www;
    r6.xyz = r6.xyz * r4.yyy;
    r5.xyz = r6.xyz * r5.yyy;
    r5.xyz = r5.xyz * r0.zzz + r1.xyz;
    r0.z = r4.x / cb0[10].z;
    r0.z = min(1, r0.z);
    r4.yw = float2(1,1) + -cb0[10].xy;
    r4.yw = r0.zz * r4.yw + cb0[10].xy;
    r0.z = dot(r5.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = r5.xyz + -r0.zzz;
    r5.xyz = r4.yyy * r5.xyz + r0.zzz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = float3(5.55555534,5.55555534,5.55555534) * r5.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r5.xyz * r4.www;
    r5.xyz = exp2(r5.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
  }
  if (r7.z != 0) {
    r0.z = cmp(0.100000001 < r1.w);
    r3.xyz = r3.xyz * r3.xyz;
    r1.xyz = r0.zzz ? r3.xyz : r1.xyz;
  }
  r0.z = ~(int)r4.z;
  r0.w = cmp((int)r0.w != 14);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r3.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.z = t7.SampleLevel(s2_s, r0.xy, 0).x;
    r0.w = dot(r3.xyz, -cb1[358].xyz);
    r0.w = saturate(r0.w * 0.5 + 0.5);
    r0.w = cmp(r0.w < cb0[5].y);
    if (r0.w != 0) {
      r3.w = cmp(1000 >= r4.x);
      if (r3.w != 0) {
        r4.yzw = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
      } else {
        r3.w = cmp(1500 >= r4.x);
        if (r3.w != 0) {
          r5.xyz = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
          r6.xyz = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
          r3.w = -1000 + r4.x;
          r3.w = saturate(0.00200000009 * r3.w);
          r6.xyz = r6.xyz + -r5.xyz;
          r4.yzw = r3.www * r6.xyz + r5.xyz;
        } else {
          r3.w = cmp(7000 >= r4.x);
          if (r3.w != 0) {
            r4.yzw = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
          } else {
            r3.w = cmp(8000 >= r4.x);
            if (r3.w != 0) {
              r5.xyz = t9.SampleLevel(s3_s, r0.xy, 0).xyz;
              r6.xyz = t10.SampleLevel(s3_s, r0.xy, 0).xyz;
              r3.w = -7000 + r4.x;
              r3.w = saturate(0.00100000005 * r3.w);
              r6.xyz = r6.xyz + -r5.xyz;
              r4.yzw = r3.www * r6.xyz + r5.xyz;
            } else {
              r4.yzw = t10.SampleLevel(s3_s, r0.xy, 0).xyz;
            }
          }
        }
      }
    }
    if (r0.w == 0) {
      r3.yw = cb1[13].xy * r3.yy;
      r3.xy = r3.xx * cb1[12].xy + r3.yw;
      r3.xy = r3.zz * cb1[14].xy + r3.xy;
      r0.w = -5000 + r4.x;
      r0.w = saturate(0.000199999995 * r0.w);
      r0.w = r0.w * -0.899999976 + 1;
      r3.xy = r0.ww * r3.xy;
      r0.w = cmp(1000 >= r4.x);
      if (r0.w != 0) {
        r6.xyzw = r3.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
        r5.xyz = t8.SampleLevel(s3_s, r6.xy, 0).xyz;
        r6.xyz = t8.SampleLevel(s3_s, r6.zw, 0).xyz;
        r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
        r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
        r3.zw = r3.xy * float2(0.300000012,-0.300000012) + r0.xy;
        r6.xyz = t8.SampleLevel(s3_s, r3.zw, 0).xyz;
        r4.yzw = r6.xyz * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
      } else {
        r0.w = cmp(1500 >= r4.x);
        if (r0.w != 0) {
          r6.xyzw = r3.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
          r5.xyz = t8.SampleLevel(s3_s, r6.xy, 0).xyz;
          r8.xyz = t8.SampleLevel(s3_s, r6.zw, 0).xyz;
          r8.xyz = float3(0.300000012,0.300000012,0.300000012) * r8.xyz;
          r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r8.xyz;
          r3.zw = r3.xy * float2(0.300000012,-0.300000012) + r0.xy;
          r8.xyz = t8.SampleLevel(s3_s, r3.zw, 0).xyz;
          r5.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
          r8.xyz = t9.SampleLevel(s3_s, r6.xy, 0).xyz;
          r6.xyz = t9.SampleLevel(s3_s, r6.zw, 0).xyz;
          r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
          r6.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
          r8.xyz = t9.SampleLevel(s3_s, r3.zw, 0).xyz;
          r6.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r6.xyz;
          r0.w = -1000 + r4.x;
          r0.w = saturate(0.00200000009 * r0.w);
          r6.xyz = r6.xyz + -r5.xyz;
          r4.yzw = r0.www * r6.xyz + r5.xyz;
        } else {
          r0.w = cmp(7000 >= r4.x);
          if (r0.w != 0) {
            r6.xyzw = r3.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
            r5.xyz = t9.SampleLevel(s3_s, r6.xy, 0).xyz;
            r6.xyz = t9.SampleLevel(s3_s, r6.zw, 0).xyz;
            r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
            r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
            r3.zw = r3.xy * float2(0.300000012,-0.300000012) + r0.xy;
            r6.xyz = t9.SampleLevel(s3_s, r3.zw, 0).xyz;
            r4.yzw = r6.xyz * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
          } else {
            r0.w = cmp(8000 >= r4.x);
            if (r0.w != 0) {
              r6.xyzw = r3.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
              r5.xyz = t9.SampleLevel(s3_s, r6.xy, 0).xyz;
              r8.xyz = t9.SampleLevel(s3_s, r6.zw, 0).xyz;
              r8.xyz = float3(0.300000012,0.300000012,0.300000012) * r8.xyz;
              r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r8.xyz;
              r3.zw = r3.xy * float2(0.300000012,-0.300000012) + r0.xy;
              r8.xyz = t9.SampleLevel(s3_s, r3.zw, 0).xyz;
              r5.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
              r8.xyz = t10.SampleLevel(s3_s, r6.xy, 0).xyz;
              r6.xyz = t10.SampleLevel(s3_s, r6.zw, 0).xyz;
              r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
              r6.xyz = r8.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
              r8.xyz = t10.SampleLevel(s3_s, r3.zw, 0).xyz;
              r6.xyz = r8.xyz * float3(0.300000012,0.300000012,0.300000012) + r6.xyz;
              r0.w = -7000 + r4.x;
              r0.w = saturate(0.00100000005 * r0.w);
              r6.xyz = r6.xyz + -r5.xyz;
              r4.yzw = r0.www * r6.xyz + r5.xyz;
            } else {
              r6.xyzw = r3.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
              r5.xyz = t10.SampleLevel(s3_s, r6.xy, 0).xyz;
              r6.xyz = t10.SampleLevel(s3_s, r6.zw, 0).xyz;
              r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
              r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
              r0.xy = r3.xy * float2(0.300000012,-0.300000012) + r0.xy;
              r0.xyw = t10.SampleLevel(s3_s, r0.xy, 0).xyz;
              r4.yzw = r0.xyw * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
            }
          }
        }
      }
    }
    r0.x = min(r2.w, r0.z);
    r0.xyz = r4.yzw * r0.xxx;
    r2.xyz = cb0[5].xxx * r2.xyz;
    r1.xyz = r2.xyz * r0.xyz + r1.xyz;
  }
  r0.x = (int)r5.w | (int)r7.y;
  r0.x = (int)r0.x | (int)r7.w;
  if (r0.x != 0) {
    r0.x = saturate(r4.x / cb0[11].z);
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
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = (uint2)vThreadID.xy << int2(1,1);
  r0.xy = (uint2)r0.xy;
  r0.xy = cb1[129].xy + r0.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb1[132].zw * r0.xy;
  r0.xy = r0.xy * cb1[132].zw + -cb1[66].wz;
  r0.xy = r0.xy / cb1[66].xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r0.xy = r0.xy * r0.zz;
  r1.xyz = cb1[49].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb1[48].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb1[50].xyz + r0.xyw;
  r0.xyz = cb1[51].xyz + r0.xyz;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * float3(40000,40000,40000) + cb1[67].xyz;
  r0.w = cb0[22].y * cb0[14].w;
  r1.x = -cb0[14].w * cb0[22].y + cb0[14].w;
  r1.yzw = cb1[67].xyz + -cb0[14].xyz;
  r2.xyz = -cb0[14].xyz + r0.xyz;
  r2.xyz = r2.xyz + -r1.yzw;
  r3.xyz = float3(1,1,1) / r2.xyz;
  r4.xyz = -r1.xxx + -r1.yzw;
  r4.xyz = r4.xyz * r3.xyz;
  r5.xyz = r1.xxx + -r1.yzw;
  r3.xyz = r5.xyz * r3.xyz;
  r5.xyz = min(r4.xyz, r3.xyz);
  r3.xyz = max(r4.xyz, r3.xyz);
  r2.w = max(r5.y, r5.z);
  r4.y = saturate(max(r5.x, r2.w));
  r2.w = min(r3.y, r3.z);
  r4.x = saturate(min(r3.x, r2.w));
  r2.w = cmp(r4.y < r4.x);
  if (r2.w != 0) {
    r0.w = 0.5 * r0.w;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r2.w);
    r2.xyz = r2.xyz / r2.www;
    r1.x = 0.000250000012 * r1.x;
    r3.xy = r4.yx * r2.ww;
    r2.w = r3.x;
    r3.zw = float2(1000000,0);
    while (true) {
      r4.y = cmp((uint)r3.w >= 512);
      if (r4.y != 0) break;
      r4.yzw = r2.xyz * r2.www + r1.yzw;
      r4.yzw = cb0[14].xyz + r4.yzw;
      r4.yzw = r4.yzw * cb0[18].www + cb0[18].xyz;
      r4.y = t1.SampleLevel(s1_s, r4.yzw, 0).x;
      r4.z = min(r4.y, r3.z);
      r4.w = max(r4.y, r1.x);
      r4.w = r4.w + r2.w;
      r4.y = cmp(r4.y < r0.w);
      r5.x = cmp(r3.y < r4.w);
      r4.y = (int)r4.y | (int)r5.x;
      if (r4.y != 0) {
        r2.w = r4.w;
        r3.z = r4.z;
        break;
      }
      r3.w = (int)r3.w + 1;
      r2.w = r4.w;
      r3.z = r4.z;
    }
    r0.w = cmp(r3.z < r0.w);
    r1.x = cmp((int)r3.w == 512);
    r0.w = (int)r0.w | (int)r1.x;
    r1.x = min(40000, r2.w);
    r0.w = r0.w ? r1.x : 40000;
    r1.x = (uint)r3.w;
  } else {
    r4.x = 1;
    r0.w = 40000;
    r1.x = 0;
  }
  r0.w = cmp(r0.w >= 40000);
  if (r0.w != 0) {
    r0.w = cb0[22].y * cb0[15].w;
    r1.y = -cb0[15].w * cb0[22].y + cb0[15].w;
    r2.xyz = cb1[67].xyz + -cb0[15].xyz;
    r3.xyz = -cb0[15].xyz + r0.xyz;
    r3.xyz = r3.xyz + -r2.xyz;
    r4.yzw = float3(1,1,1) / r3.xyz;
    r5.xyz = -r2.xyz + -r1.yyy;
    r5.xyz = r5.xyz * r4.yzw;
    r6.xyz = -r2.xyz + r1.yyy;
    r4.yzw = r6.xyz * r4.yzw;
    r6.xyz = min(r5.xyz, r4.yzw);
    r4.yzw = max(r5.xyz, r4.yzw);
    r1.z = max(r6.y, r6.z);
    r1.z = saturate(max(r6.x, r1.z));
    r1.w = min(r4.z, r4.w);
    r5.x = saturate(min(r4.y, r1.w));
    r1.w = cmp(r1.z < r5.x);
    if (r1.w != 0) {
      r0.w = 0.5 * r0.w;
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = sqrt(r1.w);
      r3.xyz = r3.xyz / r1.www;
      r1.z = max(r4.x, r1.z);
      r1.z = r1.z * r1.w;
      r1.y = 0.000250000012 * r1.y;
      r1.w = r5.x * r1.w;
      r2.w = r1.z;
      r3.w = 1000000;
      r4.x = 0;
      while (true) {
        r4.y = cmp((uint)r4.x >= 512);
        if (r4.y != 0) break;
        r4.yzw = r3.xyz * r2.www + r2.xyz;
        r4.yzw = cb0[15].xyz + r4.yzw;
        r4.yzw = r4.yzw * cb0[19].www + cb0[19].xyz;
        r4.y = t2.SampleLevel(s1_s, r4.yzw, 0).x;
        r4.z = min(r4.y, r3.w);
        r4.w = max(r4.y, r1.y);
        r4.w = r4.w + r2.w;
        r4.y = cmp(r4.y < r0.w);
        r5.y = cmp(r1.w < r4.w);
        r4.y = (int)r4.y | (int)r5.y;
        if (r4.y != 0) {
          r2.w = r4.w;
          r3.w = r4.z;
          break;
        }
        r4.x = (int)r4.x + 1;
        r2.w = r4.w;
        r3.w = r4.z;
      }
      r0.w = cmp(r3.w < r0.w);
      r1.y = cmp((int)r4.x == 512);
      r0.w = (int)r0.w | (int)r1.y;
      r1.y = min(40000, r2.w);
      r0.w = r0.w ? r1.y : 40000;
      r1.y = (uint)r4.x;
    } else {
      r5.x = 1;
      r0.w = 40000;
      r1.y = 0;
    }
    r1.x = r1.x + r1.y;
    r0.w = cmp(r0.w >= 40000);
    if (r0.w != 0) {
      r0.w = cb0[22].y * cb0[16].w;
      r1.y = -cb0[16].w * cb0[22].y + cb0[16].w;
      r2.xyz = cb1[67].xyz + -cb0[16].xyz;
      r3.xyz = -cb0[16].xyz + r0.xyz;
      r3.xyz = r3.xyz + -r2.xyz;
      r4.xyz = float3(1,1,1) / r3.xyz;
      r5.yzw = -r2.xyz + -r1.yyy;
      r5.yzw = r5.yzw * r4.xyz;
      r6.xyz = -r2.xyz + r1.yyy;
      r4.xyz = r6.xyz * r4.xyz;
      r6.xyz = min(r5.yzw, r4.xyz);
      r4.xyz = max(r5.yzw, r4.xyz);
      r1.z = max(r6.y, r6.z);
      r1.z = saturate(max(r6.x, r1.z));
      r1.w = min(r4.y, r4.z);
      r4.x = saturate(min(r4.x, r1.w));
      r1.w = cmp(r1.z < r4.x);
      if (r1.w != 0) {
        r0.w = 0.5 * r0.w;
        r1.w = dot(r3.xyz, r3.xyz);
        r1.w = sqrt(r1.w);
        r3.xyz = r3.xyz / r1.www;
        r1.z = max(r5.x, r1.z);
        r1.z = r1.z * r1.w;
        r1.y = 0.000250000012 * r1.y;
        r1.w = r4.x * r1.w;
        r2.w = r1.z;
        r3.w = 1000000;
        r4.y = 0;
        while (true) {
          r4.z = cmp((uint)r4.y >= 512);
          if (r4.z != 0) break;
          r5.xyz = r3.xyz * r2.www + r2.xyz;
          r5.xyz = cb0[16].xyz + r5.xyz;
          r5.xyz = r5.xyz * cb0[20].www + cb0[20].xyz;
          r4.z = t3.SampleLevel(s1_s, r5.xyz, 0).x;
          r4.w = min(r4.z, r3.w);
          r5.x = max(r4.z, r1.y);
          r5.x = r5.x + r2.w;
          r4.z = cmp(r4.z < r0.w);
          r5.y = cmp(r1.w < r5.x);
          r4.z = (int)r4.z | (int)r5.y;
          if (r4.z != 0) {
            r2.w = r5.x;
            r3.w = r4.w;
            break;
          }
          r4.y = (int)r4.y + 1;
          r2.w = r5.x;
          r3.w = r4.w;
        }
        r0.w = cmp(r3.w < r0.w);
        r1.y = cmp((int)r4.y == 512);
        r0.w = (int)r0.w | (int)r1.y;
        r1.y = min(40000, r2.w);
        r0.w = r0.w ? r1.y : 40000;
        r1.y = (uint)r4.y;
      } else {
        r4.x = 1;
        r0.w = 40000;
        r1.y = 0;
      }
      r1.x = r1.x + r1.y;
      r0.w = cmp(r0.w >= 40000);
      if (r0.w != 0) {
        r0.w = cb0[22].y * cb0[17].w;
        r1.y = -cb0[17].w * cb0[22].y + cb0[17].w;
        r2.xyz = cb1[67].xyz + -cb0[17].xyz;
        r0.xyz = -cb0[17].xyz + r0.xyz;
        r0.xyz = r0.xyz + -r2.xyz;
        r3.xyz = float3(1,1,1) / r0.xyz;
        r4.yzw = -r2.xyz + -r1.yyy;
        r4.yzw = r4.yzw * r3.xyz;
        r5.xyz = -r2.xyz + r1.yyy;
        r3.xyz = r5.xyz * r3.xyz;
        r5.xyz = min(r4.yzw, r3.xyz);
        r3.xyz = max(r4.yzw, r3.xyz);
        r1.z = max(r5.y, r5.z);
        r1.z = saturate(max(r5.x, r1.z));
        r1.w = min(r3.y, r3.z);
        r1.w = saturate(min(r3.x, r1.w));
        r2.w = cmp(r1.z < r1.w);
        if (r2.w != 0) {
          r0.w = 0.5 * r0.w;
          r2.w = dot(r0.xyz, r0.xyz);
          r2.w = sqrt(r2.w);
          r0.xyz = r0.xyz / r2.www;
          r1.z = max(r4.x, r1.z);
          r1.z = r1.z * r2.w;
          r1.y = 0.000250000012 * r1.y;
          r1.w = r2.w * r1.w;
          r2.w = r1.z;
          r3.x = 0;
          while (true) {
            r3.y = cmp((uint)r3.x >= 512);
            if (r3.y != 0) break;
            r3.yzw = r0.xyz * r2.www + r2.xyz;
            r3.yzw = cb0[17].xyz + r3.yzw;
            r3.yzw = r3.yzw * cb0[21].www + cb0[21].xyz;
            r3.y = t4.SampleLevel(s1_s, r3.yzw, 0).x;
            r3.z = max(r3.y, r1.y);
            r2.w = r3.z + r2.w;
            r3.y = cmp(r3.y < r0.w);
            r3.z = cmp(r1.w < r2.w);
            r3.y = (int)r3.z | (int)r3.y;
            if (r3.y != 0) {
              break;
            }
            r3.x = (int)r3.x + 1;
          }
          r0.x = (uint)r3.x;
        } else {
          r0.x = 0;
        }
        r1.x = r1.x + r0.x;
      }
    }
  }
  r0.x = 0.00249999994 * r1.x;
  r0.xyz = min(float3(1,1,1), r0.xxx);
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}
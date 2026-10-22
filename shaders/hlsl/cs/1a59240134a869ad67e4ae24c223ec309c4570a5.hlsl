// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

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
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[12].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy << int2(2,2);
    r0.xy = (uint2)r0.xy;
    r0.xy = cb0[13].xy + r0.xy;
    r0.zw = float2(0.5,0.5) + r0.xy;
    r0.zw = cb0[11].xy * r0.zw;
    r1.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r0.z = cmp(abs(r1.z) < 0.999000013);
    r2.xyz = r0.zzz ? float3(1,0,0) : float3(0,1,0);
    r3.xyz = r2.xyz * r1.yzx;
    r2.xyz = r2.zxy * r1.zxy + -r3.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r3.xyz = r2.yzx * r1.zxy;
    r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
    r0.xy = r0.xy * float2(2,2) + cb1[129].xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = r0.xy * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r1.ww;
    r0.yzw = cb1[49].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb1[48].xyz + r0.yzw;
    r0.xyz = r1.www * cb1[50].xyz + r0.xyz;
    r0.xyz = cb1[51].xyz + r0.xyz;
    r0.w = mad((int)vThreadID.y, asint(cb0[12].z), (int)vThreadID.x);
    r4.xyz = -cb0[14].xyz + r0.xyz;
    r4.xyz = cb0[14].www + r4.xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r5.xyz = cb0[14].xyz + cb0[14].www;
    r5.xyz = r5.xyz + -r0.xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r4.xyz = min(r5.xyz, r4.xyz);
    r1.w = min(r4.y, r4.z);
    r1.w = min(r4.x, r1.w);
    r1.w = cmp(cb0[9].y < r1.w);
    if (r1.w != 0) {
      r1.w = 0.00666666683 * cb0[14].w;
      r2.w = 1 / cb0[9].y;
      r3.w = dot(cb0[14].ww, cb0[22].yy);
      r4.xyz = r1.xyz * r3.www + r0.xyz;
      r4.xyz = r4.xyz * cb0[18].www + cb0[18].xyz;
      r4.x = t1.SampleLevel(s1_s, r4.xyz, 0).x;
      r4.x = r4.x / r3.w;
      r4.x = r4.x * r4.x;
      r4.x = min(1, r4.x);
      r4.x = r4.x * 0.400000006 + 0.600000024;
      r4.y = 0;
      while (true) {
        r4.z = cmp((uint)r4.y >= 9);
        if (r4.z != 0) break;
        r5.xyz = cb2[r4.y+0].yyy * r3.xyz;
        r5.xyz = cb2[r4.y+0].xxx * r2.xyz + r5.xyz;
        r5.xyz = cb2[r4.y+0].zzz * r1.xyz + r5.xyz;
        r4.z = 1;
        r4.w = r3.w;
        r5.w = 0;
        while (true) {
          r6.x = cmp((uint)r5.w < 10);
          r6.y = cmp(r4.w < cb0[9].y);
          r6.x = r6.y ? r6.x : 0;
          if (r6.x == 0) break;
          r6.xyz = r5.xyz * r4.www + r0.xyz;
          r6.xyz = r6.xyz * cb0[18].www + cb0[18].xyz;
          r6.x = t1.SampleLevel(s1_s, r6.xyz, 0).x;
          r6.y = cb0[22].z * r4.w;
          r6.y = (int)-r6.y + 0x7ef311c2;
          r6.y = saturate(r6.x * r6.y);
          r6.z = r6.x + r4.w;
          r6.z = r6.z * r2.w;
          r6.z = r6.z * r6.z;
          r6.z = 0.600000024 * r6.z;
          r6.z = min(1, r6.z);
          r6.y = max(r6.y, r6.z);
          r4.z = min(r6.y, r4.z);
          r6.x = max(r6.x, r1.w);
          r4.w = r6.x + r4.w;
          r5.w = (int)r5.w + 1;
        }
        r4.w = r4.z * r4.x;
        r5.x = (int)r4.y * asint(cb0[12].z);
        r5.x = mad((int)r5.x, asint(cb0[12].w), (int)r0.w);
        // Needs manual fix for instruction:
            atomic_umin u0, r5.x, r4.w
        InterlockedMin(dest, value, orig_value);
        r4.y = (int)r4.y + 1;
      }
    } else {
      r4.xyz = -cb0[15].xyz + r0.xyz;
      r4.xyz = cb0[15].www + r4.xyz;
      r4.xyz = max(float3(0,0,0), r4.xyz);
      r5.xyz = cb0[15].xyz + cb0[15].www;
      r5.xyz = r5.xyz + -r0.xyz;
      r5.xyz = max(float3(0,0,0), r5.xyz);
      r4.xyz = min(r5.xyz, r4.xyz);
      r1.w = min(r4.y, r4.z);
      r1.w = min(r4.x, r1.w);
      r1.w = cmp(cb0[9].y < r1.w);
      if (r1.w != 0) {
        r1.w = 0.00666666683 * cb0[15].w;
        r2.w = 1 / cb0[9].y;
        r3.w = dot(cb0[15].ww, cb0[22].yy);
        r4.xyz = r1.xyz * r3.www + r0.xyz;
        r4.xyz = r4.xyz * cb0[19].www + cb0[19].xyz;
        r4.x = t2.SampleLevel(s1_s, r4.xyz, 0).x;
        r4.x = r4.x / r3.w;
        r4.x = r4.x * r4.x;
        r4.x = min(1, r4.x);
        r4.x = r4.x * 0.400000006 + 0.600000024;
        r4.y = 0;
        while (true) {
          r4.z = cmp((uint)r4.y >= 9);
          if (r4.z != 0) break;
          r5.xyz = cb2[r4.y+0].yyy * r3.xyz;
          r5.xyz = cb2[r4.y+0].xxx * r2.xyz + r5.xyz;
          r5.xyz = cb2[r4.y+0].zzz * r1.xyz + r5.xyz;
          r4.z = 1;
          r4.w = r3.w;
          r5.w = 0;
          while (true) {
            r6.x = cmp((uint)r5.w < 10);
            r6.y = cmp(r4.w < cb0[9].y);
            r6.x = r6.y ? r6.x : 0;
            if (r6.x == 0) break;
            r6.xyz = r5.xyz * r4.www + r0.xyz;
            r6.xyz = r6.xyz * cb0[19].www + cb0[19].xyz;
            r6.x = t2.SampleLevel(s1_s, r6.xyz, 0).x;
            r6.y = cb0[22].z * r4.w;
            r6.y = (int)-r6.y + 0x7ef311c2;
            r6.y = saturate(r6.x * r6.y);
            r6.z = r6.x + r4.w;
            r6.z = r6.z * r2.w;
            r6.z = r6.z * r6.z;
            r6.z = 0.600000024 * r6.z;
            r6.z = min(1, r6.z);
            r6.y = max(r6.y, r6.z);
            r4.z = min(r6.y, r4.z);
            r6.x = max(r6.x, r1.w);
            r4.w = r6.x + r4.w;
            r5.w = (int)r5.w + 1;
          }
          r4.w = r4.z * r4.x;
          r5.x = (int)r4.y * asint(cb0[12].z);
          r5.x = mad((int)r5.x, asint(cb0[12].w), (int)r0.w);
          // Needs manual fix for instruction:
                atomic_umin u0, r5.x, r4.w
          InterlockedMin(dest, value, orig_value);
          r4.y = (int)r4.y + 1;
        }
      } else {
        r4.xyz = -cb0[16].xyz + r0.xyz;
        r4.xyz = cb0[16].www + r4.xyz;
        r4.xyz = max(float3(0,0,0), r4.xyz);
        r5.xyz = cb0[16].xyz + cb0[16].www;
        r5.xyz = r5.xyz + -r0.xyz;
        r5.xyz = max(float3(0,0,0), r5.xyz);
        r4.xyz = min(r5.xyz, r4.xyz);
        r1.w = min(r4.y, r4.z);
        r1.w = min(r4.x, r1.w);
        r4.xyz = -cb0[17].xyz + r0.xyz;
        r4.xyz = cb0[17].www + r4.xyz;
        r4.xyz = max(float3(0,0,0), r4.xyz);
        r5.xyz = cb0[17].xyz + cb0[17].www;
        r5.xyz = r5.xyz + -r0.xyz;
        r5.xyz = max(float3(0,0,0), r5.xyz);
        r4.xyz = min(r5.xyz, r4.xyz);
        r2.w = min(r4.y, r4.z);
        r2.w = min(r4.x, r2.w);
        r1.w = cmp(cb0[9].y < r1.w);
        if (r1.w != 0) {
          r1.w = 0.00666666683 * cb0[16].w;
          r3.w = 1 / cb0[9].y;
          r4.x = dot(cb0[16].ww, cb0[22].yy);
          r4.yzw = r1.xyz * r4.xxx + r0.xyz;
          r4.yzw = r4.yzw * cb0[20].www + cb0[20].xyz;
          r4.y = t3.SampleLevel(s1_s, r4.yzw, 0).x;
          r4.y = r4.y / r4.x;
          r4.y = r4.y * r4.y;
          r4.y = min(1, r4.y);
          r4.y = r4.y * 0.400000006 + 0.600000024;
          r4.z = 0;
          while (true) {
            r4.w = cmp((uint)r4.z >= 9);
            if (r4.w != 0) break;
            r5.xyz = cb2[r4.z+0].yyy * r3.xyz;
            r5.xyz = cb2[r4.z+0].xxx * r2.xyz + r5.xyz;
            r5.xyz = cb2[r4.z+0].zzz * r1.xyz + r5.xyz;
            r4.w = 1;
            r5.w = r4.x;
            r6.x = 0;
            while (true) {
              r6.y = cmp((uint)r6.x < 10);
              r6.z = cmp(r5.w < cb0[9].y);
              r6.y = r6.z ? r6.y : 0;
              if (r6.y == 0) break;
              r6.yzw = r5.xyz * r5.www + r0.xyz;
              r6.yzw = r6.yzw * cb0[20].www + cb0[20].xyz;
              r6.y = t3.SampleLevel(s1_s, r6.yzw, 0).x;
              r6.z = cb0[22].z * r5.w;
              r6.z = (int)-r6.z + 0x7ef311c2;
              r6.z = saturate(r6.y * r6.z);
              r6.w = r6.y + r5.w;
              r6.w = r6.w * r3.w;
              r6.w = r6.w * r6.w;
              r6.w = 0.600000024 * r6.w;
              r6.w = min(1, r6.w);
              r6.z = max(r6.z, r6.w);
              r4.w = min(r6.z, r4.w);
              r6.y = max(r6.y, r1.w);
              r5.w = r6.y + r5.w;
              r6.x = (int)r6.x + 1;
            }
            r5.x = r4.w * r4.y;
            r5.y = (int)r4.z * asint(cb0[12].z);
            r5.y = mad((int)r5.y, asint(cb0[12].w), (int)r0.w);
            // Needs manual fix for instruction:
                    atomic_umin u0, r5.y, r5.x
            InterlockedMin(dest, value, orig_value);
            r4.z = (int)r4.z + 1;
          }
        } else {
          r1.w = cmp(cb0[9].y < r2.w);
          if (r1.w != 0) {
            r1.w = 0.00666666683 * cb0[17].w;
            r2.w = 1 / cb0[9].y;
            r3.w = dot(cb0[17].ww, cb0[22].yy);
            r4.xyz = r1.xyz * r3.www + r0.xyz;
            r4.xyz = r4.xyz * cb0[21].www + cb0[21].xyz;
            r4.x = t4.SampleLevel(s1_s, r4.xyz, 0).x;
            r4.x = r4.x / r3.w;
            r4.x = r4.x * r4.x;
            r4.x = min(1, r4.x);
            r4.x = r4.x * 0.400000006 + 0.600000024;
            r4.y = 0;
            while (true) {
              r4.z = cmp((uint)r4.y >= 9);
              if (r4.z != 0) break;
              r5.xyz = cb2[r4.y+0].yyy * r3.xyz;
              r5.xyz = cb2[r4.y+0].xxx * r2.xyz + r5.xyz;
              r5.xyz = cb2[r4.y+0].zzz * r1.xyz + r5.xyz;
              r4.z = 1;
              r4.w = r3.w;
              r5.w = 0;
              while (true) {
                r6.x = cmp((uint)r5.w < 10);
                r6.y = cmp(r4.w < cb0[9].y);
                r6.x = r6.y ? r6.x : 0;
                if (r6.x == 0) break;
                r6.xyz = r5.xyz * r4.www + r0.xyz;
                r6.xyz = r6.xyz * cb0[21].www + cb0[21].xyz;
                r6.x = t4.SampleLevel(s1_s, r6.xyz, 0).x;
                r6.y = cb0[22].z * r4.w;
                r6.y = (int)-r6.y + 0x7ef311c2;
                r6.y = saturate(r6.x * r6.y);
                r6.z = r6.x + r4.w;
                r6.z = r6.z * r2.w;
                r6.z = r6.z * r6.z;
                r6.z = 0.600000024 * r6.z;
                r6.z = min(1, r6.z);
                r6.y = max(r6.y, r6.z);
                r4.z = min(r6.y, r4.z);
                r6.x = max(r6.x, r1.w);
                r4.w = r6.x + r4.w;
                r5.w = (int)r5.w + 1;
              }
              r4.w = r4.z * r4.x;
              r5.x = (int)r4.y * asint(cb0[12].z);
              r5.x = mad((int)r5.x, asint(cb0[12].w), (int)r0.w);
              // Needs manual fix for instruction:
                        atomic_umin u0, r5.x, r4.w
              InterlockedMin(dest, value, orig_value);
              r4.y = (int)r4.y + 1;
            }
          }
        }
      }
    }
  }
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[17];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t4.Sample(s1_s, v0.xy).xyzw;
  r1.xyzw = t5.Sample(s2_s, v0.xy).xyzw;
  r2.xyzw = t6.Sample(s3_s, v0.xy).xyzw;
  r2.xyzw = r2.xyzw * cb2[3].xyzw + cb2[4].xyzw;
  r3.xy = t12.SampleLevel(s9_s, v0.xy, 0).xy;
  r4.xyz = cb0[1].xyz + cb0[1].www;
  r3.z = cb0[9].y * cb0[1].w;
  r5.xyz = cb0[2].xyz + cb0[2].www;
  r3.w = cb0[9].y * cb0[2].w;
  r4.w = 4 * cb0[9].y;
  r6.xyz = cb0[3].xyz + cb0[3].www;
  r7.xyz = cb0[4].xyz + cb0[4].www;
  r5.w = cb0[9].y * cb0[3].w;
  r6.w = cb0[1].w * r4.w;
  r7.w = cb0[9].y * cb0[4].w;
  r8.x = cb0[2].w * r4.w;
  r8.y = cb0[3].w * r4.w;
  r4.w = cb0[4].w * r4.w;
  r9.xyz = cb2[8].xyz;
  r10.xyz = r1.xyz;
  r11.xyz = r0.xyz;
  r10.w = r0.w;
  r8.z = 0;
  while (true) {
    r8.w = cmp((int)r8.z >= asint(cb0[12].w));
    if (r8.w != 0) break;
    r10.w = cb0[12].z * r1.w + r10.w;
    r12.xy = cb2[0].zw * r10.ww + cb2[0].xy;
    r12.xyzw = t7.Sample(s4_s, r12.xy).xyzw;
    r12.xyzw = r12.xyzw * cb2[1].xyzw + cb2[2].xyzw;
    r12.xyzw = r12.xyzw * r2.xyzw;
    r13.xyz = float3(0,0,0);
    r14.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r11.w = 0;
    while (true) {
      r13.w = cmp((int)r11.w >= asint(cb1[0].x));
      if (r13.w != 0) break;
      r13.w = cb1[r11.w+33].x * r12.y;
      r14.w = (uint)r11.w << 2;
      r15.xyz = cb1[r14.w+2].xyz * r11.yyy;
      r15.xyz = r11.xxx * cb1[r14.w+1].xyz + r15.xyz;
      r15.xyz = r11.zzz * cb1[r14.w+3].xyz + r15.xyz;
      r15.xyz = cb1[r14.w+4].xyz + r15.xyz;
      r16.xyz = cb1[r11.w+41].xyz * r15.xyz;
      r16.xyz = floor(r16.xyz);
      r15.xyz = -r16.xyz + r15.xyz;
      r16.xyz = saturate(cb1[r11.w+37].xyz * r15.xyz);
      r17.xyz = float3(1,1,1) + -r15.xyz;
      r17.xyz = saturate(cb1[r11.w+37].xyz * r17.xyz);
      r16.xyz = r17.xyz * r16.xyz;
      r15.w = min(r16.y, r16.z);
      r15.w = min(r16.x, r15.w);
      r15.xyz = saturate(r15.xyz);
      r16.x = cmp((int)r11.w == 0);
      if (r11.w == 0) {
        r16.yzw = t8.Sample(s5_s, r15.xyz).xyz;
      }
      if (r16.x == 0) {
        r16.x = cmp((int)r11.w == 1);
        if (r16.x != 0) {
          r16.yzw = t9.Sample(s6_s, r15.xyz).xyz;
        }
        if (r16.x == 0) {
          r16.x = cmp((int)r11.w == 2);
          if (r16.x != 0) {
            r16.yzw = t10.Sample(s7_s, r15.xyz).xyz;
          }
          if (r16.x == 0) {
            r16.yzw = t11.Sample(s8_s, r15.xyz).xyz;
          }
        }
      }
      r15.xyz = cb1[r14.w+18].xyz * r16.zzz;
      r15.xyz = r16.yyy * cb1[r14.w+17].xyz + r15.xyz;
      r15.xyz = r16.www * cb1[r14.w+19].xyz + r15.xyz;
      r16.xyz = r15.xyz * r15.www;
      r13.xyz = r16.xyz * r13.www + r13.xyz;
      r15.xyz = r15.xyz * r13.www;
      r15.xyz = r15.xyz * r15.www;
      r14.xyz = r15.xyz * cb1[r11.w+33].yyy + r14.xyz;
      r13.w = cb1[r11.w+33].y * r15.w;
      r8.w = r15.w * cb1[r11.w+33].y + r8.w;
      r9.w = max(r13.w, r9.w);
      r11.w = (int)r11.w + 1;
    }
    r11.w = 0.00100000005 + r8.w;
    r15.xyz = r14.xyz / r11.www;
    r16.xyz = r13.xyz + r9.xyz;
    r15.xyz = r15.xyz + -r10.xyz;
    r15.xyz = r9.www * r15.xyz + r10.xyz;
    r16.xyz = -r12.xxx * r15.xyz + r16.xyz;
    r17.xyz = cb0[10].xyz + -r11.xyz;
    r17.xyz = float3(0,0,9.99999975e-005) + r17.xyz;
    r11.w = dot(r17.xyz, r17.xyz);
    r12.x = max(cb0[10].w, r11.w);
    r12.x = cb0[11].w / r12.x;
    r11.w = rsqrt(r11.w);
    r17.xyz = r17.xyz * r11.www;
    r9.xyz = r12.xxx * r17.xyz + r16.xyz;
    r16.xyz = cb0[12].zzz * r9.xyz;
    r12.xy = cb2[5].zw * r10.ww + cb2[5].xy;
    r12.xy = t7.SampleLevel(s4_s, r12.xy, 0).xy;
    r12.xy = r12.xy * cb2[6].xy + cb2[7].xy;
    r12.xy = r12.xy * abs(r3.xy);
    r12.xy = cb0[12].xy * r12.xy;
    r11.w = min(r12.x, r12.y);
    r11.w = r11.w * cb2[14].w + cb2[15].x;
    r16.xyz = r16.xyz * float3(0.5,0.5,0.5) + r15.xyz;
    r17.xyz = cb0[12].zzz * r16.xyz;
    r18.xyz = cb0[12].zzz * r16.xyz + r11.xyz;
    r10.xyz = r9.xyz * cb0[12].zzz + r15.xyz;
    r15.xyz = -cb0[1].xyz + r11.xyz;
    r15.xyz = cb0[1].www + r15.xyz;
    r15.xyz = max(float3(0,0,0), r15.xyz);
    r19.xyz = -r11.xyz + r4.xyz;
    r19.xyz = max(float3(0,0,0), r19.xyz);
    r15.xyz = min(r19.xyz, r15.xyz);
    r12.x = min(r15.y, r15.z);
    r12.x = min(r15.x, r12.x);
    r12.y = cmp(r3.z < r12.x);
    if (r12.y != 0) {
      r15.xyz = r11.xyz * cb0[5].www + cb0[5].xyz;
      r12.y = t0.SampleLevel(s0_s, r15.xyz, 0).x;
    } else {
      r15.xyz = -cb0[2].xyz + r11.xyz;
      r15.xyz = cb0[2].www + r15.xyz;
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r19.xyz = -r11.xyz + r5.xyz;
      r19.xyz = max(float3(0,0,0), r19.xyz);
      r15.xyz = min(r19.xyz, r15.xyz);
      r13.w = min(r15.y, r15.z);
      r13.w = min(r15.x, r13.w);
      r13.w = cmp(r3.w < r13.w);
      if (r13.w != 0) {
        r15.xyz = r11.xyz * cb0[6].www + cb0[6].xyz;
        r12.y = t1.SampleLevel(s0_s, r15.xyz, 0).x;
      } else {
        r15.xyz = -cb0[3].xyz + r11.xyz;
        r15.xyz = cb0[3].www + r15.xyz;
        r15.xyz = max(float3(0,0,0), r15.xyz);
        r19.xyz = -r11.xyz + r6.xyz;
        r19.xyz = max(float3(0,0,0), r19.xyz);
        r15.xyz = min(r19.xyz, r15.xyz);
        r13.w = min(r15.y, r15.z);
        r13.w = min(r15.x, r13.w);
        r15.xyz = -cb0[4].xyz + r11.xyz;
        r15.xyz = cb0[4].www + r15.xyz;
        r15.xyz = max(float3(0,0,0), r15.xyz);
        r19.xyz = -r11.xyz + r7.xyz;
        r19.xyz = max(float3(0,0,0), r19.xyz);
        r15.xyz = min(r19.xyz, r15.xyz);
        r14.w = min(r15.y, r15.z);
        r14.w = min(r15.x, r14.w);
        r13.w = cmp(r5.w < r13.w);
        if (r13.w != 0) {
          r15.xyz = r11.xyz * cb0[7].www + cb0[7].xyz;
          r12.y = t2.SampleLevel(s0_s, r15.xyz, 0).x;
        } else {
          r13.w = cmp(r7.w < r14.w);
          if (r13.w != 0) {
            r13.w = cb0[8].w * r14.w;
            r13.w = saturate(10 * r13.w);
            r15.xyz = r11.xyz * cb0[8].www + cb0[8].xyz;
            r14.w = t3.SampleLevel(s0_s, r15.xyz, 0).x;
            r14.w = -cb0[0].x + r14.w;
            r12.y = r13.w * r14.w + cb0[0].x;
          } else {
            r12.y = cb0[0].x;
          }
        }
      }
    }
    r13.w = dot(r17.xyz, r17.xyz);
    r13.w = sqrt(r13.w);
    r13.w = r13.w + r11.w;
    r13.w = cmp(r12.y < r13.w);
    if (r13.w != 0) {
      r12.x = cmp(r6.w < r12.x);
      if (r12.x != 0) {
        r15.xyz = r11.xyz * cb0[5].www + cb0[5].xyz;
        r19.xyz = cb0[9].yyy + r15.xyz;
        r15.w = r19.x;
        r12.x = t0.SampleLevel(s0_s, r15.wyz, 0).x;
        r20.xyw = -cb0[9].yyy + r15.xyz;
        r21.xw = r20.xy;
        r21.yz = r15.yz;
        r13.w = t0.SampleLevel(s0_s, r21.xyz, 0).x;
        r21.xz = r15.xz;
        r21.y = r19.y;
        r14.w = t0.SampleLevel(s0_s, r21.xyz, 0).x;
        r15.z = t0.SampleLevel(s0_s, r21.xwz, 0).x;
        r20.xy = r15.xy;
        r20.z = r19.z;
        r15.x = t0.SampleLevel(s0_s, r20.xyz, 0).x;
        r15.y = t0.SampleLevel(s0_s, r20.xyw, 0).x;
        r19.x = -r13.w + r12.x;
        r19.y = -r15.z + r14.w;
        r19.z = r15.x + -r15.y;
        r15.xyz = float3(0.5,0.5,0.5) * r19.xyz;
        r15.xyz = r15.xyz / cb0[1].www;
      } else {
        r19.xyz = -cb0[2].xyz + r11.xyz;
        r19.xyz = cb0[2].www + r19.xyz;
        r19.xyz = max(float3(0,0,0), r19.xyz);
        r20.xyz = -r11.xyz + r5.xyz;
        r20.xyz = max(float3(0,0,0), r20.xyz);
        r19.xyz = min(r20.xyz, r19.xyz);
        r12.x = min(r19.y, r19.z);
        r12.x = min(r19.x, r12.x);
        r12.x = cmp(r8.x < r12.x);
        if (r12.x != 0) {
          r19.xyz = r11.xyz * cb0[6].www + cb0[6].xyz;
          r20.xyz = cb0[9].yyy + r19.xyz;
          r19.w = r20.x;
          r12.x = t1.SampleLevel(s0_s, r19.wyz, 0).x;
          r21.xyw = -cb0[9].yyy + r19.xyz;
          r22.xw = r21.xy;
          r22.yz = r19.yz;
          r13.w = t1.SampleLevel(s0_s, r22.xyz, 0).x;
          r22.xz = r19.xz;
          r22.y = r20.y;
          r14.w = t1.SampleLevel(s0_s, r22.xyz, 0).x;
          r15.w = t1.SampleLevel(s0_s, r22.xwz, 0).x;
          r21.xy = r19.xy;
          r21.z = r20.z;
          r16.w = t1.SampleLevel(s0_s, r21.xyz, 0).x;
          r17.w = t1.SampleLevel(s0_s, r21.xyw, 0).x;
          r19.x = -r13.w + r12.x;
          r19.y = -r15.w + r14.w;
          r19.z = -r17.w + r16.w;
          r19.xyz = float3(0.5,0.5,0.5) * r19.xyz;
          r15.xyz = r19.xyz / cb0[2].www;
        } else {
          r19.xyz = -cb0[3].xyz + r11.xyz;
          r19.xyz = cb0[3].www + r19.xyz;
          r19.xyz = max(float3(0,0,0), r19.xyz);
          r20.xyz = -r11.xyz + r6.xyz;
          r20.xyz = max(float3(0,0,0), r20.xyz);
          r19.xyz = min(r20.xyz, r19.xyz);
          r12.x = min(r19.y, r19.z);
          r12.x = min(r19.x, r12.x);
          r19.xyz = -cb0[4].xyz + r11.xyz;
          r19.xyz = cb0[4].www + r19.xyz;
          r19.xyz = max(float3(0,0,0), r19.xyz);
          r20.xyz = -r11.xyz + r7.xyz;
          r20.xyz = max(float3(0,0,0), r20.xyz);
          r19.xyz = min(r20.xyz, r19.xyz);
          r13.w = min(r19.y, r19.z);
          r13.w = min(r19.x, r13.w);
          r12.x = cmp(r8.y < r12.x);
          if (r12.x != 0) {
            r19.xyz = r11.xyz * cb0[7].www + cb0[7].xyz;
            r20.xyz = cb0[9].yyy + r19.xyz;
            r19.w = r20.x;
            r12.x = t2.SampleLevel(s0_s, r19.wyz, 0).x;
            r21.xyw = -cb0[9].yyy + r19.xyz;
            r22.xw = r21.xy;
            r22.yz = r19.yz;
            r14.w = t2.SampleLevel(s0_s, r22.xyz, 0).x;
            r22.xz = r19.xz;
            r22.y = r20.y;
            r15.w = t2.SampleLevel(s0_s, r22.xyz, 0).x;
            r16.w = t2.SampleLevel(s0_s, r22.xwz, 0).x;
            r21.xy = r19.xy;
            r21.z = r20.z;
            r17.w = t2.SampleLevel(s0_s, r21.xyz, 0).x;
            r18.w = t2.SampleLevel(s0_s, r21.xyw, 0).x;
            r19.x = -r14.w + r12.x;
            r19.y = -r16.w + r15.w;
            r19.z = -r18.w + r17.w;
            r19.xyz = float3(0.5,0.5,0.5) * r19.xyz;
            r15.xyz = r19.xyz / cb0[3].www;
          } else {
            r12.x = cmp(r4.w < r13.w);
            if (r12.x != 0) {
              r19.xyz = r11.xyz * cb0[8].www + cb0[8].xyz;
              r20.xyz = cb0[9].yyy + r19.xyz;
              r19.w = r20.x;
              r12.x = t3.SampleLevel(s0_s, r19.wyz, 0).x;
              r21.xyw = -cb0[9].yyy + r19.xyz;
              r22.xw = r21.xy;
              r22.yz = r19.yz;
              r13.w = t3.SampleLevel(s0_s, r22.xyz, 0).x;
              r22.xz = r19.xz;
              r22.y = r20.y;
              r14.w = t3.SampleLevel(s0_s, r22.xyz, 0).x;
              r15.w = t3.SampleLevel(s0_s, r22.xwz, 0).x;
              r21.xy = r19.xy;
              r21.z = r20.z;
              r16.w = t3.SampleLevel(s0_s, r21.xyz, 0).x;
              r17.w = t3.SampleLevel(s0_s, r21.xyw, 0).x;
              r19.x = -r13.w + r12.x;
              r19.y = -r15.w + r14.w;
              r19.z = -r17.w + r16.w;
              r19.xyz = float3(0.5,0.5,0.5) * r19.xyz;
              r15.xyz = r19.xyz / cb0[4].www;
            } else {
              r15.xyz = float3(0,0,0.00100000005);
            }
          }
        }
      }
      r12.x = dot(r15.xyz, r15.xyz);
      r12.x = rsqrt(r12.x);
      r15.xyz = r15.xyz * r12.xxx;
      r19.xyz = -r15.xyz * r12.yyy + r11.xyz;
      r12.x = dot(r19.xyz, r15.xyz);
      r12.y = dot(r15.xyz, r17.xyz);
      r13.w = 9.99999975e-005 + r12.y;
      r13.w = rcp(r13.w);
      r14.w = dot(r15.xyz, r11.xyz);
      r12.x = r14.w + -r12.x;
      r14.w = r12.x + r11.w;
      r14.w = -r14.w * r13.w;
      r11.w = r12.x + -r11.w;
      r11.w = -r11.w * r13.w;
      r13.w = cmp(r14.w >= 0);
      r13.w = r13.w ? 1.000000 : 0;
      r15.w = cmp(1 >= r11.w);
      r15.w = r15.w ? 1.000000 : 0;
      r13.w = r15.w * r13.w;
      r15.w = cmp(r12.x >= 0);
      r15.w = r15.w ? 1.000000 : 0;
      r13.w = r15.w * r13.w;
      r13.w = cmp(0 != r13.w);
      r15.w = dot(r16.xyz, r15.xyz);
      r19.xyz = r15.www * r15.xyz;
      r15.xyz = -r15.www * r15.xyz + r16.xyz;
      r16.xyz = r19.xyz * r12.zzz;
      r15.xyz = cb2[16].xxx * r15.xyz + -r16.xyz;
      r12.xy = cmp(float2(0,-1) >= r12.xy);
      r12.xy = r12.xy ? float2(1,1) : 0;
      r12.z = r12.y * r11.w;
      r16.xyz = r17.xyz * r12.zzz + r11.xyz;
      r12.y = -r11.w * r12.y + 1;
      r17.xyz = r15.xyz * r12.yyy;
      r16.xyz = r17.xyz * cb0[12].zzz + r16.xyz;
      r15.w = cb2[15].y + r10.w;
      r11.w = cmp(r11.w >= 0);
      r11.w = r11.w ? 1.000000 : 0;
      r12.y = cmp(1 >= r14.w);
      r12.y = r12.y ? 1.000000 : 0;
      r11.w = r12.y * r11.w;
      r11.w = r11.w * r12.x;
      r11.w = cmp(0 != r11.w);
      r10.w = r11.w ? 1.10000002 : r10.w;
      r18.xyz = r13.www ? r16.xyz : r18.xyz;
      r10.xyzw = r13.wwww ? r15.xyzw : r10.xyzw;
    }
    r12.xyz = cb2[10].xyz * r12.www + cb2[9].xyz;
    r15.xyz = cb2[12].yzx * r12.www + cb2[11].yzx;
    r16.xyz = cb2[14].xyz * r12.www + cb2[13].xyz;
    r16.xyz = r15.zxy * r10.www + r16.xyz;
    sincos(r16.xyz, r16.xyz, r17.xyz);
    r16.xyz = r16.yzx * r15.xyz;
    r15.xyz = r15.yzx * r17.zxy + -r16.xyz;
    r12.xyz = r15.xyz * r12.xyz;
    r11.xyz = r12.xyz * cb0[12].zzz + r18.xyz;
    r8.z = (int)r8.z + 1;
  }
  o1.xyz = r10.xyz;
  o0.w = r10.w;
  o0.xyz = cb0[11].xyz + r11.xyz;
  o1.w = r1.w;
  return;
}
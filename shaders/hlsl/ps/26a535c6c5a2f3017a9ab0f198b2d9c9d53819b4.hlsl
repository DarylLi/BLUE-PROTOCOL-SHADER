// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s1_s, v0.xy).xyzw;
  r1.xyzw = t3.Sample(s2_s, v0.xy).xyzw;
  r2.xyzw = t4.Sample(s3_s, v0.xy).xyzw;
  r2.xyzw = r2.xyzw * cb3[3].xyzw + cb3[4].xyzw;
  r3.xy = t10.SampleLevel(s9_s, v0.xy, 0).xy;
  r3.z = cmp(cb3[15].z != 0.000000);
  r4.xyz = cb3[8].xyz;
  r5.xyz = r1.xyz;
  r6.xyz = r0.xyz;
  r3.w = r0.w;
  r4.w = 0;
  while (true) {
    r5.w = cmp((int)r4.w >= asint(cb0[2].w));
    if (r5.w != 0) break;
    r3.w = cb0[2].z * r1.w + r3.w;
    r7.xy = cb3[0].zw * r3.ww + cb3[0].xy;
    r7.xyzw = t5.Sample(s4_s, r7.xy).xyzw;
    r7.xyzw = r7.xyzw * cb3[1].xyzw + cb3[2].xyzw;
    r7.xyzw = r7.xyzw * r2.xyzw;
    r9.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r8.xyzw = float4(0,0,0,0);
    while (true) {
      r9.w = cmp((int)r8.w >= asint(cb2[0].x));
      if (r9.w != 0) break;
      r9.w = cb2[r8.w+33].x * r7.y;
      r10.x = (uint)r8.w << 2;
      r10.yzw = cb2[r10.x+2].xyz * r6.yyy;
      r10.yzw = r6.xxx * cb2[r10.x+1].xyz + r10.yzw;
      r10.yzw = r6.zzz * cb2[r10.x+3].xyz + r10.yzw;
      r10.yzw = cb2[r10.x+4].xyz + r10.yzw;
      r11.xyz = cb2[r8.w+41].xyz * r10.yzw;
      r11.xyz = floor(r11.xyz);
      r10.yzw = -r11.xyz + r10.yzw;
      r11.xyz = saturate(cb2[r8.w+37].xyz * r10.yzw);
      r12.xyz = float3(1,1,1) + -r10.yzw;
      r12.xyz = saturate(cb2[r8.w+37].xyz * r12.xyz);
      r11.xyz = r12.xyz * r11.xyz;
      r11.y = min(r11.y, r11.z);
      r11.x = min(r11.x, r11.y);
      r10.yzw = saturate(r10.yzw);
      r11.y = cmp((int)r8.w == 0);
      if (r8.w == 0) {
        r12.xyz = t6.Sample(s5_s, r10.yzw).xyz;
      }
      if (r11.y == 0) {
        r11.y = cmp((int)r8.w == 1);
        if (r11.y != 0) {
          r12.xyz = t7.Sample(s6_s, r10.yzw).xyz;
        }
        if (r11.y == 0) {
          r11.y = cmp((int)r8.w == 2);
          if (r11.y != 0) {
            r12.xyz = t8.Sample(s7_s, r10.yzw).xyz;
          }
          if (r11.y == 0) {
            r12.xyz = t9.Sample(s8_s, r10.yzw).xyz;
          }
        }
      }
      r10.yzw = cb2[r10.x+18].xyz * r12.yyy;
      r10.yzw = r12.xxx * cb2[r10.x+17].xyz + r10.yzw;
      r10.xyz = r12.zzz * cb2[r10.x+19].xyz + r10.yzw;
      r11.yzw = r10.xyz * r11.xxx;
      r8.xyz = r11.yzw * r9.www + r8.xyz;
      r10.xyz = r10.xyz * r9.www;
      r10.xyz = r10.xyz * r11.xxx;
      r9.xyz = r10.xyz * cb2[r8.w+33].yyy + r9.xyz;
      r9.w = cb2[r8.w+33].y * r11.x;
      r5.w = r11.x * cb2[r8.w+33].y + r5.w;
      r6.w = max(r9.w, r6.w);
      r8.w = (int)r8.w + 1;
    }
    r7.y = 0.00100000005 + r5.w;
    r10.xyz = r9.xyz / r7.yyy;
    r11.xyz = r8.xyz + r4.xyz;
    r10.xyz = r10.xyz + -r5.xyz;
    r10.xyz = r6.www * r10.xyz + r5.xyz;
    r11.xyz = -r7.xxx * r10.xyz + r11.xyz;
    r12.xyz = cb0[0].xyz + -r6.xyz;
    r12.xyz = float3(0,0,9.99999975e-005) + r12.xyz;
    r7.x = dot(r12.xyz, r12.xyz);
    r7.y = max(cb0[0].w, r7.x);
    r7.y = cb0[1].w / r7.y;
    r7.x = rsqrt(r7.x);
    r12.xyz = r12.xyz * r7.xxx;
    r4.xyz = r7.yyy * r12.xyz + r11.xyz;
    r11.xyz = cb0[2].zzz * r4.xyz;
    r7.xy = cb3[5].zw * r3.ww + cb3[5].xy;
    r7.xy = t5.SampleLevel(s4_s, r7.xy, 0).xy;
    r7.xy = r7.xy * cb3[6].xy + cb3[7].xy;
    r7.xy = r7.xy * abs(r3.xy);
    r7.xy = cb0[2].xy * r7.xy;
    r7.x = min(r7.x, r7.y);
    r7.x = r7.x * cb3[14].w + cb3[15].x;
    r11.xyz = r11.xyz * float3(0.5,0.5,0.5) + r10.xyz;
    r12.xyz = cb0[2].zzz * r11.xyz;
    r13.xyz = cb0[2].zzz * r11.xyz + r6.xyz;
    r5.xyz = r4.xyz * cb0[2].zzz + r10.xyz;
    r7.y = dot(r12.xyz, r12.xyz);
    r7.y = rsqrt(r7.y);
    r10.xyz = r12.xyz * r7.yyy;
    r10.xyz = r10.xyz * r7.xxx + r6.xyz;
    r10.xyz = cb1[70].xyz + r10.xyz;
    r14.xyz = cb1[1].xyw * r10.yyy;
    r10.xyw = r10.xxx * cb1[0].xyw + r14.xyz;
    r10.xyz = r10.zzz * cb1[2].xyw + r10.xyw;
    r10.xyz = cb1[3].xyw + r10.xyz;
    r10.xy = r10.xy / r10.zz;
    r14.xy = cmp(float2(1,1) >= abs(r10.xy));
    r7.y = r14.y ? r14.x : 0;
    if (r7.y != 0) {
      r14.xy = r10.xy * cb1[66].xy + cb1[66].wz;
      r7.y = t0.SampleLevel(s0_s, r14.xy, 0).x;
      r8.w = r7.y * cb1[65].x + cb1[65].y;
      r7.y = r7.y * cb1[65].z + -cb1[65].w;
      r7.y = 1 / r7.y;
      r7.y = r8.w + r7.y;
      r8.w = r10.z + -r7.y;
      r8.w = cmp(abs(r8.w) < cb0[3].x);
      if (r8.w != 0) {
        r10.xy = r10.xy * r7.yy;
        r10.yzw = cb1[49].xyz * r10.yyy;
        r10.xyz = r10.xxx * cb1[48].xyz + r10.yzw;
        r10.xyz = r7.yyy * cb1[50].xyz + r10.xyz;
        r10.xyz = cb1[51].xyz + r10.xyz;
        r14.xyz = t1.SampleLevel(s0_s, r14.xy, 0).xyz;
        r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.y = dot(r10.xyz, r14.xyz);
        r8.w = dot(r14.xyz, r12.xyz);
        r9.w = dot(r14.xyz, r6.xyz);
        r10.x = r9.w + r7.x;
        r10.y = dot(r14.xyz, r13.xyz);
        r10.xy = r10.xy + -r7.yx;
        r10.y = r10.y + -r7.y;
        r10.z = cmp(r10.x >= 0);
        r10.w = cmp(0 >= r10.y);
        r10.z = r10.w ? r10.z : 0;
        r8.w = cmp(r8.w < 0);
        r8.w = r8.w ? r10.z : 0;
        if (r8.w != 0) {
          r8.w = dot(r11.xyz, r14.xyz);
          r12.xyz = r8.www * r14.xyz;
          r11.xyz = -r8.www * r14.xyz + r11.xyz;
          r12.xyz = r12.xyz * r7.zzz;
          r11.xyz = cb3[16].xxx * r11.xyz + -r12.xyz;
          r10.zw = float2(131,937) * r3.ww;
          r10.zw = frac(r10.zw);
          r7.z = 6.28299999 * r10.z;
          r8.w = dot(r11.xyz, r11.xyz);
          r8.w = sqrt(r8.w);
          r10.z = 1 / r8.w;
          r12.xyz = r11.xyz * r10.zzz;
          r10.z = dot(r12.xyz, r14.xyz);
          r10.w = log2(r10.w);
          r10.w = cb3[15].w * r10.w;
          r10.w = exp2(r10.w);
          r10.w = cb3[15].z * r10.w;
          r10.z = -r10.z * r10.z + 1;
          r10.z = sqrt(r10.z);
          r10.z = 1 + -r10.z;
          r10.z = -r10.w * r10.z + 1;
          r10.w = -r10.z * r10.z + 1;
          r10.w = sqrt(r10.w);
          r11.w = cmp(abs(r12.z) < 0.999000013);
          r15.xyz = r11.www ? float3(1,0,0) : float3(0,1,0);
          r16.xyz = r15.xyz * r12.yzx;
          r15.xyz = r15.zxy * r12.zxy + -r16.xyz;
          r11.w = dot(r15.xyz, r15.xyz);
          r11.w = rsqrt(r11.w);
          r15.xyz = r15.xyz * r11.www;
          r16.xyz = r15.yzx * r12.zxy;
          r16.xyz = r12.yzx * r15.zxy + -r16.xyz;
          sincos(r7.z, r17.x, r18.x);
          r7.z = r18.x * r10.w;
          r10.w = r17.x * r10.w;
          r16.xyz = r16.xyz * r10.www;
          r15.xyz = r15.xyz * r7.zzz + r16.xyz;
          r12.xyz = r12.xyz * r10.zzz + r15.xyz;
          r12.xyz = r12.xyz * r8.www;
          r5.xyz = r3.zzz ? r12.xyz : r11.xyz;
          r7.x = r9.w + -r7.x;
          r7.x = r7.x + -r7.y;
          r7.xyz = r7.xxx * r14.xyz + r6.xyz;
          r11.xyz = cb0[2].zzz * r5.xyz;
          r13.xyz = r11.xyz * float3(0.100000001,0.100000001,0.100000001) + r7.xyz;
          r3.w = cb3[15].y + r3.w;
        } else {
          r7.xy = cmp(r10.yx < float2(0,0));
          r7.x = r7.y ? r7.x : 0;
          r3.w = r7.x ? 1.10000002 : r3.w;
        }
      }
    }
    r7.xyz = cb3[10].xyz * r7.www + cb3[9].xyz;
    r10.xyz = cb3[12].yzx * r7.www + cb3[11].yzx;
    r11.xyz = cb3[14].xyz * r7.www + cb3[13].xyz;
    r11.xyz = r10.zxy * r3.www + r11.xyz;
    sincos(r11.xyz, r11.xyz, r12.xyz);
    r11.xyz = r11.yzx * r10.xyz;
    r10.xyz = r10.yzx * r12.zxy + -r11.xyz;
    r7.xyz = r10.xyz * r7.xyz;
    r6.xyz = r7.xyz * cb0[2].zzz + r13.xyz;
    r4.w = (int)r4.w + 1;
  }
  o1.xyz = r5.xyz;
  o0.w = r3.w;
  o0.xyz = cb0[1].xyz + r6.xyz;
  o1.w = r1.w;
  return;
}
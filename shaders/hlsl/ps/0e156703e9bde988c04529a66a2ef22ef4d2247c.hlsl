// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r2.xyz = t2.Sample(s2_s, v0.xy).xyw;
  r2.xyz = r2.xyz * cb2[3].xyw + cb2[4].xyw;
  r3.xyz = cb2[8].xyz;
  r4.xyz = r1.xyz;
  r5.xyz = r0.xyz;
  r2.w = r0.w;
  r3.w = 0;
  while (true) {
    r4.w = cmp((int)r3.w >= asint(cb0[2].w));
    if (r4.w != 0) break;
    r2.w = cb0[2].z * r1.w + r2.w;
    r6.xy = cb2[0].zw * r2.ww + cb2[0].xy;
    r6.xyz = t3.Sample(s3_s, r6.xy).xyw;
    r6.xyz = r6.xyz * cb2[1].xyw + cb2[2].xyw;
    r6.xyz = r6.xyz * r2.xyz;
    r7.xyz = float3(0,0,0);
    r8.xyz = float3(0,0,0);
    r4.w = 0;
    r5.w = 0;
    r6.w = 0;
    while (true) {
      r7.w = cmp((int)r6.w >= asint(cb1[0].x));
      if (r7.w != 0) break;
      r7.w = cb1[r6.w+33].x * r6.y;
      r8.w = (uint)r6.w << 2;
      r9.xyz = cb1[r8.w+2].xyz * r5.yyy;
      r9.xyz = r5.xxx * cb1[r8.w+1].xyz + r9.xyz;
      r9.xyz = r5.zzz * cb1[r8.w+3].xyz + r9.xyz;
      r9.xyz = cb1[r8.w+4].xyz + r9.xyz;
      r10.xyz = cb1[r6.w+41].xyz * r9.xyz;
      r10.xyz = floor(r10.xyz);
      r9.xyz = -r10.xyz + r9.xyz;
      r10.xyz = saturate(cb1[r6.w+37].xyz * r9.xyz);
      r11.xyz = float3(1,1,1) + -r9.xyz;
      r11.xyz = saturate(cb1[r6.w+37].xyz * r11.xyz);
      r10.xyz = r11.xyz * r10.xyz;
      r9.w = min(r10.y, r10.z);
      r9.w = min(r10.x, r9.w);
      r9.xyz = saturate(r9.xyz);
      r10.x = cmp((int)r6.w == 0);
      if (r6.w == 0) {
        r10.yzw = t4.Sample(s4_s, r9.xyz).xyz;
      }
      if (r10.x == 0) {
        r10.x = cmp((int)r6.w == 1);
        if (r10.x != 0) {
          r10.yzw = t5.Sample(s5_s, r9.xyz).xyz;
        }
        if (r10.x == 0) {
          r10.x = cmp((int)r6.w == 2);
          if (r10.x != 0) {
            r10.yzw = t6.Sample(s6_s, r9.xyz).xyz;
          }
          if (r10.x == 0) {
            r10.yzw = t7.Sample(s7_s, r9.xyz).xyz;
          }
        }
      }
      r9.xyz = cb1[r8.w+18].xyz * r10.zzz;
      r9.xyz = r10.yyy * cb1[r8.w+17].xyz + r9.xyz;
      r9.xyz = r10.www * cb1[r8.w+19].xyz + r9.xyz;
      r10.xyz = r9.xyz * r9.www;
      r7.xyz = r10.xyz * r7.www + r7.xyz;
      r9.xyz = r9.xyz * r7.www;
      r9.xyz = r9.xyz * r9.www;
      r8.xyz = r9.xyz * cb1[r6.w+33].yyy + r8.xyz;
      r7.w = cb1[r6.w+33].y * r9.w;
      r4.w = r9.w * cb1[r6.w+33].y + r4.w;
      r5.w = max(r7.w, r5.w);
      r6.w = (int)r6.w + 1;
    }
    r6.y = 0.00100000005 + r4.w;
    r9.xyz = r8.xyz / r6.yyy;
    r10.xyz = r7.xyz + r3.xyz;
    r9.xyz = r9.xyz + -r4.xyz;
    r9.xyz = r5.www * r9.xyz + r4.xyz;
    r6.xyw = -r6.xxx * r9.xyz + r10.xyz;
    r10.xyz = cb0[0].xyz + -r5.xyz;
    r10.xyz = float3(0,0,9.99999975e-005) + r10.xyz;
    r7.w = dot(r10.xyz, r10.xyz);
    r8.w = max(cb0[0].w, r7.w);
    r8.w = cb0[1].w / r8.w;
    r7.w = rsqrt(r7.w);
    r10.xyz = r10.xyz * r7.www;
    r3.xyz = r8.www * r10.xyz + r6.xyw;
    r6.xyw = cb0[2].zzz * r3.xyz;
    r6.xyw = r6.xyw * float3(0.5,0.5,0.5) + r9.xyz;
    r6.xyw = cb0[2].zzz * r6.xyw + r5.xyz;
    r4.xyz = r3.xyz * cb0[2].zzz + r9.xyz;
    r9.xyz = cb2[10].xyz * r6.zzz + cb2[9].xyz;
    r10.xyz = cb2[12].yzx * r6.zzz + cb2[11].yzx;
    r11.xyz = cb2[14].xyz * r6.zzz + cb2[13].xyz;
    r11.xyz = r10.zxy * r2.www + r11.xyz;
    sincos(r11.xyz, r11.xyz, r12.xyz);
    r11.xyz = r11.yzx * r10.xyz;
    r10.xyz = r10.yzx * r12.zxy + -r11.xyz;
    r9.xyz = r10.xyz * r9.xyz;
    r5.xyz = r9.xyz * cb0[2].zzz + r6.xyw;
    r3.w = (int)r3.w + 1;
  }
  o1.xyz = r4.xyz;
  o0.w = r2.w;
  o0.xyz = cb0[1].xyz + r5.xyz;
  o1.w = r1.w;
  return;
}
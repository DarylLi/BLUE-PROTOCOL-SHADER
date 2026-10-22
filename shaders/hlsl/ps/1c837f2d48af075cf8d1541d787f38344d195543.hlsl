// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[198];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r0.z = 255 * r1.w;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r0.z = cmp((int)r0.z == 10);
  if (r0.z != 0) {
    r0.z = t2.SampleLevel(s0_s, r0.xy, 0).x;
    r0.w = r0.z * cb1[65].x + cb1[65].y;
    r0.z = r0.z * cb1[65].z + -cb1[65].w;
    r0.z = 1 / r0.z;
    r0.z = r0.w + r0.z;
    r2.xy = max(cb0[1].xy, r0.xy);
    r2.xy = min(cb0[1].zw, r2.xy);
    r0.w = t7.SampleLevel(s4_s, r2.xy, 0).x;
    r0.w = r0.w * 100 + -r0.z;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r2.xy = -cb1[129].xy + v0.xy;
      r2.xy = r2.xy * cb1[130].zw + float2(-0.5,-0.5);
      r2.xy = v0.ww * r2.xy;
      r2.xy = r2.xy * r0.zz;
      r3.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
      r4.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = rsqrt(r1.w);
      r5.xyz = r3.xyz * r1.www;
      r2.z = 0.0799999982 * r1.z;
      r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
      r4.xyz = r1.xxx * r4.xyz + r2.zzz;
      r4.xyz = r4.xyz * cb1[137].www + cb1[137].xyz;
      r2.xy = float2(2,-2) * r2.xy;
      r2.yzw = cb1[49].xyz * r2.yyy;
      r2.xyz = r2.xxx * cb1[48].xyz + r2.yzw;
      r2.xyz = r0.zzz * cb1[50].xyz + r2.xyz;
      r2.xyz = cb1[51].xyz + r2.xyz;
      r2.xyz = -cb1[67].xyz + r2.xyz;
      r0.z = dot(r2.xyz, r2.xyz);
      r0.z = rsqrt(r0.z);
      r2.xyz = r2.xyz * r0.zzz;
      r0.z = dot(-r2.xyz, r5.xyz);
      r1.x = saturate(r0.z);
      r1.z = cmp(0 < cb2[0].y);
      if (r1.z != 0) {
        r0.z = r0.z + r0.z;
        r2.xyz = r0.zzz * r5.xyz + r2.xyz;
        r0.z = -r1.y * r1.y + 1;
        r1.z = sqrt(r0.z);
        r1.z = r1.y * r1.y + r1.z;
        r0.z = r1.z * r0.z;
        r2.xyz = -r3.xyz * r1.www + r2.xyz;
        r2.xyz = r0.zzz * r2.xyz + r5.xyz;
        r0.z = max(0.00100000005, r1.y);
        r0.z = log2(r0.z);
        r0.z = -r0.z * 1.20000005 + 1;
        r1.z = -1 + cb2[0].x;
        r0.z = r1.z + -r0.z;
        r2.xyz = t0.SampleLevel(s1_s, r2.xyz, r0.z).xyz;
        r2.xyz = cb1[187].xyz * r2.xyz;
        r0.z = cmp(cb2[0].z < 1);
        r3.xyz = r0.zzz ? float3(0,0,0) : r2.xyz;
        r2.xyz = r0.zzz ? r2.xyz : 0;
      } else {
        r3.xyz = float3(0,0,0);
        r2.xyz = float3(0,0,0);
      }
      r0.z = saturate(r1.y * cb1[197].x + cb1[197].y);
      r1.z = r0.z * -2 + 3;
      r0.z = r0.z * r0.z;
      r0.z = r1.z * r0.z;
      r1.z = min(0, cb1[197].z);
      r1.z = -1 + r1.z;
      r0.z = r0.z * r1.z + 1;
      r2.xyz = r2.xyz * r0.zzz + r3.xyz;
      r2.xyz = cb1[135].yyy * r2.xyz;
      r3.xyzw = t6.Sample(s3_s, r0.xy).xyzw;
      r0.x = 1 + -r3.w;
      r0.xyz = r2.xyz * r0.xxx + r3.xyz;
      r1.xy = t1.SampleLevel(s2_s, r1.xy, 0).xy;
      r1.z = saturate(50 * r4.y);
      r1.y = r1.z * r1.y;
      r1.xyz = r4.xyz * r1.xxx + r1.yyy;
      r0.xyz = r1.xyz * r0.xyz;
      r0.w = saturate(0.0199999996 * r0.w);
      r0.xyz = r0.xyz * r0.www;
      r0.w = 1;
    } else {
      r0.xyzw = float4(0,0,0,-1);
    }
  } else {
    r0.xyzw = float4(0,0,0,-1);
  }
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  o0.xyz = r0.xyz;
  o0.w = 1;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[68];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t2.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.xy = cmp((int2)r0.xx != int2(0,14));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyz = cb0[49].xyz * v0.www;
    r0.xyz = v0.zzz * cb0[48].xyz + r0.xyz;
    r0.xyz = cb0[50].xyz + r0.xyz;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = r0.xyz * r0.www;
    r0.w = t0.SampleLevel(s0_s, v0.xy, 0).x;
    r1.w = r0.w * cb0[65].x + cb0[65].y;
    r0.w = r0.w * cb0[65].z + -cb0[65].w;
    r0.w = 1 / r0.w;
    r0.w = r1.w + r0.w;
    r0.xyz = r0.xyz * r0.www + cb0[67].xyz;
    r2.xyz = r0.xyz * cb1[1].xxx + cb1[4].xyz;
    r3.xyz = float3(-16,-16,-16) + r2.xyz;
    r0.w = max(abs(r3.y), abs(r3.z));
    r0.w = max(abs(r3.x), r0.w);
    r0.w = 15.5 + -r0.w;
    r0.w = saturate(r0.w / cb1[5].w);
    r3.xyz = cb0[67].xyz * cb1[1].xxx + cb1[4].xyz;
    r2.xyz = r3.xyz + -r2.xyz;
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = cmp(64 < r1.w);
    r0.w = r1.w ? r0.w : 1;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r2.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
      r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r1.w = dot(r2.xyz, r2.xyz);
      r1.w = rsqrt(r1.w);
      r2.xyz = r2.xyz * r1.www;
      r1.w = dot(r1.xyz, r2.xyz);
      r1.w = r1.w + r1.w;
      r1.xyz = r2.xyz * -r1.www + r1.xyz;
      r1.w = cmp(cb1[1].w < 9.99999975e-005);
      if (r1.w != 0) {
        r3.xy = float2(1,1);
      }
      if (r1.w == 0) {
        r4.xyz = asint(cb1[0].xyz);
        r0.xyz = r0.xyz * cb1[1].xxx + r4.xyz;
        r2.xyz = r2.xyz * float3(0.25,0.25,0.25) + r0.xyz;
        r4.xyz = float3(-16,-16,-16) + r2.xyz;
        r1.w = max(abs(r4.y), abs(r4.z));
        r1.w = max(abs(r4.x), r1.w);
        r1.w = cmp(16 >= r1.w);
        if (r1.w != 0) {
          r2.xyz = float3(0.03125,0.03125,0.03125) * r2.xyz;
          r2.x = t3.SampleLevel(s1_s, r2.xyz, 0).x;
        }
        r1.w = r1.w ? r2.x : 0.400000006;
        r2.x = r1.w + r1.w;
        r2.x = saturate(r2.x / cb1[2].w);
        r2.x = log2(r2.x);
        r2.x = cb1[2].x * r2.x;
        r2.x = exp2(r2.x);
        r2.x = min(1, r2.x);
        r1.w = saturate(1 + -r1.w);
        r0.xyz = r1.xyz * float3(0.433333337,0.433333337,0.433333337) + r0.xyz;
        r4.xyz = r0.xyz;
        r2.z = r1.w;
        r2.w = 0.433333337;
        r3.zw = float2(0.899999976,1.40129846e-045);
        while (true) {
          r4.w = cmp((int)r3.w >= 6);
          if (r4.w != 0) break;
          r5.xyz = float3(-16,-16,-16) + r4.xyz;
          r4.w = max(abs(r5.y), abs(r5.z));
          r4.w = max(abs(r5.x), r4.w);
          r4.w = cmp(16 >= r4.w);
          if (r4.w != 0) {
            r5.xyz = float3(0.03125,0.03125,0.03125) * r4.xyz;
            r5.x = t3.SampleLevel(s1_s, r5.xyz, 0).x;
          }
          r5.x = saturate(1 + -r5.x);
          r4.w = r4.w ? r5.x : 0.600000024;
          r2.z = r4.w * r3.z + r2.z;
          r2.w = 1.29999995 * r2.w;
          r4.xyz = r1.xyz * r2.www + r4.xyz;
          r3.z = 0.899999976 * r3.z;
          r3.w = (int)r3.w + 1;
        }
        r0.x = saturate(0.100000001 * cb1[2].y);
        r0.x = r0.x * 0.399999976 + 0.899999976;
        r0.x = cb1[2].z * r0.x;
        r0.x = r2.z * r0.x;
        r0.x = 0.213420302 * r0.x;
        r0.x = log2(r0.x);
        r0.x = cb1[2].y * r0.x;
        r0.x = exp2(r0.x);
        r2.y = 1 + -r0.x;
        r0.xy = max(float2(0,0), r2.xy);
        r0.xy = float2(-1,-1) + r0.xy;
        r3.xy = cb1[1].ww * r0.xy + float2(1,1);
      }
      r1.xyzw = -cb1[5].xyxy + r3.xyxy;
      o0.xyzw = r0.wwww * r1.xyzw + cb1[5].xyxy;
    } else {
      o0.xyzw = cb1[5].xyxy;
    }
  } else {
    o0.xyzw = cb1[5].xyxy;
  }
  return;
}
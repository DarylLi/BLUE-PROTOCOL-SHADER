// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.SampleLevel(s2_s, v0.xy, 0).xyzw;
  r0.w = cmp(r0.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(1,0,0,0);
    return;
  }
  r1.xyz = t1.SampleLevel(s1_s, v0.xy, 0).xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r2.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[0].xyzw + r1.xyzw;
  r4.xyzw = r2.zzzz * cb1[2].xyzw + r3.xyzw;
  r4.xyzw = cb1[3].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r2.yw = min(float2(1,1), r4.xy);
  r4.xyz = max(float3(-1,-1,-1), r4.xyz);
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r5.xyzw = r2.zzzz * cb1[2].xyzw + r1.xyzw;
  r5.xyzw = cb1[3].xyzw + r5.xyzw;
  r5.xyz = r5.xyz / r5.www;
  r2.yw = min(r5.xy, r2.yw);
  r4.xyz = max(r5.xyz, r4.xyz);
  r5.xyzw = cb1[1].xyzw * r0.yyyy;
  r6.xyzw = r2.xxxx * cb1[0].xyzw + r5.xyzw;
  r7.xyzw = r2.zzzz * cb1[2].xyzw + r6.xyzw;
  r7.xyzw = cb1[3].xyzw + r7.xyzw;
  r7.xyz = r7.xyz / r7.www;
  r0.yw = min(r7.xy, r2.yw);
  r2.xyw = max(r7.xyz, r4.xyz);
  r4.xyzw = r0.xxxx * cb1[0].xyzw + r5.xyzw;
  r5.xyzw = r2.zzzz * cb1[2].xyzw + r4.xyzw;
  r5.xyzw = cb1[3].xyzw + r5.xyzw;
  r5.xyz = r5.xyz / r5.www;
  r0.xy = min(r5.xy, r0.yw);
  r2.xyz = max(r5.xyz, r2.xyw);
  r3.xyzw = r0.zzzz * cb1[2].xyzw + r3.xyzw;
  r3.xyzw = cb1[3].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r0.xy = min(r3.xy, r0.xy);
  r2.xyz = max(r3.xyz, r2.xyz);
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.xy = min(r1.xy, r0.xy);
  r1.xyz = max(r2.xyz, r1.xyz);
  r2.xyzw = r0.zzzz * cb1[2].xyzw + r6.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.xy = min(r2.xy, r0.xy);
  r1.xyz = max(r2.xyz, r1.xyz);
  r2.xyzw = r0.zzzz * cb1[2].xyzw + r4.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.xw = min(r2.xy, r0.xy);
  r1.xyz = max(r2.xyz, r1.xyz);
  r0.yz = r1.yx;
  r0.xyzw = saturate(r0.xyzw * float4(0.5,-0.5,0.5,-0.5) + float4(0.5,0.5,0.5,0.5));
  r2.xyzw = cb0[1].xyxy * r0.xyzw;
  r1.xy = r0.zw * cb0[1].xy + -r2.xy;
  r1.xy = float2(0.5,0.5) * r1.xy;
  r1.x = max(r1.x, r1.y);
  r1.x = log2(r1.x);
  r1.x = ceil(r1.x);
  r1.x = max(cb0[0].z, r1.x);
  r1.y = -1 + r1.x;
  r1.y = max(0, r1.y);
  r1.w = exp2(-r1.y);
  r2.xyzw = r2.xyzw * r1.wwww;
  r2.zw = ceil(r2.zw);
  r2.xy = floor(r2.xy);
  r2.xy = r2.zw + -r2.xy;
  r2.xy = cmp(float2(4,4) >= r2.xy);
  r1.w = r2.y ? r2.x : 0;
  r1.x = r1.w ? r1.y : r1.x;
  r0.zw = r0.zw + -r0.xy;
  r0.zw = cb0[0].xy * r0.zw;
  r0.xy = cb0[0].xy * r0.xy;
  r2.x = t0.SampleLevel(s0_s, r0.xy, r1.x).x;
  r3.xyzw = r0.zwzw * float4(0,0.333333343,0.333333343,0.333333343) + r0.xyxy;
  r2.y = t0.SampleLevel(s0_s, r3.xy, r1.x).x;
  r4.xyzw = r0.zwzw * float4(0,0.666666687,0,1) + r0.xyxy;
  r2.z = t0.SampleLevel(s0_s, r4.xy, r1.x).x;
  r2.w = t0.SampleLevel(s0_s, r4.zw, r1.x).x;
  r2.xyzw = min(float4(1,1,1,1), r2.xyzw);
  r4.xyzw = r0.zwzw * float4(0.333333343,0,0.333333343,0.666666687) + r0.xyxy;
  r5.x = t0.SampleLevel(s0_s, r4.xy, r1.x).x;
  r5.y = t0.SampleLevel(s0_s, r3.zw, r1.x).x;
  r5.z = t0.SampleLevel(s0_s, r4.zw, r1.x).x;
  r3.xyzw = r0.zwzw * float4(0.333333343,1,0.666666687,0) + r0.xyxy;
  r5.w = t0.SampleLevel(s0_s, r3.xy, r1.x).x;
  r2.xyzw = min(r5.xyzw, r2.xyzw);
  r3.x = t0.SampleLevel(s0_s, r3.zw, r1.x).x;
  r4.xyzw = r0.zwzw * float4(0.666666687,0.333333343,0.666666687,0.666666687) + r0.xyxy;
  r3.y = t0.SampleLevel(s0_s, r4.xy, r1.x).x;
  r3.z = t0.SampleLevel(s0_s, r4.zw, r1.x).x;
  r4.xyzw = r0.zwzw * float4(0.666666687,1,1,0) + r0.xyxy;
  r3.w = t0.SampleLevel(s0_s, r4.xy, r1.x).x;
  r2.xyzw = min(r3.xyzw, r2.xyzw);
  r3.x = t0.SampleLevel(s0_s, r4.zw, r1.x).x;
  r4.xyzw = r0.zwzw * float4(1,0.333333343,1,0.666666687) + r0.xyxy;
  r3.y = t0.SampleLevel(s0_s, r4.xy, r1.x).x;
  r3.z = t0.SampleLevel(s0_s, r4.zw, r1.x).x;
  r0.xy = r0.zw * float2(1,1) + r0.xy;
  r3.w = t0.SampleLevel(s0_s, r0.xy, r1.x).x;
  r0.xyzw = min(r3.xyzw, r2.xyzw);
  r0.xy = min(r0.xz, r0.yw);
  r0.x = min(r0.x, r0.y);
  r0.x = cmp(r1.z >= r0.x);
  o0.xyzw = r0.xxxx ? float4(1,1,1,1) : 0;
  return;
}
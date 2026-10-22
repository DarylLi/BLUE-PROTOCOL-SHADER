// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(1,1) / cb0[3].xy;
  r0.zw = v0.xy * cb0[3].xy + float2(0.5,0.5);
  r1.xy = trunc(r0.zw);
  r0.zw = -r1.xy + r0.zw;
  r1.xy = r1.xy * r0.xy;
  r1.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw;
  r1.xw = float2(10000,10000) * r1.xw;
  r1.yz = r1.zy * float2(10000,10000) + -r1.wx;
  r1.xy = r0.zz * r1.yz + r1.wx;
  r0.z = r1.y + -r1.x;
  r1.z = r0.w * r0.z + r1.x;
  r2.xyzw = v0.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r2.xyzw = r2.xyzw / cb0[4].xyxy;
  r2.xyzw = r2.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r3.xyzw = cmp(float4(0,0,0,0) < r2.zwzw);
  r4.xyzw = cmp(r2.zwzw < float4(0,0,0,0));
  r3.xyzw = (int4)-r3.xyzw + (int4)r4.xyzw;
  r3.xyzw = (int4)r3.xyzw;
  r4.xyzw = saturate(-cb0[0].zzzz + abs(r2.zwzw));
  r3.xyzw = r4.xyzw * r3.xyzw;
  r2.xyzw = -r3.xyzw * cb0[0].xxyy + r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r2.xyzw = r2.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r2.xyzw = cb0[3].zwzw * r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r3.xyzw = trunc(r2.xyzw);
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r0.xyzw = r3.xyzw * r0.xyxy;
  r3.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r0.xyzw = t0.Gather(s0_s, r0.zw).xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r3.xw = float2(10000,10000) * r3.xw;
  r3.yz = r3.zy * float2(10000,10000) + -r3.wx;
  r3.xy = r2.xx * r3.yz + r3.wx;
  r1.w = r3.y + -r3.x;
  r1.x = r2.y * r1.w + r3.x;
  r0.xw = float2(10000,10000) * r0.xw;
  r0.yz = r0.zy * float2(10000,10000) + -r0.wx;
  r0.xy = r2.zz * r0.yz + r0.wx;
  r0.y = r0.y + -r0.x;
  r1.y = r2.w * r0.y + r0.x;
  r0.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.159301758,0.159301758,0.159301758) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyz = r0.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
  r0.xyz = r0.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
  r1.xyz = rcp(r1.xyz);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(78.84375,78.84375,78.84375) * r0.xyz;
  o0.xyz = exp2(r0.xyz);
  o0.w = 1;
  return;
}
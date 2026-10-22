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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v0.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r0.xyzw = r0.xyzw / cb0[4].xyxy;
  r0.xyzw = r0.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r1.xyzw = cmp(float4(0,0,0,0) < r0.zwzw);
  r2.xyzw = cmp(r0.zwzw < float4(0,0,0,0));
  r1.xyzw = (int4)-r1.xyzw + (int4)r2.xyzw;
  r1.xyzw = (int4)r1.xyzw;
  r2.xyzw = saturate(-cb0[0].zzzz + abs(r0.zwzw));
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = -r1.xyzw * cb0[0].xxyy + r0.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r0.xyzw = r0.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r0.xyzw = cb0[3].zwzw * r0.xyzw;
  r0.xyzw = r0.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r1.xyzw = trunc(r0.xyzw);
  r0.xyzw = -r1.xyzw + r0.xyzw;
  r2.xy = float2(1,1) / cb0[3].xy;
  r1.xyzw = r2.xyxy * r1.xyzw;
  r3.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Gather(s0_s, r1.zw).xyzw;
  r2.zw = r3.xw * r3.xw;
  r3.xy = r3.zy * r3.zy + -r2.wz;
  r2.zw = r0.xx * r3.xy + r2.wz;
  r0.x = r2.w + -r2.z;
  r3.x = r0.y * r0.x + r2.z;
  r0.xy = r1.xw * r1.xw;
  r1.xy = r1.zy * r1.zy + -r0.yx;
  r0.xy = r0.zz * r1.xy + r0.yx;
  r0.y = r0.y + -r0.x;
  r3.y = r0.w * r0.y + r0.x;
  r0.xy = v0.xy * cb0[3].xy + float2(0.5,0.5);
  r0.zw = trunc(r0.xy);
  r0.xy = r0.xy + -r0.zw;
  r0.zw = r0.zw * r2.xy;
  r1.xyzw = t0.Gather(s0_s, r0.zw).xyzw;
  r0.zw = r1.xw * r1.xw;
  r1.xy = r1.zy * r1.zy + -r0.wz;
  r0.xz = r0.xx * r1.xy + r0.wz;
  r0.z = r0.z + -r0.x;
  r3.z = r0.y * r0.z + r0.x;
  r0.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r3.xyz);
  r0.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r3.xyz);
  r0.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r3.xyz);
  o0.xyz = float3(12.5,12.5,12.5) * r0.xyz;
  o0.w = 1;
  return;
}
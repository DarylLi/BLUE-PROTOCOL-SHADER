// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
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

  r0.xy = (uint2)v1.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = r0.xy * cb0[3].zw + cb0[10].xy;
  r0.x = r0.y * 543.309998 + r0.x;
  r0.x = sin(r0.x);
  r0.x = 493013 * r0.x;
  r0.x = frac(r0.x);
  r0.x = r0.x * cb0[11].x + cb0[11].y;
  r0.yz = float2(1,1) / cb0[3].xy;
  r1.xy = v0.xy * cb0[3].xy + float2(0.5,0.5);
  r1.zw = trunc(r1.xy);
  r1.xy = r1.xy + -r1.zw;
  r1.zw = r1.zw * r0.yz;
  r2.xyzw = t0.Gather(s0_s, r1.zw).xyzw;
  r1.zw = r2.xw * r2.xw;
  r2.xy = r2.zy * r2.zy + -r1.wz;
  r1.xz = r1.xx * r2.xy + r1.wz;
  r0.w = r1.z + -r1.x;
  r1.z = r1.y * r0.w + r1.x;
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
  r3.xyzw = r3.xyzw * r0.yzyz;
  r4.xyzw = t0.Gather(s0_s, r3.xy).xyzw;
  r3.xyzw = t0.Gather(s0_s, r3.zw).xyzw;
  r0.yz = r4.xw * r4.xw;
  r4.xy = r4.zy * r4.zy + -r0.zy;
  r0.yz = r2.xx * r4.xy + r0.zy;
  r0.z = r0.z + -r0.y;
  r1.x = r2.y * r0.z + r0.y;
  r0.yz = r3.xw * r3.xw;
  r2.xy = r3.zy * r3.zy + -r0.zy;
  r0.yz = r2.zz * r2.xy + r0.zy;
  r0.z = r0.z + -r0.y;
  r1.y = r2.w * r0.z + r0.y;
  r0.xyz = r1.xyz * r0.xxx;
  o0.xyz = sqrt(r0.xyz);
  o0.w = 1;
  return;
}
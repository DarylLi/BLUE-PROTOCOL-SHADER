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

  r0.xy = float2(1,1) / cb0[3].xy;
  r0.zw = v0.xy * cb0[3].xy + float2(0.5,0.5);
  r1.xy = trunc(r0.zw);
  r0.zw = -r1.xy + r0.zw;
  r1.xy = r1.xy * r0.xy;
  r1.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r1.xw = r1.xw * r1.xw;
  r1.yz = r1.zy * r1.zy + -r1.wx;
  r1.xy = r0.zz * r1.yz + r1.wx;
  r0.z = r1.y + -r1.x;
  r0.z = r0.w * r0.z + r1.x;
  o0.z = sqrt(r0.z);
  r1.xyzw = v0.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r1.xyzw = r1.xyzw / cb0[4].xyxy;
  r1.xyzw = r1.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r2.xyzw = cmp(float4(0,0,0,0) < r1.zwzw);
  r3.xyzw = cmp(r1.zwzw < float4(0,0,0,0));
  r2.xyzw = (int4)-r2.xyzw + (int4)r3.xyzw;
  r2.xyzw = (int4)r2.xyzw;
  r3.xyzw = saturate(-cb0[0].zzzz + abs(r1.zwzw));
  r2.xyzw = r3.xyzw * r2.xyzw;
  r1.xyzw = -r2.xyzw * cb0[0].xxyy + r1.xyzw;
  r1.xyzw = r1.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r1.xyzw = r1.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r1.xyzw = cb0[3].zwzw * r1.xyzw;
  r1.xyzw = r1.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = trunc(r1.xyzw);
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r0.xyzw = r2.xyzw * r0.xyxy;
  r2.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r0.xyzw = t0.Gather(s0_s, r0.zw).xyzw;
  r2.xw = r2.xw * r2.xw;
  r2.yz = r2.zy * r2.zy + -r2.wx;
  r2.xy = r1.xx * r2.yz + r2.wx;
  r1.x = r2.y + -r2.x;
  r1.x = r1.y * r1.x + r2.x;
  o0.x = sqrt(r1.x);
  r0.xw = r0.xw * r0.xw;
  r0.yz = r0.zy * r0.zy + -r0.wx;
  r0.xy = r1.zz * r0.yz + r0.wx;
  r0.y = r0.y + -r0.x;
  r0.x = r1.w * r0.y + r0.x;
  o0.y = sqrt(r0.x);
  o0.w = 1;
  return;
}
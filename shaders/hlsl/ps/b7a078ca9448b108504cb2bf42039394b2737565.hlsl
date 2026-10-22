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
  r3.xyzw = t0.Gather(s0_s, r1.zw).xyzw;
  r1.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r2.zw = r3.xw * r3.xw;
  r3.xy = r3.zy * r3.zy + -r2.wz;
  r2.zw = r0.zz * r3.xy + r2.wz;
  r0.z = r2.w + -r2.z;
  r3.y = r0.w * r0.z + r2.z;
  r0.zw = v0.xy * cb0[3].xy + float2(0.5,0.5);
  r2.zw = trunc(r0.zw);
  r0.zw = -r2.zw + r0.zw;
  r2.xy = r2.zw * r2.xy;
  r2.xyzw = t0.Gather(s0_s, r2.xy).xyzw;
  r2.xw = r2.xw * r2.xw;
  r2.yz = r2.zy * r2.zy + -r2.wx;
  r2.xy = r0.zz * r2.yz + r2.wx;
  r0.z = r2.y + -r2.x;
  r3.z = r0.w * r0.z + r2.x;
  r0.z = max(r3.y, r3.z);
  r1.xw = r1.xw * r1.xw;
  r1.yz = r1.zy * r1.zy + -r1.wx;
  r0.xw = r0.xx * r1.yz + r1.wx;
  r0.w = r0.w + -r0.x;
  r3.x = r0.y * r0.w + r0.x;
  r0.x = max(r3.x, r0.z);
  r0.x = 1 + -r0.x;
  r0.x = max(3.05175781e-005, r0.x);
  r0.x = rcp(r0.x);
  o0.xyz = r3.xyz * r0.xxx;
  o0.w = 1;
  return;
}
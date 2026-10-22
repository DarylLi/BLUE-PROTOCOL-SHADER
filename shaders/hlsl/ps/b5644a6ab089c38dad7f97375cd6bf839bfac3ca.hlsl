// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asuint(cb0[3].x) < 2);
  if (r0.x != 0) {
    r0.xyzw = cb0[0].xyzw + v0.xyxy;
    r0.xyzw = min(cb0[2].xyxy, r0.xyzw);
    r0.x = t0.Sample(s0_s, r0.xy).x;
    r0.y = t0.Sample(s0_s, r0.zw).x;
    r1.xyzw = cb0[1].xyzw + v0.xyxy;
    r1.xyzw = min(cb0[2].xyxy, r1.xyzw);
    r0.z = t0.Sample(s0_s, r1.xy).x;
    r0.w = t0.Sample(s0_s, r1.zw).x;
    r0.yz = min(r0.xz, r0.yw);
    r0.y = min(r0.y, r0.z);
    r0.z = cmp(asint(cb0[3].x) == 1);
    oDepth = r0.z ? r0.y : r0.x;
  } else {
    r0.xyzw = cb0[1].zwzw * float4(-0.25,-0.25,0.25,0.25) + v0.xyxy;
    r0.xyzw = min(cb0[2].xyxy, r0.xyzw);
    r0.x = t0.Sample(s0_s, r0.xy).x;
    r1.xyzw = cb0[1].zwzw * float4(-0.25,0.25,0.25,-0.25) + v0.xyxy;
    r1.xyzw = min(cb0[2].xyxy, r1.xyzw);
    r0.y = t0.Sample(s0_s, r1.xy).x;
    r1.x = t0.Sample(s0_s, r1.zw).x;
    r0.z = t0.Sample(s0_s, r0.zw).x;
    r0.w = max(r0.x, r0.y);
    r1.y = max(r1.x, r0.z);
    r0.w = max(r1.y, r0.w);
    r0.x = min(r0.x, r0.y);
    r0.y = min(r1.x, r0.z);
    r0.x = min(r0.x, r0.y);
    r0.yz = cb1[132].xy * cb0[2].zw;
    r0.yz = cb1[130].zw * r0.yz;
    r0.yz = (uint2)r0.yz;
    r0.yz = (uint2)r0.yz;
    r0.yz = v0.xy * r0.yz;
    r0.yz = (uint2)r0.yz;
    r1.xy = (int2)r0.yz & int2(-2,-2);
    r0.yz = (int2)r0.yz + (int2)-r1.xy;
    r1.x = (int)-r0.y + 1;
    r0.y = r0.z ? r1.x : r0.y;
    r0.y = cmp(0 < (uint)r0.y);
    oDepth = r0.y ? r0.w : r0.x;
  }
  o0.xyzw = float4(0,0,0,0);
  return;
}
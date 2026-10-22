// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r1.xyzw = float4(0,0,0,1);
  r2.x = 0;
  while (true) {
    r2.y = cmp((int)r2.x >= 4);
    if (r2.y != 0) break;
    r3.xyzw = t0.Load(r0.xy, r2.x).xyzw;
    r2.y = dot(r3.xyz, float3(0.298999995,0.587000012,0.114));
    r2.y = 1 + r2.y;
    r2.y = rcp(r2.y);
    r3.xyz = r3.xyz * r2.yyy;
    r1.xyzw = r3.xyzw + r1.xyzw;
    r2.x = (int)r2.x + 1;
  }
  r0.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
  r1.x = dot(r1.xyz, float3(-0.0747499987,-0.146750003,-0.0285));
  r1.x = 1 + r1.x;
  r1.x = rcp(r1.x);
  o0.xyz = r1.xxx * r0.xyz;
  o0.w = r0.w;
  return;
}
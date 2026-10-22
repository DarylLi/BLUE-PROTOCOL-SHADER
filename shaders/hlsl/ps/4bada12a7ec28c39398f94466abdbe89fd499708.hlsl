// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * float2(64,16) + float2(-0.5,-0.5);
  r0.xz = r0.xx * float2(0.0190476216,0.0190476216) + float2(-0.200000003,-0.049999997);
  r0.y = 0.0666666701 * r0.y;
  r1.y = sqrt(r0.y);
  r0.y = 12.262105 * r0.z;
  r0.x = max(0, r0.x);
  r0.z = max(1, abs(r0.y));
  r0.z = 1 / r0.z;
  r0.w = min(1, abs(r0.y));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.z = r0.w * 0.0208350997 + -0.0851330012;
  r1.z = r0.w * r1.z + 0.180141002;
  r1.z = r0.w * r1.z + -0.330299497;
  r0.w = r0.w * r1.z + 0.999866009;
  r1.z = r0.z * r0.w;
  r1.z = r1.z * -2 + 1.57079637;
  r1.w = cmp(1 < abs(r0.y));
  r0.y = min(1, r0.y);
  r0.y = cmp(r0.y < -r0.y);
  r1.z = r1.w ? r1.z : 0;
  r0.z = r0.z * r0.w + r1.z;
  r0.y = r0.y ? -r0.z : r0.z;
  r1.x = 0.666666687 * r0.y;
  r0.yzw = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}
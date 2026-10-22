// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * float3(31,31,31) + float3(0.5,0.5,0.5);
  r0.xyz = (uint3)r0.xyz;
  r0.yz = (uint2)r0.zy << int2(10,5);
  r0.y = (int)r0.z + (int)r0.y;
  r0.x = (int)r0.x + (int)r0.y;
  r1.x = (int)r0.x & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.x << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 5;
  r1.z = (uint)r0.x >> 10;
  r1.w = 0;
  r0.xyz = t0.Load(r1.xyzw).xyz;
  r0.xyz = float3(1.66666669e-005,1.66666669e-005,1.66666669e-005) * r0.xyz;
  r1.xyz = float3(-0.5,-0.5,-0.5) + v1.xyz;
  r1.xyz = r1.xyz + r1.xyz;
  r1.xyz = cmp(float3(0.995000005,0.995000005,0.995000005) < abs(r1.xyz));
  r0.w = r1.x ? 0.000000 : 0;
  r0.w = (int)-r1.y + (int)r0.w;
  r0.w = (int)-r1.z + (int)r0.w;
  r0.w = cmp((int)r0.w >= 2);
  o0.xyz = r0.www ? float3(0,0,16.6666679) : r0.xyz;
  o0.w = 1;
  return;
}
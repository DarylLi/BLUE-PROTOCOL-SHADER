// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyy * float3(2,2,2) + float3(-1,-1,-1);
  r0.xyz = r0.xyz * float3(20,19.1067295,5.91040421) + float3(0,-5.91040421,19.1067295);
  r0.xyz = float3(1,1,1) / r0.xyz;
  r1.xyz = float3(-2,-1.79999995,-1.29999995) * r0.xyz;
  r0.xyz = float3(2,0.199999988,0.699999988) * r0.xyz;
  r0.xyz = max(r1.xyz, r0.xyz);
  r0.y = min(r0.y, r0.z);
  r0.x = saturate(min(r0.x, r0.y));
  r0.yzw = v0.xyy * float3(40,38.213459,11.8208084) + float3(-20,-25.0171337,13.1963253);
  r1.xyz = r0.yzw * r0.xxx + float3(0,0.800000012,0.300000012);
  r0.xyz = r0.yzw * r0.xxx + float3(0,1.04999995,-0.550000012);
  r2.xyz = float3(0,-0.25,0.850000024) + -r1.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = abs(r2.x);
  r1.w = max(abs(r2.z), r0.w);
  r1.w = 1 / r1.w;
  r2.w = min(abs(r2.z), r0.w);
  r0.w = cmp(r0.w < abs(r2.z));
  r1.w = r2.w * r1.w;
  r2.w = r1.w * r1.w;
  r3.x = r2.w * 0.0208350997 + -0.0851330012;
  r3.x = r2.w * r3.x + 0.180141002;
  r3.x = r2.w * r3.x + -0.330299497;
  r2.w = r2.w * r3.x + 0.999866009;
  r3.x = r2.w * r1.w;
  r3.x = r3.x * -2 + 1.57079637;
  r0.w = r0.w ? r3.x : 0;
  r0.w = r1.w * r2.w + r0.w;
  r3.xy = cmp(r2.yx < -r2.yx);
  r1.w = r3.y ? -3.141593 : 0;
  r0.w = r1.w + r0.w;
  r1.w = min(-r2.z, r2.x);
  r1.w = cmp(r1.w < -r1.w);
  r2.x = max(-r2.z, r2.x);
  r2.x = cmp(r2.x >= -r2.x);
  r1.w = r1.w ? r2.x : 0;
  r0.w = r1.w ? -r0.w : r0.w;
  r4.y = r0.w * 0.159154937 + 0.5;
  r0.w = abs(r2.y) * -0.0187292993 + 0.0742610022;
  r0.w = r0.w * abs(r2.y) + -0.212114394;
  r0.w = r0.w * abs(r2.y) + 1.57072878;
  r1.w = 1 + -abs(r2.y);
  r1.w = sqrt(r1.w);
  r2.x = r1.w * r0.w;
  r2.x = r2.x * -2 + 3.14159274;
  r2.x = r3.x ? r2.x : 0;
  r0.w = r0.w * r1.w + r2.x;
  r0.w = 1.57079637 + -r0.w;
  r4.x = r0.w * 0.318309873 + 0.5;
  r0.w = t0.SampleLevel(s0_s, r4.xy, 0).x;
  r1.w = dot(r0.xyz, r0.xyz);
  r2.x = sqrt(r1.w);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = max(0.00999999978, r2.x);
  r1.w = 0.00999999978 / r1.w;
  r0.w = r1.w * r0.w;
  r0.w = 100 * r0.w;
  r2.xyz = float3(0.5,1,1) * r1.xyz;
  r1.xyz = cmp(float3(0,0,0) < r1.xyz);
  r1.xyz = r1.xyz ? float3(1,1,1) : float3(-1,-1,-1);
  r2.xyz = cmp(abs(r2.yzz) < abs(r2.xxy));
  r3.x = (int)r1.x;
  r4.y = (int)r1.y;
  r1.z = (int)r1.z;
  r3.yz = float2(0,0);
  r4.xz = float2(0,0);
  r3.xyz = r2.xxx ? r3.xyz : r4.xyz;
  r1.w = r2.x ? r2.y : r2.z;
  r1.xy = float2(0,0);
  r1.xyz = r1.www ? r3.xyz : r1.xyz;
  r0.x = saturate(dot(r1.xyz, r0.xyz));
  r0.y = r0.w * r0.x;
  r0.x = r0.w * r0.x + 0.219999999;
  r0.x = r0.y / abs(r0.x);
  o0.xyz = float3(1.01099992,1.01099992,1.01099992) * r0.xxx;
  o0.w = 0;
  return;
}
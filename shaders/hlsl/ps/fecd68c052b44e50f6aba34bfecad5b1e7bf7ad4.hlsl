// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.x * 6.28318548 + -3.14159274;
  sincos(r0.x, r0.x, r1.x);
  r0.y = 3.14159274 * v0.y;
  sincos(r0.y, r2.x, r3.x);
  r1.y = r2.x * r1.x;
  r1.x = r2.x * r0.x;
  r1.z = r3.x;
  r0.x = cb0[1].x * r3.x;
  r0.xy = r1.yx / r0.xx;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r1.xyz * r0.zzz;
  r3.xyz = cb0[12].xyz + r1.yxz;
  r3.xyz = cb1[67].xyz + -r3.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[6].x + -r0.z;
  r0.w = max(abs(r2.x), abs(r2.y));
  r0.w = 1 / r0.w;
  r1.z = min(abs(r2.x), abs(r2.y));
  r0.w = r1.z * r0.w;
  r1.z = r0.w * r0.w;
  r1.w = r1.z * 0.0208350997 + -0.0851330012;
  r1.w = r1.z * r1.w + 0.180141002;
  r1.w = r1.z * r1.w + -0.330299497;
  r1.z = r1.z * r1.w + 0.999866009;
  r1.w = r1.z * r0.w;
  r1.w = r1.w * -2 + 1.57079637;
  r2.w = cmp(abs(r2.y) < abs(r2.x));
  r1.w = r2.w ? r1.w : 0;
  r0.w = r0.w * r1.z + r1.w;
  r1.zw = cmp(r2.yz < -r2.yz);
  r1.z = r1.z ? -3.141593 : 0;
  r0.w = r1.z + r0.w;
  r1.z = min(r2.x, r2.y);
  r1.z = cmp(r1.z < -r1.z);
  r2.x = max(r2.x, r2.y);
  r2.x = cmp(r2.x >= -r2.x);
  r1.z = r1.z ? r2.x : 0;
  r0.w = r1.z ? -r0.w : r0.w;
  r0.w = 3.14159274 + r0.w;
  r2.x = 0.159154937 * r0.w;
  r0.w = abs(r2.z) * -0.0187292993 + 0.0742610022;
  r0.w = r0.w * abs(r2.z) + -0.212114394;
  r0.w = r0.w * abs(r2.z) + 1.57072878;
  r1.z = 1 + -abs(r2.z);
  r1.z = sqrt(r1.z);
  r2.z = r1.z * r0.w;
  r2.z = r2.z * -2 + 3.14159274;
  r1.w = r1.w ? r2.z : 0;
  r0.w = r0.w * r1.z + r1.w;
  r2.y = 0.318309873 * r0.w;
  r1.zw = cmp(float2(0,0) < cb0[1].zw);
  r1.xy = r1.ww ? r2.xy : r1.yx;
  r0.xy = r1.zz ? r0.xy : r1.xy;
  r0.w = cb2[5].x * cb1[142].z;
  r1.x = cb2[5].w * r0.w;
  r1.y = cb2[6].x * r0.w;
  r1.xy = cb2[6].yz * r0.xy + r1.xy;
  r1.zw = cb2[8].xx * r0.xy;
  r0.xy = cb2[10].zw * r0.xy;
  r0.w = cb2[6].w * cb1[142].z;
  r1.zw = r0.ww * cb2[7].zw + r1.zw;
  r0.w = t0.Sample(s0_s, r1.zw).x;
  r0.w = cb2[8].y * r0.w;
  r1.z = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = cb2[8].z * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r1.xy = r1.xy + r0.ww;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r1.y = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r1.y = cb2[8].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = cb2[9].x * r1.y;
  r1.x = r1.x ? 0 : r1.y;
  r1.y = cb2[9].y * cb1[142].z;
  r0.xy = r1.yy * cb2[10].xy + r0.xy;
  r0.xy = r0.xy + r0.ww;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.y = cmp(0 >= r0.x);
  r0.x = log2(r0.x);
  r0.x = cb2[8].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb2[11].x * r0.x;
  r0.x = r0.y ? 0 : r0.x;
  r0.x = r1.x + r0.x;
  r0.y = cb2[11].y * r0.x;
  r1.xyz = -r0.xxx * cb2[11].yyy + cb2[4].xyz;
  r0.xyw = cb2[11].zzz * r1.xyz + r0.yyy;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.x = dot(r0.xyw, float3(0.333299994,0.333299994,0.333299994));
  r0.x = -cb0[6].y + r0.x;
  r0.y = 0.200000003 * cb0[6].x;
  r0.y = saturate(r0.z / r0.y);
  r0.x = r0.y * r0.x;
  o0.xyzw = cb0[1].yyyy * r0.xxxx + cb0[6].yyyy;
  return;
}
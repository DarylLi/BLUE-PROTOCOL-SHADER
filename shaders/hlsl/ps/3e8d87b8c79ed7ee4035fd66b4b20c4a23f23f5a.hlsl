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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -v1.xy * cb0[7].xy + float2(1,1);
  r1.xyzw = cb0[9].xyzw * r0.yyyy;
  r0.xyzw = r0.xxxx * cb0[8].xyzw + r1.xyzw;
  r0.xyzw = cb0[10].xyzw * float4(9.99999997e-007,9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.xyzw;
  r0.xyzw = cb0[11].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[2].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[4].xyzw + r1.xyzw;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[6].x + -r0.x;
  r1.xyzw = cb0[5].xyzw + r1.xyzw;
  r0.yzw = r1.yzx / r1.www;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r1.xyz = r1.xxx * r0.yzw;
  r1.w = max(abs(r1.x), abs(r1.y));
  r1.w = 1 / r1.w;
  r2.x = min(abs(r1.x), abs(r1.y));
  r1.w = r2.x * r1.w;
  r2.x = r1.w * r1.w;
  r2.y = r2.x * 0.0208350997 + -0.0851330012;
  r2.y = r2.x * r2.y + 0.180141002;
  r2.y = r2.x * r2.y + -0.330299497;
  r2.x = r2.x * r2.y + 0.999866009;
  r2.y = r2.x * r1.w;
  r2.y = r2.y * -2 + 1.57079637;
  r2.z = cmp(abs(r1.y) < abs(r1.x));
  r2.y = r2.z ? r2.y : 0;
  r1.w = r1.w * r2.x + r2.y;
  r2.xy = cmp(r1.yz < -r1.yz);
  r2.x = r2.x ? -3.141593 : 0;
  r1.w = r2.x + r1.w;
  r2.x = min(r1.x, r1.y);
  r2.x = cmp(r2.x < -r2.x);
  r1.x = max(r1.x, r1.y);
  r1.x = cmp(r1.x >= -r1.x);
  r1.x = r1.x ? r2.x : 0;
  r1.x = r1.x ? -r1.w : r1.w;
  r1.x = 3.14159274 + r1.x;
  r1.w = abs(r1.z) * -0.0187292993 + 0.0742610022;
  r1.w = r1.w * abs(r1.z) + -0.212114394;
  r1.w = r1.w * abs(r1.z) + 1.57072878;
  r1.z = 1 + -abs(r1.z);
  r1.z = sqrt(r1.z);
  r2.x = r1.w * r1.z;
  r2.x = r2.x * -2 + 3.14159274;
  r2.x = r2.y ? r2.x : 0;
  r1.z = r1.w * r1.z + r2.x;
  r1.xy = float2(0.159154937,0.318309873) * r1.xz;
  r1.zw = cmp(float2(0,0) < cb0[1].zw);
  r1.xy = r1.ww ? r1.xy : r0.zy;
  r0.w = cb0[1].x * r0.w;
  r0.yz = r0.zy / r0.ww;
  r0.yz = r0.yz * float2(0.5,0.5) + float2(0.5,0.5);
  r0.yz = r1.zz ? r0.yz : r1.xy;
  r0.w = cb2[5].x * cb1[142].z;
  r1.x = cb2[5].w * r0.w;
  r1.y = cb2[6].x * r0.w;
  r1.xy = cb2[6].yz * r0.yz + r1.xy;
  r1.zw = cb2[8].xx * r0.yz;
  r0.yz = cb2[10].zw * r0.yz;
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
  r0.yz = r1.yy * cb2[10].xy + r0.yz;
  r0.yz = r0.yz + r0.ww;
  r0.y = t1.Sample(s1_s, r0.yz).x;
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[8].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = cb2[11].x * r0.y;
  r0.y = r0.z ? 0 : r0.y;
  r0.y = r1.x + r0.y;
  r0.z = cb2[11].y * r0.y;
  r1.xyz = -r0.yyy * cb2[11].yyy + cb2[4].xyz;
  r0.yzw = cb2[11].zzz * r1.xyz + r0.zzz;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.y = dot(r0.yzw, float3(0.333299994,0.333299994,0.333299994));
  r0.y = -cb0[6].y + r0.y;
  r0.z = 0.200000003 * cb0[6].x;
  r0.x = saturate(r0.x / r0.z);
  r0.x = r0.x * r0.y;
  o0.xyzw = cb0[1].yyyy * r0.xxxx + cb0[6].yyyy;
  return;
}
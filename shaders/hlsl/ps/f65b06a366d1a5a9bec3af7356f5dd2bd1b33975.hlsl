// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[7].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[6].xyzw + r0.xyzw;
  r1.xy = cb1[132].zw * v0.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.xyzw = r1.xxxx * cb0[8].xyzw + r0.xyzw;
  r0.xyzw = cb0[9].xyzw + r0.xyzw;
  r0.xyz = r0.yzx / r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.yzw = r0.xyz * r0.www;
  r0.w = max(abs(r1.y), abs(r1.z));
  r0.w = 1 / r0.w;
  r2.x = min(abs(r1.y), abs(r1.z));
  r0.w = r2.x * r0.w;
  r2.x = r0.w * r0.w;
  r2.y = r2.x * 0.0208350997 + -0.0851330012;
  r2.y = r2.x * r2.y + 0.180141002;
  r2.y = r2.x * r2.y + -0.330299497;
  r2.x = r2.x * r2.y + 0.999866009;
  r2.y = r2.x * r0.w;
  r2.y = r2.y * -2 + 1.57079637;
  r2.z = cmp(abs(r1.z) < abs(r1.y));
  r2.y = r2.z ? r2.y : 0;
  r0.w = r0.w * r2.x + r2.y;
  r2.xy = cmp(r1.zw < -r1.zw);
  r2.x = r2.x ? -3.141593 : 0;
  r0.w = r2.x + r0.w;
  r2.x = min(r1.y, r1.z);
  r2.x = cmp(r2.x < -r2.x);
  r1.y = max(r1.y, r1.z);
  r1.y = cmp(r1.y >= -r1.y);
  r1.y = r1.y ? r2.x : 0;
  r0.w = r1.y ? -r0.w : r0.w;
  r0.w = 3.14159274 + r0.w;
  r3.x = 0.159154937 * r0.w;
  r0.w = abs(r1.w) * -0.0187292993 + 0.0742610022;
  r0.w = r0.w * abs(r1.w) + -0.212114394;
  r0.w = r0.w * abs(r1.w) + 1.57072878;
  r1.y = 1 + -abs(r1.w);
  r1.y = sqrt(r1.y);
  r1.z = r1.y * r0.w;
  r1.z = r1.z * -2 + 3.14159274;
  r1.z = r2.y ? r1.z : 0;
  r0.w = r0.w * r1.y + r1.z;
  r3.y = 0.318309873 * r0.w;
  r1.yz = cmp(float2(0,0) < cb0[1].zw);
  r1.zw = r1.zz ? r3.xy : r0.yx;
  r0.z = cb0[1].x * r0.z;
  r0.xy = r0.yx / r0.zz;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.xy = r1.yy ? r0.xy : r1.zw;
  r0.z = cb2[5].x * cb1[142].z;
  r2.x = cb2[5].w * r0.z;
  r2.y = cb2[6].x * r0.z;
  r0.zw = cb2[6].yz * r0.xy + r2.xy;
  r1.yz = cb2[8].xx * r0.xy;
  r0.xy = cb2[10].zw * r0.xy;
  r1.w = cb2[6].w * cb1[142].z;
  r1.yz = r1.ww * cb2[7].zw + r1.yz;
  r1.y = t1.Sample(s1_s, r1.yz).x;
  r1.y = cb2[8].y * r1.y;
  r1.z = log2(r1.y);
  r1.y = cmp(0 >= r1.y);
  r1.z = cb2[8].z * r1.z;
  r1.z = exp2(r1.z);
  r1.y = r1.y ? 0 : r1.z;
  r0.zw = r1.yy + r0.zw;
  r0.z = t2.Sample(s2_s, r0.zw).x;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb2[8].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb2[9].x * r0.w;
  r0.z = r0.z ? 0 : r0.w;
  r0.w = cb2[9].y * cb1[142].z;
  r0.xy = r0.ww * cb2[10].xy + r0.xy;
  r0.xy = r0.xy + r1.yy;
  r0.x = t2.Sample(s2_s, r0.xy).x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[8].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = cb2[11].x * r0.y;
  r0.x = r0.x ? 0 : r0.y;
  r0.x = r0.z + r0.x;
  r0.y = cb2[11].y * r0.x;
  r0.xzw = -r0.xxx * cb2[11].yyy + cb2[4].xyz;
  r0.xyz = cb2[11].zzz * r0.xzw + r0.yyy;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = dot(r0.xyz, float3(0.333299994,0.333299994,0.333299994));
  r0.x = -cb0[10].y + r0.x;
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * cb1[46].xyzw + r2.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r0.yzw = cb1[67].xyz + -r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = cb0[10].x + -r0.y;
  r0.z = 0.200000003 * cb0[10].x;
  r0.y = saturate(r0.y / r0.z);
  r0.x = r0.y * r0.x;
  r0.x = cb0[1].y * r0.x + cb0[10].y;
  r0.zw = sqrt(r0.xx);
  r0.xy = float2(1,1);
  r1.xyzw = r0.wwww + -r0.yyww;
  o0.xyzw = cb0[10].zzzz * r1.xyzw + r0.xyzw;
  return;
}
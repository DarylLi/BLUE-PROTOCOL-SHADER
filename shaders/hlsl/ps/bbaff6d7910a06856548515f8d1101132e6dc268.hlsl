// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<uint4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.zw = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = float2(20,20) * r0.xy;
  r0.xy = frac(r0.xy);
  r0.xy = float2(-0.25,-0.300000012) + r0.xy;
  r0.zw = cb1[132].zw * r0.zw;
  r0.zw = cb1[132].xy * r0.zw;
  r0.zw = trunc(r0.zw);
  r1.xy = (int2)r0.zw;
  r1.zw = float2(0,0);
  r0.z = t0.Load(r1.xyz).y;
  r0.z = (uint)r0.z;
  r1.xy = float2(0.00999999978,0.100000001) * r0.zz;
  r1.zw = cmp(r0.xx < float2(0.166666672,0.333333343));
  r0.w = r1.w ? r1.y : r0.z;
  r0.w = r1.z ? r1.x : r0.w;
  r0.w = trunc(r0.w);
  r0.w = (int)r0.w;
  r1.x = (int)r0.w & 0x80000000;
  r0.w = max((int)-r0.w, (int)r0.w);
  r0.w = (uint)r0.w % 10;
  r1.y = -(int)r0.w;
  r0.w = r1.x ? r1.y : r0.w;
  r0.w = (int)r0.w;
  r1.x = 1 + r0.w;
  r0.w = 0.015625 * r0.w;
  r1.x = r1.x * 0.015625 + -r0.w;
  r2.yz = float2(6,2.5) * r0.xy;
  r1.y = trunc(r2.y);
  r1.y = r0.x * 6 + -r1.y;
  r0.xy = r0.xy * float2(6,2.5) + float2(-1.5,-0.5);
  r0.xy = cmp(float2(1.5,0.5) >= abs(r0.xy));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.x ? 1.000000 : 0;
  r2.x = r1.y * r1.x + r0.w;
  r0.y = t1.SampleLevel(s0_s, r2.xz, 0).x;
  r0.y = cmp(0.5 < r0.y);
  r0.y = r0.y ? 1.000000 : 0;
  r1.xyz = r0.zzz * float3(0.00390625,0.00390625,0.00390625) + float3(-48.3406219,-64.3406219,-29.3406219);
  r0.z = min(1, r0.z);
  r1.w = -72.4656219;
  r2.xz = r1.xx * r1.xw;
  r2.y = 5251.2666;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r0.w);
  r3.xyz = r1.ywy * r1.yww;
  r1.xyz = r1.zwz * r1.zww;
  r0.w = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r0.w);
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r0.w);
  r1.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r2.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r2.xyz * float3(0.649999976,0.649999976,0.649999976) + r1.xyz;
  r2.xyz = -r0.zzz * r1.xyz + r0.yyy;
  r0.yzw = r1.xyz * r0.zzz;
  r1.xyz = r0.xxx * r2.xyz + r0.yzw;
  r0.xyz = r1.xyz * r0.yzw;
  r1.xyz = float3(1.5,1.5,1.5) * r0.xyz;
  r0.xyz = -r0.xyz * float3(1.5,1.5,1.5) + cb2[1].xyz;
  r0.xyz = cb2[2].xxx * r0.xyz + r1.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}
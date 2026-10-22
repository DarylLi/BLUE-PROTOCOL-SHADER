// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[32];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v1.xy;
  r0.zw = (int2)r0.xy + asint(-cb0[30].xy);
  r0.zw = (uint2)r0.zw;
  r0.zw = cb0[31].zw * r0.zw;
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r1.xy = cmp(r0.zw >= float2(0,0));
  r1.x = r1.y ? r1.x : 0;
  r1.y = cmp(r0.w < 1);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = asuint(cb0[30].xy);
    r1.zw = cb0[31].xy * cb0[28].zw;
    r0.zw = r1.zw * r0.zw;
    r0.zw = r1.xy * cb0[28].zw + r0.zw;
    r1.x = t1.SampleLevel(s0_s, r0.zw, 0).w;
    r1.x = 255 * r1.x;
    r1.x = round(r1.x);
    r1.x = (uint)r1.x;
    r1.x = (int)r1.x & 15;
    r1.yz = cmp((int2)r1.xx == int2(5,9));
    r1.w = (int)r1.z | (int)r1.y;
    if (r1.w != 0) {
      r2.xy = t2.SampleLevel(s0_s, r0.zw, 0).xw;
      r3.xyzw = cmp((int4)r1.xxxx == int4(2,3,4,6));
      r1.w = (int)r3.y | (int)r3.x;
      r1.w = (int)r3.z | (int)r1.w;
      r1.y = (int)r1.y | (int)r1.w;
      r1.y = (int)r3.w | (int)r1.y;
      r3.xyzw = cmp((int4)r1.xxxx == int4(7,8,12,13));
      r1.x = (int)r1.y | (int)r3.x;
      r1.x = (int)r3.y | (int)r1.x;
      r1.x = (int)r3.z | (int)r1.x;
      r1.x = (int)r3.w | (int)r1.x;
      r1.x = (int)r1.z | (int)r1.x;
      r1.xy = (int2)r2.xy & (int2)r1.xx;
      r2.x = 10 * r1.y;
      r1.x = r1.x * 255 + 0.5;
      r1.y = (uint)r1.x;
      r2.yzw = r1.yyy ? float3(0.5,0.5,0.5) : float3(0.800000012,0.699999988,0.600000024);
      r3.xyzw = cmp((int4)r1.yyyy == int4(1,2,3,4));
      r2.yzw = r3.xxx ? float3(0.5,0,0) : r2.yzw;
      r2.yzw = r3.yyy ? float3(0,0.5,0) : r2.yzw;
      r2.yzw = r3.zzz ? float3(0,0,0.5) : r2.yzw;
      r2.yzw = r3.www ? float3(0.5,0,0.5) : r2.yzw;
      r3.xyzw = cmp((int4)r1.yyyy == int4(5,6,100,255));
      r2.yzw = r3.xxx ? float3(0,0.5,0.5) : r2.yzw;
      r2.yzw = r3.yyy ? float3(0.5,0.5,0) : r2.yzw;
      r2.yzw = r3.zzz ? float3(0,0.200000003,0) : r2.yzw;
      r2.yzw = r3.www ? float3(1,1,1) : r2.yzw;
      r3.xy = (int2)r0.xy ^ int2(8,8);
      r3.zw = max((int2)-r0.xy, (int2)r0.xy);
      r3.zw = (uint2)r3.zw >> int2(3,3);
      r4.xy = -(int2)r3.zw;
      r3.xy = r3.xy ? float2(-0,-0) : 0;
      r3.xy = r3.xy ? r4.xy : r3.zw;
      r3.xy = (uint2)r3.xy << int2(3,3);
      r3.yz = (int2)r0.xy + (int2)-r3.xy;
      r0.xy = cmp((uint2)r3.yz < int2(8,8));
      r0.x = r0.y ? r0.x : 0;
      r0.y = (uint)r1.y << 3;
      r3.x = (int)r3.y + (int)r0.y;
      r3.w = 0;
      r0.y = t4.Load(r3.xzw).x;
      r3.xyz = float3(1,1,1) + -r2.yzw;
      r3.xyz = r0.yyy * r3.xyz + r2.yzw;
      r2.yzw = r0.xxx ? r3.xyz : r2.yzw;
      r0.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
      r0.y = r0.x * cb1[65].x + cb1[65].y;
      r0.x = r0.x * cb1[65].z + -cb1[65].w;
      r0.x = 1 / r0.x;
      r0.x = r0.y + r0.x;
      r0.x = cb0[27].x / r0.x;
      r0.x = 1024 * r0.x;
      r1.xzw = float3(33,0,0);
      r0.y = t3.Load(r1.xyz).w;
      r0.x = r0.y * r0.x;
      r0.x = 3 * r0.x;
      r0.y = 0.5 * cb0[28].z;
      r0.x = r0.x / r0.y;
      r0.x = saturate(-4 + r0.x);
      r2.x = saturate(r2.x);
      r0.x = r2.x * r0.x;
      r0.xyz = r2.yzw * r0.xxx;
    } else {
      r0.xyz = float3(0.5,0.5,0.5);
    }
    o0.xyz = r0.xyz;
    o0.w = 0;
  } else {
    o0.xyzw = t5.Sample(s1_s, v0.xy).xyzw;
  }
  return;
}
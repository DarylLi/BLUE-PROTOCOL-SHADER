// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[135];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[54];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[39].zw * float2(0.125,0.125) + v0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r1.z = r0.w + r0.z;
  r0.z = cmp(cb0[31].w >= r1.z);
  if (r0.z != 0) {
    r0.zw = cb0[32].xy * v0.xy;
    r0.zw = (int2)r0.zw;
    r2.xyzw = t2.Sample(s1_s, r0.xy).xyzw;
    r0.w = (int)-r0.w + 0x00004000;
    r3.xy = (uint2)r0.zw;
    r0.z = dot(r3.xy, float2(0.0671105608,0.00583714992));
    r0.z = frac(r0.z);
    r0.z = 52.9829178 * r0.z;
    r0.z = frac(r0.z);
    r0.z = 3.14159274 * r0.z;
    sincos(r0.z, r3.x, r4.x);
    r4.y = r3.x;
    r0.zw = float2(1,-1) * cb0[49].xy;
    r3.y = dot(r4.xy, r0.zw);
    r3.x = dot(r4.yx, cb0[49].xy);
    r0.zw = r0.xy * cb1[134].xy + cb1[134].zw;
    r1.xy = r0.zw * r1.zz;
    r0.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.xyz = cb1[13].xyz * r0.yyy;
    r0.xyw = r0.xxx * cb1[12].xyz + r4.xyz;
    r0.xyz = r0.zzz * cb1[14].xyz + r0.xyw;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r0.xyz * r0.www;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyw = r1.xyz * r0.www;
    r3.z = 0;
    r4.xyz = r3.zyx * -r1.ywx;
    r4.xyz = r3.xzy * -r1.wxy + -r4.xyz;
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = rsqrt(r0.w);
    r4.xyz = r4.xyz * r0.www;
    r5.xyz = r4.yzx * -r1.wxy;
    r5.xyz = -r1.ywx * r4.zxy + -r5.xyz;
    r0.w = dot(r0.xyz, r4.xyz);
    r4.xyz = -r4.xyz * r0.www + r0.xyz;
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 9.99999997e-007 + r0.w;
    r4.w = 1 / r0.w;
    r5.x = dot(r4.xyz, r5.xyz);
    r5.x = r5.x * r4.w;
    r5.y = abs(r5.x) * -0.156582996 + 1.57079637;
    r5.z = 1 + -abs(r5.x);
    r5.z = sqrt(r5.z);
    r5.w = r5.y * r5.z;
    r6.x = cmp(r5.x >= 0);
    r5.y = -r5.y * r5.z + 3.14159274;
    r5.y = r6.x ? r5.w : r5.y;
    r5.y = -1.57079637 + r5.y;
    r4.x = dot(r4.xyz, -r1.xyw);
    r4.x = r4.x * r4.w;
    r4.y = -2 * r5.x;
    r2.x = -r2.x * 3.14159274 + -r5.y;
    r2.x = max(-1.57079637, r2.x);
    r2.y = r2.y * 3.14159274 + -r5.y;
    r2.y = min(1.57079637, r2.y);
    r2.xy = r5.yy + r2.xy;
    r0.w = 0.25 * r0.w;
    r4.z = r2.x * r4.y + r4.x;
    r2.x = r2.x * 2 + -r5.y;
    r2.x = cos(r2.x);
    r4.x = r2.y * r4.y + r4.x;
    r2.y = r2.y * 2 + -r5.y;
    r2.y = cos(r2.y);
    r2.xy = r4.zx + -r2.xy;
    r2.x = r2.x + r2.y;
    r0.w = r2.x * r0.w;
    r2.x = (uint)cb0[53].y;
    r2.x = cmp(1 < (uint)r2.x);
    if (r2.x != 0) {
      r3.w = -r3.x;
      r4.xyz = float3(1,-1,1) * r3.zxy;
      r4.xyz = r4.xyz * -r1.ywx;
      r3.xyz = r3.yzw * -r1.wxy + -r4.xyz;
      r2.x = dot(r3.xyz, r3.xyz);
      r2.x = rsqrt(r2.x);
      r3.xyz = r3.xyz * r2.xxx;
      r4.xyz = r3.yzx * -r1.wxy;
      r4.xyz = -r1.ywx * r3.zxy + -r4.xyz;
      r2.x = dot(r0.xyz, r3.xyz);
      r0.xyz = -r3.xyz * r2.xxx + r0.xyz;
      r2.x = dot(r0.xyz, r0.xyz);
      r2.x = sqrt(r2.x);
      r2.x = 9.99999997e-007 + r2.x;
      r2.y = 1 / r2.x;
      r3.x = dot(r0.xyz, r4.xyz);
      r3.x = r3.x * r2.y;
      r3.y = abs(r3.x) * -0.156582996 + 1.57079637;
      r3.z = 1 + -abs(r3.x);
      r3.z = sqrt(r3.z);
      r3.w = r3.y * r3.z;
      r4.x = cmp(r3.x >= 0);
      r3.y = -r3.y * r3.z + 3.14159274;
      r3.y = r4.x ? r3.w : r3.y;
      r3.y = -1.57079637 + r3.y;
      r0.x = dot(r0.xyz, -r1.xyw);
      r0.x = r0.x * r2.y;
      r0.y = -2 * r3.x;
      r0.z = -r2.z * 3.14159274 + -r3.y;
      r0.z = max(-1.57079637, r0.z);
      r0.z = r3.y + r0.z;
      r1.x = r2.w * 3.14159274 + -r3.y;
      r1.x = min(1.57079637, r1.x);
      r1.x = r3.y + r1.x;
      r1.y = 0.25 * r2.x;
      r1.w = r0.z * r0.y + r0.x;
      r0.z = r0.z * 2 + -r3.y;
      r0.z = cos(r0.z);
      r0.z = r1.w + -r0.z;
      r0.x = r1.x * r0.y + r0.x;
      r0.y = r1.x * 2 + -r3.y;
      r0.y = cos(r0.y);
      r0.x = r0.x + -r0.y;
      r0.x = r0.z + r0.x;
      r0.x = r1.y * r0.x + r0.w;
      r0.w = 0.5 * r0.x;
    }
    r0.x = 0.636619747 * r0.w;
    r0.y = saturate(r1.z * cb0[31].x + cb0[31].y);
    r0.z = -r0.w * 0.636619747 + 1;
    r0.x = r0.y * r0.z + r0.x;
  } else {
    r0.x = 1;
  }
  o0.xyzw = r0.xxxx;
  return;
}
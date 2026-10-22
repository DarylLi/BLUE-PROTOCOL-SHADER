// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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

  r0.xy = v0.zw * cb0[9].xy + cb0[9].zw;
  r0.zw = cb0[8].zw * r0.xy;
  r1.xy = float2(0.020833334,0.020833334) * r0.xy;
  r1.xy = frac(r1.xy);
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.xy = -r1.xy * float2(48,48) + r0.xy;
  r1.zw = cb0[8].zw * r1.xy;
  r2.x = t1.SampleLevel(s0_s, r0.zw, 0).x;
  r2.y = r2.x * cb1[65].x + cb1[65].y;
  r2.x = r2.x * cb1[65].z + -cb1[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.yzw = cb1[49].xyz * v0.www;
  r2.yzw = v0.zzz * cb1[48].xyz + r2.yzw;
  r2.yzw = cb1[50].xyz + r2.yzw;
  r2.xyz = r2.yzw * r2.xxx + cb1[67].xyz;
  r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r2.xyz;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cmp(float3(0.5,0.5,0.5) < r3.xyz);
  r3.xyz = r3.xyz ? float3(1,1,1) : 0;
  r2.w = dot(float3(1,1,1), r3.xyz);
  r2.w = (uint)r2.w;
  r2.w = (int)r2.w & 1;
  r2.w = (uint)r2.w;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * r2.xyz;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cmp(float3(0.5,0.5,0.5) < r3.xyz);
  r3.xyz = r3.xyz ? float3(1,1,1) : 0;
  r3.x = dot(float3(1,1,1), r3.xyz);
  r3.x = (uint)r3.x;
  r3.x = (int)r3.x & 1;
  r3.x = (uint)r3.x;
  r3.x = 0.300000012 * r3.x;
  r2.w = r2.w * 0.100000001 + r3.x;
  r2.xyz = float3(0.000199999995,0.000199999995,0.000199999995) * r2.xyz;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cmp(float3(0.5,0.5,0.5) < r2.xyz);
  r2.xyz = r2.xyz ? float3(1,1,1) : 0;
  r2.x = dot(float3(1,1,1), r2.xyz);
  r2.x = (uint)r2.x;
  r2.x = (int)r2.x & 1;
  r2.x = (uint)r2.x;
  r2.x = r2.x * 0.600000024 + r2.w;
  r2.y = 0.300000012 * r2.x;
  r2.zw = t0.SampleLevel(s0_s, r1.zw, 0).xy;
  r3.x = cmp(0 < r2.z);
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.z = cmp(0 < r0.z);
  if (r3.x == 0) {
    r3.yz = -cb0[9].zw + r1.xy;
    r3.yz = r3.yz / cb0[9].xy;
    r0.w = t1.SampleLevel(s0_s, r1.zw, 0).x;
    r4.xyz = cb1[123].xyw * r3.zzz;
    r4.xyz = r3.yyy * cb1[122].xyw + r4.xyz;
    r4.xyz = r0.www * cb1[124].xyw + r4.xyz;
    r4.xyz = cb1[125].xyw + r4.xyz;
    r1.zw = r4.xy / r4.zz;
    r1.zw = r3.yz + -r1.zw;
  } else {
    r1.zw = r2.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  }
  r3.yzw = r0.zzz ? float3(0.5,0.5,0.200000003) : float3(0.5,0.5,0.5);
  r2.xzw = -r2.xxx * float3(0.300000012,0.300000012,0.300000012) + r3.yzw;
  r2.xyz = r2.xzw * float3(0.449999988,0.449999988,0.449999988) + r2.yyy;
  r0.zw = -r1.xy + r0.xy;
  r2.w = dot(r0.zw, r0.zw);
  r2.w = sqrt(r2.w);
  r3.y = saturate(3 + -r2.w);
  r3.y = r3.y * -0.699999988 + 1;
  r4.xyz = r3.yyy * r2.xyz;
  r3.xzw = r3.xxx ? float3(1,1,0) : float3(0.699999988,0.699999988,0.699999988);
  r5.xy = cb0[9].xy * r1.zw;
  r2.x = dot(-r5.xy, -r5.xy);
  r2.x = rsqrt(r2.x);
  r6.xy = -r5.xy * r2.xx;
  r2.x = dot(r6.xy, r0.zw);
  r4.w = dot(r5.xy, r5.xy);
  r4.w = sqrt(r4.w);
  r2.x = r4.w + r2.x;
  r2.x = 0.125 * r2.x;
  r2.x = frac(r2.x);
  r2.x = r2.x * 2 + 1;
  r5.z = -r5.x;
  r5.x = dot(r5.yz, r5.yz);
  r5.x = rsqrt(r5.x);
  r5.xy = r5.yz * r5.xx;
  r0.z = dot(r5.xy, r0.zw);
  r0.z = saturate(r2.x + -abs(r0.z));
  r0.w = saturate(r4.w + -r2.w);
  r0.z = r0.z * r0.w;
  r2.xyz = -r2.yyz * r3.yyy + r3.zzw;
  r2.xyz = r0.zzz * r2.xyz + r4.xyz;
  r0.zw = -r1.zw * cb0[9].xy + r1.xy;
  r0.xy = r0.zw + -r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.xy = saturate(float2(4,2.5) + -r0.xx);
  r1.xyz = r3.xzw + -r2.yyz;
  r0.xzw = r0.xxx * r1.xyz + r2.xyz;
  o0.xyz = r0.yyy * -r0.zzw + r0.xzw;
  o0.w = 1;
  return;
}
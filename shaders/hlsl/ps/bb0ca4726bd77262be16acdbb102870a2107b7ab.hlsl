// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 3.00000119 * cb0[6].w;
  r1.x = 1.00000048;
  r1.yz = v0.xy * float2(1.5,-1.5) + float2(-0.75,0.75);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r1.xyz * r0.yyy;
  r1.xyz = cb0[8].xyz * -r0.xxx;
  r2.xyz = cb0[9].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb0[8].xyz + r2.xyz;
  r0.xyz = r0.www * cb0[10].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = float3(1,1,1) / r0.xyz;
  r3.xyz = -cb0[6].xyz * float3(0.5,0.5,0.5) + -r1.xyz;
  r3.xyz = r3.xyz * r2.xyz;
  r4.xyz = cb0[6].xyz * float3(0.5,0.5,0.5) + -r1.xyz;
  r4.xyz = r4.xyz * r2.xyz;
  r5.xyz = min(r4.xyz, r3.xyz);
  r3.xyz = max(r4.xyz, r3.xyz);
  r0.w = max(r5.y, r5.z);
  r0.w = max(r5.x, r0.w);
  r1.w = min(r3.y, r3.z);
  r1.w = min(r3.x, r1.w);
  r0.w = max(0, r0.w);
  r1.w = max(0, r1.w);
  r0.w = min(r1.w, r0.w);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -r2.w + r0.w;
  r2.w = 128 * r2.w;
  r2.w = frac(r2.w);
  r2.w = 1 + -r2.w;
  r0.w = r2.w * 0.0078125 + r0.w;
  r1.w = r2.w * 0.0078125 + r1.w;
  r3.xyz = r0.www * r0.xyz + r1.xyz;
  r4.xyz = r1.www * r0.xyz + r1.xyz;
  r3.xyz = -r4.xyz + r3.xyz;
  r3.xyz = r3.xyz / cb0[6].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r3.xyz = -cb0[6].xyz * float3(0.497500002,0.497500002,0.497500002) + -r1.xyz;
  r3.xyz = r3.xyz * r2.xyz;
  r4.xyz = cb0[6].xyz * float3(0.497500002,0.497500002,0.497500002) + -r1.xyz;
  r2.xyz = r4.xyz * r2.xyz;
  r4.xyz = min(r3.xyz, r2.xyz);
  r2.xyz = max(r3.xyz, r2.xyz);
  r1.w = max(r4.y, r4.z);
  r1.w = max(r4.x, r1.w);
  r2.y = min(r2.y, r2.z);
  r2.x = min(r2.x, r2.y);
  r1.w = max(0, r1.w);
  r2.x = max(0, r2.x);
  r1.w = min(r2.x, r1.w);
  r1.xyz = r1.www * r0.xyz + r1.xyz;
  r0.w = 128 * r0.w;
  r0.w = round(r0.w);
  r1.w = (int)r0.w;
  r1.xyz = r1.xyz / cb0[6].xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r0.xyz = r0.xyz / cb0[6].xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * r0.xyz;
  r0.w = -0.5 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = dot(abs(r2.xyz), cb0[7].xyz);
  r2.xyzw = float4(0,0,0,0);
  r3.w = 1;
  r3.xyz = r1.yzx;
  r4.x = 0;
  while (true) {
    r4.y = cmp((int)r4.x < (int)r1.w);
    r4.z = cmp(0.0199999996 < r3.w);
    r4.y = r4.z ? r4.y : 0;
    if (r4.y == 0) break;
    r5.x = 1 + -r3.z;
    r5.yzw = r3.xyz;
    r4.yzw = saturate(r5.xyz);
    r6.xyzw = t0.SampleLevel(s0_s, r4.yzw, cb0[4].y).xyzw;
    r6.xyzw = saturate(r6.xyzw);
    r4.y = dot(r6.xyzw, cb0[3].xyzw);
    r4.y = -r4.y * cb0[4].w + 1;
    r4.y = log2(r4.y);
    r4.y = r4.y * r0.w;
    r4.y = exp2(r4.y);
    r4.y = 1 + -r4.y;
    r4.y = max(0, r4.y);
    r4.z = r4.y * r3.w;
    r2.xyzw = r4.zzzz * r6.xyzw + r2.xyzw;
    r4.y = 1 + -r4.y;
    r3.w = r4.y * r3.w;
    r3.xyz = r0.yzx * float3(0.0078125,0.0078125,0.0078125) + r5.yzw;
    r4.x = (int)r4.x + 1;
  }
  r0.x = dot(r2.xyzw, cb0[0].xyzw);
  r0.y = dot(r2.xyzw, cb0[1].xyzw);
  r0.z = dot(r2.xyzw, cb0[2].xyzw);
  o0.w = 1 + -r3.w;
  r0.w = cmp(cb0[4].x != 1.000000);
  if (r0.w != 0) {
    r0.xyz = saturate(r0.xyz);
    r0.w = 1 / cb0[4].x;
    r0.w = 2.20000005 / r0.w;
    r1.xyz = log2(r0.xyz);
    r1.xyz = r1.xyz * r0.www;
    r2.xyz = exp2(r1.xyz);
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    o0.xyz = r2.xyz ? r1.xyz : r3.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
  o1.xyzw = float4(0,0,0,0);
  return;
}
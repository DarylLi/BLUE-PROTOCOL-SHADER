// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[183];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyw = v0.xyx * float3(64,16,1.21904778) + float3(-0.5,-0.5,-0.209523812);
  r0.xy = r0.xy * float2(0.0190476216,4.66666698) + float2(-0.200000003,6360);
  r1.x = r0.y * r0.y;
  r1.y = -r0.x * r0.x + 1;
  r1.y = max(0, r1.y);
  r0.z = sqrt(r1.y);
  r1.y = cmp(cb0[0].x == 1.000000);
  r1.z = r0.y * r0.y + -40449600;
  r1.z = sqrt(r1.z);
  r1.w = asuint(cb1[182].w);
  r2.x = 0.5 / r1.w;
  r2.y = 0.00105685578 * r1.z;
  r1.w = 1 / r1.w;
  r1.w = 1 + -r1.w;
  r2.w = r2.y * r1.w + r2.x;
  r0.x = max(-0.197500005, r0.x);
  r0.x = 5.34962368 * r0.x;
  r1.w = min(1, abs(r0.x));
  r3.x = max(1, abs(r0.x));
  r3.x = 1 / r3.x;
  r1.w = r3.x * r1.w;
  r3.x = r1.w * r1.w;
  r3.y = r3.x * 0.0208350997 + -0.0851330012;
  r3.y = r3.x * r3.y + 0.180141002;
  r3.y = r3.x * r3.y + -0.330299497;
  r3.x = r3.x * r3.y + 0.999866009;
  r3.y = r3.x * r1.w;
  r3.z = cmp(1 < abs(r0.x));
  r3.y = r3.y * -2 + 1.57079637;
  r3.y = r3.z ? r3.y : 0;
  r1.w = r1.w * r3.x + r3.y;
  r0.x = min(1, r0.x);
  r0.x = cmp(r0.x < -r0.x);
  r0.x = r0.x ? -r1.w : r1.w;
  r0.x = r0.x * 0.909090877 + 0.74000001;
  r0.x = r0.x * 0.484375 + 0.015625;
  r3.xyz = float3(0,0,0);
  r1.w = 0;
  while (true) {
    r3.w = cmp((int)r1.w >= 64);
    if (r3.w != 0) break;
    r3.w = (int)r1.w;
    r3.w = 0.5 + r3.w;
    r3.w = 0.196349546 * r3.w;
    r3.w = cos(r3.w);
    r4.xyz = r3.xyz;
    r4.w = 0;
    while (true) {
      r5.x = cmp((int)r4.w >= 16);
      if (r5.x != 0) break;
      r5.x = (int)r4.w;
      r5.x = 0.5 + r5.x;
      r5.x = 0.196349546 * r5.x;
      sincos(r5.x, r5.x, r6.x);
      r5.y = 0.0385531411 * r5.x;
      r7.x = r5.x * r3.w;
      r7.y = r6.x;
      r5.x = dot(r0.zw, r7.xy);
      if (r1.y != 0) {
        r5.z = r5.x * r5.x + 1;
        r5.w = 0.0596831031 * r5.z;
        r6.y = -r5.x * 1.60000002 + 1.63999999;
        r6.y = log2(abs(r6.y));
        r6.y = -1.5 * r6.y;
        r6.y = exp2(r6.y);
        r5.z = r6.y * r5.z;
        r5.z = 0.0162772108 * r5.z;
        r6.y = r6.x * r0.y;
        r6.z = r6.y * r6.y + -r1.x;
        r6.z = 40449600 + r6.z;
        r6.w = cmp(r6.y < 0);
        r7.x = cmp(0 < r6.z);
        r6.w = r6.w ? r7.x : 0;
        r7.xyzw = r6.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
        r6.z = r7.y + r6.z;
        r6.z = sqrt(r6.z);
        r6.y = r6.y * r7.x + r6.z;
        r6.z = r7.z + r1.z;
        r6.y = r6.y / r6.z;
        r2.z = r6.y * 0.4921875 + r7.w;
        r6.y = 1 + r5.x;
        r6.z = 3.5 * r6.y;
        r6.z = floor(r6.z);
        r6.y = r6.y * 3.5 + -r6.z;
        r6.z = r6.z + r0.x;
        r2.y = 0.125 * r6.z;
        r7.xyz = t0.SampleLevel(s0_s, r2.yzw, 0).xyz;
        r6.w = 1 + -r6.y;
        r6.z = 1 + r6.z;
        r2.x = 0.125 * r6.z;
        r8.xyz = t0.SampleLevel(s0_s, r2.xzw, 0).xyz;
        r8.xyz = r8.xyz * r6.yyy;
        r7.xyz = r7.xyz * r6.www + r8.xyz;
        r8.xyz = t1.SampleLevel(s1_s, r2.yzw, 0).xyz;
        r9.xyz = t1.SampleLevel(s1_s, r2.xzw, 0).xyz;
        r9.xyz = r9.xyz * r6.yyy;
        r6.yzw = r8.xyz * r6.www + r9.xyz;
        r6.yzw = r6.yzw * r5.zzz;
        r6.yzw = r7.xyz * r5.www + r6.yzw;
        r6.yzw = r6.yzw * r6.xxx;
        r4.xyz = r6.yzw * r5.yyy + r4.xyz;
      } else {
        r5.z = r6.x * r0.y;
        r5.w = r5.z * r5.z + -r1.x;
        r5.w = 40449600 + r5.w;
        r6.y = cmp(r5.z < 0);
        r6.z = cmp(0 < r5.w);
        r6.y = r6.z ? r6.y : 0;
        r7.xyzw = r6.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
        r5.w = r7.y + r5.w;
        r5.w = sqrt(r5.w);
        r5.z = r5.z * r7.x + r5.w;
        r5.w = r7.z + r1.z;
        r5.z = r5.z / r5.w;
        r2.z = r5.z * 0.4921875 + r7.w;
        r5.x = 1 + r5.x;
        r5.z = 3.5 * r5.x;
        r5.z = floor(r5.z);
        r5.x = r5.x * 3.5 + -r5.z;
        r5.z = r5.z + r0.x;
        r2.y = 0.125 * r5.z;
        r6.yzw = t0.SampleLevel(s0_s, r2.yzw, 0).xyz;
        r2.y = 1 + -r5.x;
        r5.z = 1 + r5.z;
        r2.x = 0.125 * r5.z;
        r7.xyz = t0.SampleLevel(s0_s, r2.xzw, 0).xyz;
        r5.xzw = r7.xyz * r5.xxx;
        r2.xyz = r6.yzw * r2.yyy + r5.xzw;
        r2.xyz = r2.xyz * r6.xxx;
        r4.xyz = r2.xyz * r5.yyy + r4.xyz;
      }
      r4.w = (int)r4.w + 1;
    }
    r3.xyz = r4.xyz;
    r1.w = (int)r1.w + 1;
  }
  o0.xyz = r3.xyz;
  o0.w = 0;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[160];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  uint w2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyy * float3(256,128,128) + float3(-0.5,-0.5,-64.5);
  r0.w = cmp(r0.y < 64);
  r1.x = 0.03125 * r0.x;
  r0.y = -r0.y * 0.0158730168 + 1;
  r0.yz = cb0[1].wy * r0.yz;
  r0.y = max(cb0[1].z, r0.y);
  r1.yz = float2(0.999000013,0.999000013) * cb0[1].wy;
  r0.y = min(r1.y, r0.y);
  r1.y = cb0[2].x * cb0[2].x;
  r2.xy = -cb0[2].xx * cb0[2].xx + float2(40449600,41344900);
  r1.w = -r0.y * r0.y + r2.x;
  r2.x = cb0[2].x + cb0[2].x;
  r0.y = r2.x * r0.y;
  r0.y = r1.w / r0.y;
  r1.w = 6360 / cb0[2].x;
  r1.w = -r1.w * r1.w + 1;
  r1.w = sqrt(r1.w);
  r1.w = -0.00100000005 + -r1.w;
  r0.z = 0.0158730168 * r0.z;
  r0.z = max(cb0[1].x, r0.z);
  r0.yz = min(r0.yz, r1.wz);
  r1.z = -r0.z * r0.z + r2.y;
  r0.z = r2.x * r0.z;
  r0.z = r1.z / r0.z;
  r0.y = r0.w ? r0.y : r0.z;
  r0.z = floor(r1.x);
  r0.x = -r0.z * 32 + r0.x;
  r0.x = r0.x * 0.0645161271 + -0.74000001;
  r0.x = 1.10000002 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.x = r0.x / r1.x;
  r0.x = cb0[2].x * r0.x;
  r0.z = r0.z * 0.285714298 + -1;
  r0.w = r0.y * r0.y + -1;
  r1.xz = r1.yy * r0.ww + float2(41357760,40449600);
  r1.xw = sqrt(r1.xz);
  r0.w = -cb0[2].x * r0.y + r1.x;
  r1.x = cmp(r1.z >= 0);
  r1.z = -cb0[2].x * r0.y + -r1.w;
  r1.w = cmp(r1.z >= 0);
  r1.z = min(r1.z, r0.w);
  r1.z = r1.w ? r1.z : r0.w;
  r0.w = r1.x ? r1.z : r0.w;
  r0.xw = float2(0.186929032,0.0199999996) * r0.xw;
  r1.x = r0.x / abs(cb0[2].x);
  r1.z = max(6360, abs(cb0[2].x));
  r1.w = r1.z * r1.z;
  r1.w = 40449600 / r1.w;
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r1.w = cmp(r1.x >= -r1.w);
  if (r1.w != 0) {
    r1.w = cb0[2].x * r0.y;
    r1.w = r1.w / abs(cb0[2].x);
    r2.y = cmp(0 < r0.y);
    if (r2.y != 0) {
      r2.y = -6360 + cb0[2].x;
      r2.y = 0.0142857144 * r2.y;
      r3.y = sqrt(r2.y);
      r2.y = 0.150000006 + r0.y;
      r2.y = 12.262105 * r2.y;
      r2.z = min(1, abs(r2.y));
      r2.w = max(1, abs(r2.y));
      r2.w = 1 / r2.w;
      r2.z = r2.z * r2.w;
      r2.w = r2.z * r2.z;
      r3.z = r2.w * 0.0208350997 + -0.0851330012;
      r3.z = r2.w * r3.z + 0.180141002;
      r3.z = r2.w * r3.z + -0.330299497;
      r2.w = r2.w * r3.z + 0.999866009;
      r3.z = r2.z * r2.w;
      r3.w = cmp(1 < abs(r2.y));
      r3.z = r3.z * -2 + 1.57079637;
      r3.z = r3.w ? r3.z : 0;
      r2.z = r2.z * r2.w + r3.z;
      r2.y = min(1, r2.y);
      r2.y = cmp(r2.y < -r2.y);
      r2.y = r2.y ? -r2.z : r2.z;
      r3.x = 0.666666687 * r2.y;
      r2.yzw = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
      r3.x = -6360 + abs(cb0[2].x);
      r3.x = 0.0142857144 * r3.x;
      r3.y = sqrt(r3.x);
      r3.z = 0.150000006 + r1.w;
      r3.z = 12.262105 * r3.z;
      r3.w = min(1, abs(r3.z));
      r4.x = max(1, abs(r3.z));
      r4.x = 1 / r4.x;
      r3.w = r4.x * r3.w;
      r4.x = r3.w * r3.w;
      r4.y = r4.x * 0.0208350997 + -0.0851330012;
      r4.y = r4.x * r4.y + 0.180141002;
      r4.y = r4.x * r4.y + -0.330299497;
      r4.x = r4.x * r4.y + 0.999866009;
      r4.y = r4.x * r3.w;
      r4.z = cmp(1 < abs(r3.z));
      r4.y = r4.y * -2 + 1.57079637;
      r4.y = r4.z ? r4.y : 0;
      r3.w = r3.w * r4.x + r4.y;
      r3.z = min(1, r3.z);
      r3.z = cmp(r3.z < -r3.z);
      r3.z = r3.z ? -r3.w : r3.w;
      r3.x = 0.666666687 * r3.z;
      r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
      r2.yzw = r2.yzw / r3.xyz;
      r2.yzw = min(float3(1,1,1), r2.yzw);
    } else {
      r3.x = -6360 + abs(cb0[2].x);
      r3.x = 0.0142857144 * r3.x;
      r3.y = sqrt(r3.x);
      r1.w = 0.150000006 + -r1.w;
      r1.w = 12.262105 * r1.w;
      r3.z = min(1, abs(r1.w));
      r3.w = max(1, abs(r1.w));
      r3.w = 1 / r3.w;
      r3.z = r3.z * r3.w;
      r3.w = r3.z * r3.z;
      r4.x = r3.w * 0.0208350997 + -0.0851330012;
      r4.x = r3.w * r4.x + 0.180141002;
      r4.x = r3.w * r4.x + -0.330299497;
      r3.w = r3.w * r4.x + 0.999866009;
      r4.x = r3.z * r3.w;
      r4.y = cmp(1 < abs(r1.w));
      r4.x = r4.x * -2 + 1.57079637;
      r4.x = r4.y ? r4.x : 0;
      r3.z = r3.z * r3.w + r4.x;
      r1.w = min(1, r1.w);
      r1.w = cmp(r1.w < -r1.w);
      r1.w = r1.w ? -r3.z : r3.z;
      r3.x = 0.666666687 * r1.w;
      r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
      r1.w = -6360 + cb0[2].x;
      r1.w = 0.0142857144 * r1.w;
      r4.y = sqrt(r1.w);
      r1.w = 0.150000006 + -r0.y;
      r1.w = 12.262105 * r1.w;
      r3.w = min(1, abs(r1.w));
      r4.z = max(1, abs(r1.w));
      r4.z = 1 / r4.z;
      r3.w = r4.z * r3.w;
      r4.z = r3.w * r3.w;
      r4.w = r4.z * 0.0208350997 + -0.0851330012;
      r4.w = r4.z * r4.w + 0.180141002;
      r4.w = r4.z * r4.w + -0.330299497;
      r4.z = r4.z * r4.w + 0.999866009;
      r4.w = r4.z * r3.w;
      r5.x = cmp(1 < abs(r1.w));
      r4.w = r4.w * -2 + 1.57079637;
      r4.w = r5.x ? r4.w : 0;
      r3.w = r3.w * r4.z + r4.w;
      r1.w = min(1, r1.w);
      r1.w = cmp(r1.w < -r1.w);
      r1.w = r1.w ? -r3.w : r3.w;
      r4.x = 0.666666687 * r1.w;
      r4.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
      r3.xyz = r3.xyz / r4.xyz;
      r2.yzw = min(float3(1,1,1), r3.xyz);
    }
    r1.xz = float2(0.150000006,-6360) + r1.xz;
    r3.xy = float2(0.0142857144,-1.20224583) * r1.zz;
    r4.y = sqrt(r3.x);
    r1.x = 12.262105 * r1.x;
    r1.w = min(1, abs(r1.x));
    r3.x = max(1, abs(r1.x));
    r3.x = 1 / r3.x;
    r1.w = r3.x * r1.w;
    r3.x = r1.w * r1.w;
    r3.z = r3.x * 0.0208350997 + -0.0851330012;
    r3.z = r3.x * r3.z + 0.180141002;
    r3.z = r3.x * r3.z + -0.330299497;
    r3.x = r3.x * r3.z + 0.999866009;
    r3.z = r3.x * r1.w;
    r3.w = cmp(1 < abs(r1.x));
    r3.z = r3.z * -2 + 1.57079637;
    r3.z = r3.w ? r3.z : 0;
    r1.w = r1.w * r3.x + r3.z;
    r1.x = min(1, r1.x);
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? -r1.w : r1.w;
    r4.x = 0.666666687 * r1.x;
    r3.xzw = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
    r2.yzw = r3.xzw * r2.yzw;
    r1.x = -r1.z / cb1[159].z;
    r1.x = 1.44269502 * r1.x;
    r1.x = exp2(r1.x);
    r1.xzw = r1.xxx * r2.yzw;
    r3.x = exp2(r3.y);
    r2.yzw = r3.xxx * r2.yzw;
  } else {
    r1.xzw = float3(0,0,0);
    r2.yzw = float3(0,0,0);
  }
  r2.x = r2.x * r0.y;
  r3.x = cmp(0 < r0.y);
  r3.y = -6360 + cb0[2].x;
  r3.y = 0.0142857144 * r3.y;
  r4.z = sqrt(r3.y);
  r3.y = 0.150000006 + r0.y;
  r3.y = 12.262105 * r3.y;
  r3.z = min(1, abs(r3.y));
  r3.w = max(1, abs(r3.y));
  r3.w = 1 / r3.w;
  r3.z = r3.z * r3.w;
  r3.w = r3.z * r3.z;
  r4.w = r3.w * 0.0208350997 + -0.0851330012;
  r4.w = r3.w * r4.w + 0.180141002;
  r4.w = r3.w * r4.w + -0.330299497;
  r3.w = r3.w * r4.w + 0.999866009;
  r4.w = r3.z * r3.w;
  r5.x = cmp(1 < abs(r3.y));
  r4.w = r4.w * -2 + 1.57079637;
  r4.w = r5.x ? r4.w : 0;
  r3.z = r3.z * r3.w + r4.w;
  r3.y = min(1, r3.y);
  r3.y = cmp(r3.y < -r3.y);
  r3.y = r3.y ? -r3.z : r3.z;
  r4.y = 0.666666687 * r3.y;
  r3.yzw = t0.SampleLevel(s0_s, r4.yz, 0).xyz;
  r4.y = 0.150000006 + -r0.y;
  r4.y = 12.262105 * r4.y;
  r4.w = min(1, abs(r4.y));
  r5.x = max(1, abs(r4.y));
  r5.x = 1 / r5.x;
  r4.w = r5.x * r4.w;
  r5.x = r4.w * r4.w;
  r5.y = r5.x * 0.0208350997 + -0.0851330012;
  r5.y = r5.x * r5.y + 0.180141002;
  r5.y = r5.x * r5.y + -0.330299497;
  r5.x = r5.x * r5.y + 0.999866009;
  r5.y = r5.x * r4.w;
  r5.z = cmp(1 < abs(r4.y));
  r5.y = r5.y * -2 + 1.57079637;
  r5.y = r5.z ? r5.y : 0;
  r4.w = r4.w * r5.x + r5.y;
  r4.y = min(1, r4.y);
  r4.y = cmp(r4.y < -r4.y);
  r4.y = r4.y ? -r4.w : r4.w;
  r4.x = 0.666666687 * r4.y;
  r4.xyz = t0.SampleLevel(s0_s, r4.xz, 0).xyz;
  r5.xyz = float3(0,0,0);
  r6.xyz = float3(0,0,0);
  r7.xyz = r1.xzw;
  r8.xyz = r2.yzw;
  r4.w = 1;
  while (true) {
    r5.w = cmp(50 < (int)r4.w);
    if (r5.w != 0) break;
    r5.w = (int)r4.w;
    r5.w = r5.w * r0.w;
    r6.w = r5.w * r5.w + r1.y;
    r6.w = r2.x * r5.w + r6.w;
    r6.w = sqrt(r6.w);
    r7.w = r0.z * r5.w + r0.x;
    r7.w = r7.w / r6.w;
    r8.w = max(6360, r6.w);
    r9.x = r8.w * r8.w;
    r9.x = 40449600 / r9.x;
    r9.x = 1 + -r9.x;
    r9.x = sqrt(r9.x);
    r9.x = cmp(r7.w >= -r9.x);
    if (r9.x != 0) {
      r5.w = cb0[2].x * r0.y + r5.w;
      r5.w = r5.w / r6.w;
      if (r3.x != 0) {
        r9.x = -6360 + r6.w;
        r9.x = 0.0142857144 * r9.x;
        r9.y = sqrt(r9.x);
        r9.z = 0.150000006 + r5.w;
        r9.z = 12.262105 * r9.z;
        r9.w = min(1, abs(r9.z));
        r10.x = max(1, abs(r9.z));
        r10.x = 1 / r10.x;
        r9.w = r10.x * r9.w;
        r10.x = r9.w * r9.w;
        r10.y = r10.x * 0.0208350997 + -0.0851330012;
        r10.y = r10.x * r10.y + 0.180141002;
        r10.y = r10.x * r10.y + -0.330299497;
        r10.x = r10.x * r10.y + 0.999866009;
        r10.y = r10.x * r9.w;
        r10.z = cmp(1 < abs(r9.z));
        r10.y = r10.y * -2 + 1.57079637;
        r10.y = r10.z ? r10.y : 0;
        r9.w = r9.w * r10.x + r10.y;
        r9.z = min(1, r9.z);
        r9.z = cmp(r9.z < -r9.z);
        r9.z = r9.z ? -r9.w : r9.w;
        r9.x = 0.666666687 * r9.z;
        r9.xyz = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
        r9.xyz = r3.yzw / r9.xyz;
        r9.xyz = min(float3(1,1,1), r9.xyz);
      } else {
        r6.w = -6360 + r6.w;
        r6.w = 0.0142857144 * r6.w;
        r10.y = sqrt(r6.w);
        r5.w = 0.150000006 + -r5.w;
        r5.w = 12.262105 * r5.w;
        r6.w = min(1, abs(r5.w));
        r9.w = max(1, abs(r5.w));
        r9.w = 1 / r9.w;
        r6.w = r9.w * r6.w;
        r9.w = r6.w * r6.w;
        r10.z = r9.w * 0.0208350997 + -0.0851330012;
        r10.z = r9.w * r10.z + 0.180141002;
        r10.z = r9.w * r10.z + -0.330299497;
        r9.w = r9.w * r10.z + 0.999866009;
        r10.z = r9.w * r6.w;
        r10.w = cmp(1 < abs(r5.w));
        r10.z = r10.z * -2 + 1.57079637;
        r10.z = r10.w ? r10.z : 0;
        r6.w = r6.w * r9.w + r10.z;
        r5.w = min(1, r5.w);
        r5.w = cmp(r5.w < -r5.w);
        r5.w = r5.w ? -r6.w : r6.w;
        r10.x = 0.666666687 * r5.w;
        r10.xyz = t0.SampleLevel(s0_s, r10.xy, 0).xyz;
        r10.xyz = r10.xyz / r4.xyz;
        r9.xyz = min(float3(1,1,1), r10.xyz);
      }
      r5.w = -6360 + r8.w;
      r10.xy = float2(0.0142857144,-1.20224583) * r5.ww;
      r11.y = sqrt(r10.x);
      r6.w = 0.150000006 + r7.w;
      r6.w = 12.262105 * r6.w;
      r7.w = min(1, abs(r6.w));
      r8.w = max(1, abs(r6.w));
      r8.w = 1 / r8.w;
      r7.w = r8.w * r7.w;
      r8.w = r7.w * r7.w;
      r9.w = r8.w * 0.0208350997 + -0.0851330012;
      r9.w = r8.w * r9.w + 0.180141002;
      r9.w = r8.w * r9.w + -0.330299497;
      r8.w = r8.w * r9.w + 0.999866009;
      r9.w = r8.w * r7.w;
      r10.x = cmp(1 < abs(r6.w));
      r9.w = r9.w * -2 + 1.57079637;
      r9.w = r10.x ? r9.w : 0;
      r7.w = r7.w * r8.w + r9.w;
      r6.w = min(1, r6.w);
      r6.w = cmp(r6.w < -r6.w);
      r6.w = r6.w ? -r7.w : r7.w;
      r11.x = 0.666666687 * r6.w;
      r10.xzw = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
      r9.xyz = r10.xzw * r9.xyz;
      r5.w = -r5.w / cb1[159].z;
      r5.w = 1.44269502 * r5.w;
      r5.w = exp2(r5.w);
      r10.xzw = r5.www * r9.xyz;
      r5.w = exp2(r10.y);
      r9.xyz = r5.www * r9.xyz;
    } else {
      r10.xzw = float3(0,0,0);
      r9.xyz = float3(0,0,0);
    }
    r11.xyz = r10.xzw + r7.xyz;
    r11.xyz = r11.xyz * r0.www;
    r5.xyz = r11.xyz * float3(0.5,0.5,0.5) + r5.xyz;
    r11.xyz = r9.xyz + r8.xyz;
    r11.xyz = r11.xyz * r0.www;
    r6.xyz = r11.xyz * float3(0.5,0.5,0.5) + r6.xyz;
    r4.w = (int)r4.w + 1;
    r7.xyz = r10.xzw;
    r8.xyz = r9.xyz;
  }
  o0.xyz = float3(0.00579999993,0.0135000004,0.0331000015) * r5.xyz;
  o1.xyz = float3(0.00400000019,0.00400000019,0.00400000019) * r6.xyz;
  o0.w = 1;
  o1.w = 1;
  return;
}
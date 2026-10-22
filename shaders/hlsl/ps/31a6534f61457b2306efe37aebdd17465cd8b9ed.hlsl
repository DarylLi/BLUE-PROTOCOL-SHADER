// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[183];
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
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r1.yw = -cb0[2].xx * cb0[2].xx + float2(40449600,41344900);
  r1.y = -r0.y * r0.y + r1.y;
  r2.x = 2 * cb0[2].x;
  r0.y = r2.x * r0.y;
  r0.y = r1.y / r0.y;
  r1.y = 6360 / cb0[2].x;
  r1.y = -r1.y * r1.y + 1;
  r1.y = sqrt(r1.y);
  r1.y = -0.00100000005 + -r1.y;
  r0.z = 0.0158730168 * r0.z;
  r0.z = max(cb0[1].x, r0.z);
  r0.yz = min(r0.yz, r1.yz);
  r1.y = -r0.z * r0.z + r1.w;
  r0.z = r2.x * r0.z;
  r0.z = r1.y / r0.z;
  r0.y = r0.w ? r0.y : r0.z;
  r0.z = floor(r1.x);
  r0.x = -r0.z * 32 + r0.x;
  r0.x = r0.x * 0.0645161271 + -0.74000001;
  r0.x = 1.10000002 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.x = r0.x / r1.x;
  r0.x = 0.186929032 * r0.x;
  r0.z = r0.z * 0.285714298 + -1;
  r0.w = max(6360, cb0[2].x);
  r1.z = min(6430, r0.w);
  r0.xy = max(float2(-1,-1), r0.xy);
  r2.y = min(1, r0.y);
  r3.z = min(1, r0.x);
  r0.x = -r2.y * r2.y + 1;
  r2.x = sqrt(r0.x);
  r0.x = r3.z * r3.z;
  r0.y = -r3.z * r3.z + 1;
  r0.y = sqrt(r0.y);
  r0.y = r2.x * r0.y;
  r0.w = r3.z * r2.y + -r0.y;
  r0.y = r3.z * r2.y + r0.y;
  r0.z = max(r0.z, r0.w);
  r0.y = min(r0.z, r0.y);
  r0.z = 6360 / r1.z;
  r0.z = -r0.z * r0.z + 1;
  r0.z = sqrt(r0.z);
  r0.w = cmp(r2.x == 0.000000);
  r0.y = -r3.z * r2.y + r0.y;
  r0.y = r0.y / r2.x;
  r3.x = r0.w ? 0 : r0.y;
  r0.x = -r3.x * r3.x + -r0.x;
  r0.x = 1 + r0.x;
  r0.x = max(0, r0.x);
  r3.y = sqrt(r0.x);
  r0.x = r1.z * r1.z;
  r0.y = cmp(cb0[0].x == 1.000000);
  r0.w = -6360 + r1.z;
  r1.w = r1.z * r1.z + -40449600;
  r1.w = sqrt(r1.w);
  r2.z = asuint(cb1[182].w);
  r2.w = 0.5 / r2.z;
  r3.w = 0.00105685578 * r1.w;
  r2.z = 1 / r2.z;
  r2.z = 1 + -r2.z;
  r4.w = r3.w * r2.z + r2.w;
  r2.z = max(-0.197500005, r3.z);
  r2.z = 5.34962368 * r2.z;
  r2.w = min(1, abs(r2.z));
  r3.w = max(1, abs(r2.z));
  r3.w = 1 / r3.w;
  r2.w = r3.w * r2.w;
  r3.w = r2.w * r2.w;
  r5.x = r3.w * 0.0208350997 + -0.0851330012;
  r5.x = r3.w * r5.x + 0.180141002;
  r5.x = r3.w * r5.x + -0.330299497;
  r3.w = r3.w * r5.x + 0.999866009;
  r5.x = r3.w * r2.w;
  r5.y = cmp(1 < abs(r2.z));
  r5.x = r5.x * -2 + 1.57079637;
  r5.x = r5.y ? r5.x : 0;
  r2.w = r2.w * r3.w + r5.x;
  r2.z = min(1, r2.z);
  r2.z = cmp(r2.z < -r2.z);
  r2.z = r2.z ? -r2.w : r2.w;
  r2.z = r2.z * 0.909090877 + 0.74000001;
  r2.z = r2.z * 0.484375 + 0.015625;
  r2.w = -r0.w / cb1[159].z;
  r2.w = 1.44269502 * r2.w;
  r2.w = exp2(r2.w);
  r5.xyz = float3(0.00579999993,0.0135000004,0.0331000015) * r2.www;
  r0.w = -1.20224583 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 0.00400000019 * r0.w;
  r6.yw = float2(0,0);
  r1.xy = float2(0,0);
  r7.y = 0;
  r8.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= 16);
    if (r3.w != 0) break;
    r3.w = (int)r2.w;
    r3.w = 0.5 + r3.w;
    r3.w = 0.196349546 * r3.w;
    sincos(r3.w, r9.x, r10.x);
    r3.w = cmp(r10.x < -r0.z);
    if (r3.w != 0) {
      r3.w = r10.x * r10.x + -1;
      r3.w = r0.x * r3.w + 40449600;
      r3.w = sqrt(r3.w);
      r3.w = -r1.z * r10.x + -r3.w;
      r5.w = r1.z * r10.x + r3.w;
      r7.z = r3.w * r3.w + 40449600;
      r7.w = -r5.w * r3.w;
      r7.z = r7.w * 2 + r7.z;
      r7.z = sqrt(r7.z);
      r7.w = r5.w * -1 + r3.w;
      r7.w = r7.w / r7.z;
      r8.w = cmp(0 < -r5.w);
      if (r8.w != 0) {
        r8.w = r5.w * -0.000157232702 + 0.150000006;
        r8.w = 12.262105 * r8.w;
        r9.y = min(1, abs(r8.w));
        r9.z = max(1, abs(r8.w));
        r9.z = 1 / r9.z;
        r9.y = r9.y * r9.z;
        r9.z = r9.y * r9.y;
        r9.w = r9.z * 0.0208350997 + -0.0851330012;
        r9.w = r9.z * r9.w + 0.180141002;
        r9.w = r9.z * r9.w + -0.330299497;
        r9.z = r9.z * r9.w + 0.999866009;
        r9.w = r9.y * r9.z;
        r10.y = cmp(1 < abs(r8.w));
        r9.w = r9.w * -2 + 1.57079637;
        r9.w = r10.y ? r9.w : 0;
        r9.y = r9.y * r9.z + r9.w;
        r8.w = min(1, r8.w);
        r8.w = cmp(r8.w < -r8.w);
        r8.w = r8.w ? -r9.y : r9.y;
        r6.x = 0.666666687 * r8.w;
        r9.yzw = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
        r6.x = -6360 + r7.z;
        r6.x = 0.0142857144 * r6.x;
        r11.y = sqrt(r6.x);
        r6.x = 0.150000006 + r7.w;
        r6.x = 12.262105 * r6.x;
        r8.w = min(1, abs(r6.x));
        r10.y = max(1, abs(r6.x));
        r10.y = 1 / r10.y;
        r8.w = r10.y * r8.w;
        r10.y = r8.w * r8.w;
        r10.z = r10.y * 0.0208350997 + -0.0851330012;
        r10.z = r10.y * r10.z + 0.180141002;
        r10.z = r10.y * r10.z + -0.330299497;
        r10.y = r10.y * r10.z + 0.999866009;
        r10.z = r10.y * r8.w;
        r10.w = cmp(1 < abs(r6.x));
        r10.z = r10.z * -2 + 1.57079637;
        r10.z = r10.w ? r10.z : 0;
        r8.w = r8.w * r10.y + r10.z;
        r6.x = min(1, r6.x);
        r6.x = cmp(r6.x < -r6.x);
        r6.x = r6.x ? -r8.w : r8.w;
        r11.x = 0.666666687 * r6.x;
        r10.yzw = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
        r9.yzw = r9.yzw / r10.yzw;
        r9.yzw = min(float3(1,1,1), r9.yzw);
      } else {
        r6.x = -6360 + r7.z;
        r6.x = 0.0142857144 * r6.x;
        r11.y = sqrt(r6.x);
        r6.x = 0.150000006 + -r7.w;
        r6.x = 12.262105 * r6.x;
        r7.z = min(1, abs(r6.x));
        r7.w = max(1, abs(r6.x));
        r7.w = 1 / r7.w;
        r7.z = r7.z * r7.w;
        r7.w = r7.z * r7.z;
        r8.w = r7.w * 0.0208350997 + -0.0851330012;
        r8.w = r7.w * r8.w + 0.180141002;
        r8.w = r7.w * r8.w + -0.330299497;
        r7.w = r7.w * r8.w + 0.999866009;
        r8.w = r7.z * r7.w;
        r10.y = cmp(1 < abs(r6.x));
        r8.w = r8.w * -2 + 1.57079637;
        r8.w = r10.y ? r8.w : 0;
        r7.z = r7.z * r7.w + r8.w;
        r6.x = min(1, r6.x);
        r6.x = cmp(r6.x < -r6.x);
        r6.x = r6.x ? -r7.z : r7.z;
        r11.x = 0.666666687 * r6.x;
        r10.yzw = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
        r5.w = -r5.w * -0.000157232702 + 0.150000006;
        r5.w = 12.262105 * r5.w;
        r6.x = min(1, abs(r5.w));
        r7.z = max(1, abs(r5.w));
        r7.z = 1 / r7.z;
        r6.x = r7.z * r6.x;
        r7.z = r6.x * r6.x;
        r7.w = r7.z * 0.0208350997 + -0.0851330012;
        r7.w = r7.z * r7.w + 0.180141002;
        r7.w = r7.z * r7.w + -0.330299497;
        r7.z = r7.z * r7.w + 0.999866009;
        r7.w = r7.z * r6.x;
        r8.w = cmp(1 < abs(r5.w));
        r7.w = r7.w * -2 + 1.57079637;
        r7.w = r8.w ? r7.w : 0;
        r6.x = r6.x * r7.z + r7.w;
        r5.w = min(1, r5.w);
        r5.w = cmp(r5.w < -r5.w);
        r5.w = r5.w ? -r6.x : r6.x;
        r6.z = 0.666666687 * r5.w;
        r11.xyz = t0.SampleLevel(s0_s, r6.zw, 0).xyz;
        r10.yzw = r10.yzw / r11.xyz;
        r9.yzw = min(float3(1,1,1), r10.yzw);
      }
      r5.w = 0.0318309888;
    } else {
      r9.yzw = float3(0,0,0);
      r5.w = 0;
      r3.w = 0;
    }
    r6.x = 0.0385531411 * r9.x;
    r6.z = r10.x * r1.z;
    r7.z = r6.z * r6.z + -r0.x;
    r7.z = 40449600 + r7.z;
    r7.w = cmp(r6.z < 0);
    r8.w = cmp(0 < r7.z);
    r7.w = r7.w ? r8.w : 0;
    r11.xyzw = r7.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r7.z = r11.y + r7.z;
    r7.z = sqrt(r7.z);
    r6.z = r6.z * r11.x + r7.z;
    r7.z = r11.z + r1.w;
    r6.z = r6.z / r7.z;
    r4.z = r6.z * 0.4921875 + r11.w;
    r10.z = r10.x;
    r11.zw = r4.zw;
    r12.xyz = r8.xyz;
    r6.z = 0;
    while (true) {
      r7.z = cmp((int)r6.z >= 32);
      if (r7.z != 0) break;
      r7.z = (int)r6.z;
      r7.z = 0.5 + r7.z;
      r7.z = 0.196349546 * r7.z;
      sincos(r7.z, r13.x, r14.x);
      r10.x = r14.x * r9.x;
      r10.y = r13.x * r9.x;
      r7.z = dot(r3.xyz, r10.xyz);
      r7.w = dot(r2.xy, r10.xz);
      r8.w = r7.w * r7.w + 1;
      r10.w = 0.0596831031 * r8.w;
      r7.w = -r7.w * 1.60000002 + 1.63999999;
      r7.w = log2(abs(r7.w));
      r7.w = -1.5 * r7.w;
      r7.w = exp2(r7.w);
      r7.w = r8.w * r7.w;
      r7.w = r7.w * r0.w;
      r13.xyz = r3.www * r10.xyz + r1.xyz;
      r13.xyz = float3(0.000157232702,0.000157232702,0.000157232702) * r13.xyz;
      r8.w = dot(r13.xyz, r3.xyz);
      r8.w = 0.200000003 + r8.w;
      r7.x = 0.833333313 * r8.w;
      r13.xyz = t1.SampleLevel(s1_s, r7.xy, 0).xyz;
      r13.xyz = r13.xyz * r5.www;
      if (r0.y != 0) {
        r7.x = r7.z * r7.z + 1;
        r8.w = 0.0596831031 * r7.x;
        r10.x = -r7.z * 1.60000002 + 1.63999999;
        r10.x = log2(abs(r10.x));
        r10.x = -1.5 * r10.x;
        r10.x = exp2(r10.x);
        r7.x = r10.x * r7.x;
        r7.x = 0.0162772108 * r7.x;
        r10.x = 1 + r7.z;
        r10.y = 3.5 * r10.x;
        r10.y = floor(r10.y);
        r10.x = r10.x * 3.5 + -r10.y;
        r10.y = r10.y + r2.z;
        r4.y = 0.125 * r10.y;
        r14.xyz = t2.SampleLevel(s2_s, r4.yzw, 0).xyz;
        r12.w = 1 + -r10.x;
        r10.y = 1 + r10.y;
        r4.x = 0.125 * r10.y;
        r15.xyz = t2.SampleLevel(s2_s, r4.xzw, 0).xyz;
        r15.xyz = r15.xyz * r10.xxx;
        r14.xyz = r14.xyz * r12.www + r15.xyz;
        r15.xyz = t3.SampleLevel(s3_s, r4.yzw, 0).xyz;
        r16.xyz = t3.SampleLevel(s3_s, r4.xzw, 0).xyz;
        r16.xyz = r16.xyz * r10.xxx;
        r15.xyz = r15.xyz * r12.www + r16.xyz;
        r15.xyz = r15.xyz * r7.xxx;
        r14.xyz = r14.xyz * r8.www + r15.xyz;
        r14.xyz = r13.xyz * r9.yzw + r14.xyz;
      } else {
        r4.x = 1 + r7.z;
        r4.y = 3.5 * r4.x;
        r4.y = floor(r4.y);
        r4.x = r4.x * 3.5 + -r4.y;
        r4.y = r4.y + r2.z;
        r11.y = 0.125 * r4.y;
        r15.xyz = t2.SampleLevel(s2_s, r11.yzw, 0).xyz;
        r7.x = 1 + -r4.x;
        r4.y = 1 + r4.y;
        r11.x = 0.125 * r4.y;
        r16.xyz = t2.SampleLevel(s2_s, r11.xzw, 0).xyz;
        r16.xyz = r16.xyz * r4.xxx;
        r15.xyz = r15.xyz * r7.xxx + r16.xyz;
        r14.xyz = r13.xyz * r9.yzw + r15.xyz;
      }
      r4.x = 0.0162772108 * r7.w;
      r7.xzw = r5.xyz * r10.www + r4.xxx;
      r7.xzw = r14.xyz * r7.xzw;
      r12.xyz = r7.xzw * r6.xxx + r12.xyz;
      r6.z = (int)r6.z + 1;
    }
    r8.xyz = r12.xyz;
    r2.w = (int)r2.w + 1;
  }
  o0.xyz = r8.xyz;
  o0.w = 1;
  return;
}
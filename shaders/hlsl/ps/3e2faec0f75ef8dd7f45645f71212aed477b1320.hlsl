// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t2.SampleLevel(s0_s, v0.xy, 0).xyz;
  r1.xyzw = t3.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r2.xyzw = t4.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r3.xyz = t5.SampleLevel(s0_s, v0.xy, 0).xyz;
  r4.xy = cb1[132].xy * v0.xy;
  r4.xy = (uint2)r4.xy;
  r0.w = (uint)cb1[152].x;
  r3.w = (int)r4.y + (int)r4.x;
  r0.w = (int)r0.w + (int)r3.w;
  r0.w = (int)r0.w & 1;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r3.www * r0.xyz;
  r5.xy = float2(255,0.0799999982) * r1.wy;
  r1.w = round(r5.x);
  r1.w = (uint)r1.w;
  r1.w = (int)r1.w & 15;
  r6.xyzw = cmp((int4)r1.wwww == int4(12,13,2,3));
  r5.xz = (int2)r6.yw | (int2)r6.xz;
  r4.w = r5.x ? r2.w : 1;
  r7.xyzw = cmp((int4)r1.wwww == int4(4,5,6,7));
  r5.w = (int)r5.z | (int)r7.x;
  r5.w = (int)r7.y | (int)r5.w;
  r5.w = (int)r7.z | (int)r5.w;
  r5.w = (int)r7.w | (int)r5.w;
  r6.zw = cmp((int2)r1.ww == int2(8,9));
  r1.w = (int)r5.w | (int)r6.z;
  r1.w = (int)r6.x | (int)r1.w;
  r1.w = (int)r6.y | (int)r1.w;
  r1.w = (int)r6.w | (int)r1.w;
  r3.xyz = (int3)r3.xyz & (int3)r1.www;
  r1.w = r6.w ? 0 : r1.x;
  r6.xyz = -r1.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r8.xyz = r1.www * r6.xyz + r5.yyy;
  r5.y = (int)r6.w | (int)r7.y;
  r5.w = cmp(0 < cb1[156].y);
  r6.x = cmp(0 < cb1[207].z);
  r5.w = r5.w ? r6.x : 0;
  r6.x = cmp(0 != cb1[156].y);
  r6.xyz = r6.xxx ? float3(1,1,1) : r2.xyz;
  r7.yz = r0.ww ? float2(1,0) : float2(0,1);
  r9.xyz = r8.xyz * r7.zzz;
  r9.w = r7.z * r1.y;
  r6.xyz = r5.www ? r7.yyy : r6.xyz;
  r8.w = r1.y;
  r9.xyzw = r5.wwww ? r9.xyzw : r8.xyzw;
  r6.w = r9.w;
  r2.w = r8.w;
  r6.xyzw = r5.yyyy ? r6.xyzw : r2.xyzw;
  r8.xyz = r5.yyy ? r9.xyz : r8.xyz;
  r9.xyz = -r6.xyz * r1.www + r6.xyz;
  r9.xyz = r5.xxx ? r2.xyz : r9.xyz;
  r9.xyz = r9.xyz * cb1[136].www + cb1[136].xyz;
  r8.xyz = cb1[137].www * r8.xyz;
  r8.xyz = r5.xxx ? float3(0,0,0) : r8.xyz;
  r8.xyz = cb1[137].xyz + r8.xyz;
  r10.xyz = cb1[49].xyz * v0.www;
  r10.xyz = v0.zzz * cb1[48].xyz + r10.xyz;
  r10.xyz = cb1[50].xyz + r10.xyz;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = rsqrt(r0.w);
  r10.xyz = r10.xyz * r0.www;
  r0.w = dot(-r10.xyz, r4.xyz);
  r5.w = r0.w + r0.w;
  r11.xyz = r5.www * r4.xyz + r10.xyz;
  r1.x = saturate(r0.w);
  r5.w = -r1.z * r1.z + 1;
  r7.y = sqrt(r5.w);
  r7.y = r1.z * r1.z + r7.y;
  r5.w = r7.y * r5.w;
  r0.xyz = -r0.xyz * r3.www + r11.xyz;
  r0.xyz = r5.www * r0.xyz + r4.xyz;
  r12.xyz = t0.SampleLevel(s1_s, r4.xyz, cb0[28].z).xyz;
  r9.xyz = r12.xyz * r9.xyz;
  if (r7.x != 0) {
    r3.w = log2(r1.z);
    r3.w = -r3.w * 1.14999998 + 3;
    r5.w = -1 + cb0[28].w;
    r3.w = r5.w + -r3.w;
    r7.xyz = t0.SampleLevel(s1_s, r0.xyz, r3.w).xyz;
    r1.y = r1.z;
    r13.xy = t1.SampleLevel(s2_s, r1.xy, 0).xy;
    r1.y = 1 + -r3.x;
    r1.y = r13.y * r1.y;
    r13.xyz = r8.xyz * r13.xxx + r1.yyy;
    r7.xyz = r13.xyz * r7.xyz;
    r1.y = log2(r3.y);
    r1.y = -r1.y * 1.14999998 + 3;
    r1.y = r5.w + -r1.y;
    r11.xyz = t0.SampleLevel(s1_s, r11.xyz, r1.y).xyz;
    r1.y = 1 + -r1.x;
    r3.w = r1.y * r1.y;
    r3.w = r3.w * r3.w;
    r5.w = r3.w * r1.y;
    r1.y = -r1.y * r3.w + 1;
    r1.y = r1.y * 0.0399999991 + r5.w;
    r3.w = r1.y * r3.x;
    r1.y = -r1.y * r3.x + 1;
    r9.xyz = r9.xyz * r1.yyy;
    r11.xyz = r11.xyz * r3.www;
    r7.xyz = r7.xyz * r1.yyy + r11.xyz;
  } else {
    r1.y = log2(r1.z);
    r1.y = -r1.y * 1.14999998 + 3;
    r3.w = -1 + cb0[28].w;
    r1.y = r3.w + -r1.y;
    r0.xyz = t0.SampleLevel(s1_s, r0.xyz, r1.y).xyz;
    r1.xy = t1.SampleLevel(s2_s, r1.xz, 0).xy;
    r3.w = saturate(50 * r8.y);
    r1.y = r3.w * r1.y;
    r8.xyz = r8.xyz * r1.xxx + r1.yyy;
    r7.xyz = r8.xyz * r0.xyz;
  }
  if (r7.w != 0) {
    r2.xyzw = r5.xxxx ? r2.xyzw : r6.xyzw;
    r0.xyz = -r4.xyz * r0.www + -r10.xyz;
    r1.x = dot(r0.xyz, r0.xyz);
    r1.x = rsqrt(r1.x);
    r0.xyz = r1.xxx * r0.xyz;
    r6.xyz = t0.SampleLevel(s1_s, r0.xyz, cb0[28].z).xyz;
    r1.x = max(0.00392156886, r1.z);
    r1.x = min(1, r1.x);
    r1.y = dot(-r10.xyz, r0.xyz);
    r1.z = dot(r4.xyz, r0.xyz);
    r3.w = max(-1, r1.z);
    r3.w = min(1, r3.w);
    r0.w = max(-1, r0.w);
    r0.w = min(1, r0.w);
    r5.x = abs(r0.w) * -0.156582996 + 1.57079637;
    r5.w = 1 + -abs(r0.w);
    r5.w = sqrt(r5.w);
    r6.w = r5.x * r5.w;
    r7.w = cmp(r0.w >= 0);
    r5.x = -r5.x * r5.w + 3.14159274;
    r5.x = r7.w ? r6.w : r5.x;
    r5.w = abs(r3.w) * -0.156582996 + 1.57079637;
    r6.w = 1 + -abs(r3.w);
    r6.w = sqrt(r6.w);
    r7.w = r6.w * r5.w;
    r8.x = cmp(r3.w >= 0);
    r5.w = -r5.w * r6.w + 3.14159274;
    r5.w = r8.x ? r7.w : r5.w;
    r5.xw = float2(1.57079637,1.57079637) + -r5.xw;
    r5.x = r5.x + -r5.w;
    r5.x = 0.5 * abs(r5.x);
    r5.x = cos(r5.x);
    r8.xyz = -r3.www * r4.xyz + r0.xyz;
    r4.xyz = -r0.www * r4.xyz + -r10.xyz;
    r5.w = dot(r8.xyz, r4.xyz);
    r6.w = dot(r8.xyz, r8.xyz);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = r6.w * r4.x + 9.99999975e-005;
    r4.x = rsqrt(r4.x);
    r4.x = r5.w * r4.x;
    r4.xy = r4.xx * float2(0.5,17) + float2(0.5,-16.7800007);
    r4.x = saturate(r4.x);
    r4.x = sqrt(r4.x);
    r4.z = r1.x * r1.x;
    r1.x = r1.x * r1.x + 0.200000003;
    r4.z = r4.z * 2 + 0.200000003;
    r5.w = 0.997551024 * r4.x;
    r6.w = -r0.w * r0.w + 1;
    r6.w = sqrt(r6.w);
    r7.w = -0.0699428469 * r0.w;
    r5.w = r5.w * r6.w + r7.w;
    r1.x = r1.x * r4.x;
    r8.xy = float2(1.41421354,3.54490757) * r1.xx;
    r0.w = r3.w + r0.w;
    r1.x = -r5.w * -0.139885694 + r0.w;
    r1.x = r1.x * r1.x;
    r1.x = -0.5 * r1.x;
    r3.w = r8.x * r8.x;
    r1.x = r1.x / r3.w;
    r1.x = 1.44269502 * r1.x;
    r1.x = exp2(r1.x);
    r1.x = r1.x / r8.y;
    r1.x = r1.x * r4.x;
    r3.w = saturate(r1.y * 0.5 + 0.5);
    r3.w = sqrt(r3.w);
    r3.w = 1 + -r3.w;
    r4.x = r3.w * r3.w;
    r4.x = r4.x * r4.x;
    r3.w = r4.x * r3.w;
    r3.w = r3.w * 0.953479409 + 0.0465205684;
    r1.x = r3.w * r1.x;
    r1.x = r1.x * r2.w;
    r1.x = 0.5 * r1.x;
    r1.y = saturate(-r1.y);
    r1.y = 1 + -r1.y;
    r0.w = -0.140000001 + r0.w;
    r0.w = r0.w * r0.w;
    r0.w = -0.5 * r0.w;
    r2.w = r4.z * r4.z;
    r0.w = r0.w / r2.w;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r2.w = 2.50662827 * r4.z;
    r0.w = r0.w / r2.w;
    r2.w = -r5.x * 0.5 + 1;
    r3.w = r2.w * r2.w;
    r3.w = r3.w * r3.w;
    r2.w = r3.w * r2.w;
    r2.w = r2.w * 0.953479409 + 0.0465205684;
    r3.w = 1 + -r2.w;
    r3.w = r3.w * r3.w;
    r2.w = r3.w * r2.w;
    r3.w = 0.800000012 / r5.x;
    r8.xyz = log2(r2.xyz);
    r8.xyz = r8.xyz * r3.www;
    r8.xyz = exp2(r8.xyz);
    r3.w = 1.44269502 * r4.y;
    r3.w = exp2(r3.w);
    r0.w = r3.w * r0.w;
    r0.w = r0.w * r2.w;
    r4.xyz = r0.www * r8.xyz;
    r4.xyz = r1.xxx * r1.yyy + r4.xyz;
    r0.w = 1 + -abs(r1.z);
    r0.x = dot(r0.xyz, r0.xyz);
    r0.x = 1 + r0.x;
    r0.x = 0.25 * r0.x;
    r0.x = min(1, r0.x);
    r0.y = r0.w + -r0.x;
    r0.x = r0.y * 0.330000013 + r0.x;
    r0.x = r1.w * r0.x;
    r0.x = 0.318309873 * r0.x;
    r0.yzw = sqrt(r2.xyz);
    r0.xyz = r0.yzw * r0.xxx + r4.xyz;
    r0.xyz = min(float3(0,0,0), -r0.xyz);
    r0.xyz = r6.xyz * -r0.xyz;
    r7.xyz = float3(3.14159274,3.14159274,3.14159274) * r0.xyz;
    r9.xyz = float3(0,0,0);
  }
  r0.x = t6.SampleLevel(s3_s, v0.xy, 0).x;
  r0.x = r4.w * r0.x;
  if (r5.z != 0) {
    r0.yzw = r3.xyz * r3.xyz;
    r1.xyz = r12.xyz * r0.yzw;
    r9.xyz = r1.xyz * float3(0.5,0.5,0.5) + r9.xyz;
    r1.x = -2.5 + cb0[28].z;
    r1.xyz = t0.SampleLevel(s1_s, r10.xyz, r1.x).xyz;
    r0.yzw = r1.xyz * r0.yzw;
    r1.x = 0.5 * r0.x;
    r7.xyz = r0.yzw * r1.xxx + r7.xyz;
  }
  r0.yzw = r9.xyz + r7.xyz;
  r1.xyz = cb0[27].xyz * r0.yzw;
  r0.y = cmp(cb1[207].z == 0.000000);
  r2.xyz = cb0[27].xyz * r9.xyz;
  r0.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.z = r0.y ? r0.z : 0;
  r0.z = (int)r0.z & (int)r5.y;
  r1.w = r0.y ? r0.z : 0;
  o0.xyzw = r1.xyzw * r0.xxxx;
  return;
}
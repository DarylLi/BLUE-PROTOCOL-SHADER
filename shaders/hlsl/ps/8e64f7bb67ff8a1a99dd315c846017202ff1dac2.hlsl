// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r1.xy = v0.xy * cb1[132].zw + -cb1[66].wz;
  r1.xy = r1.xy / cb1[66].xy;
  r1.xy = r1.xy * r0.zz;
  r2.xyzw = cb0[30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[29].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[31].xyzw + r2.xyzw;
  r2.xyzw = cb0[32].xyzw + r2.xyzw;
  r1.zw = r2.xy / r2.ww;
  r0.w = -cb0[28].x + r2.z;
  r0.w = saturate(cb0[28].y * r0.w);
  r0.w = 1 + -r0.w;
  r2.x = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r2.x = 255 * r2.x;
  r2.x = round(r2.x);
  r2.x = (uint)r2.x;
  r2.x = (int)r2.x & 15;
  r3.xyzw = cmp((int4)r2.xxxx == int4(12,13,2,3));
  r2.yw = (int2)r3.yw | (int2)r3.xz;
  r2.y = ~(int)r2.y;
  r3.z = cmp((int)r2.x != 14);
  r2.y = r3.z ? r2.y : 0;
  if (r2.y != 0) {
    r4.xyz = cb1[49].xyz * r1.yyy;
    r4.xyz = r1.xxx * cb1[48].xyz + r4.xyz;
    r4.xyz = r0.zzz * cb1[50].xyz + r4.xyz;
    r4.xyz = cb1[51].xyz + r4.xyz;
    r0.z = min(0.999989986, r2.z);
    r5.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.x = dot(r5.xyz, r5.xyz);
    r1.x = rsqrt(r1.x);
    r5.xyz = r5.xyz * r1.xxx;
    r1.x = cmp(cb0[34].w == 0.000000);
    r4.xyz = cb0[34].xyz + -r4.xyz;
    r1.y = dot(r4.xyz, r4.xyz);
    r1.y = rsqrt(r1.y);
    r4.xyz = r4.xyz * r1.yyy;
    r4.xyz = r1.xxx ? -cb0[34].xyz : r4.xyz;
    r1.x = saturate(dot(r5.xyz, r4.xyz));
    r1.y = 1 + -cb0[33].z;
    r1.x = r1.x * r1.y + cb0[33].z;
    r1.x = cb0[0].z * r1.x;
    r1.y = t4.SampleLevel(s1_s, r1.zw, 0).x;
    r0.z = r0.z * r1.x + -1;
    r0.z = saturate(r1.y * r1.x + -r0.z);
  } else {
    r0.z = 1;
  }
  r4.xyzw = cmp((int4)r2.xxxx == int4(5,6,7,9));
  r1.x = (int)r2.w | (int)r4.x;
  r1.x = (int)r4.y | (int)r1.x;
  r1.x = (int)r4.z | (int)r1.x;
  r1.x = (int)r4.w | (int)r1.x;
  if (r1.x != 0) {
    r0.x = t3.SampleLevel(s0_s, r0.xy, 0).w;
    r1.xy = cmp((int2)r2.xx == int2(4,8));
    r0.y = (int)r1.x | (int)r2.w;
    r0.y = (int)r4.x | (int)r0.y;
    r0.y = (int)r4.y | (int)r0.y;
    r0.y = (int)r4.z | (int)r0.y;
    r0.y = (int)r1.y | (int)r0.y;
    r0.y = (int)r3.x | (int)r0.y;
    r0.y = (int)r3.y | (int)r0.y;
    r0.y = (int)r4.w | (int)r0.y;
    r0.x = (int)r0.x & (int)r0.y;
    r0.x = min(0.999000013, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = -0.0346573591 * r0.x;
    r0.y = (int)r4.w | (int)r4.z;
    r0.x = r0.y ? 1 : r0.x;
    r0.y = cb0[33].x + r2.z;
    r0.x = cb0[33].w * r0.x;
    r1.x = t4.SampleLevel(s1_s, r1.zw, 0).x;
    r0.y = -r1.x + r0.y;
    r0.y = max(0, r0.y);
    r0.x = -r0.y * r0.x;
    r0.x = 1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.y = cmp(0.99000001 < r1.x);
    r0.x = r0.y ? 1 : r0.x;
  } else {
    r0.x = 1;
  }
  r0.y = -0.5 + r0.z;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.z = cb0[26].y * r0.w;
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xyzw = sqrt(r0.yxyx);
  return;
}
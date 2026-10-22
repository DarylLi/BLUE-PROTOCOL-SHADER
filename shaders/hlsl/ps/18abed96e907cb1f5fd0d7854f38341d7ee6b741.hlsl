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
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
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
  r1.yzw = cb1[49].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
  r1.xyz = r0.zzz * cb1[50].xyz + r1.xyz;
  r1.xyz = cb1[51].xyz + r1.xyz;
  r2.xy = r2.xy / r2.ww;
  r0.w = min(0.999989986, r2.z);
  r1.w = -cb0[28].x + r2.z;
  r1.w = saturate(cb0[28].y * r1.w);
  r1.w = 1 + -r1.w;
  r3.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.w = cmp(cb0[34].w == 0.000000);
  r1.xyz = cb0[34].xyz + -r1.xyz;
  r3.w = dot(r1.xyz, r1.xyz);
  r3.w = rsqrt(r3.w);
  r1.xyz = r3.www * r1.xyz;
  r1.xyz = r2.www ? -cb0[34].xyz : r1.xyz;
  r1.x = saturate(dot(r3.xyz, r1.xyz));
  r1.y = 1 + -cb0[33].z;
  r1.x = r1.x * r1.y + cb0[33].z;
  r1.x = cb0[0].z * r1.x;
  r1.y = t4.SampleLevel(s1_s, r2.xy, 0).x;
  r0.w = r0.w * r1.x + -1;
  r0.w = saturate(r1.y * r1.x + -r0.w);
  r0.z = -cb0[35].y + r0.z;
  r0.z = saturate(cb0[35].z * r0.z);
  o0.w = 1 + -r0.z;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r3.xyzw = cmp((int4)r0.zzzz == int4(2,3,5,6));
  r1.x = (int)r3.y | (int)r3.x;
  r2.xy = cmp((int2)r0.zz == int2(7,9));
  r1.z = (int)r3.z | (int)r1.x;
  r1.z = (int)r3.w | (int)r1.z;
  r1.z = (int)r2.x | (int)r1.z;
  r1.z = (int)r2.y | (int)r1.z;
  if (r1.z != 0) {
    r0.x = t3.SampleLevel(s0_s, r0.xy, 0).w;
    r4.xyzw = cmp((int4)r0.zzzz == int4(4,8,12,13));
    r0.y = (int)r1.x | (int)r4.x;
    r0.y = (int)r3.z | (int)r0.y;
    r0.y = (int)r3.w | (int)r0.y;
    r0.y = (int)r2.x | (int)r0.y;
    r0.y = (int)r4.y | (int)r0.y;
    r0.y = (int)r4.z | (int)r0.y;
    r0.y = (int)r4.w | (int)r0.y;
    r0.y = (int)r2.y | (int)r0.y;
    r0.x = (int)r0.x & (int)r0.y;
    r0.x = min(0.999000013, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = -0.0346573591 * r0.x;
    r0.y = (int)r2.y | (int)r2.x;
    r0.x = r0.y ? 1 : r0.x;
    r0.y = cb0[33].x + r2.z;
    r0.x = cb0[33].w * r0.x;
    r0.y = r0.y + -r1.y;
    r0.y = max(0, r0.y);
    r0.x = -r0.y * r0.x;
    r0.x = 1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.y = cmp(0.99000001 < r1.y);
    r0.x = r0.y ? 1 : r0.x;
  } else {
    r0.x = 1;
  }
  r0.y = -0.5 + r0.w;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.z = cb0[26].y * r1.w;
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xyz = sqrt(r0.yxy);
  return;
}
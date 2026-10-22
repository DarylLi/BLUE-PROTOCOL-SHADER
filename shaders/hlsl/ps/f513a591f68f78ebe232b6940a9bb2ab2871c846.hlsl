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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r3.zw = r1.zw * cb0[1].xy + float2(-0.5,-0.5);
    r4.xy = frac(r3.zw);
    r3.zw = floor(r3.zw);
    r3.zw = float2(0.5,0.5) + r3.zw;
    r3.zw = cb0[1].zw * r3.zw;
    r5.xyzw = t4.Gather(s1_s, r3.zw, int2(-1, -1)).xyzw;
    r0.z = r0.z * r1.x + -1;
    r5.xyzw = saturate(r5.xyzw * r1.xxxx + -r0.zzzz);
    r6.xyzw = t4.Gather(s1_s, r3.zw, int2(1, -1)).xyzw;
    r6.xyzw = saturate(r6.xyzw * r1.xxxx + -r0.zzzz);
    r7.xyzw = t4.Gather(s1_s, r3.zw, int2(-1, 1)).xyzw;
    r7.xyzw = saturate(r7.xyzw * r1.xxxx + -r0.zzzz);
    r8.xyzw = t4.Gather(s1_s, r3.zw, int2(1, 1)).xyzw;
    r8.xyzw = saturate(r8.xyzw * r1.xxxx + -r0.zzzz);
    r1.xy = float2(1,1) + -r4.xy;
    r3.zw = r5.wx * r1.xx + r5.zy;
    r4.zw = r7.wx * r1.xx + r7.zy;
    r3.zw = r3.zw + r6.wx;
    r4.zw = r4.zw + r8.wx;
    r5.xy = r6.zy * r4.xx + r3.zw;
    r5.zw = r8.zy * r4.xx + r4.zw;
    r6.x = 0.111111112 * r1.y;
    r6.yz = float2(0.111111112,0.111111112);
    r6.w = 0.111111112 * r4.y;
    r0.z = dot(r5.xyzw, r6.xyzw);
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
    r1.xy = r1.zw * cb0[1].xy + float2(-0.5,-0.5);
    r1.zw = frac(r1.xy);
    r1.xy = floor(r1.xy);
    r1.xy = float2(0.5,0.5) + r1.xy;
    r1.xy = cb0[1].zw * r1.xy;
    r2.xyzw = t4.Gather(s1_s, r1.xy, int2(-1, -1)).xyzw;
    r3.xyzw = -r2.xyzw + r0.yyyy;
    r3.xyzw = max(float4(0,0,0,0), r3.xyzw);
    r3.xyzw = -r3.xyzw * r0.xxxx;
    r3.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r3.xyzw;
    r3.xyzw = exp2(r3.xyzw);
    r3.xyzw = min(float4(1,1,1,1), r3.xyzw);
    r2.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r2.xyzw);
    r2.xyzw = r2.xyzw ? float4(1,1,1,1) : r3.xyzw;
    r3.xyzw = t4.Gather(s1_s, r1.xy, int2(1, -1)).xyzw;
    r4.xyzw = -r3.xyzw + r0.yyyy;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r4.xyzw = t4.Gather(s1_s, r1.xy, int2(-1, 1)).xyzw;
    r5.xyzw = -r4.xyzw + r0.yyyy;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r5.xyzw = t4.Gather(s1_s, r1.xy, int2(1, 1)).xyzw;
    r6.xyzw = -r5.xyzw + r0.yyyy;
    r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
    r6.xyzw = -r6.xyzw * r0.xxxx;
    r6.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r6.xyzw;
    r6.xyzw = exp2(r6.xyzw);
    r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : r6.xyzw;
    r0.xy = float2(1,1) + -r1.zw;
    r1.xy = r2.wx * r0.xx + r2.zy;
    r2.xy = r4.wx * r0.xx + r4.zy;
    r1.xy = r1.xy + r3.wx;
    r2.xy = r2.xy + r5.wx;
    r3.xy = r3.zy * r1.zz + r1.xy;
    r3.zw = r5.zy * r1.zz + r2.xy;
    r2.x = 0.111111112 * r0.y;
    r2.yz = float2(0.111111112,0.111111112);
    r2.w = 0.111111112 * r1.w;
    r0.x = dot(r3.xyzw, r2.xyzw);
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
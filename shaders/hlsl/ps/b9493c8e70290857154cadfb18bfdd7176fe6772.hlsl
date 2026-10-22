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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
    r1.x = min(0.999989986, r2.z);
    r5.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.y = dot(r5.xyz, r5.xyz);
    r1.y = rsqrt(r1.y);
    r5.xyz = r5.xyz * r1.yyy;
    r1.y = cmp(cb0[34].w == 0.000000);
    r4.xyz = cb0[34].xyz + -r4.xyz;
    r2.y = dot(r4.xyz, r4.xyz);
    r2.y = rsqrt(r2.y);
    r4.xyz = r4.xyz * r2.yyy;
    r4.xyz = r1.yyy ? -cb0[34].xyz : r4.xyz;
    r1.y = saturate(dot(r5.xyz, r4.xyz));
    r2.y = 1 + -cb0[33].z;
    r1.y = r1.y * r2.y + cb0[33].z;
    r1.y = cb0[0].z * r1.y;
    r3.zw = r1.zw * cb0[1].xy + float2(-0.5,-0.5);
    r4.xy = frac(r3.zw);
    r3.zw = floor(r3.zw);
    r3.zw = float2(0.5,0.5) + r3.zw;
    r3.zw = cb0[1].zw * r3.zw;
    r5.xyzw = t4.Gather(s1_s, r3.zw, int2(-2, -2)).xyzw;
    r1.x = r1.x * r1.y + -1;
    r5.xyzw = saturate(r5.xyzw * r1.yyyy + -r1.xxxx);
    r6.xyzw = t4.Gather(s1_s, r3.zw, int2(0, -2)).xyzw;
    r6.xyzw = saturate(r6.xyzw * r1.yyyy + -r1.xxxx);
    r7.xyzw = t4.Gather(s1_s, r3.zw, int2(2, -2)).xyzw;
    r7.xyzw = saturate(r7.xyzw * r1.yyyy + -r1.xxxx);
    r4.zw = float2(1,1) + -r4.xy;
    r5.xy = r5.wx * r4.zz + r5.zy;
    r5.xy = r5.xy + r6.wx;
    r5.xy = r5.xy + r6.zy;
    r5.xy = r5.xy + r7.wx;
    r5.xy = r7.zy * r4.xx + r5.xy;
    r2.y = r5.x * r4.w + r5.y;
    r5.xyzw = t4.Gather(s1_s, r3.zw, int2(-2, 0)).xyzw;
    r5.xyzw = saturate(r5.xyzw * r1.yyyy + -r1.xxxx);
    r6.xyzw = t4.Gather(s1_s, r3.zw).xyzw;
    r6.xyzw = saturate(r6.xyzw * r1.yyyy + -r1.xxxx);
    r7.xyzw = t4.Gather(s1_s, r3.zw, int2(2, 0)).xyzw;
    r7.xyzw = saturate(r7.xyzw * r1.yyyy + -r1.xxxx);
    r5.xy = r5.wx * r4.zz + r5.zy;
    r5.xy = r5.xy + r6.wx;
    r5.xy = r5.xy + r6.zy;
    r5.xy = r5.xy + r7.wx;
    r5.xy = r7.zy * r4.xx + r5.xy;
    r4.w = r5.x + r5.y;
    r2.y = r4.w + r2.y;
    r5.xyzw = t4.Gather(s1_s, r3.zw, int2(-2, 2)).xyzw;
    r5.xyzw = saturate(r5.xyzw * r1.yyyy + -r1.xxxx);
    r6.xyzw = t4.Gather(s1_s, r3.zw, int2(0, 2)).xyzw;
    r6.xyzw = saturate(r6.xyzw * r1.yyyy + -r1.xxxx);
    r7.xyzw = t4.Gather(s1_s, r3.zw, int2(2, 2)).xyzw;
    r7.xyzw = saturate(r7.xyzw * r1.yyyy + -r1.xxxx);
    r1.xy = r5.wx * r4.zz + r5.zy;
    r1.xy = r1.xy + r6.wx;
    r1.xy = r1.xy + r6.zy;
    r1.xy = r1.xy + r7.wx;
    r1.xy = r7.zy * r4.xx + r1.xy;
    r1.x = r1.y * r4.y + r1.x;
    r1.x = r2.y + r1.x;
    r1.x = 0.0399999991 * r1.x;
  } else {
    r1.x = 1;
  }
  r0.z = -cb0[35].y + r0.z;
  r0.z = saturate(cb0[35].z * r0.z);
  o0.w = 1 + -r0.z;
  r4.xyzw = cmp((int4)r2.xxxx == int4(5,6,7,9));
  r0.z = (int)r2.w | (int)r4.x;
  r0.z = (int)r4.y | (int)r0.z;
  r0.z = (int)r4.z | (int)r0.z;
  r0.z = (int)r4.w | (int)r0.z;
  if (r0.z != 0) {
    r0.x = t3.SampleLevel(s0_s, r0.xy, 0).w;
    r0.yz = cmp((int2)r2.xx == int2(4,8));
    r0.y = (int)r0.y | (int)r2.w;
    r0.y = (int)r4.x | (int)r0.y;
    r0.y = (int)r4.y | (int)r0.y;
    r0.y = (int)r4.z | (int)r0.y;
    r0.y = (int)r0.z | (int)r0.y;
    r0.y = (int)r3.x | (int)r0.y;
    r0.y = (int)r3.y | (int)r0.y;
    r0.y = (int)r4.w | (int)r0.y;
    r0.x = r0.y ? r0.x : 0;
    r0.x = min(0.999000013, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = -0.0346573591 * r0.x;
    r0.y = (int)r4.w | (int)r4.z;
    r0.x = r0.y ? 1 : r0.x;
    r0.y = cb0[33].x + r2.z;
    r0.x = cb0[33].w * r0.x;
    r1.yz = r1.zw * cb0[1].xy + float2(-0.5,-0.5);
    r2.xy = frac(r1.yz);
    r1.yz = floor(r1.yz);
    r1.yz = float2(0.5,0.5) + r1.yz;
    r1.yz = cb0[1].zw * r1.yz;
    r3.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, -2)).xyzw;
    r4.xyzw = -r3.xyzw + r0.yyyy;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r4.xyzw = t4.Gather(s1_s, r1.yz, int2(0, -2)).xyzw;
    r5.xyzw = -r4.xyzw + r0.yyyy;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r5.xyzw = t4.Gather(s1_s, r1.yz, int2(2, -2)).xyzw;
    r6.xyzw = -r5.xyzw + r0.yyyy;
    r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
    r6.xyzw = -r6.xyzw * r0.xxxx;
    r6.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r6.xyzw;
    r6.xyzw = exp2(r6.xyzw);
    r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : r6.xyzw;
    r2.zw = float2(1,1) + -r2.xy;
    r3.xy = r3.wx * r2.zz + r3.zy;
    r3.xy = r3.xy + r4.wx;
    r3.xy = r3.xy + r4.zy;
    r3.xy = r3.xy + r5.wx;
    r3.xy = r5.zy * r2.xx + r3.xy;
    r0.z = r3.x * r2.w + r3.y;
    r3.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, 0)).xyzw;
    r4.xyzw = -r3.xyzw + r0.yyyy;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r4.xyzw = t4.Gather(s1_s, r1.yz).xyzw;
    r5.xyzw = -r4.xyzw + r0.yyyy;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r5.xyzw = t4.Gather(s1_s, r1.yz, int2(2, 0)).xyzw;
    r6.xyzw = -r5.xyzw + r0.yyyy;
    r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
    r6.xyzw = -r6.xyzw * r0.xxxx;
    r6.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r6.xyzw;
    r6.xyzw = exp2(r6.xyzw);
    r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : r6.xyzw;
    r3.xy = r3.wx * r2.zz + r3.zy;
    r3.xy = r3.xy + r4.wx;
    r3.xy = r3.xy + r4.zy;
    r3.xy = r3.xy + r5.wx;
    r3.xy = r5.zy * r2.xx + r3.xy;
    r1.w = r3.x + r3.y;
    r0.z = r1.w + r0.z;
    r3.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, 2)).xyzw;
    r4.xyzw = -r3.xyzw + r0.yyyy;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r4.xyzw = t4.Gather(s1_s, r1.yz, int2(0, 2)).xyzw;
    r5.xyzw = -r4.xyzw + r0.yyyy;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r5.xyzw = t4.Gather(s1_s, r1.yz, int2(2, 2)).xyzw;
    r6.xyzw = -r5.xyzw + r0.yyyy;
    r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
    r6.xyzw = -r6.xyzw * r0.xxxx;
    r6.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r6.xyzw;
    r6.xyzw = exp2(r6.xyzw);
    r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : r6.xyzw;
    r0.xy = r3.wx * r2.zz + r3.zy;
    r0.xy = r0.xy + r4.wx;
    r0.xy = r0.xy + r4.zy;
    r0.xy = r0.xy + r5.wx;
    r0.xy = r5.zy * r2.xx + r0.xy;
    r0.x = r0.y * r2.y + r0.x;
    r0.x = r0.z + r0.x;
    r0.x = 0.0399999991 * r0.x;
  } else {
    r0.x = 1;
  }
  r0.y = -0.5 + r1.x;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.z = cb0[26].y * r0.w;
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xyz = sqrt(r0.yxy);
  return;
}
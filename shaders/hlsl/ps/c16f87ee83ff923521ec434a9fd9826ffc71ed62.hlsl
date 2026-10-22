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
  r1.yz = r2.xy * cb0[1].xy + float2(-0.5,-0.5);
  r2.xy = frac(r1.yz);
  r1.yz = floor(r1.yz);
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = cb0[1].zw * r1.yz;
  r3.xyzw = t4.Gather(s1_s, r1.yz).xyzw;
  r0.w = r0.w * r1.x + -1;
  r4.xyzw = saturate(r3.xyzw * r1.xxxx + -r0.wwww);
  r1.xy = r4.zy + -r4.wx;
  r1.xy = r2.xx * r1.xy + r4.wx;
  r0.w = r1.y + -r1.x;
  r0.w = r2.y * r0.w + r1.x;
  r0.z = -cb0[35].y + r0.z;
  r0.z = saturate(cb0[35].z * r0.z);
  o0.w = 1 + -r0.z;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r4.xyzw = cmp((int4)r0.zzzz == int4(2,3,5,6));
  r1.x = (int)r4.y | (int)r4.x;
  r1.yz = cmp((int2)r0.zz == int2(7,9));
  r2.w = (int)r4.z | (int)r1.x;
  r2.w = (int)r4.w | (int)r2.w;
  r2.w = (int)r1.y | (int)r2.w;
  r2.w = (int)r1.z | (int)r2.w;
  if (r2.w != 0) {
    r0.x = t3.SampleLevel(s0_s, r0.xy, 0).w;
    r5.xyzw = cmp((int4)r0.zzzz == int4(4,8,12,13));
    r0.y = (int)r1.x | (int)r5.x;
    r0.y = (int)r4.z | (int)r0.y;
    r0.y = (int)r4.w | (int)r0.y;
    r0.y = (int)r1.y | (int)r0.y;
    r0.y = (int)r5.y | (int)r0.y;
    r0.y = (int)r5.z | (int)r0.y;
    r0.y = (int)r5.w | (int)r0.y;
    r0.y = (int)r1.z | (int)r0.y;
    r0.x = (int)r0.x & (int)r0.y;
    r0.x = min(0.999000013, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = -0.0346573591 * r0.x;
    r0.y = (int)r1.z | (int)r1.y;
    r0.x = r0.y ? 1 : r0.x;
    r0.y = cb0[33].x + r2.z;
    r0.x = cb0[33].w * r0.x;
    r4.xyzw = r0.yyyy + -r3.xyzw;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r0.xy = r3.zy + -r3.wx;
    r0.xy = r2.xx * r0.xy + r3.wx;
    r0.y = r0.y + -r0.x;
    r0.x = r2.y * r0.y + r0.x;
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
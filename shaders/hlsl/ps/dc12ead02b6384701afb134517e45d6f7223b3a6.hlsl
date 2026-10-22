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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r3.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, -2)).xyzw;
  r0.w = r0.w * r1.x + -1;
  r4.xyzw = saturate(r3.xyzw * r1.xxxx + -r0.wwww);
  r5.xyzw = t4.Gather(s1_s, r1.yz, int2(0, -2)).xyzw;
  r6.xyzw = saturate(r5.xyzw * r1.xxxx + -r0.wwww);
  r7.xyzw = t4.Gather(s1_s, r1.yz, int2(2, -2)).xyzw;
  r8.xyzw = saturate(r7.xyzw * r1.xxxx + -r0.wwww);
  r9.xy = float2(1,1) + -r2.xy;
  r4.xy = r4.wx * r9.xx + r4.zy;
  r4.xy = r4.xy + r6.wx;
  r4.xy = r4.xy + r6.zy;
  r4.xy = r4.xy + r8.wx;
  r4.xy = r8.zy * r2.xx + r4.xy;
  r2.w = r4.x * r9.y + r4.y;
  r4.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, 0)).xyzw;
  r6.xyzw = saturate(r4.xyzw * r1.xxxx + -r0.wwww);
  r8.xyzw = t4.Gather(s1_s, r1.yz).xyzw;
  r10.xyzw = saturate(r8.xyzw * r1.xxxx + -r0.wwww);
  r11.xyzw = t4.Gather(s1_s, r1.yz, int2(2, 0)).xyzw;
  r12.xyzw = saturate(r11.xyzw * r1.xxxx + -r0.wwww);
  r6.xy = r6.wx * r9.xx + r6.zy;
  r6.xy = r6.xy + r10.wx;
  r6.xy = r6.xy + r10.zy;
  r6.xy = r6.xy + r12.wx;
  r6.xy = r12.zy * r2.xx + r6.xy;
  r6.x = r6.x + r6.y;
  r2.w = r6.x + r2.w;
  r6.xyzw = t4.Gather(s1_s, r1.yz, int2(-2, 2)).xyzw;
  r10.xyzw = saturate(r6.xyzw * r1.xxxx + -r0.wwww);
  r12.xyzw = t4.Gather(s1_s, r1.yz, int2(0, 2)).xyzw;
  r13.xyzw = saturate(r12.xyzw * r1.xxxx + -r0.wwww);
  r14.xyzw = t4.Gather(s1_s, r1.yz, int2(2, 2)).xyzw;
  r15.xyzw = saturate(r14.xyzw * r1.xxxx + -r0.wwww);
  r1.xy = r10.wx * r9.xx + r10.zy;
  r1.xy = r1.xy + r13.wx;
  r1.xy = r1.xy + r13.zy;
  r1.xy = r1.xy + r15.wx;
  r1.xy = r15.zy * r2.xx + r1.xy;
  r0.w = r1.y * r2.y + r1.x;
  r0.w = r2.w + r0.w;
  r0.z = -cb0[35].y + r0.z;
  r0.z = saturate(cb0[35].z * r0.z);
  o0.w = 1 + -r0.z;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r10.xyzw = cmp((int4)r0.zzzz == int4(2,3,5,6));
  r1.x = (int)r10.y | (int)r10.x;
  r1.yz = cmp((int2)r0.zz == int2(7,9));
  r2.w = (int)r10.z | (int)r1.x;
  r2.w = (int)r10.w | (int)r2.w;
  r2.w = (int)r1.y | (int)r2.w;
  r2.w = (int)r1.z | (int)r2.w;
  if (r2.w != 0) {
    r0.x = t3.SampleLevel(s0_s, r0.xy, 0).w;
    r13.xyzw = cmp((int4)r0.zzzz == int4(4,8,12,13));
    r0.y = (int)r1.x | (int)r13.x;
    r0.y = (int)r10.z | (int)r0.y;
    r0.y = (int)r10.w | (int)r0.y;
    r0.y = (int)r1.y | (int)r0.y;
    r0.y = (int)r13.y | (int)r0.y;
    r0.y = (int)r13.z | (int)r0.y;
    r0.y = (int)r13.w | (int)r0.y;
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
    r10.xyzw = r0.yyyy + -r3.xyzw;
    r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
    r10.xyzw = -r10.xyzw * r0.xxxx;
    r10.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r10.xyzw;
    r10.xyzw = exp2(r10.xyzw);
    r10.xyzw = min(float4(1,1,1,1), r10.xyzw);
    r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r3.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : r10.xyzw;
    r10.xyzw = r0.yyyy + -r5.xyzw;
    r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
    r10.xyzw = -r10.xyzw * r0.xxxx;
    r10.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r10.xyzw;
    r10.xyzw = exp2(r10.xyzw);
    r10.xyzw = min(float4(1,1,1,1), r10.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : r10.xyzw;
    r10.xyzw = r0.yyyy + -r7.xyzw;
    r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
    r10.xyzw = -r10.xyzw * r0.xxxx;
    r10.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r10.xyzw;
    r10.xyzw = exp2(r10.xyzw);
    r10.xyzw = min(float4(1,1,1,1), r10.xyzw);
    r7.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r7.xyzw);
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : r10.xyzw;
    r1.xy = r3.wx * r9.xx + r3.zy;
    r1.xy = r1.xy + r5.wx;
    r1.xy = r1.xy + r5.zy;
    r1.xy = r1.xy + r7.wx;
    r1.xy = r7.zy * r2.xx + r1.xy;
    r0.z = r1.x * r9.y + r1.y;
    r3.xyzw = r0.yyyy + -r4.xyzw;
    r3.xyzw = max(float4(0,0,0,0), r3.xyzw);
    r3.xyzw = -r3.xyzw * r0.xxxx;
    r3.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r3.xyzw;
    r3.xyzw = exp2(r3.xyzw);
    r3.xyzw = min(float4(1,1,1,1), r3.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
    r3.xyzw = r4.xyzw ? float4(1,1,1,1) : r3.xyzw;
    r4.xyzw = r0.yyyy + -r8.xyzw;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r8.xyzw);
    r4.xyzw = r5.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r5.xyzw = r0.yyyy + -r11.xyzw;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r7.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r11.xyzw);
    r5.xyzw = r7.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r1.xy = r3.wx * r9.xx + r3.zy;
    r1.xy = r1.xy + r4.wx;
    r1.xy = r1.xy + r4.zy;
    r1.xy = r1.xy + r5.wx;
    r1.xy = r5.zy * r2.xx + r1.xy;
    r1.x = r1.x + r1.y;
    r0.z = r1.x + r0.z;
    r3.xyzw = r0.yyyy + -r6.xyzw;
    r3.xyzw = max(float4(0,0,0,0), r3.xyzw);
    r3.xyzw = -r3.xyzw * r0.xxxx;
    r3.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r3.xyzw;
    r3.xyzw = exp2(r3.xyzw);
    r3.xyzw = min(float4(1,1,1,1), r3.xyzw);
    r4.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r6.xyzw);
    r3.xyzw = r4.xyzw ? float4(1,1,1,1) : r3.xyzw;
    r4.xyzw = r0.yyyy + -r12.xyzw;
    r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
    r4.xyzw = -r4.xyzw * r0.xxxx;
    r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
    r4.xyzw = exp2(r4.xyzw);
    r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
    r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r12.xyzw);
    r4.xyzw = r5.xyzw ? float4(1,1,1,1) : r4.xyzw;
    r5.xyzw = r0.yyyy + -r14.xyzw;
    r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
    r5.xyzw = -r5.xyzw * r0.xxxx;
    r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
    r5.xyzw = exp2(r5.xyzw);
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r6.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r14.xyzw);
    r5.xyzw = r6.xyzw ? float4(1,1,1,1) : r5.xyzw;
    r0.xy = r3.wx * r9.xx + r3.zy;
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
  r0.y = r0.w * 0.0399999991 + -0.5;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.z = cb0[26].y * r1.w;
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xyz = sqrt(r0.yxy);
  return;
}
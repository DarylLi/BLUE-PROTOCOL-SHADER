// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[359];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[50];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t5.Sample(s1_s, r0.xy).xyzw;
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.w + r0.w;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r3.xyzw = cmp((int4)r0.zzzz == int4(12,13,2,3));
  r2.w = (int)r3.w | (int)r3.z;
  r4.xyzw = cmp((int4)r0.zzzz == int4(5,6,7,9));
  r3.zw = cmp((int2)r0.zz == int2(14,1));
  r0.z = (int)r3.z | (int)r3.x;
  if (r0.z != 0) {
    r0.z = r0.w / cb0[10].z;
    r0.z = min(1, r0.z);
    r5.xy = float2(1,1) + -cb0[10].xy;
    r5.xy = r0.zz * r5.xy + cb0[10].xy;
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r6.xyz = r1.xyz + -r0.zzz;
    r5.xzw = r5.xxx * r6.xyz + r0.zzz;
    r5.xzw = max(float3(0,0,0), r5.xzw);
    r5.xzw = float3(5.55555534,5.55555534,5.55555534) * r5.xzw;
    r5.xzw = log2(r5.xzw);
    r5.xyz = r5.yyy * r5.xzw;
    r5.xyz = exp2(r5.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
  } else {
    r0.z = dot(cb0[14].xyz, r2.xyz);
    r5.x = cmp(0 < r0.z);
    r5.y = cmp(0 < asuint(cb0[15].w));
    r5.x = r5.y ? r5.x : 0;
    if (r5.x != 0) {
      r5.x = cb0[15].w;
      r5.y = 0;
      while (true) {
        r5.z = cmp((uint)r5.y >= asuint(cb0[15].w));
        if (r5.z != 0) break;
        r5.z = dot(cb0[16].xyzw, icb[r5.y+0].xyzw);
        r5.z = cmp(r0.w < r5.z);
        if (r5.z != 0) {
          r5.x = r5.y;
          break;
        }
        r5.y = (int)r5.y + 1;
      }
      r5.y = cmp((uint)r5.x < asuint(cb0[15].w));
      if (r5.y != 0) {
        r5.yz = v1.xy * cb1[132].zw + -cb1[66].wz;
        r5.yz = r5.yz / cb1[66].xy;
        r5.yz = r5.yz * r0.ww;
        r5.w = (uint)r5.x << 2;
        r6.xyzw = cb0[r5.w+19].xyzw * r5.zzzz;
        r6.xyzw = r5.yyyy * cb0[r5.w+18].xyzw + r6.xyzw;
        r6.xyzw = r0.wwww * cb0[r5.w+20].xyzw + r6.xyzw;
        r6.xyzw = cb0[r5.w+21].xyzw + r6.xyzw;
        r5.y = min(0.999989986, r6.z);
        r5.x = dot(cb0[17].xyzw, icb[r5.x+0].xyzw);
        r7.xyzw = r6.xyxy * cb0[13].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r8.xy = frac(r7.zw);
        r7.xyzw = floor(r7.xyzw);
        r9.xyzw = float4(0.5,1.5,0.5,0.5) + r7.zwzw;
        r9.xyzw = cb0[13].zwzw * r9.xyzw;
        r10.x = t6.SampleLevel(s2_s, r9.xy, 0).x;
        r7.xyzw = float4(1.5,1.5,1.5,0.5) + r7.xyzw;
        r7.xyzw = cb0[13].zwzw * r7.xyzw;
        r10.y = t6.SampleLevel(s2_s, r7.xy, 0).x;
        r10.z = t6.SampleLevel(s2_s, r7.zw, 0).x;
        r10.w = t6.SampleLevel(s2_s, r9.zw, 0).x;
        r5.z = min(1, r10.x);
        r5.z = min(r10.y, r5.z);
        r5.z = min(r10.z, r5.z);
        r5.z = min(r10.w, r5.z);
        r5.y = r5.y * r5.x + -1;
        r7.xyzw = saturate(r10.xyzw * r5.xxxx + -r5.yyyy);
        r5.xy = r7.zy + -r7.wx;
        r5.xy = r8.xx * r5.xy + r7.wx;
        r5.y = r5.y + -r5.x;
        r5.x = r8.y * r5.y + r5.x;
        r5.x = -0.5 + r5.x;
        r5.x = saturate(r5.x * cb0[15].x + 0.5);
        r7.xyzw = cb0[r5.w+35].xyzw * r6.yyyy;
        r7.xyzw = r6.xxxx * cb0[r5.w+34].xyzw + r7.xyzw;
        r8.xyzw = r5.zzzz * cb0[r5.w+36].xyzw + r7.xyzw;
        r8.xyzw = r6.wwww * cb0[r5.w+37].xyzw + r8.xyzw;
        r7.xyzw = r6.zzzz * cb0[r5.w+36].xyzw + r7.xyzw;
        r6.xyzw = r6.wwww * cb0[r5.w+37].xyzw + r7.xyzw;
        r6.xyzw = r8.xyzw + -r6.xyzw;
        r5.y = dot(r6.xyzw, r6.xyzw);
        r5.y = sqrt(r5.y);
        r5.y = r5.y / cb0[14].w;
        r5.y = min(1, r5.y);
        r5.z = 1 + -r5.x;
        r5.x = r5.y * r5.z + r5.x;
        r0.z = saturate(r0.z);
        r5.x = -1 + r5.x;
        r0.z = r0.z * r5.x + 1;
        r5.x = saturate(r0.w * cb0[15].y + cb0[15].z);
        r5.x = r5.x * r5.x;
        r5.y = 1 + -r0.z;
        r0.z = r5.x * r5.y + r0.z;
        r5.xyz = float3(1,1,1) + -cb0[12].xyz;
        r5.xyz = r0.zzz * r5.xyz + cb0[12].xyz;
        r1.xyz = r5.xyz * r1.xyz;
      }
    }
  }
  if (r3.z != 0) {
    r5.xyz = t4.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.z = (int)r2.w | (int)r4.x;
    r0.z = (int)r4.y | (int)r0.z;
    r0.z = (int)r4.z | (int)r0.z;
    r0.z = (int)r3.x | (int)r0.z;
    r0.z = (int)r3.y | (int)r0.z;
    r0.z = (int)r4.w | (int)r0.z;
    r5.xyz = (int3)r5.xyz & (int3)r0.zzz;
    r0.z = cmp(0.100000001 < r1.w);
    r5.xyz = r5.xyz * r5.xyz;
    r1.xyz = r0.zzz ? r5.xyz : r1.xyz;
  }
  r0.z = (int)r2.w | (int)r4.x;
  r0.z = (int)r4.y | (int)r0.z;
  r0.z = (int)r4.z | (int)r0.z;
  r0.z = (int)r4.w | (int)r0.z;
  r0.z = (int)r0.z | (int)r3.w;
  if (r0.z != 0) {
    r5.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xy = cb1[132].xy * r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.z = (uint)cb1[152].x;
    r0.x = (int)r0.y + (int)r0.x;
    r0.x = (int)r0.z + (int)r0.x;
    r0.x = (int)r0.x & 1;
    r0.y = (int)r3.y | (int)r3.x;
    r0.z = (int)r4.w | (int)r4.x;
    r2.w = cmp(0 < cb1[156].y);
    r3.x = cmp(0 < cb1[207].z);
    r2.w = r2.w ? r3.x : 0;
    r3.x = cmp(0 != cb1[156].y);
    r3.xyz = r3.xxx ? float3(1,1,1) : r5.xyz;
    r0.x = r0.x ? 1 : 0;
    r3.xyz = r2.www ? r0.xxx : r3.xyz;
    r3.xyz = r0.zzz ? r3.xyz : r5.xyz;
    r0.xyz = r0.yyy ? r5.xyz : r3.xyz;
    r3.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r0.xyz);
    r3.xyz = r1.xyz / r3.xyz;
    r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = saturate(r2.w / cb0[0].x);
    r3.w = saturate(r0.w / cb0[0].y);
    r4.xyzw = cb0[3].xyzw + -cb0[1].xyzw;
    r4.xyzw = r3.wwww * r4.xyzw + cb0[1].xyzw;
    r5.x = 1 + -r1.w;
    r5.yz = float2(2.29999995,2.29999995) * cb1[130].zw;
    r6.x = v1.x * cb1[132].z + r5.y;
    r6.y = v1.y * cb1[132].w + -r5.z;
    r5.yzw = t5.Gather(s1_s, r6.xy).yzw;
    r5.yzw = float3(1,1,1) + -r5.ywz;
    r5.z = r5.z + -r5.x;
    r5.xy = r5.xx + -r5.yw;
    r5.x = max(abs(r5.x), abs(r5.z));
    r5.x = max(r5.x, abs(r5.y));
    r6.xyzw = cb0[4].xyzw + -cb0[2].xyzw;
    r6.xyzw = r3.wwww * r6.xyzw + cb0[2].xyzw;
    r5.y = cb0[0].w + -cb0[0].z;
    r3.w = r3.w * r5.y + cb0[0].z;
    r5.x = log2(r5.x);
    r3.w = r5.x * r3.w;
    r3.w = exp2(r3.w);
    r3.w = 100 * r3.w;
    r3.w = min(1, r3.w);
    r2.x = dot(r2.xyz, cb1[358].xyz);
    r2.x = cmp(r2.x >= 0);
    r2.x = r2.x ? 1.000000 : 0;
    r2.x = r3.w * r2.x;
    r5.xyzw = r6.xyzw + -r4.xyzw;
    r4.xyzw = r2.xxxx * r5.xyzw + r4.xyzw;
    r0.x = max(r0.x, r0.y);
    r0.x = max(r0.x, r0.z);
    r0.x = r4.z + r0.x;
    r2.xyz = float3(1,0.666666687,0.333333343) + r4.xxx;
    r2.xyz = frac(r2.xyz);
    r2.xyz = r2.xyz * float3(6,6,6) + float3(-3,-3,-3);
    r2.xyz = saturate(float3(-1,-1,-1) + abs(r2.xyz));
    r2.xyzw = float4(-1,-1,-1,-1) + r2.xyzw;
    r2.xyz = r4.yyy * r2.xyz + float3(1,1,1);
    r0.xyz = r2.xyz * r0.xxx;
    r2.xyz = r0.xyz * r3.xyz;
    r2.w = r4.w * r2.w + 1;
    r0.xyz = -r0.xyz * r3.xyz + r1.xyz;
    r0.xyz = r2.www * r0.xyz + r2.xyz;
    r0.w = saturate(r0.w / cb0[11].z);
    r2.xy = float2(-1,-1) + cb0[11].xy;
    r2.xy = r0.ww * r2.xy + float2(1,1);
    r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = r0.xyz + -r0.www;
    r0.xyz = r2.xxx * r0.xyz + r0.www;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r2.yyy * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  o0.xyzw = r1.xyzw;
  return;
}
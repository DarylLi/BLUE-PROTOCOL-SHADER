// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t4.Sample(s1_s, r0.xy).xyzw;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.x + r0.w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r2.xyzw = cmp((int4)r0.zzzz == int4(2,3,5,6));
  r2.x = (int)r2.y | (int)r2.x;
  r3.xyzw = cmp((int4)r0.zzzz == int4(7,12,9,14));
  r2.y = (int)r3.w | (int)r3.y;
  if (r2.y != 0) {
    r2.y = r0.w / cb0[10].z;
    r2.y = min(1, r2.y);
    r4.xy = float2(1,1) + -cb0[10].xy;
    r4.xy = r2.yy * r4.xy + cb0[10].xy;
    r2.y = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = -r2.yyy + r1.xyz;
    r4.xzw = r4.xxx * r5.xyz + r2.yyy;
    r4.xzw = max(float3(0,0,0), r4.xzw);
    r4.xzw = float3(5.55555534,5.55555534,5.55555534) * r4.xzw;
    r4.xzw = log2(r4.xzw);
    r4.xyz = r4.yyy * r4.xzw;
    r4.xyz = exp2(r4.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r4.xyz;
  } else {
    r4.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.y = dot(cb0[14].xyz, r4.xyz);
    r4.x = cmp(0 < r2.y);
    r4.y = cmp(0 < asuint(cb0[15].w));
    r4.x = r4.y ? r4.x : 0;
    if (r4.x != 0) {
      r4.x = cb0[15].w;
      r4.y = 0;
      while (true) {
        r4.z = cmp((uint)r4.y >= asuint(cb0[15].w));
        if (r4.z != 0) break;
        r4.z = dot(cb0[16].xyzw, icb[r4.y+0].xyzw);
        r4.z = cmp(r0.w < r4.z);
        if (r4.z != 0) {
          r4.x = r4.y;
          break;
        }
        r4.y = (int)r4.y + 1;
      }
      r4.y = cmp((uint)r4.x < asuint(cb0[15].w));
      if (r4.y != 0) {
        r4.yz = v1.xy * cb1[132].zw + -cb1[66].wz;
        r4.yz = r4.yz / cb1[66].xy;
        r4.yz = r4.yz * r0.ww;
        r4.w = (uint)r4.x << 2;
        r5.xyzw = cb0[r4.w+19].xyzw * r4.zzzz;
        r5.xyzw = r4.yyyy * cb0[r4.w+18].xyzw + r5.xyzw;
        r5.xyzw = r0.wwww * cb0[r4.w+20].xyzw + r5.xyzw;
        r5.xyzw = cb0[r4.w+21].xyzw + r5.xyzw;
        r4.y = min(0.999989986, r5.z);
        r4.x = dot(cb0[17].xyzw, icb[r4.x+0].xyzw);
        r6.xyzw = r5.xyxy * cb0[13].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xy = frac(r6.zw);
        r6.xyzw = floor(r6.xyzw);
        r8.xyzw = float4(0.5,1.5,0.5,0.5) + r6.zwzw;
        r8.xyzw = cb0[13].zwzw * r8.xyzw;
        r9.x = t6.SampleLevel(s3_s, r8.xy, 0).x;
        r6.xyzw = float4(1.5,1.5,1.5,0.5) + r6.xyzw;
        r6.xyzw = cb0[13].zwzw * r6.xyzw;
        r9.y = t6.SampleLevel(s3_s, r6.xy, 0).x;
        r9.z = t6.SampleLevel(s3_s, r6.zw, 0).x;
        r9.w = t6.SampleLevel(s3_s, r8.zw, 0).x;
        r4.z = min(1, r9.x);
        r4.z = min(r9.y, r4.z);
        r4.z = min(r9.z, r4.z);
        r4.z = min(r9.w, r4.z);
        r4.y = r4.y * r4.x + -1;
        r6.xyzw = saturate(r9.xyzw * r4.xxxx + -r4.yyyy);
        r4.xy = r6.zy + -r6.wx;
        r4.xy = r7.xx * r4.xy + r6.wx;
        r4.y = r4.y + -r4.x;
        r4.x = r7.y * r4.y + r4.x;
        r4.x = -0.5 + r4.x;
        r4.x = saturate(r4.x * cb0[15].x + 0.5);
        r6.xyzw = cb0[r4.w+35].xyzw * r5.yyyy;
        r6.xyzw = r5.xxxx * cb0[r4.w+34].xyzw + r6.xyzw;
        r7.xyzw = r4.zzzz * cb0[r4.w+36].xyzw + r6.xyzw;
        r7.xyzw = r5.wwww * cb0[r4.w+37].xyzw + r7.xyzw;
        r6.xyzw = r5.zzzz * cb0[r4.w+36].xyzw + r6.xyzw;
        r5.xyzw = r5.wwww * cb0[r4.w+37].xyzw + r6.xyzw;
        r5.xyzw = r7.xyzw + -r5.xyzw;
        r4.y = dot(r5.xyzw, r5.xyzw);
        r4.y = sqrt(r4.y);
        r4.y = r4.y / cb0[14].w;
        r4.y = min(1, r4.y);
        r4.z = 1 + -r4.x;
        r4.x = r4.y * r4.z + r4.x;
        r2.y = saturate(r2.y);
        r4.x = -1 + r4.x;
        r2.y = r2.y * r4.x + 1;
        r4.x = saturate(r0.w * cb0[15].y + cb0[15].z);
        r4.x = r4.x * r4.x;
        r4.y = 1 + -r2.y;
        r2.y = r4.x * r4.y + r2.y;
        r4.xyz = float3(1,1,1) + -cb0[12].xyz;
        r4.xyz = r2.yyy * r4.xyz + cb0[12].xyz;
        r1.xyz = r4.xyz * r1.xyz;
      }
    }
  }
  if (r3.w != 0) {
    r4.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.x = (int)r2.z | (int)r2.x;
    r0.x = (int)r2.w | (int)r0.x;
    r0.x = (int)r3.x | (int)r0.x;
    r0.x = (int)r3.y | (int)r0.x;
    r0.x = (int)r3.z | (int)r0.x;
    r4.xyz = (int3)r4.xyz & (int3)r0.xxx;
    r0.x = cmp(0.100000001 < r1.w);
    r4.xyz = r4.xyz * r4.xyz;
    r1.xyz = r0.xxx ? r4.xyz : r1.xyz;
  }
  r0.x = cmp((int)r0.z == 1);
  r0.y = (int)r2.z | (int)r2.x;
  r0.y = (int)r2.w | (int)r0.y;
  r0.y = (int)r3.x | (int)r0.y;
  r0.y = (int)r3.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    r0.x = saturate(r0.w / cb0[11].z);
    r0.yz = float2(-1,-1) + cb0[11].xy;
    r0.xy = r0.xx * r0.yz + float2(1,1);
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r2.xyz = r1.xyz + -r0.zzz;
    r2.xyz = r0.xxx * r2.xyz + r0.zzz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = float3(5.55555534,5.55555534,5.55555534) * r2.xyz;
    r2.xyz = log2(r2.xyz);
    r0.xyz = r2.xyz * r0.yyy;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  r0.x = r0.w * cb0[6].x + cb0[6].y;
  r0.x = log2(r0.x);
  r0.x = cb0[6].z * r0.x;
  r0.z = cb0[7].z * r0.x;
  r2.xy = -cb1[129].xy + v1.xy;
  r0.xy = cb0[8].xy * r2.xy;
  r0.xyz = t5.SampleLevel(s2_s, r0.xyz, 0).xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = r1.w;
  return;
}
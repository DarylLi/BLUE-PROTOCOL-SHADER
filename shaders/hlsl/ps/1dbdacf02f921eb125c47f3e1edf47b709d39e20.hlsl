// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
        r7.xyzw = cb0[13].xyxy * r6.xyxy;
        r8.xy = frac(r7.zw);
        r7.xyzw = floor(r7.xyzw);
        r9.xyzw = float4(-3,-3,-2,-3) + r7.zwzw;
        r9.xyzw = cb0[13].zwzw * r9.xyzw;
        r10.x = t7.SampleLevel(s3_s, r9.xy, 0).x;
        r10.y = t7.SampleLevel(s3_s, r9.zw, 0).x;
        r9.xyzw = float4(-1,-3,0,-3) + r7.zwzw;
        r9.xyzw = cb0[13].zwzw * r9.xyzw;
        r10.z = t7.SampleLevel(s3_s, r9.xy, 0).x;
        r10.w = t7.SampleLevel(s3_s, r9.zw, 0).x;
        r5.z = min(1, r10.x);
        r5.z = min(r10.y, r5.z);
        r5.z = min(r10.z, r5.z);
        r5.z = min(r10.w, r5.z);
        r5.y = r5.y * r5.x + -1;
        r9.xyzw = saturate(r10.xyzw * r5.xxxx + -r5.yyyy);
        r10.xyzw = float4(-3,-2,-2,-2) + r7.zwzw;
        r10.xyzw = cb0[13].zwzw * r10.xyzw;
        r11.x = t7.SampleLevel(s3_s, r10.xy, 0).x;
        r11.y = t7.SampleLevel(s3_s, r10.zw, 0).x;
        r10.xyzw = float4(-1,-2,0,-2) + r7.zwzw;
        r10.xyzw = cb0[13].zwzw * r10.xyzw;
        r11.z = t7.SampleLevel(s3_s, r10.xy, 0).x;
        r11.w = t7.SampleLevel(s3_s, r10.zw, 0).x;
        r5.z = min(r11.x, r5.z);
        r5.z = min(r11.y, r5.z);
        r5.z = min(r11.z, r5.z);
        r5.z = min(r11.w, r5.z);
        r10.xyzw = saturate(r11.xyzw * r5.xxxx + -r5.yyyy);
        r11.xyzw = float4(-3,-1,-2,-1) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.x = t7.SampleLevel(s3_s, r11.xy, 0).x;
        r12.y = t7.SampleLevel(s3_s, r11.zw, 0).x;
        r11.xyzw = float4(-1,-1,0,-1) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.z = t7.SampleLevel(s3_s, r11.xy, 0).x;
        r12.w = t7.SampleLevel(s3_s, r11.zw, 0).x;
        r5.z = min(r12.x, r5.z);
        r5.z = min(r12.y, r5.z);
        r5.z = min(r12.z, r5.z);
        r5.z = min(r12.w, r5.z);
        r11.xyzw = saturate(r12.xyzw * r5.xxxx + -r5.yyyy);
        r12.xyzw = float4(-3,0,-2,0) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.x = t7.SampleLevel(s3_s, r12.xy, 0).x;
        r13.y = t7.SampleLevel(s3_s, r12.zw, 0).x;
        r12.xyzw = float4(-1,0,1,-3) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.z = t7.SampleLevel(s3_s, r12.xy, 0).x;
        r12.xy = cb0[13].zw * r7.zw;
        r13.w = t7.SampleLevel(s3_s, r12.xy, 0).x;
        r5.z = min(r13.x, r5.z);
        r5.z = min(r13.y, r5.z);
        r5.z = min(r13.z, r5.z);
        r5.z = min(r13.w, r5.z);
        r13.xyzw = saturate(r13.xyzw * r5.xxxx + -r5.yyyy);
        r12.x = 1 + -r8.x;
        r9.x = r9.x * r12.x + r9.y;
        r9.y = r10.x * r12.x + r10.y;
        r10.x = r11.x * r12.x + r11.y;
        r10.y = r13.x * r12.x + r13.y;
        r9.x = r9.x + r9.z;
        r9.y = r9.y + r10.z;
        r9.z = r10.x + r11.z;
        r10.x = r10.y + r13.z;
        r14.y = r9.w * r8.x + r9.x;
        r14.z = r10.w * r8.x + r9.y;
        r14.w = r11.w * r8.x + r9.z;
        r14.x = r13.w * r8.x + r10.x;
        r8.z = 1 + -r8.y;
        r8.w = 1;
        r8.z = dot(r14.xywz, r8.yzww);
        r8.z = 0.111111112 * r8.z;
        r15.x = min(1, r8.z);
        r9.x = t7.SampleLevel(s3_s, r12.zw, 0).x;
        r16.xyzw = float4(2,-3,3,-3) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r9.y = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r9.z = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r5.z = min(r9.x, r5.z);
        r5.z = min(r9.y, r5.z);
        r5.z = min(r9.z, r5.z);
        r9.xyz = saturate(r9.xyz * r5.xxx + -r5.yyy);
        r16.xyzw = float4(1,-2,2,-2) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r10.x = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r10.y = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r16.xyzw = float4(3,-2,1,-1) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r10.z = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r5.z = min(r10.x, r5.z);
        r5.z = min(r10.y, r5.z);
        r5.z = min(r10.z, r5.z);
        r10.xyz = saturate(r10.xyz * r5.xxx + -r5.yyy);
        r11.x = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r16.xyzw = float4(2,-1,3,-1) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r11.y = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r11.z = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r5.z = min(r11.x, r5.z);
        r5.z = min(r11.y, r5.z);
        r5.z = min(r11.z, r5.z);
        r11.xyz = saturate(r11.xyz * r5.xxx + -r5.yyy);
        r16.xyzw = float4(1,0,2,0) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r12.y = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r12.z = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r16.xyzw = float4(3,0,-3,1) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r12.w = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r5.z = min(r12.y, r5.z);
        r5.z = min(r12.z, r5.z);
        r5.z = min(r12.w, r5.z);
        r12.yzw = saturate(r12.yzw * r5.xxx + -r5.yyy);
        r8.z = r9.w * r12.x + r9.x;
        r9.x = r10.w * r12.x + r10.x;
        r9.w = r11.w * r12.x + r11.x;
        r10.x = r13.w * r12.x + r12.y;
        r8.z = r8.z + r9.y;
        r9.x = r9.x + r10.y;
        r9.y = r9.w + r11.y;
        r9.w = r10.x + r12.z;
        r13.y = r9.z * r8.x + r8.z;
        r13.z = r10.z * r8.x + r9.x;
        r13.w = r11.z * r8.x + r9.y;
        r13.x = r12.w * r8.x + r9.w;
        r9.xyzw = r8.ywwy * float4(-1,1,1,1) + float4(1,0,0,0);
        r8.y = dot(r13.yzwx, r9.xyzw);
        r8.y = 0.111111112 * r8.y;
        r15.y = min(1, r8.y);
        r10.x = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r11.xyzw = float4(-2,1,-1,1) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r10.y = t7.SampleLevel(s3_s, r11.xy, 0).x;
        r10.z = t7.SampleLevel(s3_s, r11.zw, 0).x;
        r11.xyzw = float4(0,1,-3,2) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r10.w = t7.SampleLevel(s3_s, r11.xy, 0).x;
        r5.z = min(r10.x, r5.z);
        r5.z = min(r10.y, r5.z);
        r5.z = min(r10.z, r5.z);
        r5.z = min(r10.w, r5.z);
        r10.xyzw = saturate(r10.xyzw * r5.xxxx + -r5.yyyy);
        r11.x = t7.SampleLevel(s3_s, r11.zw, 0).x;
        r16.xyzw = float4(-2,2,-1,2) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r11.y = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r11.z = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r16.xyzw = float4(0,2,-3,3) + r7.zwzw;
        r16.xyzw = cb0[13].zwzw * r16.xyzw;
        r11.w = t7.SampleLevel(s3_s, r16.xy, 0).x;
        r5.z = min(r11.x, r5.z);
        r5.z = min(r11.y, r5.z);
        r5.z = min(r11.z, r5.z);
        r5.z = min(r11.w, r5.z);
        r11.xyzw = saturate(r11.xyzw * r5.xxxx + -r5.yyyy);
        r16.x = t7.SampleLevel(s3_s, r16.zw, 0).x;
        r17.xyzw = float4(-2,3,-1,3) + r7.zwzw;
        r17.xyzw = cb0[13].zwzw * r17.xyzw;
        r16.y = t7.SampleLevel(s3_s, r17.xy, 0).x;
        r16.z = t7.SampleLevel(s3_s, r17.zw, 0).x;
        r17.xyzw = float4(0,3,1,1) + r7.zwzw;
        r17.xyzw = cb0[13].zwzw * r17.xyzw;
        r16.w = t7.SampleLevel(s3_s, r17.xy, 0).x;
        r5.z = min(r16.x, r5.z);
        r5.z = min(r16.y, r5.z);
        r5.z = min(r16.z, r5.z);
        r5.z = min(r16.w, r5.z);
        r16.xyzw = saturate(r16.xyzw * r5.xxxx + -r5.yyyy);
        r8.y = r10.x * r12.x + r10.y;
        r8.z = r11.x * r12.x + r11.y;
        r8.w = r16.x * r12.x + r16.y;
        r8.y = r8.y + r10.z;
        r8.z = r8.z + r11.z;
        r8.w = r8.w + r16.z;
        r14.y = r10.w * r8.x + r8.y;
        r14.z = r11.w * r8.x + r8.z;
        r14.w = r16.w * r8.x + r8.w;
        r8.y = dot(r14.xyzw, r9.xyzw);
        r8.y = 0.111111112 * r8.y;
        r15.z = min(1, r8.y);
        r8.y = t7.SampleLevel(s3_s, r17.zw, 0).x;
        r14.xyzw = float4(2,1,3,1) + r7.zwzw;
        r14.xyzw = cb0[13].zwzw * r14.xyzw;
        r8.z = t7.SampleLevel(s3_s, r14.xy, 0).x;
        r8.w = t7.SampleLevel(s3_s, r14.zw, 0).x;
        r5.z = min(r8.y, r5.z);
        r5.z = min(r8.z, r5.z);
        r5.z = min(r8.w, r5.z);
        r8.yzw = saturate(r8.yzw * r5.xxx + -r5.yyy);
        r14.xyzw = float4(1,2,2,2) + r7.zwzw;
        r14.xyzw = cb0[13].zwzw * r14.xyzw;
        r10.x = t7.SampleLevel(s3_s, r14.xy, 0).x;
        r10.y = t7.SampleLevel(s3_s, r14.zw, 0).x;
        r14.xyzw = float4(3,2,1,3) + r7.zwzw;
        r14.xyzw = cb0[13].zwzw * r14.xyzw;
        r10.z = t7.SampleLevel(s3_s, r14.xy, 0).x;
        r5.z = min(r10.x, r5.z);
        r5.z = min(r10.y, r5.z);
        r5.z = min(r10.z, r5.z);
        r10.xyz = saturate(r10.xyz * r5.xxx + -r5.yyy);
        r11.x = t7.SampleLevel(s3_s, r14.zw, 0).x;
        r7.xyzw = float4(2,3,3,3) + r7.xyzw;
        r7.xyzw = cb0[13].zwzw * r7.xyzw;
        r11.y = t7.SampleLevel(s3_s, r7.xy, 0).x;
        r11.z = t7.SampleLevel(s3_s, r7.zw, 0).x;
        r5.z = min(r11.x, r5.z);
        r5.z = min(r11.y, r5.z);
        r5.z = min(r11.z, r5.z);
        r7.xyz = saturate(r11.xyz * r5.xxx + -r5.yyy);
        r5.x = r10.w * r12.x + r8.y;
        r5.y = r11.w * r12.x + r10.x;
        r7.x = r16.w * r12.x + r7.x;
        r5.x = r5.x + r8.z;
        r5.y = r5.y + r10.y;
        r7.x = r7.x + r7.y;
        r13.y = r8.w * r8.x + r5.x;
        r13.z = r10.z * r8.x + r5.y;
        r13.w = r7.z * r8.x + r7.x;
        r5.x = dot(r13.xyzw, r9.xyzw);
        r5.x = 0.111111112 * r5.x;
        r15.w = min(1, r5.x);
        r5.x = dot(r15.xyzw, float4(0.25,0.25,0.25,0.25));
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
    r2.x = saturate(r0.w / cb0[11].z);
    r2.yz = float2(-1,-1) + cb0[11].xy;
    r2.xy = r2.xx * r2.yz + float2(1,1);
    r2.z = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = -r2.zzz + r0.xyz;
    r0.xyz = r2.xxx * r0.xyz + r2.zzz;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r2.yyy * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  r0.x = r0.w * cb0[6].x + cb0[6].y;
  r0.x = log2(r0.x);
  r0.x = cb0[6].z * r0.x;
  r0.z = cb0[7].z * r0.x;
  r2.xy = -cb1[129].xy + v1.xy;
  r0.xy = cb0[8].xy * r2.xy;
  r0.xyz = t6.SampleLevel(s2_s, r0.xyz, 0).xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = r1.w;
  return;
}
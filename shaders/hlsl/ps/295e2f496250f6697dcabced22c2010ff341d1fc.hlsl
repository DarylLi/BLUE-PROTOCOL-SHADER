// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t6.Sample(s1_s, r0.xy).xyzw;
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).zw;
  r3.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r4.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r5.x = r2.w * cb1[65].x + cb1[65].y;
  r2.w = r2.w * cb1[65].z + -cb1[65].w;
  r2.w = 1 / r2.w;
  r2.w = r5.x + r2.w;
  r5.xy = cb1[132].xy * r0.xy;
  r5.xy = (uint2)r5.xy;
  r5.z = (uint)cb1[152].x;
  r5.x = (int)r5.y + (int)r5.x;
  r5.x = (int)r5.z + (int)r5.x;
  r5.x = (int)r5.x & 1;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r6.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
  r5.yz = (int2)r6.yw | (int2)r6.xz;
  r3.w = r5.y ? r3.w : 1;
  r7.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
  r5.zw = (int2)r5.zz | (int2)r7.xy;
  r5.zw = (int2)r7.yz | (int2)r5.zw;
  r5.zw = (int2)r7.zw | (int2)r5.zw;
  r5.z = (int)r7.w | (int)r5.z;
  r8.xyzw = cmp((int4)r0.wwww == int4(8,9,14,1));
  r5.z = (int)r5.z | (int)r8.x;
  r5.z = (int)r6.x | (int)r5.z;
  r5.z = (int)r6.y | (int)r5.z;
  r5.z = (int)r8.y | (int)r5.z;
  r4.xyzw = (int4)r4.xyzw & (int4)r5.zzzz;
  r5.z = (int)r7.y | (int)r8.y;
  r6.y = cmp(0 < cb1[156].y);
  r6.z = cmp(0 < cb1[207].z);
  r6.y = r6.z ? r6.y : 0;
  r6.z = cmp(0 != cb1[156].y);
  r7.xyz = r6.zzz ? float3(1,1,1) : r3.xyz;
  r5.x = r5.x ? 1 : 0;
  r6.yzw = r6.yyy ? r5.xxx : r7.xyz;
  r6.yzw = r5.zzz ? r6.yzw : r3.xyz;
  r3.xyz = r5.yyy ? r3.xyz : r6.yzw;
  r5.x = (int)r6.x | (int)r8.z;
  if (r5.x != 0) {
    r5.xz = t5.SampleLevel(s0_s, r0.xy, 0).yw;
    r5.xz = (int2)r5.xz & (int2)r5.yy;
    r6.x = cmp(cb1[31].w < 1);
    r6.y = cb1[65].w + r2.w;
    r6.y = cb1[65].z * r6.y;
    r6.y = 1 / r6.y;
    r6.z = r2.w * cb1[30].z + cb1[31].z;
    r6.x = r6.x ? r6.y : r6.z;
    r6.y = r2.w / cb0[9].y;
    r6.y = min(1, r6.y);
    r6.y = 1 + -r6.y;
    r5.z = cb0[9].x * r5.z;
    r5.z = r5.z * r6.y;
    r7.xy = cb1[132].zw * r5.zz;
    r6.zw = cb1[130].xy + cb1[129].xy;
    r6.zw = r6.zw / cb1[132].xy;
    r9.xy = -r7.xy;
    r9.xw = v1.xy * cb1[132].zw + r9.xy;
    r5.z = t0.SampleLevel(s0_s, r9.xw, 0).x;
    r7.w = cmp(r6.x >= r5.z);
    if (r7.w != 0) {
      r7.w = t2.SampleLevel(s0_s, r9.xw, 0).w;
      r7.w = 255 * r7.w;
      r7.w = round(r7.w);
      r7.w = (uint)r7.w;
      r7.w = (int)r7.w & 15;
      r9.xw = cmp((int2)r7.ww == int2(12,14));
      r7.w = (int)r9.w | (int)r9.x;
      r5.z = (int)r5.z & (int)r7.w;
    } else {
      r5.z = r6.x;
    }
    r9.z = 0;
    r9.xy = v1.xy * cb1[132].zw + r9.zy;
    r7.w = t0.SampleLevel(s0_s, r9.xy, 0).x;
    r8.x = cmp(r6.x >= r7.w);
    if (r8.x != 0) {
      r8.x = t2.SampleLevel(s0_s, r9.xy, 0).w;
      r8.x = 255 * r8.x;
      r8.x = round(r8.x);
      r8.x = (uint)r8.x;
      r8.x = (int)r8.x & 15;
      r9.xy = cmp((int2)r8.xx == int2(12,14));
      r8.x = (int)r9.y | (int)r9.x;
      r7.w = (int)r7.w & (int)r8.x;
    } else {
      r7.w = r6.x;
    }
    r7.z = -r7.y;
    r7.xy = v1.xy * cb1[132].zw + r7.xz;
    r6.zw = min(r7.xy, r6.zw);
    r7.x = t0.SampleLevel(s0_s, r6.zw, 0).x;
    r7.y = cmp(r6.x >= r7.x);
    if (r7.y != 0) {
      r6.z = t2.SampleLevel(s0_s, r6.zw, 0).w;
      r6.z = 255 * r6.z;
      r6.z = round(r6.z);
      r6.z = (uint)r6.z;
      r6.z = (int)r6.z & 15;
      r6.zw = cmp((int2)r6.zz == int2(12,14));
      r6.z = (int)r6.w | (int)r6.z;
      r6.z = r6.z ? r7.x : 0;
    } else {
      r6.z = r6.x;
    }
    r6.w = -r6.z + r5.z;
    r5.z = r5.z + -r6.x;
    r7.x = r7.w + -r6.x;
    r5.z = r7.x * 2 + r5.z;
    r5.z = r5.z + r6.z;
    r5.z = r5.z + -r6.x;
    r5.z = r5.z * r5.z;
    r5.z = r6.w * r6.w + r5.z;
    r5.z = cb0[9].w * r5.z;
    r5.z = sqrt(r5.z);
    r6.x = cb0[9].z * r6.x;
    r5.z = cmp(r5.z >= r6.x);
    r5.z = r5.z ? 1.000000 : 0;
    r6.x = max(r3.x, r3.y);
    r6.x = max(r6.x, r3.z);
    r0.z = r6.x + r0.z;
    r0.z = max(0, r0.z);
    r6.x = max(0.00100000005, r6.x);
    r0.z = r0.z / r6.x;
    r6.xzw = r3.xyz * r0.zzz;
    r0.z = cmp(r4.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r3.w;
    r6.xzw = r6.xzw * r5.zzz;
    r6.xzw = r6.xzw * r5.xxx;
    r6.xyz = r6.xzw * r6.yyy;
    r6.xyz = r6.xyz * r0.zzz + r1.xyz;
    r0.z = r2.w / cb0[10].z;
    r0.z = min(1, r0.z);
    r5.xz = float2(1,1) + -cb0[10].xy;
    r5.xz = r0.zz * r5.xz + cb0[10].xy;
    r0.z = dot(r6.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r6.xyz = r6.xyz + -r0.zzz;
    r6.xyz = r5.xxx * r6.xyz + r0.zzz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = float3(5.55555534,5.55555534,5.55555534) * r6.xyz;
    r6.xyz = log2(r6.xyz);
    r6.xyz = r6.xyz * r5.zzz;
    r6.xyz = exp2(r6.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r6.xyz;
  } else {
    r0.z = dot(cb0[14].xyz, r2.xyz);
    r4.w = cmp(0 < r0.z);
    r5.x = cmp(0 < asuint(cb0[15].w));
    r4.w = r4.w ? r5.x : 0;
    if (r4.w != 0) {
      r4.w = cb0[15].w;
      r5.x = 0;
      while (true) {
        r5.z = cmp((uint)r5.x >= asuint(cb0[15].w));
        if (r5.z != 0) break;
        r5.z = dot(cb0[16].xyzw, icb[r5.x+0].xyzw);
        r5.z = cmp(r2.w < r5.z);
        if (r5.z != 0) {
          r4.w = r5.x;
          break;
        }
        r5.x = (int)r5.x + 1;
      }
      r5.x = cmp((uint)r4.w < asuint(cb0[15].w));
      if (r5.x != 0) {
        r5.xz = v1.xy * cb1[132].zw + -cb1[66].wz;
        r5.xz = r5.xz / cb1[66].xy;
        r5.xz = r5.xz * r2.ww;
        r6.x = (uint)r4.w << 2;
        r7.xyzw = cb0[r6.x+19].xyzw * r5.zzzz;
        r7.xyzw = r5.xxxx * cb0[r6.x+18].xyzw + r7.xyzw;
        r7.xyzw = r2.wwww * cb0[r6.x+20].xyzw + r7.xyzw;
        r7.xyzw = cb0[r6.x+21].xyzw + r7.xyzw;
        r5.x = min(0.999989986, r7.z);
        r4.w = dot(cb0[17].xyzw, icb[r4.w+0].xyzw);
        r9.xyzw = r7.xyxy * cb0[13].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r10.xy = frac(r9.zw);
        r9.xyzw = floor(r9.xyzw);
        r11.xyzw = float4(-0.5,-0.5,0.5,-0.5) + r9.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.x = t9.SampleLevel(s4_s, r11.xy, 0).x;
        r12.y = t9.SampleLevel(s4_s, r11.zw, 0).x;
        r11.xyzw = float4(1.5,-0.5,2.5,-0.5) + r9.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.z = t9.SampleLevel(s4_s, r11.xy, 0).x;
        r12.w = t9.SampleLevel(s4_s, r11.zw, 0).x;
        r5.z = min(1, r12.x);
        r5.z = min(r12.y, r5.z);
        r5.z = min(r12.z, r5.z);
        r5.z = min(r12.w, r5.z);
        r5.x = r5.x * r4.w + -1;
        r11.xyzw = saturate(r12.xyzw * r4.wwww + -r5.xxxx);
        r12.xyzw = float4(-0.5,0.5,0.5,0.5) + r9.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.x = t9.SampleLevel(s4_s, r12.xy, 0).x;
        r13.y = t9.SampleLevel(s4_s, r12.zw, 0).x;
        r12.xyzw = float4(1.5,0.5,2.5,0.5) + r9.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.z = t9.SampleLevel(s4_s, r12.xy, 0).x;
        r13.w = t9.SampleLevel(s4_s, r12.zw, 0).x;
        r5.z = min(r13.x, r5.z);
        r5.z = min(r13.y, r5.z);
        r5.z = min(r13.z, r5.z);
        r5.z = min(r13.w, r5.z);
        r12.xyzw = saturate(r13.xyzw * r4.wwww + -r5.xxxx);
        r13.xyzw = float4(-0.5,1.5,0.5,1.5) + r9.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r14.x = t9.SampleLevel(s4_s, r13.xy, 0).x;
        r14.y = t9.SampleLevel(s4_s, r13.zw, 0).x;
        r13.xyzw = float4(1.5,1.5,2.5,1.5) + r9.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r14.z = t9.SampleLevel(s4_s, r13.xy, 0).x;
        r14.w = t9.SampleLevel(s4_s, r13.zw, 0).x;
        r5.z = min(r14.x, r5.z);
        r5.z = min(r14.y, r5.z);
        r5.z = min(r14.z, r5.z);
        r5.z = min(r14.w, r5.z);
        r13.xyzw = saturate(r14.xyzw * r4.wwww + -r5.xxxx);
        r14.xyzw = float4(-0.5,2.5,0.5,2.5) + r9.zwzw;
        r14.xyzw = cb0[13].zwzw * r14.xyzw;
        r15.x = t9.SampleLevel(s4_s, r14.xy, 0).x;
        r15.y = t9.SampleLevel(s4_s, r14.zw, 0).x;
        r9.xyzw = float4(1.5,2.5,2.5,2.5) + r9.xyzw;
        r9.xyzw = cb0[13].zwzw * r9.xyzw;
        r15.z = t9.SampleLevel(s4_s, r9.xy, 0).x;
        r15.w = t9.SampleLevel(s4_s, r9.zw, 0).x;
        r5.z = min(r15.x, r5.z);
        r5.z = min(r15.y, r5.z);
        r5.z = min(r15.z, r5.z);
        r5.z = min(r15.w, r5.z);
        r9.xyzw = saturate(r15.xyzw * r4.wwww + -r5.xxxx);
        r4.w = 1 + -r10.x;
        r5.x = r11.x * r4.w + r11.y;
        r6.y = r12.x * r4.w + r12.y;
        r6.z = r13.x * r4.w + r13.y;
        r4.w = r9.x * r4.w + r9.y;
        r5.x = r5.x + r11.z;
        r6.y = r6.y + r12.z;
        r6.z = r6.z + r13.z;
        r4.w = r4.w + r9.z;
        r11.x = r11.w * r10.x + r5.x;
        r11.y = r12.w * r10.x + r6.y;
        r11.z = r13.w * r10.x + r6.z;
        r11.w = r9.w * r10.x + r4.w;
        r10.z = 1 + -r10.y;
        r10.w = 1;
        r4.w = dot(r11.wxzy, r10.yzww);
        r4.w = 0.111111112 * r4.w;
        r4.w = min(1, r4.w);
        r4.w = -0.5 + r4.w;
        r4.w = saturate(r4.w * cb0[15].x + 0.5);
        r9.xyzw = cb0[r6.x+35].xyzw * r7.yyyy;
        r9.xyzw = r7.xxxx * cb0[r6.x+34].xyzw + r9.xyzw;
        r10.xyzw = r5.zzzz * cb0[r6.x+36].xyzw + r9.xyzw;
        r10.xyzw = r7.wwww * cb0[r6.x+37].xyzw + r10.xyzw;
        r9.xyzw = r7.zzzz * cb0[r6.x+36].xyzw + r9.xyzw;
        r6.xyzw = r7.wwww * cb0[r6.x+37].xyzw + r9.xyzw;
        r6.xyzw = r10.xyzw + -r6.xyzw;
        r5.x = dot(r6.xyzw, r6.xyzw);
        r5.x = sqrt(r5.x);
        r5.x = r5.x / cb0[14].w;
        r5.x = min(1, r5.x);
        r5.z = 1 + -r4.w;
        r4.w = r5.x * r5.z + r4.w;
        r0.z = saturate(r0.z);
        r4.w = -1 + r4.w;
        r0.z = r0.z * r4.w + 1;
        r4.w = saturate(r2.w * cb0[15].y + cb0[15].z);
        r4.w = r4.w * r4.w;
        r5.x = 1 + -r0.z;
        r0.z = r4.w * r5.x + r0.z;
        r6.xyz = float3(1,1,1) + -cb0[12].xyz;
        r6.xyz = r0.zzz * r6.xyz + cb0[12].xyz;
        r1.xyz = r6.xyz * r1.xyz;
      }
    }
  }
  if (r8.z != 0) {
    r0.z = cmp(0.100000001 < r1.w);
    r4.xyz = r4.xyz * r4.xyz;
    r1.xyz = r0.zzz ? r4.xyz : r1.xyz;
  }
  r0.z = ~(int)r5.y;
  r0.w = cmp((int)r0.w != 14);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = t7.SampleLevel(s2_s, r0.xy, 0).x;
    r0.w = dot(r2.xyz, -cb1[358].xyz);
    r0.w = saturate(r0.w * 0.5 + 0.5);
    r0.w = cmp(r0.w < cb0[5].y);
    if (r0.w != 0) {
      r4.xyz = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
    }
    if (r0.w == 0) {
      r5.xy = cb1[13].xy * r2.yy;
      r2.xy = r2.xx * cb1[12].xy + r5.xy;
      r2.xy = r2.zz * cb1[14].xy + r2.xy;
      r0.w = -5000 + r2.w;
      r0.w = saturate(0.000199999995 * r0.w);
      r0.w = r0.w * -0.899999976 + 1;
      r2.xy = r0.ww * r2.xy;
      r6.xyzw = r2.xyxy * float4(0.100000001,-0.100000001,0.200000003,-0.200000003) + r0.xyxy;
      r5.xyz = t8.SampleLevel(s3_s, r6.xy, 0).xyz;
      r6.xyz = t8.SampleLevel(s3_s, r6.zw, 0).xyz;
      r6.xyz = float3(0.300000012,0.300000012,0.300000012) * r6.xyz;
      r5.xyz = r5.xyz * float3(0.400000006,0.400000006,0.400000006) + r6.xyz;
      r0.xy = r2.xy * float2(0.300000012,-0.300000012) + r0.xy;
      r0.xyw = t8.SampleLevel(s3_s, r0.xy, 0).xyz;
      r4.xyz = r0.xyw * float3(0.300000012,0.300000012,0.300000012) + r5.xyz;
    }
    r0.x = min(r3.w, r0.z);
    r0.xyz = r4.xyz * r0.xxx;
    r2.xyz = cb0[5].xxx * r3.xyz;
    r1.xyz = r2.xyz * r0.xyz + r1.xyz;
  }
  r0.x = (int)r5.w | (int)r8.y;
  r0.x = (int)r0.x | (int)r8.w;
  if (r0.x != 0) {
    r0.x = saturate(r2.w / cb0[11].z);
    r0.yz = float2(-1,-1) + cb0[11].xy;
    r0.xy = r0.xx * r0.yz + float2(1,1);
    r0.z = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r2.xyz = r1.xyz + -r0.zzz;
    r0.xzw = r0.xxx * r2.xyz + r0.zzz;
    r0.xzw = max(float3(0,0,0), r0.xzw);
    r0.xzw = float3(5.55555534,5.55555534,5.55555534) * r0.xzw;
    r0.xzw = log2(r0.xzw);
    r0.xyz = r0.yyy * r0.xzw;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  o0.xyzw = r1.xyzw;
  return;
}
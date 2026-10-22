// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[22];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float2 v8 : ATTRIBUTE6,
  float2 v9 : ATTRIBUTE7,
  float2 v10 : ATTRIBUTE8,
  float3 v11 : ATTRIBUTE11,
  float3 v12 : ATTRIBUTE12,
  float4 v13 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t1.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t1.Load(r2.x).xyzw;
  r4.xyzw = t1.Load(r2.y).xyzw;
  r5.xyzw = t1.Load(r0.y).xyzw;
  r6.xyzw = t1.Load(r2.z).xyzw;
  r7.xyzw = t1.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r7.xyzw = v5.yyyy * r7.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r4.xyzw = v5.xxxx * r4.xyzw + r7.xyzw;
  r5.xyzw = t1.Load(r0.z).xyzw;
  r6.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r7.xyzw = t1.Load(r6.x).xyzw;
  r8.xyzw = t1.Load(r6.y).xyzw;
  r1.xyzw = v5.zzzz * r5.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r7.xyzw + r3.xyzw;
  r4.xyzw = v5.zzzz * r8.xyzw + r4.xyzw;
  r5.xyzw = t1.Load(r0.w).xyzw;
  r7.xyzw = t1.Load(r6.z).xyzw;
  r8.xyzw = t1.Load(r6.w).xyzw;
  r1.xyzw = v5.wwww * r5.xyzw + r1.xyzw;
  r3.xyzw = v5.wwww * r7.xyzw + r3.xyzw;
  r4.xyzw = v5.wwww * r8.xyzw + r4.xyzw;
  r5.x = cmp(4 < asuint(cb0[1].y));
  if (r5.x != 0) {
    r7.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r8.xyzw = t1.Load(r7.x).xyzw;
    r9.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r10.xyzw = t1.Load(r9.x).xyzw;
    r11.xyzw = t1.Load(r9.y).xyzw;
    r8.xyzw = v6.xxxx * r8.xyzw + r1.xyzw;
    r10.xyzw = v6.xxxx * r10.xyzw + r3.xyzw;
    r11.xyzw = v6.xxxx * r11.xyzw + r4.xyzw;
    r12.xyzw = t1.Load(r7.y).xyzw;
    r13.xyzw = t1.Load(r9.z).xyzw;
    r9.xyzw = t1.Load(r9.w).xyzw;
    r8.xyzw = v6.yyyy * r12.xyzw + r8.xyzw;
    r10.xyzw = v6.yyyy * r13.xyzw + r10.xyzw;
    r9.xyzw = v6.yyyy * r9.xyzw + r11.xyzw;
    r11.xyzw = t1.Load(r7.z).xyzw;
    r12.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r13.xyzw = t1.Load(r12.x).xyzw;
    r14.xyzw = t1.Load(r12.y).xyzw;
    r8.xyzw = v6.zzzz * r11.xyzw + r8.xyzw;
    r10.xyzw = v6.zzzz * r13.xyzw + r10.xyzw;
    r9.xyzw = v6.zzzz * r14.xyzw + r9.xyzw;
    r7.xyzw = t1.Load(r7.w).xyzw;
    r11.xyzw = t1.Load(r12.z).xyzw;
    r12.xyzw = t1.Load(r12.w).xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r8.xyzw;
    r3.xyzw = v6.wwww * r11.xyzw + r10.xyzw;
    r4.xyzw = v6.wwww * r12.xyzw + r9.xyzw;
  }
  r7.x = dot(r1.xyz, v1.xyz);
  r7.y = dot(r3.xyz, v1.xyz);
  r7.z = dot(r4.xyz, v1.xyz);
  r5.y = dot(r7.xyz, r7.xyz);
  r5.y = rsqrt(r5.y);
  r5.yzw = r7.xyz * r5.yyy;
  r7.x = dot(r1.xyz, v2.xyz);
  r7.y = dot(r3.xyz, v2.xyz);
  r7.z = dot(r4.xyz, v2.xyz);
  r7.w = dot(r7.xyz, r7.xyz);
  r7.w = rsqrt(r7.w);
  r7.xyz = r7.xyz * r7.www;
  r8.xyz = v11.xyz + v0.xyz;
  r8.w = 1;
  r9.x = dot(r1.xyzw, r8.xyzw);
  r9.y = dot(r3.xyzw, r8.xyzw);
  r9.z = dot(r4.xyzw, r8.xyzw);
  r9.xyz = v12.xyz + r9.xyz;
  r10.xyz = cb2[1].xyz * r9.yyy;
  r9.xyw = cb2[0].xyz * r9.xxx + r10.xyz;
  r9.xyz = cb2[2].xyz * r9.zzz + r9.xyw;
  r10.xyz = cb2[3].xyz + cb1[70].xyz;
  r9.xyz = r10.xyz + r9.xyz;
  r10.xyz = cb2[1].xyz * v10.xxx;
  r10.xyz = v9.yyy * cb2[0].xyz + r10.xyz;
  r10.xyz = v10.yyy * cb2[2].xyz + r10.xyz;
  r11.xyz = cb4[21].yyy * r10.xyz;
  r7.w = cb1[142].z * cb4[14].z + v7.x;
  r12.y = cb4[15].y * r7.w;
  r7.w = cb1[142].z * cb4[15].z + v7.y;
  r7.w = cb4[15].w * r7.w;
  r9.w = floor(r12.y);
  r9.w = (int)r9.w;
  r9.w = mad((int)r9.w, 0x0019660d, 0xd17070a0);
  r10.w = mad(0x3c6ef35f, (int)r9.w, 0x3c6ef35f);
  r11.w = mad((int)r9.w, (int)r10.w, 0x3c6ef35f);
  r9.w = mad((int)r10.w, (int)r11.w, (int)r9.w);
  r10.w = mad((int)r11.w, (int)r9.w, (int)r10.w);
  r9.w = mad((int)r9.w, (int)r10.w, (int)r11.w);
  r9.w = (uint)r9.w >> 16;
  r9.w = (uint)r9.w;
  r9.w = r9.w * 1.52590223e-006 + 0.100000001;
  r12.x = cb1[142].z * r9.w + r7.w;
  r7.w = t0.SampleLevel(s0_s, r12.xy, -1).x;
  r9.w = r7.w * cb4[17].z + -cb4[17].z;
  r9.w = saturate(cb4[18].y + r9.w);
  r9.w = 1 + -r9.w;
  r9.w = 1 + -r9.w;
  r7.w = -0.5 + r7.w;
  r7.w = dot(r7.ww, cb4[16].yy);
  r12.xy = v7.xy + r7.ww;
  r12.xy = -cb4[7].xy + r12.xy;
  r7.w = dot(r12.xy, r12.xy);
  r7.w = sqrt(r7.w);
  r7.w = r7.w / cb4[18].z;
  r7.w = 1 + -r7.w;
  r10.w = cb4[18].w * r7.w;
  r10.w = r10.w * r10.w;
  r10.w = 1.44269514 * r10.w;
  r10.w = exp2(r10.w);
  r10.w = 1 / r10.w;
  r11.w = cmp(9.99999975e-006 < abs(r7.w));
  r7.w = cmp(r7.w >= 0);
  r10.w = 1 + -r10.w;
  r10.w = -r10.w * 0.899999976 + 1;
  r7.w = r7.w ? r10.w : 1;
  r7.w = r11.w ? r7.w : 1;
  r7.w = -r9.w * r7.w + 1;
  r7.w = 1 + -r7.w;
  r12.xyz = -cb1[70].xyz + r9.xyz;
  r12.xyz = cb2[5].xyz + -r12.xyz;
  r9.w = dot(r12.xyz, r12.xyz);
  r9.w = sqrt(r9.w);
  r9.w = 0.00499999989 * r9.w;
  r9.w = min(1, r9.w);
  r9.w = r9.w * 5 + -5;
  r10.w = 6 * cb3[2].w;
  r9.w = saturate(cb3[2].w * 6 + r9.w);
  r11.xyz = r7.www * r11.xyz + -r10.xyz;
  r10.xyz = r9.www * r11.xyz + r10.xyz;
  r9.xyz = r10.xyz + r9.xyz;
  r10.xyz = cb2[4].xxx * cb2[0].xyz;
  r11.xyz = cb2[4].yyy * cb2[1].xyz;
  r12.xyz = cb2[4].zzz * cb2[2].xyz;
  r13.xyz = r11.xyz * r5.zzz;
  r13.xyz = r5.yyy * r10.xyz + r13.xyz;
  o3.xyz = r5.www * r12.xyz + r13.xyz;
  r5.yzw = r11.xyz * r7.yyy;
  r5.yzw = r7.xxx * r10.xyz + r5.yzw;
  o4.xyz = r7.zzz * r12.xyz + r5.yzw;
  o4.w = cb2[4].w * v2.w;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r11.xyzw = t2.Load(r0.x).xyzw;
    r12.xyzw = t2.Load(r2.x).xyzw;
    r13.xyzw = t2.Load(r2.y).xyzw;
    r14.xyzw = t2.Load(r0.y).xyzw;
    r15.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r14.xyzw = v5.yyyy * r14.xyzw;
    r15.xyzw = v5.yyyy * r15.xyzw;
    r2.xyzw = v5.yyyy * r2.xyzw;
    r11.xyzw = v5.xxxx * r11.xyzw + r14.xyzw;
    r12.xyzw = v5.xxxx * r12.xyzw + r15.xyzw;
    r2.xyzw = v5.xxxx * r13.xyzw + r2.xyzw;
    r13.xyzw = t2.Load(r0.z).xyzw;
    r14.xyzw = t2.Load(r6.x).xyzw;
    r15.xyzw = t2.Load(r6.y).xyzw;
    r11.xyzw = v5.zzzz * r13.xyzw + r11.xyzw;
    r12.xyzw = v5.zzzz * r14.xyzw + r12.xyzw;
    r2.xyzw = v5.zzzz * r15.xyzw + r2.xyzw;
    r0.xyzw = t2.Load(r0.w).xyzw;
    r13.xyzw = t2.Load(r6.z).xyzw;
    r6.xyzw = t2.Load(r6.w).xyzw;
    r1.xyzw = v5.wwww * r0.xyzw + r11.xyzw;
    r3.xyzw = v5.wwww * r13.xyzw + r12.xyzw;
    r4.xyzw = v5.wwww * r6.xyzw + r2.xyzw;
    if (r5.x != 0) {
      r0.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
      r2.xyzw = t2.Load(r0.x).xyzw;
      r5.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
      r6.xyzw = t2.Load(r5.x).xyzw;
      r11.xyzw = t2.Load(r5.y).xyzw;
      r2.xyzw = v6.xxxx * r2.xyzw + r1.xyzw;
      r6.xyzw = v6.xxxx * r6.xyzw + r3.xyzw;
      r11.xyzw = v6.xxxx * r11.xyzw + r4.xyzw;
      r12.xyzw = t2.Load(r0.y).xyzw;
      r13.xyzw = t2.Load(r5.z).xyzw;
      r5.xyzw = t2.Load(r5.w).xyzw;
      r2.xyzw = v6.yyyy * r12.xyzw + r2.xyzw;
      r6.xyzw = v6.yyyy * r13.xyzw + r6.xyzw;
      r5.xyzw = v6.yyyy * r5.xyzw + r11.xyzw;
      r11.xyzw = t2.Load(r0.z).xyzw;
      r12.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
      r13.xyzw = t2.Load(r12.x).xyzw;
      r14.xyzw = t2.Load(r12.y).xyzw;
      r2.xyzw = v6.zzzz * r11.xyzw + r2.xyzw;
      r6.xyzw = v6.zzzz * r13.xyzw + r6.xyzw;
      r5.xyzw = v6.zzzz * r14.xyzw + r5.xyzw;
      r0.xyzw = t2.Load(r0.w).xyzw;
      r11.xyzw = t2.Load(r12.z).xyzw;
      r12.xyzw = t2.Load(r12.w).xyzw;
      r1.xyzw = v6.wwww * r0.xyzw + r2.xyzw;
      r3.xyzw = v6.wwww * r11.xyzw + r6.xyzw;
      r4.xyzw = v6.wwww * r12.xyzw + r5.xyzw;
    }
  }
  r0.x = dot(r1.xyzw, r8.xyzw);
  r0.y = dot(r3.xyzw, r8.xyzw);
  r0.z = dot(r4.xyzw, r8.xyzw);
  r0.xyz = v12.xyz + r0.xyz;
  r0.w = 1;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r1.w = r7.x;
  r1.x = dot(r0.xyzw, r1.xyzw);
  r2.x = cb2[10].y;
  r2.y = cb2[11].y;
  r2.z = cb2[12].y;
  r2.w = r7.y;
  r1.y = dot(r0.xyzw, r2.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r1.z = dot(r0.xyzw, r7.xyzw);
  r0.xyz = cb2[11].xyz * v10.xxx;
  r0.xyz = v9.yyy * cb2[10].xyz + r0.xyz;
  r0.xyz = v10.yyy * cb2[12].xyz + r0.xyz;
  r2.xyz = cb4[21].yyy * r0.xyz;
  r0.w = cb1[139].z * cb4[14].z + v7.x;
  r3.y = cb4[15].y * r0.w;
  r0.w = cb1[139].z * cb4[15].z + v7.y;
  r0.w = cb4[15].w * r0.w;
  r1.w = floor(r3.y);
  r1.w = (int)r1.w;
  r1.w = mad((int)r1.w, 0x0019660d, 0xd17070a0);
  r2.w = mad(0x3c6ef35f, (int)r1.w, 0x3c6ef35f);
  r3.z = mad((int)r1.w, (int)r2.w, 0x3c6ef35f);
  r1.w = mad((int)r2.w, (int)r3.z, (int)r1.w);
  r2.w = mad((int)r3.z, (int)r1.w, (int)r2.w);
  r1.w = mad((int)r1.w, (int)r2.w, (int)r3.z);
  r1.w = (uint)r1.w >> 16;
  r1.w = (uint)r1.w;
  r1.w = r1.w * 1.52590223e-006 + 0.100000001;
  r3.x = cb1[139].z * r1.w + r0.w;
  r0.w = t0.SampleLevel(s0_s, r3.xy, -1).x;
  r1.w = r0.w * cb4[17].z + -cb4[17].z;
  r1.w = saturate(cb4[18].y + r1.w);
  r1.w = 1 + -r1.w;
  r1.w = 1 + -r1.w;
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb4[16].yy);
  r3.xy = v7.xy + r0.ww;
  r3.xy = -cb4[7].xy + r3.xy;
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb4[18].z;
  r0.w = 1 + -r0.w;
  r2.w = cb4[18].w * r0.w;
  r2.w = r2.w * r2.w;
  r2.w = 1.44269514 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = 1 / r2.w;
  r3.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r2.w = 1 + -r2.w;
  r2.w = -r2.w * 0.899999976 + 1;
  r0.w = r0.w ? r2.w : 1;
  r0.w = r3.x ? r0.w : 1;
  r0.w = -r1.w * r0.w + 1;
  r0.w = 1 + -r0.w;
  r3.xyz = -cb1[113].xyz + r1.xyz;
  r3.xyz = cb2[5].xyz + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = 0.00499999989 * r1.w;
  r1.w = min(1, r1.w);
  r1.w = r1.w * 5 + r10.w;
  r1.w = saturate(-5 + r1.w);
  r2.xyz = r0.www * r2.xyz + -r0.xyz;
  r0.xyz = r1.www * r2.xyz + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r9.yyyy;
  r0.xyzw = r9.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r9.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v7.xy;
  o5.zw = float2(0,0);
  return;
}
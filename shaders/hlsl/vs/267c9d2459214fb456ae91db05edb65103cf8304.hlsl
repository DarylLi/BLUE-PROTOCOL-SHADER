// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  float3 v7 : ATTRIBUTE11,
  float3 v8 : ATTRIBUTE12,
  float4 v9 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t0.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t0.Load(r2.x).xyzw;
  r4.xyzw = t0.Load(r2.y).xyzw;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r6.xyzw = t0.Load(r2.z).xyzw;
  r7.xyzw = t0.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r7.xyzw = v5.yyyy * r7.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r4.xyzw = v5.xxxx * r4.xyzw + r7.xyzw;
  r5.xyzw = t0.Load(r0.z).xyzw;
  r6.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r7.xyzw = t0.Load(r6.x).xyzw;
  r8.xyzw = t0.Load(r6.y).xyzw;
  r1.xyzw = v5.zzzz * r5.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r7.xyzw + r3.xyzw;
  r4.xyzw = v5.zzzz * r8.xyzw + r4.xyzw;
  r5.xyzw = t0.Load(r0.w).xyzw;
  r7.xyzw = t0.Load(r6.z).xyzw;
  r8.xyzw = t0.Load(r6.w).xyzw;
  r1.xyzw = v5.wwww * r5.xyzw + r1.xyzw;
  r3.xyzw = v5.wwww * r7.xyzw + r3.xyzw;
  r4.xyzw = v5.wwww * r8.xyzw + r4.xyzw;
  r5.x = cmp(4 < asuint(cb0[1].y));
  if (r5.x != 0) {
    r7.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r8.xyzw = t0.Load(r7.x).xyzw;
    r9.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r10.xyzw = t0.Load(r9.x).xyzw;
    r11.xyzw = t0.Load(r9.y).xyzw;
    r8.xyzw = v6.xxxx * r8.xyzw + r1.xyzw;
    r10.xyzw = v6.xxxx * r10.xyzw + r3.xyzw;
    r11.xyzw = v6.xxxx * r11.xyzw + r4.xyzw;
    r12.xyzw = t0.Load(r7.y).xyzw;
    r13.xyzw = t0.Load(r9.z).xyzw;
    r9.xyzw = t0.Load(r9.w).xyzw;
    r8.xyzw = v6.yyyy * r12.xyzw + r8.xyzw;
    r10.xyzw = v6.yyyy * r13.xyzw + r10.xyzw;
    r9.xyzw = v6.yyyy * r9.xyzw + r11.xyzw;
    r11.xyzw = t0.Load(r7.z).xyzw;
    r12.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r13.xyzw = t0.Load(r12.x).xyzw;
    r14.xyzw = t0.Load(r12.y).xyzw;
    r8.xyzw = v6.zzzz * r11.xyzw + r8.xyzw;
    r10.xyzw = v6.zzzz * r13.xyzw + r10.xyzw;
    r9.xyzw = v6.zzzz * r14.xyzw + r9.xyzw;
    r7.xyzw = t0.Load(r7.w).xyzw;
    r11.xyzw = t0.Load(r12.z).xyzw;
    r12.xyzw = t0.Load(r12.w).xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r8.xyzw;
    r3.xyzw = v6.wwww * r11.xyzw + r10.xyzw;
    r4.xyzw = v6.wwww * r12.xyzw + r9.xyzw;
  }
  r7.xyz = v7.xyz + v0.xyz;
  r7.w = 1;
  r8.x = dot(r1.xyzw, r7.xyzw);
  r8.y = dot(r3.xyzw, r7.xyzw);
  r8.z = dot(r4.xyzw, r7.xyzw);
  r5.yzw = v8.xyz + r8.xyz;
  r8.xyz = cb2[1].xyz * r5.zzz;
  r8.xyz = cb2[0].xyz * r5.yyy + r8.xyz;
  r5.yzw = cb2[2].xyz * r5.www + r8.xyz;
  r8.xyz = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r8.xyz + r5.yzw;
  r8.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r9.xyzw = t1.Load(r0.x).xyzw;
    r10.xyzw = t1.Load(r2.x).xyzw;
    r11.xyzw = t1.Load(r2.y).xyzw;
    r12.xyzw = t1.Load(r0.y).xyzw;
    r13.xyzw = t1.Load(r2.z).xyzw;
    r2.xyzw = t1.Load(r2.w).xyzw;
    r12.xyzw = v5.yyyy * r12.xyzw;
    r13.xyzw = v5.yyyy * r13.xyzw;
    r2.xyzw = v5.yyyy * r2.xyzw;
    r9.xyzw = v5.xxxx * r9.xyzw + r12.xyzw;
    r10.xyzw = v5.xxxx * r10.xyzw + r13.xyzw;
    r2.xyzw = v5.xxxx * r11.xyzw + r2.xyzw;
    r11.xyzw = t1.Load(r0.z).xyzw;
    r12.xyzw = t1.Load(r6.x).xyzw;
    r13.xyzw = t1.Load(r6.y).xyzw;
    r9.xyzw = v5.zzzz * r11.xyzw + r9.xyzw;
    r10.xyzw = v5.zzzz * r12.xyzw + r10.xyzw;
    r2.xyzw = v5.zzzz * r13.xyzw + r2.xyzw;
    r0.xyzw = t1.Load(r0.w).xyzw;
    r11.xyzw = t1.Load(r6.z).xyzw;
    r6.xyzw = t1.Load(r6.w).xyzw;
    r1.xyzw = v5.wwww * r0.xyzw + r9.xyzw;
    r3.xyzw = v5.wwww * r11.xyzw + r10.xyzw;
    r4.xyzw = v5.wwww * r6.xyzw + r2.xyzw;
    if (r5.x != 0) {
      r0.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
      r2.xyzw = t1.Load(r0.x).xyzw;
      r6.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
      r9.xyzw = t1.Load(r6.x).xyzw;
      r10.xyzw = t1.Load(r6.y).xyzw;
      r2.xyzw = v6.xxxx * r2.xyzw + r1.xyzw;
      r9.xyzw = v6.xxxx * r9.xyzw + r3.xyzw;
      r10.xyzw = v6.xxxx * r10.xyzw + r4.xyzw;
      r11.xyzw = t1.Load(r0.y).xyzw;
      r12.xyzw = t1.Load(r6.z).xyzw;
      r6.xyzw = t1.Load(r6.w).xyzw;
      r2.xyzw = v6.yyyy * r11.xyzw + r2.xyzw;
      r9.xyzw = v6.yyyy * r12.xyzw + r9.xyzw;
      r6.xyzw = v6.yyyy * r6.xyzw + r10.xyzw;
      r10.xyzw = t1.Load(r0.z).xyzw;
      r11.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
      r12.xyzw = t1.Load(r11.x).xyzw;
      r13.xyzw = t1.Load(r11.y).xyzw;
      r2.xyzw = v6.zzzz * r10.xyzw + r2.xyzw;
      r9.xyzw = v6.zzzz * r12.xyzw + r9.xyzw;
      r6.xyzw = v6.zzzz * r13.xyzw + r6.xyzw;
      r0.xyzw = t1.Load(r0.w).xyzw;
      r10.xyzw = t1.Load(r11.z).xyzw;
      r11.xyzw = t1.Load(r11.w).xyzw;
      r1.xyzw = v6.wwww * r0.xyzw + r2.xyzw;
      r3.xyzw = v6.wwww * r10.xyzw + r9.xyzw;
      r4.xyzw = v6.wwww * r11.xyzw + r6.xyzw;
    }
  }
  r0.x = dot(r1.xyzw, r7.xyzw);
  r0.y = dot(r3.xyzw, r7.xyzw);
  r0.z = dot(r4.xyzw, r7.xyzw);
  r0.xyz = v8.xyz + r0.xyz;
  r0.w = 1;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r1.w = r8.x;
  r1.x = dot(r0.xyzw, r1.xyzw);
  r2.x = cb2[10].y;
  r2.y = cb2[11].y;
  r2.z = cb2[12].y;
  r2.w = r8.y;
  r1.y = dot(r0.xyzw, r2.xyzw);
  r8.x = cb2[10].z;
  r8.y = cb2[11].z;
  r8.z = cb2[12].z;
  r0.x = dot(r0.xyzw, r8.xyzw);
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r1.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r5.zzzz;
  r0.xyzw = r5.yyyy * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r5.wwww * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}
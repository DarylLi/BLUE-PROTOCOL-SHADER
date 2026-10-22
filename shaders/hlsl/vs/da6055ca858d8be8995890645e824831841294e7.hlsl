// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

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
  float4 cb0[11];
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
  float3 v9 : ATTRIBUTE11,
  float3 v10 : ATTRIBUTE12,
  uint v11 : SV_VertexID0,
  float4 v12 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t2.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r0.w = cmp((uint)r1.y < 0x0000ffff);
  if (r0.w != 0) {
    r0.x = (uint)r0.x << 2;
    r2.xyz = t2.Load(r0.x).xyw;
    r3.xyzw = (int4)r0.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r0.xy = (int2)r3.zw * int2(3,3);
    r1.zw = t1.Load(r0.x).xy;
    r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
    r4.xy = t1.Load(r3.x).xy;
    r5.xyz = cb0[7].xyz * r1.www;
    r5.xyz = r1.zzz * cb0[6].xyz + r5.xyz;
    r4.xzw = r4.xxx * cb0[8].xyz + r5.xyz;
    r4.xzw = cb0[9].xyz + r4.xzw;
    r0.z = (int)r1.x * 3;
    r1.zw = t1.Load(r0.z).xy;
    r5.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r5.zw = t1.Load(r5.x).xy;
    r6.xyz = cb0[7].xyz * r1.www;
    r1.xzw = r1.zzz * cb0[6].xyz + r6.xyz;
    r1.xzw = r5.zzz * cb0[8].xyz + r1.xzw;
    r1.xzw = cb0[9].xyz + r1.xzw;
    r6.xy = t1.Load(r0.y).xy;
    r6.zw = t1.Load(r3.y).xy;
    r7.xyz = cb0[7].xyz * r6.yyy;
    r7.xyz = r6.xxx * cb0[6].xyz + r7.xyz;
    r6.xyz = r6.zzz * cb0[8].xyz + r7.xyz;
    r6.xyz = cb0[9].xyz + r6.xyz;
    r7.xy = t1.Load(r3.z).xy;
    r7.xzw = cb0[7].xyz * r7.xxx;
    r7.xzw = r4.yyy * cb0[6].xyz + r7.xzw;
    r7.xyz = r7.yyy * cb0[8].xyz + r7.xzw;
    r8.xy = t1.Load(r5.y).xy;
    r8.xzw = cb0[7].xyz * r8.xxx;
    r8.xzw = r5.www * cb0[6].xyz + r8.xzw;
    r8.xyz = r8.yyy * cb0[8].xyz + r8.xzw;
    r5.zw = t1.Load(r3.w).xy;
    r9.xyz = cb0[7].xyz * r5.zzz;
    r9.xyz = r6.www * cb0[6].xyz + r9.xyz;
    r9.xyz = r5.www * cb0[8].xyz + r9.xyz;
    r2.w = 1 + -r2.x;
    r2.w = r2.w + -r2.y;
    r4.xyz = r7.xyz * r2.zzz + r4.xzw;
    r1.xzw = r8.xyz * r2.zzz + r1.xzw;
    r1.xzw = r2.yyy * r1.xzw;
    r1.xzw = r2.xxx * r4.xyz + r1.xzw;
    r4.xyz = r9.xyz * r2.zzz + r6.xyz;
    r1.xzw = r2.www * r4.xyz + r1.xzw;
    r4.xy = t0.Load(r0.x).xy;
    r4.zw = t0.Load(r3.x).xy;
    r6.xyz = cb0[3].xyz * r4.yyy;
    r6.xyz = r4.xxx * cb0[2].xyz + r6.xyz;
    r4.xyz = r4.zzz * cb0[4].xyz + r6.xyz;
    r4.xyz = cb0[5].xyz + r4.xyz;
    r0.xz = t0.Load(r0.z).xy;
    r5.xz = t0.Load(r5.x).xy;
    r6.xyz = cb0[3].xyz * r0.zzz;
    r6.xyz = r0.xxx * cb0[2].xyz + r6.xyz;
    r6.xyz = r5.xxx * cb0[4].xyz + r6.xyz;
    r6.xyz = cb0[5].xyz + r6.xyz;
    r0.xy = t0.Load(r0.y).xy;
    r3.xy = t0.Load(r3.y).xy;
    r7.xyz = cb0[3].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb0[2].xyz + r7.xyz;
    r0.xyz = r3.xxx * cb0[4].xyz + r0.xyz;
    r0.xyz = cb0[5].xyz + r0.xyz;
    r3.xz = t0.Load(r3.z).xy;
    r7.xyz = cb0[3].xyz * r3.xxx;
    r7.xyz = r4.www * cb0[2].xyz + r7.xyz;
    r7.xyz = r3.zzz * cb0[4].xyz + r7.xyz;
    r3.xz = t0.Load(r5.y).xy;
    r5.xyw = cb0[3].xyz * r3.xxx;
    r5.xyz = r5.zzz * cb0[2].xyz + r5.xyw;
    r5.xyz = r3.zzz * cb0[4].xyz + r5.xyz;
    r3.xz = t0.Load(r3.w).xy;
    r8.xyz = cb0[3].xyz * r3.xxx;
    r3.xyw = r3.yyy * cb0[2].xyz + r8.xyz;
    r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
    r4.xyz = r7.xyz * r2.zzz + r4.xyz;
    r5.xyz = r5.xyz * r2.zzz + r6.xyz;
    r5.xyz = r5.xyz * r2.yyy;
    r4.xyz = r2.xxx * r4.xyz + r5.xyz;
    r0.xyz = r3.xyz * r2.zzz + r0.xyz;
    r0.xyz = r2.www * r0.xyz + r4.xyz;
  } else {
    r0.xyz = v0.xyz;
    r1.xzw = v0.xyz;
  }
  r2.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r3.xyzw = t3.Load(r2.x).xyzw;
  r4.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r5.xyzw = t3.Load(r4.x).xyzw;
  r6.xyzw = t3.Load(r4.y).xyzw;
  r7.xyzw = t3.Load(r2.y).xyzw;
  r8.xyzw = t3.Load(r4.z).xyzw;
  r9.xyzw = t3.Load(r4.w).xyzw;
  r7.xyzw = v5.yyyy * r7.xyzw;
  r8.xyzw = v5.yyyy * r8.xyzw;
  r9.xyzw = v5.yyyy * r9.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r7.xyzw;
  r5.xyzw = v5.xxxx * r5.xyzw + r8.xyzw;
  r6.xyzw = v5.xxxx * r6.xyzw + r9.xyzw;
  r7.xyzw = t3.Load(r2.z).xyzw;
  r8.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r9.xyzw = t3.Load(r8.x).xyzw;
  r10.xyzw = t3.Load(r8.y).xyzw;
  r3.xyzw = v5.zzzz * r7.xyzw + r3.xyzw;
  r5.xyzw = v5.zzzz * r9.xyzw + r5.xyzw;
  r6.xyzw = v5.zzzz * r10.xyzw + r6.xyzw;
  r7.xyzw = t3.Load(r2.w).xyzw;
  r9.xyzw = t3.Load(r8.z).xyzw;
  r10.xyzw = t3.Load(r8.w).xyzw;
  r3.xyzw = v5.wwww * r7.xyzw + r3.xyzw;
  r5.xyzw = v5.wwww * r9.xyzw + r5.xyzw;
  r6.xyzw = v5.wwww * r10.xyzw + r6.xyzw;
  r7.x = cmp(4 < asuint(cb0[1].y));
  if (r7.x != 0) {
    r9.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r10.xyzw = t3.Load(r9.x).xyzw;
    r11.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r12.xyzw = t3.Load(r11.x).xyzw;
    r13.xyzw = t3.Load(r11.y).xyzw;
    r10.xyzw = v6.xxxx * r10.xyzw + r3.xyzw;
    r12.xyzw = v6.xxxx * r12.xyzw + r5.xyzw;
    r13.xyzw = v6.xxxx * r13.xyzw + r6.xyzw;
    r14.xyzw = t3.Load(r9.y).xyzw;
    r15.xyzw = t3.Load(r11.z).xyzw;
    r11.xyzw = t3.Load(r11.w).xyzw;
    r10.xyzw = v6.yyyy * r14.xyzw + r10.xyzw;
    r12.xyzw = v6.yyyy * r15.xyzw + r12.xyzw;
    r11.xyzw = v6.yyyy * r11.xyzw + r13.xyzw;
    r13.xyzw = t3.Load(r9.z).xyzw;
    r14.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r15.xyzw = t3.Load(r14.x).xyzw;
    r16.xyzw = t3.Load(r14.y).xyzw;
    r10.xyzw = v6.zzzz * r13.xyzw + r10.xyzw;
    r12.xyzw = v6.zzzz * r15.xyzw + r12.xyzw;
    r11.xyzw = v6.zzzz * r16.xyzw + r11.xyzw;
    r9.xyzw = t3.Load(r9.w).xyzw;
    r13.xyzw = t3.Load(r14.z).xyzw;
    r14.xyzw = t3.Load(r14.w).xyzw;
    r3.xyzw = v6.wwww * r9.xyzw + r10.xyzw;
    r5.xyzw = v6.wwww * r13.xyzw + r12.xyzw;
    r6.xyzw = v6.wwww * r14.xyzw + r11.xyzw;
  }
  r9.xyz = v9.xyz + v0.xyz;
  r9.w = 1;
  r10.x = dot(r3.xyzw, r9.xyzw);
  r10.y = dot(r5.xyzw, r9.xyzw);
  r10.z = dot(r6.xyzw, r9.xyzw);
  r7.yzw = v10.xyz + r10.xyz;
  r10.xyz = cb2[1].xyz * r7.zzz;
  r10.xyz = r7.yyy * cb2[0].xyz + r10.xyz;
  r7.yzw = r7.www * cb2[2].xyz + r10.xyz;
  r10.xyz = cb2[3].xyz + r7.yzw;
  r0.xyz = -r10.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r10.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r10.xyz = cb2[3].xyz + cb1[70].xyz;
  r7.yzw = r10.xyz + r7.yzw;
  r0.xyz = r0.www ? r0.xyz : r7.yzw;
  r10.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r11.xyzw = t4.Load(r2.x).xyzw;
    r12.xyzw = t4.Load(r4.x).xyzw;
    r13.xyzw = t4.Load(r4.y).xyzw;
    r14.xyzw = t4.Load(r2.y).xyzw;
    r15.xyzw = t4.Load(r4.z).xyzw;
    r4.xyzw = t4.Load(r4.w).xyzw;
    r14.xyzw = v5.yyyy * r14.xyzw;
    r15.xyzw = v5.yyyy * r15.xyzw;
    r4.xyzw = v5.yyyy * r4.xyzw;
    r11.xyzw = v5.xxxx * r11.xyzw + r14.xyzw;
    r12.xyzw = v5.xxxx * r12.xyzw + r15.xyzw;
    r4.xyzw = v5.xxxx * r13.xyzw + r4.xyzw;
    r13.xyzw = t4.Load(r2.z).xyzw;
    r14.xyzw = t4.Load(r8.x).xyzw;
    r15.xyzw = t4.Load(r8.y).xyzw;
    r11.xyzw = v5.zzzz * r13.xyzw + r11.xyzw;
    r12.xyzw = v5.zzzz * r14.xyzw + r12.xyzw;
    r4.xyzw = v5.zzzz * r15.xyzw + r4.xyzw;
    r2.xyzw = t4.Load(r2.w).xyzw;
    r13.xyzw = t4.Load(r8.z).xyzw;
    r8.xyzw = t4.Load(r8.w).xyzw;
    r3.xyzw = v5.wwww * r2.xyzw + r11.xyzw;
    r5.xyzw = v5.wwww * r13.xyzw + r12.xyzw;
    r6.xyzw = v5.wwww * r8.xyzw + r4.xyzw;
    if (r7.x != 0) {
      r2.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
      r4.xyzw = t4.Load(r2.x).xyzw;
      r7.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
      r8.xyzw = t4.Load(r7.x).xyzw;
      r11.xyzw = t4.Load(r7.y).xyzw;
      r4.xyzw = v6.xxxx * r4.xyzw + r3.xyzw;
      r8.xyzw = v6.xxxx * r8.xyzw + r5.xyzw;
      r11.xyzw = v6.xxxx * r11.xyzw + r6.xyzw;
      r12.xyzw = t4.Load(r2.y).xyzw;
      r13.xyzw = t4.Load(r7.z).xyzw;
      r7.xyzw = t4.Load(r7.w).xyzw;
      r4.xyzw = v6.yyyy * r12.xyzw + r4.xyzw;
      r8.xyzw = v6.yyyy * r13.xyzw + r8.xyzw;
      r7.xyzw = v6.yyyy * r7.xyzw + r11.xyzw;
      r11.xyzw = t4.Load(r2.z).xyzw;
      r12.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
      r13.xyzw = t4.Load(r12.x).xyzw;
      r14.xyzw = t4.Load(r12.y).xyzw;
      r4.xyzw = v6.zzzz * r11.xyzw + r4.xyzw;
      r8.xyzw = v6.zzzz * r13.xyzw + r8.xyzw;
      r7.xyzw = v6.zzzz * r14.xyzw + r7.xyzw;
      r2.xyzw = t4.Load(r2.w).xyzw;
      r11.xyzw = t4.Load(r12.z).xyzw;
      r12.xyzw = t4.Load(r12.w).xyzw;
      r3.xyzw = v6.wwww * r2.xyzw + r4.xyzw;
      r5.xyzw = v6.wwww * r11.xyzw + r8.xyzw;
      r6.xyzw = v6.wwww * r12.xyzw + r7.xyzw;
    }
  }
  r2.x = dot(r3.xyzw, r9.xyzw);
  r2.y = dot(r5.xyzw, r9.xyzw);
  r2.z = dot(r6.xyzw, r9.xyzw);
  r2.xyz = v10.xyz + r2.xyz;
  r2.w = 1;
  r3.x = cb2[10].x;
  r3.y = cb2[11].x;
  r3.z = cb2[12].x;
  r3.w = r10.x;
  r3.x = dot(r2.xyzw, r3.xyzw);
  r4.x = cb2[10].y;
  r4.y = cb2[11].y;
  r4.z = cb2[12].y;
  r4.w = r10.y;
  r3.y = dot(r2.xyzw, r4.xyzw);
  r10.x = cb2[10].z;
  r10.y = cb2[11].z;
  r10.z = cb2[12].z;
  r3.z = dot(r2.xyzw, r10.xyzw);
  r1.xzw = cb1[113].xyz + r1.xzw;
  r1.xzw = r1.xzw + -r3.xyz;
  r1.xzw = cb0[10].xxx * r1.xzw + r3.xyz;
  r0.w = cmp((uint)r1.y >= 0x0000ffff);
  r1.xyz = r0.www ? r3.xyz : r1.xzw;
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r2.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}
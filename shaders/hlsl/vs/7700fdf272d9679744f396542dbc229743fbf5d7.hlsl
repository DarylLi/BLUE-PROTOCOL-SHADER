// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[44];
}

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
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t2.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r2.xyzw = (int4)r0.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r0.y = cmp((uint)r1.y < 0x0000ffff);
  if (r0.y != 0) {
    r0.z = (uint)r0.x << 2;
    r3.xyz = t2.Load(r0.z).xyw;
    r0.zw = (int2)r2.yw * int2(3,3);
    r1.zw = t1.Load(r0.z).xy;
    r4.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r5.xy = t1.Load(r4.x).xy;
    r6.xyz = cb0[7].xyz * r1.www;
    r6.xyz = r1.zzz * cb0[6].xyz + r6.xyz;
    r5.xzw = r5.xxx * cb0[8].xyz + r6.xyz;
    r5.xzw = cb0[9].xyz + r5.xzw;
    r1.z = (int)r1.x * 3;
    r6.xy = t1.Load(r1.z).xy;
    r6.zw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r7.xy = t1.Load(r6.z).xy;
    r8.xyz = cb0[7].xyz * r6.yyy;
    r8.xyz = r6.xxx * cb0[6].xyz + r8.xyz;
    r7.xzw = r7.xxx * cb0[8].xyz + r8.xyz;
    r7.xzw = cb0[9].xyz + r7.xzw;
    r6.xy = t1.Load(r0.w).xy;
    r8.xy = t1.Load(r4.y).xy;
    r9.xyz = cb0[7].xyz * r6.yyy;
    r9.xyz = r6.xxx * cb0[6].xyz + r9.xyz;
    r8.xzw = r8.xxx * cb0[8].xyz + r9.xyz;
    r8.xzw = cb0[9].xyz + r8.xzw;
    r6.xy = t1.Load(r4.z).xy;
    r9.xyz = cb0[7].xyz * r6.xxx;
    r9.xyz = r5.yyy * cb0[6].xyz + r9.xyz;
    r9.xyz = r6.yyy * cb0[8].xyz + r9.xyz;
    r6.xy = t1.Load(r6.w).xy;
    r10.xyz = cb0[7].xyz * r6.xxx;
    r10.xyz = r7.yyy * cb0[6].xyz + r10.xyz;
    r10.xyz = r6.yyy * cb0[8].xyz + r10.xyz;
    r6.xy = t1.Load(r4.w).xy;
    r11.xyz = cb0[7].xyz * r6.xxx;
    r11.xyz = r8.yyy * cb0[6].xyz + r11.xyz;
    r11.xyz = r6.yyy * cb0[8].xyz + r11.xyz;
    r1.w = 1 + -r3.x;
    r1.w = r1.w + -r3.y;
    r5.xyz = r9.xyz * r3.zzz + r5.xzw;
    r7.xyz = r10.xyz * r3.zzz + r7.xzw;
    r7.xyz = r7.xyz * r3.yyy;
    r5.xyz = r3.xxx * r5.xyz + r7.xyz;
    r7.xyz = r11.xyz * r3.zzz + r8.xzw;
    r5.xyz = r1.www * r7.xyz + r5.xyz;
    r6.xy = t0.Load(r0.z).xy;
    r7.xy = t0.Load(r4.x).xy;
    r8.xyz = cb0[3].xyz * r6.yyy;
    r8.xyz = r6.xxx * cb0[2].xyz + r8.xyz;
    r7.xzw = r7.xxx * cb0[4].xyz + r8.xyz;
    r7.xzw = cb0[5].xyz + r7.xzw;
    r6.xy = t0.Load(r1.z).xy;
    r8.xy = t0.Load(r6.z).xy;
    r9.xyz = cb0[3].xyz * r6.yyy;
    r6.xyz = r6.xxx * cb0[2].xyz + r9.xyz;
    r6.xyz = r8.xxx * cb0[4].xyz + r6.xyz;
    r6.xyz = cb0[5].xyz + r6.xyz;
    r0.zw = t0.Load(r0.w).xy;
    r4.xy = t0.Load(r4.y).xy;
    r8.xzw = cb0[3].xyz * r0.www;
    r8.xzw = r0.zzz * cb0[2].xyz + r8.xzw;
    r8.xzw = r4.xxx * cb0[4].xyz + r8.xzw;
    r8.xzw = cb0[5].xyz + r8.xzw;
    r0.zw = t0.Load(r4.z).xy;
    r9.xyz = cb0[3].xyz * r0.zzz;
    r9.xyz = r7.yyy * cb0[2].xyz + r9.xyz;
    r9.xyz = r0.www * cb0[4].xyz + r9.xyz;
    r0.zw = t0.Load(r6.w).xy;
    r10.xyz = cb0[3].xyz * r0.zzz;
    r10.xyz = r8.yyy * cb0[2].xyz + r10.xyz;
    r10.xyz = r0.www * cb0[4].xyz + r10.xyz;
    r0.zw = t0.Load(r4.w).xy;
    r4.xzw = cb0[3].xyz * r0.zzz;
    r4.xyz = r4.yyy * cb0[2].xyz + r4.xzw;
    r4.xyz = r0.www * cb0[4].xyz + r4.xyz;
    r7.xyz = r9.xyz * r3.zzz + r7.xzw;
    r6.xyz = r10.xyz * r3.zzz + r6.xyz;
    r6.xyz = r6.xyz * r3.yyy;
    r3.xyw = r3.xxx * r7.xyz + r6.xyz;
    r4.xyz = r4.xyz * r3.zzz + r8.xzw;
    r3.xyz = r1.www * r4.xyz + r3.xyw;
  } else {
    r3.xyz = v0.xyz;
    r5.xyz = v0.xyz;
  }
  r4.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r6.xyzw = t3.Load(r4.x).xyzw;
  r7.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r8.xyzw = t3.Load(r7.x).xyzw;
  r9.xyzw = t3.Load(r7.y).xyzw;
  r10.xyzw = t3.Load(r4.y).xyzw;
  r11.xyzw = t3.Load(r7.z).xyzw;
  r12.xyzw = t3.Load(r7.w).xyzw;
  r10.xyzw = v5.yyyy * r10.xyzw;
  r11.xyzw = v5.yyyy * r11.xyzw;
  r12.xyzw = v5.yyyy * r12.xyzw;
  r6.xyzw = v5.xxxx * r6.xyzw + r10.xyzw;
  r8.xyzw = v5.xxxx * r8.xyzw + r11.xyzw;
  r9.xyzw = v5.xxxx * r9.xyzw + r12.xyzw;
  r10.xyzw = t3.Load(r4.z).xyzw;
  r11.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r12.xyzw = t3.Load(r11.x).xyzw;
  r13.xyzw = t3.Load(r11.y).xyzw;
  r6.xyzw = v5.zzzz * r10.xyzw + r6.xyzw;
  r8.xyzw = v5.zzzz * r12.xyzw + r8.xyzw;
  r9.xyzw = v5.zzzz * r13.xyzw + r9.xyzw;
  r10.xyzw = t3.Load(r4.w).xyzw;
  r12.xyzw = t3.Load(r11.z).xyzw;
  r13.xyzw = t3.Load(r11.w).xyzw;
  r6.xyzw = v5.wwww * r10.xyzw + r6.xyzw;
  r8.xyzw = v5.wwww * r12.xyzw + r8.xyzw;
  r9.xyzw = v5.wwww * r13.xyzw + r9.xyzw;
  r0.z = cmp(4 < asuint(cb0[1].y));
  if (r0.z != 0) {
    r10.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r12.xyzw = t3.Load(r10.x).xyzw;
    r13.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r14.xyzw = t3.Load(r13.x).xyzw;
    r15.xyzw = t3.Load(r13.y).xyzw;
    r12.xyzw = v6.xxxx * r12.xyzw + r6.xyzw;
    r14.xyzw = v6.xxxx * r14.xyzw + r8.xyzw;
    r15.xyzw = v6.xxxx * r15.xyzw + r9.xyzw;
    r16.xyzw = t3.Load(r10.y).xyzw;
    r17.xyzw = t3.Load(r13.z).xyzw;
    r13.xyzw = t3.Load(r13.w).xyzw;
    r12.xyzw = v6.yyyy * r16.xyzw + r12.xyzw;
    r14.xyzw = v6.yyyy * r17.xyzw + r14.xyzw;
    r13.xyzw = v6.yyyy * r13.xyzw + r15.xyzw;
    r15.xyzw = t3.Load(r10.z).xyzw;
    r16.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r17.xyzw = t3.Load(r16.x).xyzw;
    r18.xyzw = t3.Load(r16.y).xyzw;
    r12.xyzw = v6.zzzz * r15.xyzw + r12.xyzw;
    r14.xyzw = v6.zzzz * r17.xyzw + r14.xyzw;
    r13.xyzw = v6.zzzz * r18.xyzw + r13.xyzw;
    r10.xyzw = t3.Load(r10.w).xyzw;
    r15.xyzw = t3.Load(r16.z).xyzw;
    r16.xyzw = t3.Load(r16.w).xyzw;
    r6.xyzw = v6.wwww * r10.xyzw + r12.xyzw;
    r8.xyzw = v6.wwww * r15.xyzw + r14.xyzw;
    r9.xyzw = v6.wwww * r16.xyzw + r13.xyzw;
  }
  if (r0.y != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.w = (((uint)r0.x << 2) & bitmask.w) | ((uint)2 & ~bitmask.w);
    r10.xyz = t2.Load(r0.x).xyz;
    r12.xyz = t2.Load(r0.w).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r0.x = t0.Load(r2.x).y;
    r1.zw = t0.Load(r2.y).xy;
    r13.xyz = cb0[3].xyz * r1.zzz;
    r13.xyz = r0.xxx * cb0[2].xyz + r13.xyz;
    r13.xyz = r1.www * cb0[4].xyz + r13.xyz;
    r0.xw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r0.x = t0.Load(r0.x).y;
    r1.xz = t0.Load(r0.w).xy;
    r14.xyz = cb0[3].xyz * r1.xxx;
    r14.xyz = r0.xxx * cb0[2].xyz + r14.xyz;
    r1.xzw = r1.zzz * cb0[4].xyz + r14.xyz;
    r0.x = t0.Load(r2.z).y;
    r2.xy = t0.Load(r2.w).xy;
    r2.xzw = cb0[3].xyz * r2.xxx;
    r2.xzw = r0.xxx * cb0[2].xyz + r2.xzw;
    r2.xyz = r2.yyy * cb0[4].xyz + r2.xzw;
    r14.xyz = r10.yyy * r1.xzw;
    r10.xyw = r10.xxx * r13.xyz + r14.xyz;
    r10.xyz = r10.zzz * r2.xyz + r10.xyw;
    r1.xzw = r12.yyy * r1.xzw;
    r1.xzw = r12.xxx * r13.xyz + r1.xzw;
    r1.xzw = r12.zzz * r2.xyz + r1.xzw;
    r1.xzw = r1.xzw + -r3.xyz;
    r0.x = dot(r1.xzw, r1.xzw);
    r0.x = rsqrt(r0.x);
    r1.xzw = r1.xzw * r0.xxx;
    r0.x = dot(r10.xyz, r10.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r10.xyz * r0.xxx;
    r10.xyz = cb2[7].xyz * r1.zzz;
    r10.xyz = r1.xxx * cb2[6].xyz + r10.xyz;
    r1.xzw = r1.www * cb2[8].xyz + r10.xyz;
    r10.xyz = cb2[7].xyz * -r2.yyy;
    r2.xyw = -r2.xxx * cb2[6].xyz + r10.xyz;
    r2.yzw = -r2.zzz * cb2[8].xyz + r2.xyw;
    r2.x = r1.w;
    r0.x = cb0[10].x;
  } else {
    r2.xyzw = float4(0,0,0,1);
    r1.xz = float2(1,0);
    r0.x = 0;
  }
  r10.x = dot(r6.xyz, v1.xyz);
  r10.y = dot(r8.xyz, v1.xyz);
  r10.z = dot(r9.xyz, v1.xyz);
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = rsqrt(r0.w);
  r10.xyz = r10.xyz * r0.www;
  r12.y = dot(r6.xyz, v2.xyz);
  r12.z = dot(r8.xyz, v2.xyz);
  r12.w = dot(r9.xyz, v2.xyz);
  r0.w = dot(r12.yzw, r12.yzw);
  r0.w = rsqrt(r0.w);
  r12.yzw = r12.yzw * r0.www;
  r0.w = 1 + -r0.x;
  r12.x = r10.z;
  r12.xyzw = r12.xyzw * r0.wwww;
  r10.xy = r10.xy * r0.ww;
  r1.xz = r1.xz * r0.xx + r10.xy;
  r2.xyzw = r2.xyzw * r0.xxxx + r12.xyzw;
  r10.xyz = v9.xyz + v0.xyz;
  r10.w = 1;
  r12.x = dot(r6.xyzw, r10.xyzw);
  r12.y = dot(r8.xyzw, r10.xyzw);
  r12.z = dot(r9.xyzw, r10.xyzw);
  r12.xyz = v10.xyz + r12.xyz;
  r13.xyz = cb2[1].xyz * r12.yyy;
  r12.xyw = r12.xxx * cb2[0].xyz + r13.xyz;
  r12.xyz = r12.zzz * cb2[2].xyz + r12.xyw;
  r13.xyz = cb2[3].xyz + r12.xyz;
  r3.xyz = -r13.xyz + r3.xyz;
  r3.xyz = cb0[10].xxx * r3.xyz + r13.xyz;
  r3.xyz = cb1[70].xyz + r3.xyz;
  r13.xyz = cb2[3].xyz + cb1[70].xyz;
  r12.xyz = r13.xyz + r12.xyz;
  r0.xyw = r0.yyy ? r3.xyz : r12.xyz;
  o6.xy = cb3[43].xy + v7.xy;
  r3.xyz = cb2[4].xxx * cb2[0].xyz;
  r12.xyz = cb2[4].yyy * cb2[1].xyz;
  r13.xyz = cb2[4].zzz * cb2[2].xyz;
  r14.xyz = r12.xyz * r1.zzz;
  r1.xzw = r1.xxx * r3.xyz + r14.xyz;
  o3.xyz = r2.xxx * r13.xyz + r1.xzw;
  r1.xzw = r12.xyz * r2.zzz;
  r1.xzw = r2.yyy * r3.xyz + r1.xzw;
  o4.xyz = r2.www * r13.xyz + r1.xzw;
  o4.w = cb2[4].w * v2.w;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r3.xyzw = t4.Load(r4.x).xyzw;
    r12.xyzw = t4.Load(r7.x).xyzw;
    r13.xyzw = t4.Load(r7.y).xyzw;
    r14.xyzw = t4.Load(r4.y).xyzw;
    r15.xyzw = t4.Load(r7.z).xyzw;
    r7.xyzw = t4.Load(r7.w).xyzw;
    r14.xyzw = v5.yyyy * r14.xyzw;
    r15.xyzw = v5.yyyy * r15.xyzw;
    r7.xyzw = v5.yyyy * r7.xyzw;
    r3.xyzw = v5.xxxx * r3.xyzw + r14.xyzw;
    r12.xyzw = v5.xxxx * r12.xyzw + r15.xyzw;
    r7.xyzw = v5.xxxx * r13.xyzw + r7.xyzw;
    r13.xyzw = t4.Load(r4.z).xyzw;
    r14.xyzw = t4.Load(r11.x).xyzw;
    r15.xyzw = t4.Load(r11.y).xyzw;
    r3.xyzw = v5.zzzz * r13.xyzw + r3.xyzw;
    r12.xyzw = v5.zzzz * r14.xyzw + r12.xyzw;
    r7.xyzw = v5.zzzz * r15.xyzw + r7.xyzw;
    r4.xyzw = t4.Load(r4.w).xyzw;
    r13.xyzw = t4.Load(r11.z).xyzw;
    r11.xyzw = t4.Load(r11.w).xyzw;
    r6.xyzw = v5.wwww * r4.xyzw + r3.xyzw;
    r8.xyzw = v5.wwww * r13.xyzw + r12.xyzw;
    r9.xyzw = v5.wwww * r11.xyzw + r7.xyzw;
    if (r0.z != 0) {
      r3.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
      r4.xyzw = t4.Load(r3.x).xyzw;
      r7.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
      r11.xyzw = t4.Load(r7.x).xyzw;
      r12.xyzw = t4.Load(r7.y).xyzw;
      r4.xyzw = v6.xxxx * r4.xyzw + r6.xyzw;
      r11.xyzw = v6.xxxx * r11.xyzw + r8.xyzw;
      r12.xyzw = v6.xxxx * r12.xyzw + r9.xyzw;
      r13.xyzw = t4.Load(r3.y).xyzw;
      r14.xyzw = t4.Load(r7.z).xyzw;
      r7.xyzw = t4.Load(r7.w).xyzw;
      r4.xyzw = v6.yyyy * r13.xyzw + r4.xyzw;
      r11.xyzw = v6.yyyy * r14.xyzw + r11.xyzw;
      r7.xyzw = v6.yyyy * r7.xyzw + r12.xyzw;
      r12.xyzw = t4.Load(r3.z).xyzw;
      r13.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
      r14.xyzw = t4.Load(r13.x).xyzw;
      r15.xyzw = t4.Load(r13.y).xyzw;
      r4.xyzw = v6.zzzz * r12.xyzw + r4.xyzw;
      r11.xyzw = v6.zzzz * r14.xyzw + r11.xyzw;
      r7.xyzw = v6.zzzz * r15.xyzw + r7.xyzw;
      r3.xyzw = t4.Load(r3.w).xyzw;
      r12.xyzw = t4.Load(r13.z).xyzw;
      r13.xyzw = t4.Load(r13.w).xyzw;
      r6.xyzw = v6.wwww * r3.xyzw + r4.xyzw;
      r8.xyzw = v6.wwww * r12.xyzw + r11.xyzw;
      r9.xyzw = v6.wwww * r13.xyzw + r7.xyzw;
    }
  }
  r3.x = dot(r6.xyzw, r10.xyzw);
  r3.y = dot(r8.xyzw, r10.xyzw);
  r3.z = dot(r9.xyzw, r10.xyzw);
  r3.xyz = v10.xyz + r3.xyz;
  r3.w = 1;
  r4.x = cb2[10].x;
  r4.y = cb2[11].x;
  r4.z = cb2[12].x;
  r4.w = r2.x;
  r4.x = dot(r3.xyzw, r4.xyzw);
  r6.x = cb2[10].y;
  r6.y = cb2[11].y;
  r6.z = cb2[12].y;
  r6.w = r2.y;
  r4.y = dot(r3.xyzw, r6.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r4.z = dot(r3.xyzw, r2.xyzw);
  r1.xzw = cb1[113].xyz + r5.xyz;
  r1.xzw = r1.xzw + -r4.xyz;
  r1.xzw = cb0[10].xxx * r1.xzw + r4.xyz;
  r0.z = cmp((uint)r1.y >= 0x0000ffff);
  r1.xyz = r0.zzz ? r4.xyz : r1.xzw;
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r2.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xyzw = v12.xyzw;
  o6.zw = v8.xy;
  return;
}
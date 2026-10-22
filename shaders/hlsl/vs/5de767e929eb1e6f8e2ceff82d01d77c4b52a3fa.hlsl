// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[42];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  r0.x = (int)r0.x * 5;
  r0.y = (uint)r0.x << 2;
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r1.xyz = t1.Load(r0.z).zxy;
  r0.zw = (uint2)r1.yz >> int2(16,16);
  r2.xyzw = (int4)r1.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r3.xyzw = (int4)r0.yyyy + int4(4,8,12,16);
  r4.xyzw = (int4)r3.xyzw + int4(3,3,3,3);
  r1.yzw = t1.Load(r4.x).xyz;
  r5.xy = (uint2)r1.yz >> int2(16,16);
  r6.xyzw = (int4)r1.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r7.xyz = t1.Load(r4.y).xyz;
  r1.yz = (uint2)r7.xy >> int2(16,16);
  r8.xyzw = (int4)r7.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r4.xyz = t1.Load(r4.z).xyz;
  r5.zw = (uint2)r4.xy >> int2(16,16);
  r9.xyzw = (int4)r4.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r4.xyw = t1.Load(r4.w).xyz;
  r7.xy = (uint2)r4.xy >> int2(16,16);
  r10.xyzw = (int4)r4.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r0.w = cmp((uint)r0.w < 0x0000ffff);
  if (r0.w != 0) {
    r11.xyz = t1.Load(r0.y).xyw;
    r4.xy = (int2)r2.yw * int2(3,3);
    r12.xy = t0.Load(r4.x).xy;
    r13.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r12.zw = t0.Load(r13.x).xy;
    r14.xyz = cb0[3].xyz * r12.yyy;
    r14.xyz = r12.xxx * cb0[2].xyz + r14.xyz;
    r12.xyz = r12.zzz * cb0[4].xyz + r14.xyz;
    r12.xyz = cb0[5].xyz + r12.xyz;
    r0.y = (int)r0.z * 3;
    r14.xy = t0.Load(r0.y).xy;
    r14.zw = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r15.xy = t0.Load(r14.z).xy;
    r16.xyz = cb0[3].xyz * r14.yyy;
    r14.xyz = r14.xxx * cb0[2].xyz + r16.xyz;
    r14.xyz = r15.xxx * cb0[4].xyz + r14.xyz;
    r14.xyz = cb0[5].xyz + r14.xyz;
    r4.xy = t0.Load(r4.y).xy;
    r13.xy = t0.Load(r13.y).xy;
    r15.xzw = cb0[3].xyz * r4.yyy;
    r15.xzw = r4.xxx * cb0[2].xyz + r15.xzw;
    r15.xzw = r13.xxx * cb0[4].xyz + r15.xzw;
    r15.xzw = cb0[5].xyz + r15.xzw;
    r4.xy = t0.Load(r13.z).xy;
    r16.xyz = cb0[3].xyz * r4.xxx;
    r16.xyz = r12.www * cb0[2].xyz + r16.xyz;
    r16.xyz = r4.yyy * cb0[4].xyz + r16.xyz;
    r4.xy = t0.Load(r14.w).xy;
    r17.xyz = cb0[3].xyz * r4.xxx;
    r17.xyz = r15.yyy * cb0[2].xyz + r17.xyz;
    r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
    r4.xy = t0.Load(r13.w).xy;
    r13.xzw = cb0[3].xyz * r4.xxx;
    r13.xyz = r13.yyy * cb0[2].xyz + r13.xzw;
    r13.xyz = r4.yyy * cb0[4].xyz + r13.xyz;
    r0.y = 1 + -r11.x;
    r0.y = r0.y + -r11.y;
    r12.xyz = r16.xyz * r11.zzz + r12.xyz;
    r14.xyz = r17.xyz * r11.zzz + r14.xyz;
    r14.xyz = r14.xyz * r11.yyy;
    r11.xyw = r11.xxx * r12.xyz + r14.xyz;
    r12.xyz = r13.xyz * r11.zzz + r15.xzw;
    r11.xyz = r0.yyy * r12.xyz + r11.xyw;
    r11.xyz = r11.xyz * r1.xxx;
    r0.y = cmp((uint)r5.y < 0x0000ffff);
    if (r0.y != 0) {
      r12.xyz = t1.Load(r3.x).xyw;
      r4.xy = (int2)r6.yw * int2(3,3);
      r13.xy = t0.Load(r4.x).xy;
      r14.xyzw = mad((int4)r6.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t0.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r0.y = (int)r5.x * 3;
      r15.xy = t0.Load(r0.y).xy;
      r15.zw = mad((int2)r5.xx, int2(3,3), int2(1,2));
      r16.xy = t0.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t0.Load(r4.y).xy;
      r14.xy = t0.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t0.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t0.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t0.Load(r14.w).xy;
      r14.xzw = cb0[3].xyz * r4.xxx;
      r14.xyz = r14.yyy * cb0[2].xyz + r14.xzw;
      r14.xyz = r4.yyy * cb0[4].xyz + r14.xyz;
      r0.y = r1.x + r1.w;
      r4.x = 1 + -r12.x;
      r4.x = r4.x + -r12.y;
      r13.xyz = r17.xyz * r12.zzz + r13.xyz;
      r15.xyz = r18.xyz * r12.zzz + r15.xyz;
      r15.xyz = r15.xyz * r12.yyy;
      r12.xyw = r12.xxx * r13.xyz + r15.xyz;
      r13.xyz = r14.xyz * r12.zzz + r16.xzw;
      r12.xyz = r4.xxx * r13.xyz + r12.xyw;
      r11.xyz = r1.www * r12.xyz + r11.xyz;
    } else {
      r0.y = r1.x;
    }
    r4.x = cmp((uint)r1.z < 0x0000ffff);
    if (r4.x != 0) {
      r12.xyz = t1.Load(r3.y).xyw;
      r4.xy = (int2)r8.yw * int2(3,3);
      r13.xy = t0.Load(r4.x).xy;
      r14.xyzw = mad((int4)r8.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t0.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r1.y * 3;
      r15.xy = t0.Load(r4.x).xy;
      r15.zw = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r16.xy = t0.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t0.Load(r4.y).xy;
      r14.xy = t0.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t0.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t0.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t0.Load(r14.w).xy;
      r14.xzw = cb0[3].xyz * r4.xxx;
      r14.xyz = r14.yyy * cb0[2].xyz + r14.xzw;
      r14.xyz = r4.yyy * cb0[4].xyz + r14.xyz;
      r0.y = r0.y + r7.z;
      r4.x = 1 + -r12.x;
      r4.x = r4.x + -r12.y;
      r13.xyz = r17.xyz * r12.zzz + r13.xyz;
      r15.xyz = r18.xyz * r12.zzz + r15.xyz;
      r15.xyz = r15.xyz * r12.yyy;
      r12.xyw = r12.xxx * r13.xyz + r15.xyz;
      r13.xyz = r14.xyz * r12.zzz + r16.xzw;
      r12.xyz = r4.xxx * r13.xyz + r12.xyw;
      r11.xyz = r7.zzz * r12.xyz + r11.xyz;
    }
    r4.x = cmp((uint)r5.w < 0x0000ffff);
    if (r4.x != 0) {
      r12.xyz = t1.Load(r3.z).xyw;
      r4.xy = (int2)r9.yw * int2(3,3);
      r13.xy = t0.Load(r4.x).xy;
      r14.xyzw = mad((int4)r9.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t0.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r5.z * 3;
      r15.xy = t0.Load(r4.x).xy;
      r15.zw = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r16.xy = t0.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t0.Load(r4.y).xy;
      r14.xy = t0.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t0.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t0.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t0.Load(r14.w).xy;
      r14.xzw = cb0[3].xyz * r4.xxx;
      r14.xyz = r14.yyy * cb0[2].xyz + r14.xzw;
      r14.xyz = r4.yyy * cb0[4].xyz + r14.xyz;
      r0.y = r0.y + r4.z;
      r4.x = 1 + -r12.x;
      r4.x = r4.x + -r12.y;
      r13.xyz = r17.xyz * r12.zzz + r13.xyz;
      r15.xyz = r18.xyz * r12.zzz + r15.xyz;
      r15.xyz = r15.xyz * r12.yyy;
      r12.xyw = r12.xxx * r13.xyz + r15.xyz;
      r13.xyz = r14.xyz * r12.zzz + r16.xzw;
      r12.xyz = r4.xxx * r13.xyz + r12.xyw;
      r11.xyz = r4.zzz * r12.xyz + r11.xyz;
    }
    r4.x = cmp((uint)r7.y < 0x0000ffff);
    if (r4.x != 0) {
      r12.xyz = t1.Load(r3.w).xyw;
      r4.xy = (int2)r10.yw * int2(3,3);
      r13.xy = t0.Load(r4.x).xy;
      r14.xyzw = mad((int4)r10.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t0.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r7.x * 3;
      r15.xy = t0.Load(r4.x).xy;
      r15.zw = mad((int2)r7.xx, int2(3,3), int2(1,2));
      r16.xy = t0.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t0.Load(r4.y).xy;
      r14.xy = t0.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t0.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t0.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t0.Load(r14.w).xy;
      r14.xzw = cb0[3].xyz * r4.xxx;
      r14.xyz = r14.yyy * cb0[2].xyz + r14.xzw;
      r14.xyz = r4.yyy * cb0[4].xyz + r14.xyz;
      r0.y = r0.y + r4.w;
      r4.x = 1 + -r12.x;
      r4.x = r4.x + -r12.y;
      r13.xyz = r17.xyz * r12.zzz + r13.xyz;
      r15.xyz = r18.xyz * r12.zzz + r15.xyz;
      r15.xyz = r15.xyz * r12.yyy;
      r12.xyw = r12.xxx * r13.xyz + r15.xyz;
      r13.xyz = r14.xyz * r12.zzz + r16.xzw;
      r12.xyz = r4.xxx * r13.xyz + r12.xyw;
      r11.xyz = r4.www * r12.xyz + r11.xyz;
    }
    r4.x = cmp(9.99999975e-005 < r0.y);
    r0.y = 1 / r0.y;
    r11.xyz = r11.xyz * r0.yyy;
    r11.xyz = r4.xxx ? r11.xyz : 0;
  } else {
    r11.xyz = v0.xyz;
  }
  r12.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r13.xyzw = t2.Load(r12.x).xyzw;
  r14.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r15.xyzw = t2.Load(r14.x).xyzw;
  r16.xyzw = t2.Load(r14.y).xyzw;
  r17.xyzw = t2.Load(r12.y).xyzw;
  r18.xyzw = t2.Load(r14.z).xyzw;
  r14.xyzw = t2.Load(r14.w).xyzw;
  r17.xyzw = v5.yyyy * r17.xyzw;
  r18.xyzw = v5.yyyy * r18.xyzw;
  r14.xyzw = v5.yyyy * r14.xyzw;
  r13.xyzw = v5.xxxx * r13.xyzw + r17.xyzw;
  r15.xyzw = v5.xxxx * r15.xyzw + r18.xyzw;
  r14.xyzw = v5.xxxx * r16.xyzw + r14.xyzw;
  r16.xyzw = t2.Load(r12.z).xyzw;
  r17.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r18.xyzw = t2.Load(r17.x).xyzw;
  r19.xyzw = t2.Load(r17.y).xyzw;
  r13.xyzw = v5.zzzz * r16.xyzw + r13.xyzw;
  r15.xyzw = v5.zzzz * r18.xyzw + r15.xyzw;
  r14.xyzw = v5.zzzz * r19.xyzw + r14.xyzw;
  r12.xyzw = t2.Load(r12.w).xyzw;
  r16.xyzw = t2.Load(r17.z).xyzw;
  r17.xyzw = t2.Load(r17.w).xyzw;
  r12.xyzw = v5.wwww * r12.xyzw + r13.xyzw;
  r13.xyzw = v5.wwww * r16.xyzw + r15.xyzw;
  r14.xyzw = v5.wwww * r17.xyzw + r14.xyzw;
  r0.y = cmp(4 < asuint(cb0[1].y));
  if (r0.y != 0) {
    r15.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r16.xyzw = t2.Load(r15.x).xyzw;
    r17.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r18.xyzw = t2.Load(r17.x).xyzw;
    r19.xyzw = t2.Load(r17.y).xyzw;
    r16.xyzw = v6.xxxx * r16.xyzw + r12.xyzw;
    r18.xyzw = v6.xxxx * r18.xyzw + r13.xyzw;
    r19.xyzw = v6.xxxx * r19.xyzw + r14.xyzw;
    r20.xyzw = t2.Load(r15.y).xyzw;
    r21.xyzw = t2.Load(r17.z).xyzw;
    r17.xyzw = t2.Load(r17.w).xyzw;
    r16.xyzw = v6.yyyy * r20.xyzw + r16.xyzw;
    r18.xyzw = v6.yyyy * r21.xyzw + r18.xyzw;
    r17.xyzw = v6.yyyy * r17.xyzw + r19.xyzw;
    r19.xyzw = t2.Load(r15.z).xyzw;
    r20.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r21.xyzw = t2.Load(r20.x).xyzw;
    r22.xyzw = t2.Load(r20.y).xyzw;
    r16.xyzw = v6.zzzz * r19.xyzw + r16.xyzw;
    r18.xyzw = v6.zzzz * r21.xyzw + r18.xyzw;
    r17.xyzw = v6.zzzz * r22.xyzw + r17.xyzw;
    r15.xyzw = t2.Load(r15.w).xyzw;
    r19.xyzw = t2.Load(r20.z).xyzw;
    r20.xyzw = t2.Load(r20.w).xyzw;
    r12.xyzw = v6.wwww * r15.xyzw + r16.xyzw;
    r13.xyzw = v6.wwww * r19.xyzw + r18.xyzw;
    r14.xyzw = v6.wwww * r20.xyzw + r17.xyzw;
  }
  if (r0.w != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    r15.xyz = t1.Load(r0.x).xyz;
    r16.xyz = t1.Load(r0.y).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r0.x = t0.Load(r2.x).y;
    r2.xy = t0.Load(r2.y).xy;
    r17.xyz = cb0[3].xyz * r2.xxx;
    r17.xyz = r0.xxx * cb0[2].xyz + r17.xyz;
    r17.xyz = r2.yyy * cb0[4].xyz + r17.xyz;
    r0.xy = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r0.x = t0.Load(r0.x).y;
    r0.yz = t0.Load(r0.y).xy;
    r18.xyz = cb0[3].xyz * r0.yyy;
    r18.xyz = r0.xxx * cb0[2].xyz + r18.xyz;
    r0.xyz = r0.zzz * cb0[4].xyz + r18.xyz;
    r2.x = t0.Load(r2.z).y;
    r2.yz = t0.Load(r2.w).xy;
    r18.xyz = cb0[3].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb0[2].xyz + r18.xyz;
    r2.xyz = r2.zzz * cb0[4].xyz + r2.xyw;
    r18.xyz = r15.yyy * r0.xyz;
    r15.xyw = r15.xxx * r17.xyz + r18.xyz;
    r15.xyz = r15.zzz * r2.xyz + r15.xyw;
    r15.xyz = r15.xyz * r1.xxx;
    r0.xyz = r16.yyy * r0.xyz;
    r0.xyz = r16.xxx * r17.xyz + r0.xyz;
    r0.xyz = r16.zzz * r2.xyz + r0.xyz;
    r0.xyz = r1.xxx * r0.xyz;
    r2.x = cmp((uint)r5.y < 0x0000ffff);
    if (r2.x != 0) {
      r2.x = (int)r3.x + 1;
      r2.xyz = t1.Load(r2.x).xyz;
      r2.w = (int)r3.x + 2;
      r16.xyz = t1.Load(r2.w).xyz;
      r6.xyzw = mad((int4)r6.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t0.Load(r6.x).y;
      r4.xy = t0.Load(r6.y).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r2.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = mad((int2)r5.xx, int2(3,3), int2(1,2));
      r2.w = t0.Load(r4.x).y;
      r4.xy = t0.Load(r4.y).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r2.www * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r2.w = t0.Load(r6.z).y;
      r4.xy = t0.Load(r6.w).xy;
      r6.xyz = cb0[3].xyz * r4.xxx;
      r6.xyz = r2.www * cb0[2].xyz + r6.xyz;
      r6.xyz = r4.yyy * cb0[4].xyz + r6.xyz;
      r1.x = r1.x + r1.w;
      r19.xyz = r18.xyz * r2.yyy;
      r2.xyw = r2.xxx * r17.xyz + r19.xyz;
      r2.xyz = r2.zzz * r6.xyz + r2.xyw;
      r15.xyz = r1.www * r2.xyz + r15.xyz;
      r2.xyz = r18.xyz * r16.yyy;
      r2.xyz = r16.xxx * r17.xyz + r2.xyz;
      r2.xyz = r16.zzz * r6.xyz + r2.xyz;
      r0.xyz = r1.www * r2.xyz + r0.xyz;
    }
    r1.z = cmp((uint)r1.z < 0x0000ffff);
    if (r1.z != 0) {
      r1.z = (int)r3.y + 1;
      r2.xyz = t1.Load(r1.z).xyz;
      r1.z = (int)r3.y + 2;
      r6.xyz = t1.Load(r1.z).xyz;
      r8.xyzw = mad((int4)r8.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r1.z = t0.Load(r8.x).y;
      r3.xy = t0.Load(r8.y).xy;
      r16.xyz = cb0[3].xyz * r3.xxx;
      r16.xyz = r1.zzz * cb0[2].xyz + r16.xyz;
      r16.xyz = r3.yyy * cb0[4].xyz + r16.xyz;
      r1.yz = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r1.y = t0.Load(r1.y).y;
      r1.zw = t0.Load(r1.z).xy;
      r17.xyz = cb0[3].xyz * r1.zzz;
      r17.xyz = r1.yyy * cb0[2].xyz + r17.xyz;
      r1.yzw = r1.www * cb0[4].xyz + r17.xyz;
      r2.w = t0.Load(r8.z).y;
      r3.xy = t0.Load(r8.w).xy;
      r8.xyz = cb0[3].xyz * r3.xxx;
      r8.xyz = r2.www * cb0[2].xyz + r8.xyz;
      r8.xyz = r3.yyy * cb0[4].xyz + r8.xyz;
      r1.x = r1.x + r7.z;
      r17.xyz = r2.yyy * r1.yzw;
      r2.xyw = r2.xxx * r16.xyz + r17.xyz;
      r2.xyz = r2.zzz * r8.xyz + r2.xyw;
      r15.xyz = r7.zzz * r2.xyz + r15.xyz;
      r1.yzw = r6.yyy * r1.yzw;
      r1.yzw = r6.xxx * r16.xyz + r1.yzw;
      r1.yzw = r6.zzz * r8.xyz + r1.yzw;
      r0.xyz = r7.zzz * r1.yzw + r0.xyz;
    }
    r1.y = cmp((uint)r5.w < 0x0000ffff);
    if (r1.y != 0) {
      r1.y = (int)r3.z + 1;
      r1.yzw = t1.Load(r1.y).xyz;
      r2.x = (int)r3.z + 2;
      r2.xyz = t1.Load(r2.x).xyz;
      r6.xyzw = mad((int4)r9.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t0.Load(r6.x).y;
      r3.xy = t0.Load(r6.y).xy;
      r5.xyw = cb0[3].xyz * r3.xxx;
      r5.xyw = r2.www * cb0[2].xyz + r5.xyw;
      r3.xyz = r3.yyy * cb0[4].xyz + r5.xyw;
      r4.xy = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r2.w = t0.Load(r4.x).y;
      r4.xy = t0.Load(r4.y).xy;
      r5.xyz = cb0[3].xyz * r4.xxx;
      r5.xyz = r2.www * cb0[2].xyz + r5.xyz;
      r5.xyz = r4.yyy * cb0[4].xyz + r5.xyz;
      r2.w = t0.Load(r6.z).y;
      r4.xy = t0.Load(r6.w).xy;
      r6.xyz = cb0[3].xyz * r4.xxx;
      r6.xyz = r2.www * cb0[2].xyz + r6.xyz;
      r6.xyz = r4.yyy * cb0[4].xyz + r6.xyz;
      r1.x = r1.x + r4.z;
      r8.xyz = r5.xyz * r1.zzz;
      r8.xyz = r1.yyy * r3.xyz + r8.xyz;
      r1.yzw = r1.www * r6.xyz + r8.xyz;
      r15.xyz = r4.zzz * r1.yzw + r15.xyz;
      r1.yzw = r5.xyz * r2.yyy;
      r1.yzw = r2.xxx * r3.xyz + r1.yzw;
      r1.yzw = r2.zzz * r6.xyz + r1.yzw;
      r0.xyz = r4.zzz * r1.yzw + r0.xyz;
    }
    r1.y = cmp((uint)r7.y < 0x0000ffff);
    if (r1.y != 0) {
      r1.y = (int)r3.w + 1;
      r1.yzw = t1.Load(r1.y).xyz;
      r2.x = (int)r3.w + 2;
      r2.xyz = t1.Load(r2.x).xyz;
      r3.xyzw = mad((int4)r10.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t0.Load(r3.x).y;
      r3.xy = t0.Load(r3.y).xy;
      r4.xyz = cb0[3].xyz * r3.xxx;
      r4.xyz = r2.www * cb0[2].xyz + r4.xyz;
      r4.xyz = r3.yyy * cb0[4].xyz + r4.xyz;
      r3.xy = mad((int2)r7.xx, int2(3,3), int2(1,2));
      r2.w = t0.Load(r3.x).y;
      r3.xy = t0.Load(r3.y).xy;
      r5.xyz = cb0[3].xyz * r3.xxx;
      r5.xyz = r2.www * cb0[2].xyz + r5.xyz;
      r5.xyz = r3.yyy * cb0[4].xyz + r5.xyz;
      r2.w = t0.Load(r3.z).y;
      r3.xy = t0.Load(r3.w).xy;
      r3.xzw = cb0[3].xyz * r3.xxx;
      r3.xzw = r2.www * cb0[2].xyz + r3.xzw;
      r3.xyz = r3.yyy * cb0[4].xyz + r3.xzw;
      r1.x = r1.x + r4.w;
      r6.xyz = r5.xyz * r1.zzz;
      r6.xyz = r1.yyy * r4.xyz + r6.xyz;
      r1.yzw = r1.www * r3.xyz + r6.xyz;
      r15.xyz = r4.www * r1.yzw + r15.xyz;
      r1.yzw = r5.xyz * r2.yyy;
      r1.yzw = r2.xxx * r4.xyz + r1.yzw;
      r1.yzw = r2.zzz * r3.xyz + r1.yzw;
      r0.xyz = r4.www * r1.yzw + r0.xyz;
    }
    r1.y = cmp(9.99999975e-005 < r1.x);
    r1.x = 1 / r1.x;
    r2.xyz = r15.xyz * r1.xxx;
    r0.xyz = r0.xyz * r1.xxx + -r11.xyz;
    r1.x = dot(r0.xyz, r0.xyz);
    r1.x = rsqrt(r1.x);
    r0.xyz = r1.xxx * r0.xyz;
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = rsqrt(r1.x);
    r1.xzw = r2.xyz * r1.xxx;
    r2.xyz = cb2[7].xyz * r0.yyy;
    r2.xyz = r0.xxx * cb2[6].xyz + r2.xyz;
    r0.xyz = r0.zzz * cb2[8].xyz + r2.xyz;
    r2.xyz = cb2[7].xyz * -r1.zzz;
    r2.xyz = -r1.xxx * cb2[6].xyz + r2.xyz;
    r2.yzw = -r1.www * cb2[8].xyz + r2.xyz;
    r1.x = r1.y ? cb0[10].x : 0;
    r2.x = r0.z;
  } else {
    r2.xyzw = float4(0,0,0,1);
    r0.xy = float2(1,0);
    r1.x = 0;
  }
  r3.x = dot(r12.xyz, v1.xyz);
  r3.y = dot(r13.xyz, v1.xyz);
  r3.z = dot(r14.xyz, v1.xyz);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r1.yzw = r3.xyz * r0.zzz;
  r3.y = dot(r12.xyz, v2.xyz);
  r3.z = dot(r13.xyz, v2.xyz);
  r3.w = dot(r14.xyz, v2.xyz);
  r0.z = dot(r3.yzw, r3.yzw);
  r0.z = rsqrt(r0.z);
  r3.yzw = r3.yzw * r0.zzz;
  r0.z = 1 + -r1.x;
  r3.x = r1.w;
  r3.xyzw = r3.xyzw * r0.zzzz;
  r1.yz = r1.yz * r0.zz;
  r0.xy = r0.xy * r1.xx + r1.yz;
  r1.xyzw = r2.xyzw * r1.xxxx + r3.xyzw;
  r2.xyz = v9.xyz + v0.xyz;
  r2.w = 1;
  r3.x = dot(r12.xyzw, r2.xyzw);
  r3.y = dot(r13.xyzw, r2.xyzw);
  r3.z = dot(r14.xyzw, r2.xyzw);
  r2.xyz = v10.xyz + r3.xyz;
  r3.xyz = cb2[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r3.xyz = cb2[3].xyz + r2.xyz;
  r4.xyz = r11.xyz + -r3.xyz;
  r3.xyz = cb0[10].xxx * r4.xyz + r3.xyz;
  r3.xyz = cb1[70].xyz + r3.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r0.www ? r3.xyz : r2.xyz;
  o6.w = 1;
  r3.xyzw = cb1[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r2.zzzz * cb1[2].xyzw + r3.xyzw;
  o7.xyzw = cb1[3].xyzw + r3.xyzw;
  o3.xy = cb3[41].xy + v7.xy;
  r3.xyz = cb2[4].xxx * cb2[0].xyz;
  r4.xyz = cb2[4].yyy * cb2[1].xyz;
  r5.xyz = cb2[4].zzz * cb2[2].xyz;
  r0.yzw = r4.xyz * r0.yyy;
  r0.xyz = r0.xxx * r3.xyz + r0.yzw;
  o0.xyz = r1.xxx * r5.xyz + r0.xyz;
  r0.xyz = r4.xyz * r1.zzz;
  r0.xyz = r1.yyy * r3.xyz + r0.xyz;
  o1.xyz = r1.www * r5.xyz + r0.xyz;
  o1.w = cb2[4].w * v2.w;
  o0.w = 0;
  o2.xyzw = v12.xyzw;
  o3.zw = v8.xy;
  o4.xyz = v0.xyz;
  o4.w = v2.x;
  o5.xy = v2.yz;
  o5.zw = float2(0,0);
  o6.xyz = r2.xyz;
  return;
}
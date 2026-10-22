// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[83];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[151];
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
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
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
  r1.xyz = t3.Load(r0.z).zxy;
  r0.zw = (uint2)r1.yz >> int2(16,16);
  r2.xyzw = (int4)r1.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r3.xyzw = (int4)r0.yyyy + int4(4,8,12,16);
  r4.xyzw = (int4)r3.xyzw + int4(3,3,3,3);
  r1.yzw = t3.Load(r4.x).xyz;
  r5.xy = (uint2)r1.yz >> int2(16,16);
  r6.xyzw = (int4)r1.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r7.xyz = t3.Load(r4.y).xyz;
  r1.yz = (uint2)r7.xy >> int2(16,16);
  r8.xyzw = (int4)r7.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r4.xyz = t3.Load(r4.z).xyz;
  r5.zw = (uint2)r4.xy >> int2(16,16);
  r9.xyzw = (int4)r4.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r4.xyw = t3.Load(r4.w).xyz;
  r7.xy = (uint2)r4.xy >> int2(16,16);
  r10.xyzw = (int4)r4.xxyy & int4(0xffff,0xffff,0xffff,0xffff);
  r0.w = cmp((uint)r0.w < 0x0000ffff);
  if (r0.w != 0) {
    r11.xyz = t3.Load(r0.y).xyw;
    r4.xy = (int2)r2.yw * int2(3,3);
    r12.xy = t2.Load(r4.x).xy;
    r13.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r12.zw = t2.Load(r13.x).xy;
    r14.xyz = cb0[3].xyz * r12.yyy;
    r14.xyz = r12.xxx * cb0[2].xyz + r14.xyz;
    r12.xyz = r12.zzz * cb0[4].xyz + r14.xyz;
    r12.xyz = cb0[5].xyz + r12.xyz;
    r0.y = (int)r0.z * 3;
    r14.xy = t2.Load(r0.y).xy;
    r14.zw = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r15.xy = t2.Load(r14.z).xy;
    r16.xyz = cb0[3].xyz * r14.yyy;
    r14.xyz = r14.xxx * cb0[2].xyz + r16.xyz;
    r14.xyz = r15.xxx * cb0[4].xyz + r14.xyz;
    r14.xyz = cb0[5].xyz + r14.xyz;
    r4.xy = t2.Load(r4.y).xy;
    r13.xy = t2.Load(r13.y).xy;
    r15.xzw = cb0[3].xyz * r4.yyy;
    r15.xzw = r4.xxx * cb0[2].xyz + r15.xzw;
    r15.xzw = r13.xxx * cb0[4].xyz + r15.xzw;
    r15.xzw = cb0[5].xyz + r15.xzw;
    r4.xy = t2.Load(r13.z).xy;
    r16.xyz = cb0[3].xyz * r4.xxx;
    r16.xyz = r12.www * cb0[2].xyz + r16.xyz;
    r16.xyz = r4.yyy * cb0[4].xyz + r16.xyz;
    r4.xy = t2.Load(r14.w).xy;
    r17.xyz = cb0[3].xyz * r4.xxx;
    r17.xyz = r15.yyy * cb0[2].xyz + r17.xyz;
    r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
    r4.xy = t2.Load(r13.w).xy;
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
      r12.xyz = t3.Load(r3.x).xyw;
      r4.xy = (int2)r6.yw * int2(3,3);
      r13.xy = t2.Load(r4.x).xy;
      r14.xyzw = mad((int4)r6.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t2.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r0.y = (int)r5.x * 3;
      r15.xy = t2.Load(r0.y).xy;
      r15.zw = mad((int2)r5.xx, int2(3,3), int2(1,2));
      r16.xy = t2.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t2.Load(r4.y).xy;
      r14.xy = t2.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t2.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t2.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t2.Load(r14.w).xy;
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
      r12.xyz = t3.Load(r3.y).xyw;
      r4.xy = (int2)r8.yw * int2(3,3);
      r13.xy = t2.Load(r4.x).xy;
      r14.xyzw = mad((int4)r8.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t2.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r1.y * 3;
      r15.xy = t2.Load(r4.x).xy;
      r15.zw = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r16.xy = t2.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t2.Load(r4.y).xy;
      r14.xy = t2.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t2.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t2.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t2.Load(r14.w).xy;
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
      r12.xyz = t3.Load(r3.z).xyw;
      r4.xy = (int2)r9.yw * int2(3,3);
      r13.xy = t2.Load(r4.x).xy;
      r14.xyzw = mad((int4)r9.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t2.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r5.z * 3;
      r15.xy = t2.Load(r4.x).xy;
      r15.zw = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r16.xy = t2.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t2.Load(r4.y).xy;
      r14.xy = t2.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t2.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t2.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t2.Load(r14.w).xy;
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
      r12.xyz = t3.Load(r3.w).xyw;
      r4.xy = (int2)r10.yw * int2(3,3);
      r13.xy = t2.Load(r4.x).xy;
      r14.xyzw = mad((int4)r10.ywyw, int4(3,3,3,3), int4(1,1,2,2));
      r13.zw = t2.Load(r14.x).xy;
      r15.xyz = cb0[3].xyz * r13.yyy;
      r15.xyz = r13.xxx * cb0[2].xyz + r15.xyz;
      r13.xyz = r13.zzz * cb0[4].xyz + r15.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r4.x = (int)r7.x * 3;
      r15.xy = t2.Load(r4.x).xy;
      r15.zw = mad((int2)r7.xx, int2(3,3), int2(1,2));
      r16.xy = t2.Load(r15.z).xy;
      r17.xyz = cb0[3].xyz * r15.yyy;
      r15.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
      r15.xyz = r16.xxx * cb0[4].xyz + r15.xyz;
      r15.xyz = cb0[5].xyz + r15.xyz;
      r4.xy = t2.Load(r4.y).xy;
      r14.xy = t2.Load(r14.y).xy;
      r16.xzw = cb0[3].xyz * r4.yyy;
      r16.xzw = r4.xxx * cb0[2].xyz + r16.xzw;
      r16.xzw = r14.xxx * cb0[4].xyz + r16.xzw;
      r16.xzw = cb0[5].xyz + r16.xzw;
      r4.xy = t2.Load(r14.z).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r13.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = t2.Load(r15.w).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r16.yyy * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r4.xy = t2.Load(r14.w).xy;
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
  r13.xyzw = t4.Load(r12.x).xyzw;
  r14.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r15.xyzw = t4.Load(r14.x).xyzw;
  r16.xyzw = t4.Load(r14.y).xyzw;
  r17.xyzw = t4.Load(r12.y).xyzw;
  r18.xyzw = t4.Load(r14.z).xyzw;
  r14.xyzw = t4.Load(r14.w).xyzw;
  r17.xyzw = v5.yyyy * r17.xyzw;
  r18.xyzw = v5.yyyy * r18.xyzw;
  r14.xyzw = v5.yyyy * r14.xyzw;
  r13.xyzw = v5.xxxx * r13.xyzw + r17.xyzw;
  r15.xyzw = v5.xxxx * r15.xyzw + r18.xyzw;
  r14.xyzw = v5.xxxx * r16.xyzw + r14.xyzw;
  r16.xyzw = t4.Load(r12.z).xyzw;
  r17.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r18.xyzw = t4.Load(r17.x).xyzw;
  r19.xyzw = t4.Load(r17.y).xyzw;
  r13.xyzw = v5.zzzz * r16.xyzw + r13.xyzw;
  r15.xyzw = v5.zzzz * r18.xyzw + r15.xyzw;
  r14.xyzw = v5.zzzz * r19.xyzw + r14.xyzw;
  r12.xyzw = t4.Load(r12.w).xyzw;
  r16.xyzw = t4.Load(r17.z).xyzw;
  r17.xyzw = t4.Load(r17.w).xyzw;
  r12.xyzw = v5.wwww * r12.xyzw + r13.xyzw;
  r13.xyzw = v5.wwww * r16.xyzw + r15.xyzw;
  r14.xyzw = v5.wwww * r17.xyzw + r14.xyzw;
  r0.y = cmp(4 < asuint(cb0[1].y));
  if (r0.y != 0) {
    r15.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r16.xyzw = t4.Load(r15.x).xyzw;
    r17.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r18.xyzw = t4.Load(r17.x).xyzw;
    r19.xyzw = t4.Load(r17.y).xyzw;
    r16.xyzw = v6.xxxx * r16.xyzw + r12.xyzw;
    r18.xyzw = v6.xxxx * r18.xyzw + r13.xyzw;
    r19.xyzw = v6.xxxx * r19.xyzw + r14.xyzw;
    r20.xyzw = t4.Load(r15.y).xyzw;
    r21.xyzw = t4.Load(r17.z).xyzw;
    r17.xyzw = t4.Load(r17.w).xyzw;
    r16.xyzw = v6.yyyy * r20.xyzw + r16.xyzw;
    r18.xyzw = v6.yyyy * r21.xyzw + r18.xyzw;
    r17.xyzw = v6.yyyy * r17.xyzw + r19.xyzw;
    r19.xyzw = t4.Load(r15.z).xyzw;
    r20.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r21.xyzw = t4.Load(r20.x).xyzw;
    r22.xyzw = t4.Load(r20.y).xyzw;
    r16.xyzw = v6.zzzz * r19.xyzw + r16.xyzw;
    r18.xyzw = v6.zzzz * r21.xyzw + r18.xyzw;
    r17.xyzw = v6.zzzz * r22.xyzw + r17.xyzw;
    r15.xyzw = t4.Load(r15.w).xyzw;
    r19.xyzw = t4.Load(r20.z).xyzw;
    r20.xyzw = t4.Load(r20.w).xyzw;
    r12.xyzw = v6.wwww * r15.xyzw + r16.xyzw;
    r13.xyzw = v6.wwww * r19.xyzw + r18.xyzw;
    r14.xyzw = v6.wwww * r20.xyzw + r17.xyzw;
  }
  if (r0.w != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    r15.xyz = t3.Load(r0.x).xyz;
    r16.xyz = t3.Load(r0.y).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r0.x = t2.Load(r2.x).y;
    r2.xy = t2.Load(r2.y).xy;
    r17.xyz = cb0[3].xyz * r2.xxx;
    r17.xyz = r0.xxx * cb0[2].xyz + r17.xyz;
    r17.xyz = r2.yyy * cb0[4].xyz + r17.xyz;
    r0.xy = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r0.x = t2.Load(r0.x).y;
    r0.yz = t2.Load(r0.y).xy;
    r18.xyz = cb0[3].xyz * r0.yyy;
    r18.xyz = r0.xxx * cb0[2].xyz + r18.xyz;
    r0.xyz = r0.zzz * cb0[4].xyz + r18.xyz;
    r2.x = t2.Load(r2.z).y;
    r2.yz = t2.Load(r2.w).xy;
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
      r2.xyz = t3.Load(r2.x).xyz;
      r2.w = (int)r3.x + 2;
      r16.xyz = t3.Load(r2.w).xyz;
      r6.xyzw = mad((int4)r6.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t2.Load(r6.x).y;
      r4.xy = t2.Load(r6.y).xy;
      r17.xyz = cb0[3].xyz * r4.xxx;
      r17.xyz = r2.www * cb0[2].xyz + r17.xyz;
      r17.xyz = r4.yyy * cb0[4].xyz + r17.xyz;
      r4.xy = mad((int2)r5.xx, int2(3,3), int2(1,2));
      r2.w = t2.Load(r4.x).y;
      r4.xy = t2.Load(r4.y).xy;
      r18.xyz = cb0[3].xyz * r4.xxx;
      r18.xyz = r2.www * cb0[2].xyz + r18.xyz;
      r18.xyz = r4.yyy * cb0[4].xyz + r18.xyz;
      r2.w = t2.Load(r6.z).y;
      r4.xy = t2.Load(r6.w).xy;
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
      r2.xyz = t3.Load(r1.z).xyz;
      r1.z = (int)r3.y + 2;
      r6.xyz = t3.Load(r1.z).xyz;
      r8.xyzw = mad((int4)r8.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r1.z = t2.Load(r8.x).y;
      r3.xy = t2.Load(r8.y).xy;
      r16.xyz = cb0[3].xyz * r3.xxx;
      r16.xyz = r1.zzz * cb0[2].xyz + r16.xyz;
      r16.xyz = r3.yyy * cb0[4].xyz + r16.xyz;
      r1.yz = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r1.y = t2.Load(r1.y).y;
      r1.zw = t2.Load(r1.z).xy;
      r17.xyz = cb0[3].xyz * r1.zzz;
      r17.xyz = r1.yyy * cb0[2].xyz + r17.xyz;
      r1.yzw = r1.www * cb0[4].xyz + r17.xyz;
      r2.w = t2.Load(r8.z).y;
      r3.xy = t2.Load(r8.w).xy;
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
      r1.yzw = t3.Load(r1.y).xyz;
      r2.x = (int)r3.z + 2;
      r2.xyz = t3.Load(r2.x).xyz;
      r6.xyzw = mad((int4)r9.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t2.Load(r6.x).y;
      r3.xy = t2.Load(r6.y).xy;
      r5.xyw = cb0[3].xyz * r3.xxx;
      r5.xyw = r2.www * cb0[2].xyz + r5.xyw;
      r3.xyz = r3.yyy * cb0[4].xyz + r5.xyw;
      r4.xy = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r2.w = t2.Load(r4.x).y;
      r4.xy = t2.Load(r4.y).xy;
      r5.xyz = cb0[3].xyz * r4.xxx;
      r5.xyz = r2.www * cb0[2].xyz + r5.xyz;
      r5.xyz = r4.yyy * cb0[4].xyz + r5.xyz;
      r2.w = t2.Load(r6.z).y;
      r4.xy = t2.Load(r6.w).xy;
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
      r1.yzw = t3.Load(r1.y).xyz;
      r2.x = (int)r3.w + 2;
      r2.xyz = t3.Load(r2.x).xyz;
      r3.xyzw = mad((int4)r10.xyzw, int4(3,3,3,3), int4(1,2,1,2));
      r2.w = t2.Load(r3.x).y;
      r3.xy = t2.Load(r3.y).xy;
      r4.xyz = cb0[3].xyz * r3.xxx;
      r4.xyz = r2.www * cb0[2].xyz + r4.xyz;
      r4.xyz = r3.yyy * cb0[4].xyz + r4.xyz;
      r3.xy = mad((int2)r7.xx, int2(3,3), int2(1,2));
      r2.w = t2.Load(r3.x).y;
      r3.xy = t2.Load(r3.y).xy;
      r5.xyz = cb0[3].xyz * r3.xxx;
      r5.xyz = r2.www * cb0[2].xyz + r5.xyz;
      r5.xyz = r3.yyy * cb0[4].xyz + r5.xyz;
      r2.w = t2.Load(r3.z).y;
      r3.xy = t2.Load(r3.w).xy;
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
    r2.xyz = cb3[7].xyz * r0.yyy;
    r2.xyz = r0.xxx * cb3[6].xyz + r2.xyz;
    r0.xyz = r0.zzz * cb3[8].xyz + r2.xyz;
    r2.xyz = cb3[7].xyz * -r1.zzz;
    r2.xyz = -r1.xxx * cb3[6].xyz + r2.xyz;
    r2.yzw = -r1.www * cb3[8].xyz + r2.xyz;
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
  r3.xyz = cb3[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb3[0].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb3[2].xyz + r2.xyw;
  r3.xyz = cb3[3].xyz + r2.xyz;
  r4.xyz = r11.xyz + -r3.xyz;
  r3.xyz = cb0[10].xxx * r4.xyz + r3.xyz;
  r3.xyz = cb2[70].xyz + r3.xyz;
  r4.xyz = cb3[3].xyz + cb2[70].xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r0.www ? r3.xyz : r2.xyz;
  r3.xyz = cb3[1].xyz * r1.zzz;
  r3.xyz = r1.yyy * cb3[0].xyz + r3.xyz;
  r3.xyz = r1.www * cb3[2].xyz + r3.xyz;
  r4.xyz = -cb2[70].xyz + r2.xyz;
  r5.xyz = -cb4[46].xyz + r4.xyz;
  r0.z = cb3[7].z * r5.y;
  r0.z = r5.x * cb3[6].z + r0.z;
  r0.z = saturate(r5.z * cb3[8].z + r0.z);
  r0.z = ceil(r0.z);
  r6.xyz = cb4[46].xyz + -r4.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb4[82].y;
  r0.w = cb4[82].z * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = 6.28318548 * r0.z;
  r0.w = dot(cb3[1].xyz, r5.xyz);
  r5.xyz = cb3[1].xyz * r0.www + cb4[46].xyz;
  r6.xyz = -r5.xyz + r4.xyz;
  r7.xyz = cb3[1].zxy * r6.yzx;
  r7.xyz = cb3[1].yzx * r6.zxy + -r7.xyz;
  sincos(r0.z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r4.xyz = r5.xyz + -r4.xyz;
  r2.xyz = r4.xyz * cb4[82].www + r2.xyz;
  r4.xyzw = cb2[1].xyzw * r2.yyyy;
  r4.xyzw = r2.xxxx * cb2[0].xyzw + r4.xyzw;
  r4.xyzw = r2.zzzz * cb2[2].xyzw + r4.xyzw;
  r4.xyzw = cb2[3].xyzw + r4.xyzw;
  r5.xyz = cb2[21].xyz * r3.yyy;
  r3.xyw = r3.xxx * cb2[20].xyz + r5.xyz;
  r3.xyz = r3.zzz * cb2[22].xyz + r3.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.zw = r3.xy / r0.zz;
  o4.xy = r0.zw * float2(0.5,-0.5) + float2(0.5,0.5);
  r3.xyz = cb3[4].xxx * cb3[0].xyz;
  r5.xyz = cb3[4].yyy * cb3[1].xyz;
  r6.xyz = cb3[4].zzz * cb3[2].xyz;
  r0.yzw = r5.xyz * r0.yyy;
  r0.xyz = r0.xxx * r3.xyz + r0.yzw;
  o0.xyz = r1.xxx * r6.xyz + r0.xyz;
  r0.xyz = r5.xyz * r1.zzz;
  r0.xyz = r1.yyy * r3.xyz + r0.xyz;
  o1.xyz = r1.www * r6.xyz + r0.xyz;
  o1.w = cb3[4].w * v2.w;
  r0.xyz = -cb2[68].xyz + r2.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r1.y = dot(r0.xyz, cb2[60].xyz);
  r1.x = r1.x / r1.y;
  r1.x = cb2[210].z * r1.x;
  r1.x = max(0, r1.x);
  r1.y = min(cb2[67].z, cb1[143].z);
  r1.z = cb2[67].z + -r1.y;
  r0.w = r1.z + r0.z;
  r0.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r0.z);
  r0.z = r1.z * r0.z;
  r1.x = max(cb1[143].w, r1.x);
  r1.w = cmp(0 < r1.x);
  r2.w = r1.x * r1.z;
  r1.y = r2.w * r0.w + r1.y;
  r2.w = -r2.w * r0.w + r0.w;
  r1.x = -r1.x * r1.z + 1;
  r1.x = r1.x * r0.z;
  r3.x = -cb1[146].y + r1.y;
  r3.x = cb1[143].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb1[146].x * r3.x;
  r1.y = -cb1[144].w + r1.y;
  r1.y = cb1[144].y * r1.y;
  r1.y = max(-127, r1.y);
  r1.y = exp2(-r1.y);
  r1.y = cb1[144].z * r1.y;
  r3.x = r1.w ? r3.x : cb1[143].x;
  r1.y = r1.w ? r1.y : cb1[144].x;
  r1.x = r1.w ? r1.x : r0.z;
  r1.w = r1.w ? r2.w : r0.w;
  r2.w = cb1[143].y * r1.w;
  r2.w = max(-127, r2.w);
  r3.y = exp2(-r2.w);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r2.w;
  r3.z = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r3.y : r3.z;
  r1.w = cb1[144].y * r1.w;
  r1.w = max(-127, r1.w);
  r3.y = exp2(-r1.w);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r1.w;
  r3.z = -r1.w * 0.240226507 + 0.693147182;
  r1.w = cmp(0.00999999978 < abs(r1.w));
  r1.w = r1.w ? r3.y : r3.z;
  r1.y = r1.y * r1.w;
  r1.y = r3.x * r2.w + r1.y;
  r1.w = r1.y * r1.x;
  r3.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r3.x != 0) {
    r2.w = saturate(r0.z * cb1[150].x + cb1[150].y);
    r3.xz = float2(1,-1) * cb1[149].yx;
    r5.x = dot(r0.xy, r3.xz);
    r5.y = dot(r0.xy, cb1[149].xy);
    r5.z = r0.w;
    r3.xzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = t0.SampleLevel(s0_s, r5.xyz, cb1[150].z).xyz;
    r3.xzw = -r5.xyz + r3.xzw;
    r3.xzw = r2.www * r3.xzw + r5.xyz;
    r3.xzw = cb1[145].xyz * r3.xzw;
  } else {
    r3.xzw = cb1[145].xyz;
  }
  r2.w = cmp(cb1[147].w >= 0);
  r5.x = cmp(cb1[146].z == 0.000000);
  r2.w = r2.w ? r5.x : 0;
  if (r2.w != 0) {
    r0.xyw = r1.zzz * r0.xyw;
    r0.x = saturate(dot(r0.xyw, cb1[147].xyz));
    r0.x = log2(r0.x);
    r0.x = cb1[148].w * r0.x;
    r0.x = exp2(r0.x);
    r0.xyw = cb1[148].xyz * r0.xxx;
    r1.x = -cb1[147].w + r1.x;
    r1.x = max(0, r1.x);
    r1.x = r1.y * r1.x;
    r1.x = exp2(-r1.x);
    r1.x = min(1, r1.x);
    r1.x = 1 + -r1.x;
    r5.xyz = r1.xxx * r0.xyw;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.x = exp2(-r1.w);
  r0.x = min(1, r0.x);
  r5.w = max(cb1[145].w, r0.x);
  r0.x = cmp(cb1[146].w < r0.z);
  r0.x = r0.x ? r3.y : 0;
  r0.xyzw = r0.xxxx ? float4(0,0,0,1) : r5.xyzw;
  r1.x = 1 + -r0.w;
  r0.xyz = r3.xzw * r1.xxx + r0.xyz;
  r1.x = cmp(0 < cb2[182].y);
  if (r1.x != 0) {
    r1.x = cmp(0 != cb2[184].x);
    r1.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r3.xy = r4.xy / r4.ww;
    r3.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.yzw = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r1.yzw;
    r2.x = dot(r1.yzw, r1.yzw);
    r2.y = sqrt(r2.x);
    r2.y = -cb2[181].x + r2.y;
    r2.y = max(0, r2.y);
    r2.y = cb2[182].x * r2.y;
    r2.y = cb2[181].z * r2.y;
    r5.z = sqrt(r2.y);
    r2.y = cb2[181].y * r5.z;
    r2.z = cmp(r2.y < 0.707106769);
    r2.y = dot(r2.yy, r2.yy);
    r2.y = min(1, r2.y);
    r2.y = r2.z ? r2.y : 1;
    r2.x = rsqrt(r2.x);
    r1.yzw = r2.xxx * r1.yzw;
    r2.x = -r1.w * r1.w + 1;
    r2.x = sqrt(r2.x);
    r6.y = r1.w * 0.5 + 0.5;
    r1.yz = r1.yz / r2.xx;
    r1.w = 1 + -abs(r1.y);
    r1.w = sqrt(r1.w);
    r2.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
    r2.x = r2.x * abs(r1.y) + -0.212114394;
    r2.x = r2.x * abs(r1.y) + 1.57072878;
    r2.z = r2.x * r1.w;
    r2.z = r2.z * -2 + 3.14159274;
    r1.y = cmp(r1.y < -r1.y);
    r1.y = r1.y ? r2.z : 0;
    r1.y = r2.x * r1.w + r1.y;
    r1.z = cmp(r1.z < 0);
    r1.w = 6.28318548 + -r1.y;
    r1.y = r1.z ? r1.w : r1.y;
    r6.x = 0.159154937 * r1.y;
    r1.yz = cb2[180].zw * float2(0.5,0.5) + r6.xy;
    r2.xz = float2(1,1) + cb2[180].xy;
    r2.xz = cb2[180].xy / r2.xz;
    r1.yz = r2.xz * r1.yz;
    r5.xy = r1.xx ? r1.yz : r3.xy;
    r1.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r2.yyy;
    r1.w = 1 + -r1.w;
    r1.w = -r2.y * r1.w + 1;
    r1.xyz = cb2[135].zzz * r1.xyz;
    o5.xyz = r1.xyz * r0.www + r0.xyz;
    o5.w = r1.w * r0.w;
  } else {
    o5.xyzw = r0.xyzw;
  }
  o0.w = 0;
  o2.xyzw = v12.xyzw;
  o3.xy = v7.xy;
  o3.zw = v8.xy;
  o4.zw = float2(0,0);
  o6.xyzw = r4.xyzw;
  return;
}
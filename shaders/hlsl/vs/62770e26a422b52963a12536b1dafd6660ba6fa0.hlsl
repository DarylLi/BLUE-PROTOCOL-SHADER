// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

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
  uint v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE5,
  float3 v5 : ATTRIBUTE11,
  float3 v6 : ATTRIBUTE12,
  uint v7 : SV_VertexID0,
  float4 v8 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v7.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t3.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r0.w = cmp((uint)r1.y < 0x0000ffff);
  if (r0.w != 0) {
    r0.x = (uint)r0.x << 2;
    r2.xyz = t3.Load(r0.x).xyw;
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
  r2.x = (int)v3.x & 255;
  r2.y = (uint)v3.x >> 8;
  r2.z = mad(asint(cb0[10].y), (int)r2.x, (int)r2.y);
  r3.xyzw = float4(0,0,0,0);
  r4.xyzw = float4(0,0,0,0);
  r5.xyzw = float4(0,0,0,0);
  r2.w = cb0[10].y;
  r6.x = 0;
  while (true) {
    r6.y = cmp((int)r6.x >= (int)r2.x);
    if (r6.y != 0) break;
    r6.y = mad((int)r2.w, (int)r6.x, (int)r2.y);
    r6.z = t2.Load(r6.y).x;
    r6.w = cmp(1 < (uint)r2.w);
    if (r6.w != 0) {
      r6.y = (int)r6.y + 1;
      r6.y = t2.Load(r6.y).x;
      r6.y = (uint)r6.y << 8;
      r6.y = (int)r6.z | (int)r6.y;
      r6.w = (int)r2.z + (int)r6.x;
      r6.w = t2.Load(r6.w).x;
      r6.w = (uint)r6.w;
      r6.w = 0.00392156886 * r6.w;
      r7.x = (int)r6.y * 3;
      r7.xyzw = t4.Load(r7.x).xyzw;
      r8.xy = mad((int2)r6.yy, int2(3,3), int2(1,2));
      r9.xyzw = t4.Load(r8.x).xyzw;
      r8.xyzw = t4.Load(r8.y).xyzw;
      r3.xyzw = r6.wwww * r7.xyzw + r3.xyzw;
      r4.xyzw = r6.wwww * r9.xyzw + r4.xyzw;
      r5.xyzw = r6.wwww * r8.xyzw + r5.xyzw;
    } else {
      r6.y = (int)r2.z + (int)r6.x;
      r6.y = t2.Load(r6.y).x;
      r6.y = (uint)r6.y;
      r6.y = 0.00392156886 * r6.y;
      r6.w = (int)r6.z * 3;
      r7.xyzw = t4.Load(r6.w).xyzw;
      r6.zw = mad((int2)r6.zz, int2(3,3), int2(1,2));
      r8.xyzw = t4.Load(r6.z).xyzw;
      r9.xyzw = t4.Load(r6.w).xyzw;
      r3.xyzw = r6.yyyy * r7.xyzw + r3.xyzw;
      r4.xyzw = r6.yyyy * r8.xyzw + r4.xyzw;
      r5.xyzw = r6.yyyy * r9.xyzw + r5.xyzw;
    }
    r6.x = (int)r6.x + 1;
  }
  r6.xyz = v5.xyz + v0.xyz;
  r6.w = 1;
  r7.x = dot(r3.xyzw, r6.xyzw);
  r7.y = dot(r4.xyzw, r6.xyzw);
  r7.z = dot(r5.xyzw, r6.xyzw);
  r7.xyz = v6.xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r7.yyy;
  r7.xyw = r7.xxx * cb2[0].xyz + r8.xyz;
  r7.xyz = r7.zzz * cb2[2].xyz + r7.xyw;
  r8.xyz = cb2[3].xyz + r7.xyz;
  r0.xyz = -r8.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r8.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r8.xyz = cb2[3].xyz + cb1[70].xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r0.xyz = r0.www ? r0.xyz : r7.xyz;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r3.xyzw = float4(0,0,0,0);
    r4.xyzw = float4(0,0,0,0);
    r5.xyzw = float4(0,0,0,0);
    r0.w = cb0[10].y;
    r2.w = 0;
    while (true) {
      r8.x = cmp((int)r2.w >= (int)r2.x);
      if (r8.x != 0) break;
      r8.x = mad((int)r0.w, (int)r2.w, (int)r2.y);
      r8.y = t2.Load(r8.x).x;
      r8.z = cmp(1 < (uint)r0.w);
      if (r8.z != 0) {
        r8.x = (int)r8.x + 1;
        r8.x = t2.Load(r8.x).x;
        r8.x = (uint)r8.x << 8;
        r8.x = (int)r8.y | (int)r8.x;
        r8.z = (int)r2.w + (int)r2.z;
        r8.z = t2.Load(r8.z).x;
        r8.z = (uint)r8.z;
        r8.z = 0.00392156886 * r8.z;
        r8.w = (int)r8.x * 3;
        r9.xyzw = t5.Load(r8.w).xyzw;
        r8.xw = mad((int2)r8.xx, int2(3,3), int2(1,2));
        r10.xyzw = t5.Load(r8.x).xyzw;
        r11.xyzw = t5.Load(r8.w).xyzw;
        r3.xyzw = r8.zzzz * r9.xyzw + r3.xyzw;
        r4.xyzw = r8.zzzz * r10.xyzw + r4.xyzw;
        r5.xyzw = r8.zzzz * r11.xyzw + r5.xyzw;
      } else {
        r8.x = (int)r2.w + (int)r2.z;
        r8.x = t2.Load(r8.x).x;
        r8.x = (uint)r8.x;
        r8.x = 0.00392156886 * r8.x;
        r8.z = (int)r8.y * 3;
        r9.xyzw = t5.Load(r8.z).xyzw;
        r8.yz = mad((int2)r8.yy, int2(3,3), int2(1,2));
        r10.xyzw = t5.Load(r8.y).xyzw;
        r11.xyzw = t5.Load(r8.z).xyzw;
        r3.xyzw = r8.xxxx * r9.xyzw + r3.xyzw;
        r4.xyzw = r8.xxxx * r10.xyzw + r4.xyzw;
        r5.xyzw = r8.xxxx * r11.xyzw + r5.xyzw;
      }
      r2.w = (int)r2.w + 1;
    }
  }
  r2.x = dot(r3.xyzw, r6.xyzw);
  r2.y = dot(r4.xyzw, r6.xyzw);
  r2.z = dot(r5.xyzw, r6.xyzw);
  r2.xyz = v6.xyz + r2.xyz;
  r2.w = 1;
  r3.x = cb2[10].x;
  r3.y = cb2[11].x;
  r3.z = cb2[12].x;
  r3.w = r7.x;
  r3.x = dot(r2.xyzw, r3.xyzw);
  r4.x = cb2[10].y;
  r4.y = cb2[11].y;
  r4.z = cb2[12].y;
  r4.w = r7.y;
  r3.y = dot(r2.xyzw, r4.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r3.z = dot(r2.xyzw, r7.xyzw);
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
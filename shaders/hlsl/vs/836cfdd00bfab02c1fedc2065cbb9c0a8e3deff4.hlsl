// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  float3 v4 : ATTRIBUTE11,
  float3 v5 : ATTRIBUTE12,
  uint v6 : SV_VertexID0,
  float4 v7 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v6.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  r0.y = (int)r0.x * 20;
  r0.z = mad((int)r0.x, 20, 3);
  r1.xyz = t2.Load(r0.z).zxy;
  r0.zw = (uint2)r1.yz >> int2(16,16);
  r0.w = cmp((uint)r0.w < 0x0000ffff);
  if (r0.w != 0) {
    r2.xyz = t2.Load(r0.y).xyw;
    r3.xyzw = (int4)r1.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r4.xyzw = mad((int4)r0.xxxx, int4(20,20,20,20), int4(4,8,12,16));
    r5.xyzw = (int4)r4.xyzw + int4(3,3,3,3);
    r1.yzw = t2.Load(r5.x).xyz;
    r0.xy = (uint2)r1.yz >> int2(16,16);
    r6.xyz = t2.Load(r5.y).xyz;
    r5.xy = (uint2)r6.xy >> int2(16,16);
    r7.xyz = t2.Load(r5.z).xyz;
    r8.xy = (uint2)r7.xy >> int2(16,16);
    r9.xyz = t2.Load(r5.w).xyz;
    r5.zw = (uint2)r9.xy >> int2(16,16);
    r8.zw = (int2)r3.zw * int2(3,3);
    r10.xy = t0.Load(r8.z).xy;
    r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
    r10.zw = t0.Load(r3.x).xy;
    r11.xyz = cb0[3].xyz * r10.yyy;
    r11.xyz = r10.xxx * cb0[2].xyz + r11.xyz;
    r10.xyz = r10.zzz * cb0[4].xyz + r11.xyz;
    r10.xyz = cb0[5].xyz + r10.xyz;
    r2.w = (int)r0.z * 3;
    r11.xy = t0.Load(r2.w).xy;
    r11.zw = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r12.xy = t0.Load(r11.z).xy;
    r13.xyz = cb0[3].xyz * r11.yyy;
    r11.xyz = r11.xxx * cb0[2].xyz + r13.xyz;
    r11.xyz = r12.xxx * cb0[4].xyz + r11.xyz;
    r11.xyz = cb0[5].xyz + r11.xyz;
    r8.zw = t0.Load(r8.w).xy;
    r3.xy = t0.Load(r3.y).xy;
    r12.xzw = cb0[3].xyz * r8.www;
    r12.xzw = r8.zzz * cb0[2].xyz + r12.xzw;
    r12.xzw = r3.xxx * cb0[4].xyz + r12.xzw;
    r12.xzw = cb0[5].xyz + r12.xzw;
    r3.xz = t0.Load(r3.z).xy;
    r13.xyz = cb0[3].xyz * r3.xxx;
    r13.xyz = r10.www * cb0[2].xyz + r13.xyz;
    r13.xyz = r3.zzz * cb0[4].xyz + r13.xyz;
    r3.xz = t0.Load(r11.w).xy;
    r14.xyz = cb0[3].xyz * r3.xxx;
    r14.xyz = r12.yyy * cb0[2].xyz + r14.xyz;
    r14.xyz = r3.zzz * cb0[4].xyz + r14.xyz;
    r3.xz = t0.Load(r3.w).xy;
    r15.xyz = cb0[3].xyz * r3.xxx;
    r3.xyw = r3.yyy * cb0[2].xyz + r15.xyz;
    r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
    r0.z = 1 + -r2.x;
    r0.z = r0.z + -r2.y;
    r10.xyz = r13.xyz * r2.zzz + r10.xyz;
    r11.xyz = r14.xyz * r2.zzz + r11.xyz;
    r11.xyz = r11.xyz * r2.yyy;
    r2.xyw = r2.xxx * r10.xyz + r11.xyz;
    r3.xyz = r3.xyz * r2.zzz + r12.xzw;
    r2.xyz = r0.zzz * r3.xyz + r2.xyw;
    r2.xyz = r2.xyz * r1.xxx;
    r0.y = cmp((uint)r0.y < 0x0000ffff);
    if (r0.y != 0) {
      r3.xyz = t2.Load(r4.x).xyw;
      r10.xyzw = (int4)r1.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
      r0.yz = (int2)r10.zw * int2(3,3);
      r1.yz = t0.Load(r0.y).xy;
      r10.xyzw = mad((int4)r10.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r8.zw = t0.Load(r10.x).xy;
      r11.xyz = cb0[3].xyz * r1.zzz;
      r11.xyz = r1.yyy * cb0[2].xyz + r11.xyz;
      r11.xyz = r8.zzz * cb0[4].xyz + r11.xyz;
      r11.xyz = cb0[5].xyz + r11.xyz;
      r0.y = (int)r0.x * 3;
      r1.yz = t0.Load(r0.y).xy;
      r0.xy = mad((int2)r0.xx, int2(3,3), int2(1,2));
      r12.xy = t0.Load(r0.x).xy;
      r13.xyz = cb0[3].xyz * r1.zzz;
      r13.xyz = r1.yyy * cb0[2].xyz + r13.xyz;
      r12.xzw = r12.xxx * cb0[4].xyz + r13.xyz;
      r12.xzw = cb0[5].xyz + r12.xzw;
      r0.xz = t0.Load(r0.z).xy;
      r1.yz = t0.Load(r10.y).xy;
      r13.xyz = cb0[3].xyz * r0.zzz;
      r13.xyz = r0.xxx * cb0[2].xyz + r13.xyz;
      r13.xyz = r1.yyy * cb0[4].xyz + r13.xyz;
      r13.xyz = cb0[5].xyz + r13.xyz;
      r0.xz = t0.Load(r10.z).xy;
      r10.xyz = cb0[3].xyz * r0.xxx;
      r10.xyz = r8.www * cb0[2].xyz + r10.xyz;
      r10.xyz = r0.zzz * cb0[4].xyz + r10.xyz;
      r0.xy = t0.Load(r0.y).xy;
      r14.xyz = cb0[3].xyz * r0.xxx;
      r14.xyz = r12.yyy * cb0[2].xyz + r14.xyz;
      r0.xyz = r0.yyy * cb0[4].xyz + r14.xyz;
      r8.zw = t0.Load(r10.w).xy;
      r14.xyz = cb0[3].xyz * r8.zzz;
      r14.xyz = r1.zzz * cb0[2].xyz + r14.xyz;
      r14.xyz = r8.www * cb0[4].xyz + r14.xyz;
      r1.x = r1.x + r1.w;
      r1.y = 1 + -r3.x;
      r1.y = r1.y + -r3.y;
      r10.xyz = r10.xyz * r3.zzz + r11.xyz;
      r0.xyz = r0.xyz * r3.zzz + r12.xzw;
      r0.xyz = r3.yyy * r0.xyz;
      r0.xyz = r3.xxx * r10.xyz + r0.xyz;
      r3.xyz = r14.xyz * r3.zzz + r13.xyz;
      r0.xyz = r1.yyy * r3.xyz + r0.xyz;
      r2.xyz = r1.www * r0.xyz + r2.xyz;
    }
    r0.x = cmp((uint)r5.y < 0x0000ffff);
    if (r0.x != 0) {
      r0.xyz = t2.Load(r4.y).xyw;
      r3.xyzw = (int4)r6.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
      r1.yz = (int2)r3.zw * int2(3,3);
      r1.yw = t0.Load(r1.y).xy;
      r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r4.xy = t0.Load(r3.x).xy;
      r6.xyw = cb0[3].xyz * r1.www;
      r6.xyw = r1.yyy * cb0[2].xyz + r6.xyw;
      r6.xyw = r4.xxx * cb0[4].xyz + r6.xyw;
      r6.xyw = cb0[5].xyz + r6.xyw;
      r1.y = (int)r5.x * 3;
      r1.yw = t0.Load(r1.y).xy;
      r5.xy = mad((int2)r5.xx, int2(3,3), int2(1,2));
      r8.zw = t0.Load(r5.x).xy;
      r10.xyz = cb0[3].xyz * r1.www;
      r10.xyz = r1.yyy * cb0[2].xyz + r10.xyz;
      r10.xyz = r8.zzz * cb0[4].xyz + r10.xyz;
      r10.xyz = cb0[5].xyz + r10.xyz;
      r1.yz = t0.Load(r1.z).xy;
      r3.xy = t0.Load(r3.y).xy;
      r11.xyz = cb0[3].xyz * r1.zzz;
      r1.yzw = r1.yyy * cb0[2].xyz + r11.xyz;
      r1.yzw = r3.xxx * cb0[4].xyz + r1.yzw;
      r1.yzw = cb0[5].xyz + r1.yzw;
      r3.xz = t0.Load(r3.z).xy;
      r11.xyz = cb0[3].xyz * r3.xxx;
      r11.xyz = r4.yyy * cb0[2].xyz + r11.xyz;
      r11.xyz = r3.zzz * cb0[4].xyz + r11.xyz;
      r3.xz = t0.Load(r5.y).xy;
      r12.xyz = cb0[3].xyz * r3.xxx;
      r12.xyz = r8.www * cb0[2].xyz + r12.xyz;
      r12.xyz = r3.zzz * cb0[4].xyz + r12.xyz;
      r3.xz = t0.Load(r3.w).xy;
      r13.xyz = cb0[3].xyz * r3.xxx;
      r3.xyw = r3.yyy * cb0[2].xyz + r13.xyz;
      r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
      r1.x = r1.x + r6.z;
      r2.w = 1 + -r0.x;
      r2.w = r2.w + -r0.y;
      r6.xyw = r11.xyz * r0.zzz + r6.xyw;
      r10.xyz = r12.xyz * r0.zzz + r10.xyz;
      r10.xyz = r10.xyz * r0.yyy;
      r6.xyw = r0.xxx * r6.xyw + r10.xyz;
      r0.xyz = r3.xyz * r0.zzz + r1.yzw;
      r0.xyz = r2.www * r0.xyz + r6.xyw;
      r2.xyz = r6.zzz * r0.xyz + r2.xyz;
    }
    r0.x = cmp((uint)r8.y < 0x0000ffff);
    if (r0.x != 0) {
      r0.xyz = t2.Load(r4.z).xyw;
      r3.xyzw = (int4)r7.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
      r1.yz = (int2)r3.zw * int2(3,3);
      r1.yw = t0.Load(r1.y).xy;
      r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r4.xy = t0.Load(r3.x).xy;
      r6.xyz = cb0[3].xyz * r1.www;
      r6.xyz = r1.yyy * cb0[2].xyz + r6.xyz;
      r6.xyz = r4.xxx * cb0[4].xyz + r6.xyz;
      r6.xyz = cb0[5].xyz + r6.xyz;
      r1.y = (int)r8.x * 3;
      r1.yw = t0.Load(r1.y).xy;
      r4.xz = mad((int2)r8.xx, int2(3,3), int2(1,2));
      r5.xy = t0.Load(r4.x).xy;
      r7.xyw = cb0[3].xyz * r1.www;
      r7.xyw = r1.yyy * cb0[2].xyz + r7.xyw;
      r7.xyw = r5.xxx * cb0[4].xyz + r7.xyw;
      r7.xyw = cb0[5].xyz + r7.xyw;
      r1.yz = t0.Load(r1.z).xy;
      r3.xy = t0.Load(r3.y).xy;
      r8.xyz = cb0[3].xyz * r1.zzz;
      r1.yzw = r1.yyy * cb0[2].xyz + r8.xyz;
      r1.yzw = r3.xxx * cb0[4].xyz + r1.yzw;
      r1.yzw = cb0[5].xyz + r1.yzw;
      r3.xz = t0.Load(r3.z).xy;
      r8.xyz = cb0[3].xyz * r3.xxx;
      r8.xyz = r4.yyy * cb0[2].xyz + r8.xyz;
      r8.xyz = r3.zzz * cb0[4].xyz + r8.xyz;
      r3.xz = t0.Load(r4.z).xy;
      r4.xyz = cb0[3].xyz * r3.xxx;
      r4.xyz = r5.yyy * cb0[2].xyz + r4.xyz;
      r4.xyz = r3.zzz * cb0[4].xyz + r4.xyz;
      r3.xz = t0.Load(r3.w).xy;
      r10.xyz = cb0[3].xyz * r3.xxx;
      r3.xyw = r3.yyy * cb0[2].xyz + r10.xyz;
      r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
      r1.x = r1.x + r7.z;
      r2.w = 1 + -r0.x;
      r2.w = r2.w + -r0.y;
      r6.xyz = r8.xyz * r0.zzz + r6.xyz;
      r4.xyz = r4.xyz * r0.zzz + r7.xyw;
      r4.xyz = r4.xyz * r0.yyy;
      r4.xyz = r0.xxx * r6.xyz + r4.xyz;
      r0.xyz = r3.xyz * r0.zzz + r1.yzw;
      r0.xyz = r2.www * r0.xyz + r4.xyz;
      r2.xyz = r7.zzz * r0.xyz + r2.xyz;
    }
    r0.x = cmp((uint)r5.w < 0x0000ffff);
    if (r0.x != 0) {
      r0.xyz = t2.Load(r4.w).xyw;
      r3.xyzw = (int4)r9.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
      r1.yz = (int2)r3.zw * int2(3,3);
      r1.yw = t0.Load(r1.y).xy;
      r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r4.xy = t0.Load(r3.x).xy;
      r5.xyw = cb0[3].xyz * r1.www;
      r5.xyw = r1.yyy * cb0[2].xyz + r5.xyw;
      r4.xzw = r4.xxx * cb0[4].xyz + r5.xyw;
      r4.xzw = cb0[5].xyz + r4.xzw;
      r1.y = (int)r5.z * 3;
      r1.yw = t0.Load(r1.y).xy;
      r5.xy = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r5.xz = t0.Load(r5.x).xy;
      r6.xyz = cb0[3].xyz * r1.www;
      r6.xyz = r1.yyy * cb0[2].xyz + r6.xyz;
      r6.xyz = r5.xxx * cb0[4].xyz + r6.xyz;
      r6.xyz = cb0[5].xyz + r6.xyz;
      r1.yz = t0.Load(r1.z).xy;
      r3.xy = t0.Load(r3.y).xy;
      r7.xyz = cb0[3].xyz * r1.zzz;
      r1.yzw = r1.yyy * cb0[2].xyz + r7.xyz;
      r1.yzw = r3.xxx * cb0[4].xyz + r1.yzw;
      r1.yzw = cb0[5].xyz + r1.yzw;
      r3.xz = t0.Load(r3.z).xy;
      r7.xyz = cb0[3].xyz * r3.xxx;
      r7.xyz = r4.yyy * cb0[2].xyz + r7.xyz;
      r7.xyz = r3.zzz * cb0[4].xyz + r7.xyz;
      r3.xz = t0.Load(r5.y).xy;
      r5.xyw = cb0[3].xyz * r3.xxx;
      r5.xyz = r5.zzz * cb0[2].xyz + r5.xyw;
      r5.xyz = r3.zzz * cb0[4].xyz + r5.xyz;
      r3.xz = t0.Load(r3.w).xy;
      r8.xyz = cb0[3].xyz * r3.xxx;
      r3.xyw = r3.yyy * cb0[2].xyz + r8.xyz;
      r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
      r1.x = r1.x + r9.z;
      r2.w = 1 + -r0.x;
      r2.w = r2.w + -r0.y;
      r4.xyz = r7.xyz * r0.zzz + r4.xzw;
      r5.xyz = r5.xyz * r0.zzz + r6.xyz;
      r5.xyz = r5.xyz * r0.yyy;
      r4.xyz = r0.xxx * r4.xyz + r5.xyz;
      r0.xyz = r3.xyz * r0.zzz + r1.yzw;
      r0.xyz = r2.www * r0.xyz + r4.xyz;
      r2.xyz = r9.zzz * r0.xyz + r2.xyz;
    }
    r0.x = cmp(9.99999975e-005 < r1.x);
    r0.y = 1 / r1.x;
    r1.xyz = r2.xyz * r0.yyy;
    r0.xyz = r0.xxx ? r1.xyz : 0;
  } else {
    r0.xyz = v0.xyz;
  }
  r1.x = (int)v3.x & 255;
  r1.y = (uint)v3.x >> 8;
  r1.z = mad(asint(cb0[10].y), (int)r1.x, (int)r1.y);
  r2.xyzw = float4(0,0,0,0);
  r3.xyzw = float4(0,0,0,0);
  r4.xyzw = float4(0,0,0,0);
  r1.w = cb0[10].y;
  r5.x = 0;
  while (true) {
    r5.y = cmp((int)r5.x >= (int)r1.x);
    if (r5.y != 0) break;
    r5.y = mad((int)r1.w, (int)r5.x, (int)r1.y);
    r5.z = t1.Load(r5.y).x;
    r5.w = cmp(1 < (uint)r1.w);
    if (r5.w != 0) {
      r5.y = (int)r5.y + 1;
      r5.y = t1.Load(r5.y).x;
      r5.y = (uint)r5.y << 8;
      r5.y = (int)r5.z | (int)r5.y;
      r5.w = (int)r1.z + (int)r5.x;
      r5.w = t1.Load(r5.w).x;
      r5.w = (uint)r5.w;
      r5.w = 0.00392156886 * r5.w;
      r6.x = (int)r5.y * 3;
      r6.xyzw = t3.Load(r6.x).xyzw;
      r7.xy = mad((int2)r5.yy, int2(3,3), int2(1,2));
      r8.xyzw = t3.Load(r7.x).xyzw;
      r7.xyzw = t3.Load(r7.y).xyzw;
      r2.xyzw = r5.wwww * r6.xyzw + r2.xyzw;
      r3.xyzw = r5.wwww * r8.xyzw + r3.xyzw;
      r4.xyzw = r5.wwww * r7.xyzw + r4.xyzw;
    } else {
      r5.y = (int)r1.z + (int)r5.x;
      r5.y = t1.Load(r5.y).x;
      r5.y = (uint)r5.y;
      r5.y = 0.00392156886 * r5.y;
      r5.w = (int)r5.z * 3;
      r6.xyzw = t3.Load(r5.w).xyzw;
      r5.zw = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r7.xyzw = t3.Load(r5.z).xyzw;
      r8.xyzw = t3.Load(r5.w).xyzw;
      r2.xyzw = r5.yyyy * r6.xyzw + r2.xyzw;
      r3.xyzw = r5.yyyy * r7.xyzw + r3.xyzw;
      r4.xyzw = r5.yyyy * r8.xyzw + r4.xyzw;
    }
    r5.x = (int)r5.x + 1;
  }
  r1.xyz = v4.xyz + v0.xyz;
  r1.w = 1;
  r2.x = dot(r2.xyzw, r1.xyzw);
  r2.y = dot(r3.xyzw, r1.xyzw);
  r2.z = dot(r4.xyzw, r1.xyzw);
  r1.xyz = v5.xyz + r2.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = r1.xxx * cb2[0].xyz + r2.xyz;
  r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
  r2.xyz = cb2[3].xyz + r1.xyz;
  r0.xyz = -r2.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r2.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r0.www ? r0.xyz : r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
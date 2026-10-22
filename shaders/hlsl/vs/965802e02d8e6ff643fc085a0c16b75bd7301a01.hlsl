// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

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
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float3 v8 : ATTRIBUTE11,
  float3 v9 : ATTRIBUTE12,
  uint v10 : SV_VertexID0,
  float4 v11 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v10.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t1.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r0.w = cmp((uint)r1.y < 0x0000ffff);
  if (r0.w != 0) {
    r0.x = (uint)r0.x << 2;
    r1.yzw = t1.Load(r0.x).xyw;
    r2.xyzw = (int4)r0.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r0.xy = (int2)r2.zw * int2(3,3);
    r0.xz = t0.Load(r0.x).xy;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,1,2,2));
    r3.xy = t0.Load(r2.x).xy;
    r4.xyz = cb0[3].xyz * r0.zzz;
    r4.xyz = r0.xxx * cb0[2].xyz + r4.xyz;
    r3.xzw = r3.xxx * cb0[4].xyz + r4.xyz;
    r3.xzw = cb0[5].xyz + r3.xzw;
    r0.x = (int)r1.x * 3;
    r0.xz = t0.Load(r0.x).xy;
    r4.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r4.xz = t0.Load(r4.x).xy;
    r5.xyz = cb0[3].xyz * r0.zzz;
    r5.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
    r5.xyz = r4.xxx * cb0[4].xyz + r5.xyz;
    r5.xyz = cb0[5].xyz + r5.xyz;
    r0.xy = t0.Load(r0.y).xy;
    r2.xy = t0.Load(r2.y).xy;
    r6.xyz = cb0[3].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb0[2].xyz + r6.xyz;
    r0.xyz = r2.xxx * cb0[4].xyz + r0.xyz;
    r0.xyz = cb0[5].xyz + r0.xyz;
    r2.xz = t0.Load(r2.z).xy;
    r6.xyz = cb0[3].xyz * r2.xxx;
    r6.xyz = r3.yyy * cb0[2].xyz + r6.xyz;
    r6.xyz = r2.zzz * cb0[4].xyz + r6.xyz;
    r2.xz = t0.Load(r4.y).xy;
    r4.xyw = cb0[3].xyz * r2.xxx;
    r4.xyz = r4.zzz * cb0[2].xyz + r4.xyw;
    r4.xyz = r2.zzz * cb0[4].xyz + r4.xyz;
    r2.xz = t0.Load(r2.w).xy;
    r7.xyz = cb0[3].xyz * r2.xxx;
    r2.xyw = r2.yyy * cb0[2].xyz + r7.xyz;
    r2.xyz = r2.zzz * cb0[4].xyz + r2.xyw;
    r1.x = 1 + -r1.y;
    r1.x = r1.x + -r1.z;
    r3.xyz = r6.xyz * r1.www + r3.xzw;
    r4.xyz = r4.xyz * r1.www + r5.xyz;
    r4.xyz = r4.xyz * r1.zzz;
    r3.xyz = r1.yyy * r3.xyz + r4.xyz;
    r0.xyz = r2.xyz * r1.www + r0.xyz;
    r0.xyz = r1.xxx * r0.xyz + r3.xyz;
  } else {
    r0.xyz = v0.xyz;
  }
  r1.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r2.xyzw = t2.Load(r1.x).xyzw;
  r3.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r4.xyzw = t2.Load(r3.x).xyzw;
  r5.xyzw = t2.Load(r3.y).xyzw;
  r6.xyzw = t2.Load(r1.y).xyzw;
  r7.xyzw = t2.Load(r3.z).xyzw;
  r3.xyzw = t2.Load(r3.w).xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r7.xyzw = v5.yyyy * r7.xyzw;
  r3.xyzw = v5.yyyy * r3.xyzw;
  r2.xyzw = v5.xxxx * r2.xyzw + r6.xyzw;
  r4.xyzw = v5.xxxx * r4.xyzw + r7.xyzw;
  r3.xyzw = v5.xxxx * r5.xyzw + r3.xyzw;
  r5.xyzw = t2.Load(r1.z).xyzw;
  r6.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r7.xyzw = t2.Load(r6.x).xyzw;
  r8.xyzw = t2.Load(r6.y).xyzw;
  r2.xyzw = v5.zzzz * r5.xyzw + r2.xyzw;
  r4.xyzw = v5.zzzz * r7.xyzw + r4.xyzw;
  r3.xyzw = v5.zzzz * r8.xyzw + r3.xyzw;
  r1.xyzw = t2.Load(r1.w).xyzw;
  r5.xyzw = t2.Load(r6.z).xyzw;
  r6.xyzw = t2.Load(r6.w).xyzw;
  r1.xyzw = v5.wwww * r1.xyzw + r2.xyzw;
  r2.xyzw = v5.wwww * r5.xyzw + r4.xyzw;
  r3.xyzw = v5.wwww * r6.xyzw + r3.xyzw;
  r4.x = cmp(4 < asuint(cb0[1].y));
  if (r4.x != 0) {
    r4.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r5.xyzw = t2.Load(r4.x).xyzw;
    r6.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r7.xyzw = t2.Load(r6.x).xyzw;
    r8.xyzw = t2.Load(r6.y).xyzw;
    r5.xyzw = v6.xxxx * r5.xyzw + r1.xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r2.xyzw;
    r8.xyzw = v6.xxxx * r8.xyzw + r3.xyzw;
    r9.xyzw = t2.Load(r4.y).xyzw;
    r10.xyzw = t2.Load(r6.z).xyzw;
    r6.xyzw = t2.Load(r6.w).xyzw;
    r5.xyzw = v6.yyyy * r9.xyzw + r5.xyzw;
    r7.xyzw = v6.yyyy * r10.xyzw + r7.xyzw;
    r6.xyzw = v6.yyyy * r6.xyzw + r8.xyzw;
    r8.xyzw = t2.Load(r4.z).xyzw;
    r9.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r10.xyzw = t2.Load(r9.x).xyzw;
    r11.xyzw = t2.Load(r9.y).xyzw;
    r5.xyzw = v6.zzzz * r8.xyzw + r5.xyzw;
    r7.xyzw = v6.zzzz * r10.xyzw + r7.xyzw;
    r6.xyzw = v6.zzzz * r11.xyzw + r6.xyzw;
    r4.xyzw = t2.Load(r4.w).xyzw;
    r8.xyzw = t2.Load(r9.z).xyzw;
    r9.xyzw = t2.Load(r9.w).xyzw;
    r1.xyzw = v6.wwww * r4.xyzw + r5.xyzw;
    r2.xyzw = v6.wwww * r8.xyzw + r7.xyzw;
    r3.xyzw = v6.wwww * r9.xyzw + r6.xyzw;
  }
  r4.xyz = v8.xyz + v0.xyz;
  r4.w = 1;
  r1.x = dot(r1.xyzw, r4.xyzw);
  r1.y = dot(r2.xyzw, r4.xyzw);
  r1.z = dot(r3.xyzw, r4.xyzw);
  r1.xyz = v9.xyz + r1.xyz;
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
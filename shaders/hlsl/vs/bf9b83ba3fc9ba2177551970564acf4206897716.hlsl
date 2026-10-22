// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[95];
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
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t1.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r2.xyzw = (int4)r0.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r0.y = cmp((uint)r1.y < 0x0000ffff);
  if (r0.y != 0) {
    r0.z = (uint)r0.x << 2;
    r1.yzw = t1.Load(r0.z).xyw;
    r0.zw = (int2)r2.yw * int2(3,3);
    r3.xy = t0.Load(r0.z).xy;
    r4.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r3.zw = t0.Load(r4.x).xy;
    r5.xyz = cb0[3].xyz * r3.yyy;
    r5.xyz = r3.xxx * cb0[2].xyz + r5.xyz;
    r3.xyz = r3.zzz * cb0[4].xyz + r5.xyz;
    r3.xyz = cb0[5].xyz + r3.xyz;
    r0.z = (int)r1.x * 3;
    r5.xy = t0.Load(r0.z).xy;
    r5.zw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r6.xy = t0.Load(r5.z).xy;
    r7.xyz = cb0[3].xyz * r5.yyy;
    r5.xyz = r5.xxx * cb0[2].xyz + r7.xyz;
    r5.xyz = r6.xxx * cb0[4].xyz + r5.xyz;
    r5.xyz = cb0[5].xyz + r5.xyz;
    r0.zw = t0.Load(r0.w).xy;
    r4.xy = t0.Load(r4.y).xy;
    r6.xzw = cb0[3].xyz * r0.www;
    r6.xzw = r0.zzz * cb0[2].xyz + r6.xzw;
    r6.xzw = r4.xxx * cb0[4].xyz + r6.xzw;
    r6.xzw = cb0[5].xyz + r6.xzw;
    r0.zw = t0.Load(r4.z).xy;
    r7.xyz = cb0[3].xyz * r0.zzz;
    r7.xyz = r3.www * cb0[2].xyz + r7.xyz;
    r7.xyz = r0.www * cb0[4].xyz + r7.xyz;
    r0.zw = t0.Load(r5.w).xy;
    r8.xyz = cb0[3].xyz * r0.zzz;
    r8.xyz = r6.yyy * cb0[2].xyz + r8.xyz;
    r8.xyz = r0.www * cb0[4].xyz + r8.xyz;
    r0.zw = t0.Load(r4.w).xy;
    r4.xzw = cb0[3].xyz * r0.zzz;
    r4.xyz = r4.yyy * cb0[2].xyz + r4.xzw;
    r4.xyz = r0.www * cb0[4].xyz + r4.xyz;
    r0.z = 1 + -r1.y;
    r0.z = r0.z + -r1.z;
    r3.xyz = r7.xyz * r1.www + r3.xyz;
    r5.xyz = r8.xyz * r1.www + r5.xyz;
    r5.xyz = r5.xyz * r1.zzz;
    r3.xyz = r1.yyy * r3.xyz + r5.xyz;
    r1.yzw = r4.xyz * r1.www + r6.xzw;
    r1.yzw = r0.zzz * r1.yzw + r3.xyz;
  } else {
    r1.yzw = v0.xyz;
  }
  r3.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r4.xyzw = t2.Load(r3.x).xyzw;
  r5.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r6.xyzw = t2.Load(r5.x).xyzw;
  r7.xyzw = t2.Load(r5.y).xyzw;
  r8.xyzw = t2.Load(r3.y).xyzw;
  r9.xyzw = t2.Load(r5.z).xyzw;
  r5.xyzw = t2.Load(r5.w).xyzw;
  r8.xyzw = v5.yyyy * r8.xyzw;
  r9.xyzw = v5.yyyy * r9.xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r4.xyzw = v5.xxxx * r4.xyzw + r8.xyzw;
  r6.xyzw = v5.xxxx * r6.xyzw + r9.xyzw;
  r5.xyzw = v5.xxxx * r7.xyzw + r5.xyzw;
  r7.xyzw = t2.Load(r3.z).xyzw;
  r8.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r9.xyzw = t2.Load(r8.x).xyzw;
  r10.xyzw = t2.Load(r8.y).xyzw;
  r4.xyzw = v5.zzzz * r7.xyzw + r4.xyzw;
  r6.xyzw = v5.zzzz * r9.xyzw + r6.xyzw;
  r5.xyzw = v5.zzzz * r10.xyzw + r5.xyzw;
  r3.xyzw = t2.Load(r3.w).xyzw;
  r7.xyzw = t2.Load(r8.z).xyzw;
  r8.xyzw = t2.Load(r8.w).xyzw;
  r3.xyzw = v5.wwww * r3.xyzw + r4.xyzw;
  r4.xyzw = v5.wwww * r7.xyzw + r6.xyzw;
  r5.xyzw = v5.wwww * r8.xyzw + r5.xyzw;
  r0.z = cmp(4 < asuint(cb0[1].y));
  if (r0.z != 0) {
    r6.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r7.xyzw = t2.Load(r6.x).xyzw;
    r8.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r9.xyzw = t2.Load(r8.x).xyzw;
    r10.xyzw = t2.Load(r8.y).xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r3.xyzw;
    r9.xyzw = v6.xxxx * r9.xyzw + r4.xyzw;
    r10.xyzw = v6.xxxx * r10.xyzw + r5.xyzw;
    r11.xyzw = t2.Load(r6.y).xyzw;
    r12.xyzw = t2.Load(r8.z).xyzw;
    r8.xyzw = t2.Load(r8.w).xyzw;
    r7.xyzw = v6.yyyy * r11.xyzw + r7.xyzw;
    r9.xyzw = v6.yyyy * r12.xyzw + r9.xyzw;
    r8.xyzw = v6.yyyy * r8.xyzw + r10.xyzw;
    r10.xyzw = t2.Load(r6.z).xyzw;
    r11.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r12.xyzw = t2.Load(r11.x).xyzw;
    r13.xyzw = t2.Load(r11.y).xyzw;
    r7.xyzw = v6.zzzz * r10.xyzw + r7.xyzw;
    r9.xyzw = v6.zzzz * r12.xyzw + r9.xyzw;
    r8.xyzw = v6.zzzz * r13.xyzw + r8.xyzw;
    r6.xyzw = t2.Load(r6.w).xyzw;
    r10.xyzw = t2.Load(r11.z).xyzw;
    r11.xyzw = t2.Load(r11.w).xyzw;
    r3.xyzw = v6.wwww * r6.xyzw + r7.xyzw;
    r4.xyzw = v6.wwww * r10.xyzw + r9.xyzw;
    r5.xyzw = v6.wwww * r11.xyzw + r8.xyzw;
  }
  if (r0.y != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
    r6.xyz = t1.Load(r0.x).xyz;
    r0.xzw = t1.Load(r0.z).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r2.x = t0.Load(r2.x).y;
    r7.xy = t0.Load(r2.y).xy;
    r7.xzw = cb0[3].xyz * r7.xxx;
    r7.xzw = r2.xxx * cb0[2].xyz + r7.xzw;
    r7.xyz = r7.yyy * cb0[4].xyz + r7.xzw;
    r2.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r1.x = t0.Load(r2.x).y;
    r2.xy = t0.Load(r2.y).xy;
    r8.xyz = cb0[3].xyz * r2.xxx;
    r8.xyz = r1.xxx * cb0[2].xyz + r8.xyz;
    r8.xyz = r2.yyy * cb0[4].xyz + r8.xyz;
    r1.x = t0.Load(r2.z).y;
    r2.xy = t0.Load(r2.w).xy;
    r2.xzw = cb0[3].xyz * r2.xxx;
    r2.xzw = r1.xxx * cb0[2].xyz + r2.xzw;
    r2.xyz = r2.yyy * cb0[4].xyz + r2.xzw;
    r9.xyz = r8.xyz * r6.yyy;
    r6.xyw = r6.xxx * r7.xyz + r9.xyz;
    r6.xyz = r6.zzz * r2.xyz + r6.xyw;
    r8.xyz = r8.xyz * r0.zzz;
    r7.xyz = r0.xxx * r7.xyz + r8.xyz;
    r0.xzw = r0.www * r2.xyz + r7.xyz;
    r0.xzw = r0.xzw + -r1.yzw;
    r1.x = dot(r0.xzw, r0.xzw);
    r1.x = rsqrt(r1.x);
    r0.xzw = r1.xxx * r0.xzw;
    r1.x = dot(r6.xyz, r6.xyz);
    r1.x = rsqrt(r1.x);
    r2.xyz = r6.xyz * r1.xxx;
    r6.xyz = cb2[7].xyz * r0.zzz;
    r6.xyz = r0.xxx * cb2[6].xyz + r6.xyz;
    r0.xzw = r0.www * cb2[8].xyz + r6.xyz;
    r6.xyz = cb2[7].xyz * -r2.yyy;
    r2.xyw = -r2.xxx * cb2[6].xyz + r6.xyz;
    r2.yzw = -r2.zzz * cb2[8].xyz + r2.xyw;
    r2.x = r0.w;
    r0.w = cb0[10].x;
  } else {
    r2.xyzw = float4(0,0,0,1);
    r0.xzw = float3(1,0,0);
  }
  r6.x = dot(r3.xyz, v1.xyz);
  r6.y = dot(r4.xyz, v1.xyz);
  r6.z = dot(r5.xyz, v1.xyz);
  r1.x = dot(r6.xyz, r6.xyz);
  r1.x = rsqrt(r1.x);
  r6.xyz = r6.xyz * r1.xxx;
  r7.y = dot(r3.xyz, v2.xyz);
  r7.z = dot(r4.xyz, v2.xyz);
  r7.w = dot(r5.xyz, v2.xyz);
  r1.x = dot(r7.yzw, r7.yzw);
  r1.x = rsqrt(r1.x);
  r7.yzw = r7.yzw * r1.xxx;
  r1.x = 1 + -r0.w;
  r7.x = r6.z;
  r7.xyzw = r7.xyzw * r1.xxxx;
  r6.xy = r6.xy * r1.xx;
  r0.xz = r0.xz * r0.ww + r6.xy;
  r2.xyzw = r2.xyzw * r0.wwww + r7.xyzw;
  r6.xyz = v9.xyz + v0.xyz;
  r6.w = 1;
  r3.x = dot(r3.xyzw, r6.xyzw);
  r3.y = dot(r4.xyzw, r6.xyzw);
  r3.z = dot(r5.xyzw, r6.xyzw);
  r3.xyz = v10.xyz + r3.xyz;
  r4.xyz = cb2[1].xyz * r3.yyy;
  r3.xyw = r3.xxx * cb2[0].xyz + r4.xyz;
  r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
  r4.xyz = cb2[3].xyz + r3.xyz;
  r1.xyz = -r4.xyz + r1.yzw;
  r1.xyz = cb0[10].xxx * r1.xyz + r4.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r1.xyz = r0.yyy ? r1.xyz : r3.xyz;
  o5.w = 1;
  r3.xyz = cb2[4].xxx * cb2[0].xyz;
  r4.xyz = cb2[4].yyy * cb2[1].xyz;
  r5.xyz = cb2[4].zzz * cb2[2].xyz;
  r6.xyz = r4.xyz * r2.zzz;
  r6.xyz = r2.yyy * r3.xyz + r6.xyz;
  r2.yzw = r2.www * r5.xyz + r6.xyz;
  r6.xyz = -cb1[70].xyz + r1.xyz;
  r7.xyz = -cb3[48].xyz + r6.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb3[93].y;
  r0.y = r0.y * 2 + cb3[94].x;
  r0.y = saturate(-2 + r0.y);
  r8.xy = float2(3.14159274,6.28318548) * r0.yy;
  r8.xz = sin(r8.xy);
  r9.z = 50 * r8.x;
  r10.xyz = cb3[50].xyz + -r6.xyz;
  r0.w = dot(cb3[52].xyz, r7.xyz);
  r7.xyz = cb3[52].xyz * r0.www + cb3[48].xyz;
  r11.xyz = -r7.xyz + r6.xyz;
  r12.xyz = cb3[52].zxy * r11.yzx;
  r12.xyz = cb3[52].yzx * r11.zxy + -r12.xyz;
  r0.w = cos(r8.y);
  r8.xyz = r12.xyz * r8.zzz;
  r8.xyz = r11.xyz * r0.www + r8.xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r6.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r6.xyz + -r10.xyz;
  r6.xyz = r0.yyy * r6.xyz + r10.xyz;
  r9.xy = float2(0,0);
  r6.xyz = r9.xyz + r6.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  o3.xy = cb3[55].xy + v7.xy;
  r0.yzw = r4.xyz * r0.zzz;
  r0.xyz = r0.xxx * r3.xyz + r0.yzw;
  o0.xyz = r2.xxx * r5.xyz + r0.xyz;
  o1.w = cb2[4].w * v2.w;
  o0.w = 0;
  o1.xyz = r2.yzw;
  o2.xyzw = v12.xyzw;
  o3.zw = v8.xy;
  o5.xyz = r1.xyz;
  o4.xyz = r1.xyz;
  o6.xyz = r2.yzw;
  return;
}
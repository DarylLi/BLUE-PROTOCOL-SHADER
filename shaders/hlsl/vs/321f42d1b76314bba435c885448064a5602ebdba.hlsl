// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<sint4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xx >> asuint(cb3[8].yw);
  r1.x = (int)r0.x & asint(cb3[8].z);
  r1.y = (int)r1.x + 1;
  r0.x = cmp(asint(cb2[0].y) != -1);
  if (r0.x != 0) {
    r0.xz = (int2)r1.xy + asint(cb2[0].yy);
    r0.x = t0.Load(r0.x).x;
    r0.w = t0.Load(r0.z).x;
  } else {
    r0.xw = r1.xy;
  }
  r0.y = (int)r0.y & asint(cb3[9].x);
  r0.y = (uint)r0.y;
  r0.z = cb3[8].x * r0.y;
  r2.xyzw = cmp(asint(cb3[3].xyzw) != int4(-1,-1,-1,-1));
  if (r2.x != 0) {
    r1.zw = asint(cb3[3].xx) & int2(0x80000000,0x7fffffff);
    if (r1.z != 0) {
      r3.xy = mad((int2)r1.ww, asint(cb2[0].xx), (int2)r0.xw);
      r3.x = t3.Load(r3.x).x;
      r4.xyzw = (int4)r1.wwww + int4(1,2,1,2);
      r4.xyzw = mad((int4)r4.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r3.z = t3.Load(r4.x).x;
      r3.w = t3.Load(r4.y).x;
      r5.x = t3.Load(r3.y).x;
      r5.y = t3.Load(r4.z).x;
      r5.z = t3.Load(r4.w).x;
    } else {
      r4.xy = mad((int2)r1.ww, asint(cb2[0].xx), (int2)r0.xw);
      r3.x = t2.Load(r4.x).x;
      r6.xyzw = (int4)r1.wwww + int4(1,2,1,2);
      r6.xyzw = mad((int4)r6.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r3.z = t2.Load(r6.x).x;
      r3.w = t2.Load(r6.y).x;
      r5.x = t2.Load(r4.y).x;
      r5.y = t2.Load(r6.z).x;
      r5.z = t2.Load(r6.w).x;
    }
    r4.xyzw = t1.Load(r1.x).xyzw;
    r1.xyzw = t1.Load(r1.y).xyzw;
    r6.xyzw = r1.wxyz + -r4.wxyz;
    r1.w = r0.z * r0.z;
    r2.x = r1.w * r0.z;
    r3.y = 3 * r1.w;
    r4.w = r2.x * 2 + -r3.y;
    r4.w = 1 + r4.w;
    r5.w = -r1.w * 2 + r2.x;
    r0.y = r0.y * cb3[8].x + r5.w;
    r0.y = r6.x * r0.y;
    r7.xyz = r0.yyy * r4.xyz;
    r3.xzw = r4.www * r3.xzw + r7.xyz;
    r0.y = r1.w * r0.z + -r1.w;
    r0.y = r6.x * r0.y;
    r1.xyz = r0.yyy * r1.xyz + r3.xzw;
    r0.y = r2.x * -2 + r3.y;
    r1.xyz = r0.yyy * r5.xyz + r1.xyz;
    r3.xyz = cb1[1].xyz * r1.yyy;
    r3.xyz = cb1[0].xyz * r1.xxx + r3.xyz;
    r3.xyz = cb1[2].xyz * r1.zzz + r3.xyz;
    r3.xyz = cb1[3].xyz + r3.xyz;
    r1.xyz = cb3[12].xxx ? r3.xyz : r1.xyz;
    r3.xyz = r0.zzz * r6.yzw + r4.xyz;
    r4.xyz = cb1[4].xxx * cb1[0].xyz;
    r5.xyz = cb1[4].yyy * cb1[1].xyz;
    r5.xyz = r5.xyz * r3.yyy;
    r4.xyz = r4.xyz * r3.xxx + r5.xyz;
    r5.xyz = cb1[4].zzz * cb1[2].xyz;
    r4.xyz = r5.xyz * r3.zzz + r4.xyz;
    r3.xyz = cb3[12].xxx ? r4.xyz : r3.xyz;
    r0.y = dot(r3.xyz, r3.xyz);
    r0.y = rsqrt(r0.y);
    r3.xyz = r3.xyz * r0.yyy;
  } else {
    r1.xyz = float3(0,0,0);
    r3.xyz = float3(0,0,0);
  }
  if (r2.y != 0) {
    r2.xy = asint(cb3[3].yy) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r4.xy = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t3.Load(r4.x).x;
      r5.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r5.xyzw = mad((int4)r5.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.z = t3.Load(r5.x).x;
      r4.w = t3.Load(r5.y).x;
      r6.x = t3.Load(r4.y).x;
      r6.y = t3.Load(r5.z).x;
      r6.z = t3.Load(r5.w).x;
    } else {
      r5.xy = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t2.Load(r5.x).x;
      r7.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r7.xyzw = mad((int4)r7.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.z = t2.Load(r7.x).x;
      r4.w = t2.Load(r7.y).x;
      r6.x = t2.Load(r5.y).x;
      r6.y = t2.Load(r7.z).x;
      r6.z = t2.Load(r7.w).x;
    }
    r5.xyz = r6.xyz + -r4.xzw;
    r4.xyz = r0.zzz * r5.xyz + r4.xzw;
    r5.xyz = cb1[4].xxx * cb1[0].xyz;
    r6.xyz = cb1[4].yyy * cb1[1].xyz;
    r6.xyz = r6.xyz * r4.yyy;
    r5.xyz = r5.xyz * r4.xxx + r6.xyz;
    r6.xyz = cb1[4].zzz * cb1[2].xyz;
    r5.xyz = r6.xyz * r4.zzz + r5.xyz;
    r4.xyz = cb3[12].xxx ? r5.xyz : r4.xyz;
    r0.y = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r0.y);
    r4.xyz = r4.xyz * r1.www;
    r0.y = sqrt(r0.y);
  } else {
    r4.xyz = float3(0,0,0);
    r0.y = 0;
  }
  r2.xy = asint(cb3[3].zz) & int2(0x80000000,0x7fffffff);
  if (r2.x != 0) {
    r5.xy = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
    r1.w = t3.Load(r5.x).x;
    r2.x = t3.Load(r5.y).x;
  } else {
    r5.xy = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
    r1.w = t2.Load(r5.x).x;
    r2.x = t2.Load(r5.y).x;
  }
  r2.x = r2.x + -r1.w;
  r1.w = r0.z * r2.x + r1.w;
  r1.w = r2.z ? r1.w : 1;
  r2.x = cmp(asint(cb3[4].y) != -1);
  if (r2.x != 0) {
    r2.xy = asint(cb3[4].yy) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r2.xz = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r5.x = t3.Load(r2.x).x;
      r6.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r6.xyzw = mad((int4)r6.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r5.y = t3.Load(r6.x).x;
      r5.z = t3.Load(r6.y).x;
      r7.x = t3.Load(r2.z).x;
      r7.y = t3.Load(r6.z).x;
      r7.z = t3.Load(r6.w).x;
    } else {
      r2.xz = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r5.x = t2.Load(r2.x).x;
      r6.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r6.xyzw = mad((int4)r6.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r5.y = t2.Load(r6.x).x;
      r5.z = t2.Load(r6.y).x;
      r7.x = t2.Load(r2.z).x;
      r7.y = t2.Load(r6.z).x;
      r7.z = t2.Load(r6.w).x;
    }
    r2.xyz = r7.xyz + -r5.xyz;
    r2.xyz = r0.zzz * r2.xyz + r5.xyz;
    r5.xyz = cb1[4].xxx * cb1[0].xyz;
    r6.xyz = cb1[4].yyy * cb1[1].xyz;
    r6.xyz = r6.xyz * r2.yyy;
    r5.xyz = r5.xyz * r2.xxx + r6.xyz;
    r6.xyz = cb1[4].zzz * cb1[2].xyz;
    r5.xyz = r6.xyz * r2.zzz + r5.xyz;
    r2.xyz = cb3[12].xxx ? r5.xyz : r2.xyz;
    r3.w = dot(r2.xyz, r2.xyz);
    r3.w = rsqrt(r3.w);
    r2.xyz = r3.www * r2.xyz;
  } else {
    r5.xyz = cb0[67].xyz + -r1.xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = rsqrt(r3.w);
    r2.xyz = r5.xyz * r3.www;
  }
  r5.xyz = r2.zxy * r3.yzx;
  r5.xyz = r2.yzx * r3.zxy + -r5.xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r5.xyz * r3.www;
  r3.w = cmp(asint(cb2[0].z) == 2);
  r6.xyz = r3.www ? -r2.xyz : r5.xyz;
  if (r2.w != 0) {
    r2.xyz = r3.www ? r5.xyz : r2.xyz;
    r5.xy = asint(cb3[3].ww) & int2(0x80000000,0x7fffffff);
    if (r5.x != 0) {
      r5.xz = mad((int2)r5.yy, asint(cb2[0].xx), (int2)r0.xw);
      r2.w = t3.Load(r5.x).x;
      r3.w = t3.Load(r5.z).x;
    } else {
      r0.xw = mad((int2)r5.yy, asint(cb2[0].xx), (int2)r0.xw);
      r2.w = t2.Load(r0.x).x;
      r3.w = t2.Load(r0.w).x;
    }
    r0.x = r3.w + -r2.w;
    r0.x = r0.z * r0.x + r2.w;
    sincos(r0.x, r0.x, r5.x);
    r0.xzw = r0.xxx * r2.xyz;
    r6.xyz = r5.xxx * r6.xyz + r0.xzw;
  }
  r0.xzw = r6.yzx * r3.zxy;
  r0.xzw = r3.yzx * r6.zxy + -r0.xzw;
  r2.x = (int)v0.x & asint(cb3[9].y);
  r2.y = (int)r2.x * 5;
  r2.y = t4.Load(r2.y).x;
  r2.x = mad((int)r2.x, 5, 1);
  r2.x = t4.Load(r2.x).x;
  r0.xzw = r2.xxx * r0.xzw;
  r0.xzw = r6.xyz * r2.yyy + r0.xzw;
  r0.xzw = r0.xzw * r1.www + r1.xyz;
  r0.xzw = cb0[70].xyz + r0.xzw;
  r0.y = cb3[12].y * r0.y;
  r1.xyz = -r4.xyz * r0.yyy + r0.xzw;
  r2.xyzw = cb0[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r1.xyzw = cb0[1].xyzw * r0.zzzz;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}
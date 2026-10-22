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
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD6,
  out float3 o4 : TEXCOORD8)
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
  r2.xyz = cmp(asint(cb3[3].xzw) != int3(-1,-1,-1));
  if (r2.x != 0) {
    r1.zw = asint(cb3[3].xx) & int2(0x80000000,0x7fffffff);
    if (r1.z != 0) {
      r2.xw = mad((int2)r1.ww, asint(cb2[0].xx), (int2)r0.xw);
      r3.x = t3.Load(r2.x).x;
      r4.xyzw = (int4)r1.wwww + int4(1,2,1,2);
      r4.xyzw = mad((int4)r4.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r3.y = t3.Load(r4.x).x;
      r3.z = t3.Load(r4.y).x;
      r5.x = t3.Load(r2.w).x;
      r5.y = t3.Load(r4.z).x;
      r5.z = t3.Load(r4.w).x;
    } else {
      r2.xw = mad((int2)r1.ww, asint(cb2[0].xx), (int2)r0.xw);
      r3.x = t2.Load(r2.x).x;
      r4.xyzw = (int4)r1.wwww + int4(1,2,1,2);
      r4.xyzw = mad((int4)r4.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r3.y = t2.Load(r4.x).x;
      r3.z = t2.Load(r4.y).x;
      r5.x = t2.Load(r2.w).x;
      r5.y = t2.Load(r4.z).x;
      r5.z = t2.Load(r4.w).x;
    }
    r4.xyzw = t1.Load(r1.x).xyzw;
    r1.xyzw = t1.Load(r1.y).xyzw;
    r6.xyzw = r1.wxyz + -r4.wxyz;
    r1.w = r0.z * r0.z;
    r2.x = r1.w * r0.z;
    r2.w = 3 * r1.w;
    r3.w = r2.x * 2 + -r2.w;
    r3.w = 1 + r3.w;
    r4.w = -r1.w * 2 + r2.x;
    r0.y = r0.y * cb3[8].x + r4.w;
    r0.y = r6.x * r0.y;
    r7.xyz = r0.yyy * r4.xyz;
    r3.xyz = r3.www * r3.xyz + r7.xyz;
    r0.y = r1.w * r0.z + -r1.w;
    r0.y = r6.x * r0.y;
    r1.xyz = r0.yyy * r1.xyz + r3.xyz;
    r0.y = r2.x * -2 + r2.w;
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
  r2.xw = asint(cb3[3].zz) & int2(0x80000000,0x7fffffff);
  if (r2.x != 0) {
    r4.xy = mad((int2)r2.ww, asint(cb2[0].xx), (int2)r0.xw);
    r0.y = t3.Load(r4.x).x;
    r1.w = t3.Load(r4.y).x;
  } else {
    r2.xw = mad((int2)r2.ww, asint(cb2[0].xx), (int2)r0.xw);
    r0.y = t2.Load(r2.x).x;
    r1.w = t2.Load(r2.w).x;
  }
  r1.w = r1.w + -r0.y;
  r0.y = r0.z * r1.w + r0.y;
  r0.y = r2.y ? r0.y : 1;
  r1.w = cmp(asint(cb3[4].y) != -1);
  if (r1.w != 0) {
    r2.xy = asint(cb3[4].yy) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r2.xw = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t3.Load(r2.x).x;
      r5.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r5.xyzw = mad((int4)r5.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.y = t3.Load(r5.x).x;
      r4.z = t3.Load(r5.y).x;
      r6.x = t3.Load(r2.w).x;
      r6.y = t3.Load(r5.z).x;
      r6.z = t3.Load(r5.w).x;
    } else {
      r2.xw = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t2.Load(r2.x).x;
      r5.xyzw = (int4)r2.yyyy + int4(1,2,1,2);
      r5.xyzw = mad((int4)r5.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.y = t2.Load(r5.x).x;
      r4.z = t2.Load(r5.y).x;
      r6.x = t2.Load(r2.w).x;
      r6.y = t2.Load(r5.z).x;
      r6.z = t2.Load(r5.w).x;
    }
    r2.xyw = r6.xyz + -r4.xyz;
    r2.xyw = r0.zzz * r2.xyw + r4.xyz;
    r4.xyz = cb1[4].xxx * cb1[0].xyz;
    r5.xyz = cb1[4].yyy * cb1[1].xyz;
    r5.xyz = r5.xyz * r2.yyy;
    r4.xyz = r4.xyz * r2.xxx + r5.xyz;
    r5.xyz = cb1[4].zzz * cb1[2].xyz;
    r4.xyz = r5.xyz * r2.www + r4.xyz;
    r2.xyw = cb3[12].xxx ? r4.xyz : r2.xyw;
    r1.w = dot(r2.xyw, r2.xyw);
    r1.w = rsqrt(r1.w);
    r2.xyw = r2.xyw * r1.www;
  } else {
    r4.xyz = cb0[67].xyz + -r1.xyz;
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r1.w);
    r2.xyw = r4.xyz * r1.www;
  }
  r4.xyz = r2.wxy * r3.yzx;
  r4.xyz = r2.ywx * r3.zxy + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r1.w = cmp(asint(cb2[0].z) == 2);
  r5.xyz = r1.www ? r4.xyz : r2.xyw;
  r2.xyw = r1.www ? -r2.xyw : r4.xyz;
  if (r2.z != 0) {
    r4.xy = asint(cb3[3].ww) & int2(0x80000000,0x7fffffff);
    if (r4.x != 0) {
      r4.xz = mad((int2)r4.yy, asint(cb2[0].xx), (int2)r0.xw);
      r1.w = t3.Load(r4.x).x;
      r2.z = t3.Load(r4.z).x;
    } else {
      r0.xw = mad((int2)r4.yy, asint(cb2[0].xx), (int2)r0.xw);
      r1.w = t2.Load(r0.x).x;
      r2.z = t2.Load(r0.w).x;
    }
    r0.x = r2.z + -r1.w;
    r0.x = r0.z * r0.x + r1.w;
    sincos(r0.x, r0.x, r4.x);
    r4.yzw = r0.xxx * r5.xyz;
    r4.yzw = r4.xxx * r2.xyw + r4.yzw;
    r6.xyz = r4.xxx * r5.xyz;
    r5.xyz = -r0.xxx * r2.xyw + r6.xyz;
    r2.xyw = r4.yzw;
  }
  r0.xzw = r3.zxy * r2.ywx;
  r0.xzw = r3.yzx * r2.wxy + -r0.xzw;
  r1.w = cmp(asuint(cb2[0].w) >= 1);
  r4.xyz = r1.www ? r0.xzw : r5.xyz;
  r1.w = (int)v0.x & asint(cb3[9].y);
  r2.z = (int)r1.w * 5;
  r5.xyz = mad((int3)r1.www, int3(5,5,5), int3(2,3,1));
  r1.w = t4.Load(r5.x).x;
  r3.w = t4.Load(r5.y).x;
  r5.xyw = r2.xyw * r1.www;
  r4.xyz = r4.xyz * r3.www + r5.xyw;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyw = cb0[67].xyz + -r1.xyz;
  r1.w = dot(r5.xyw, r5.xyw);
  r1.w = rsqrt(r1.w);
  r5.xyw = r5.xyw * r1.www;
  r1.w = cmp(0 < asint(cb3[9].z));
  r3.w = dot(r5.xyw, r4.xyz);
  r3.w = cmp(r3.w < 0);
  r1.w = r1.w ? r3.w : 0;
  r1.w = r1.w ? -1 : 1;
  r4.xyz = r4.xyz * r1.www;
  r5.xyw = r4.zxy * r3.yzx;
  o0.xyz = r4.yzx * r3.zxy + -r5.xyw;
  r1.w = t4.Load(r2.z).x;
  r2.z = t4.Load(r5.z).x;
  r0.xzw = r2.zzz * r0.xzw;
  r0.xzw = r2.xyw * r1.www + r0.xzw;
  r0.xyz = r0.xzw * r0.yyy + r1.xyz;
  r0.xyz = cb0[70].xyz + r0.xyz;
  o0.w = 0;
  o1.xyz = r4.xyz;
  o1.w = 1;
  o3.xyz = r0.xyz;
  o3.w = 1;
  o2.xyz = r0.xyz;
  o4.xyz = r4.xyz;
  return;
}
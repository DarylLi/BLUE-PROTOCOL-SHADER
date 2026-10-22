// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

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
  out float4 o2 : TEXCOORD3,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r1.z = t2.Load(r1.x).x;
  r1.w = (int)r1.z * 7;
  r1.w = t3.Load(r1.w).x;
  r2.x = mad((int)r1.z, 7, 1);
  r2.x = t3.Load(r2.x).x;
  r2.yzw = cmp(asint(cb3[3].xzw) != int3(-1,-1,-1));
  if (r2.y != 0) {
    r3.xy = asint(cb3[3].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r3.xz = mad((int2)r3.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t5.Load(r3.x).x;
      r5.xyzw = (int4)r3.yyyy + int4(1,2,1,2);
      r5.xyzw = mad((int4)r5.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.y = t5.Load(r5.x).x;
      r4.z = t5.Load(r5.y).x;
      r3.x = t5.Load(r3.z).x;
      r3.z = t5.Load(r5.z).x;
      r3.w = t5.Load(r5.w).x;
    } else {
      r5.xy = mad((int2)r3.yy, asint(cb2[0].xx), (int2)r0.xw);
      r4.x = t4.Load(r5.x).x;
      r6.xyzw = (int4)r3.yyyy + int4(1,2,1,2);
      r6.xyzw = mad((int4)r6.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r4.y = t4.Load(r6.x).x;
      r4.z = t4.Load(r6.y).x;
      r3.x = t4.Load(r5.y).x;
      r3.z = t4.Load(r6.z).x;
      r3.w = t4.Load(r6.w).x;
    }
    r5.xyzw = t1.Load(r1.x).xyzw;
    r6.xyzw = t1.Load(r1.y).xyzw;
    r7.xyzw = r6.xyzw + -r5.xyzw;
    r1.y = r0.z * r0.z;
    r2.y = r1.y * r0.z;
    r3.y = 3 * r1.y;
    r4.w = r2.y * 2 + -r3.y;
    r4.w = 1 + r4.w;
    r6.w = -r1.y * 2 + r2.y;
    r6.w = r0.y * cb3[8].x + r6.w;
    r6.w = r7.w * r6.w;
    r8.xyz = r6.www * r5.xyz;
    r4.xyz = r4.www * r4.xyz + r8.xyz;
    r1.y = r1.y * r0.z + -r1.y;
    r1.y = r7.w * r1.y;
    r4.xyz = r1.yyy * r6.xyz + r4.xyz;
    r1.y = r2.y * -2 + r3.y;
    r3.xyz = r1.yyy * r3.xzw + r4.xyz;
    r4.xyz = cb1[1].xyz * r3.yyy;
    r4.xyz = cb1[0].xyz * r3.xxx + r4.xyz;
    r4.xyz = cb1[2].xyz * r3.zzz + r4.xyz;
    r4.xyz = cb1[3].xyz + r4.xyz;
    r3.xyz = cb3[12].xxx ? r4.xyz : r3.xyz;
    r4.xyzw = r0.zzzz * r7.wxyz + r5.wxyz;
    r5.xyz = cb1[4].xxx * cb1[0].xyz;
    r6.xyz = cb1[4].yyy * cb1[1].xyz;
    r6.xyz = r6.xyz * r4.zzz;
    r5.xyz = r5.xyz * r4.yyy + r6.xyz;
    r6.xyz = cb1[4].zzz * cb1[2].xyz;
    r5.xyz = r6.xyz * r4.www + r5.xyz;
    r4.yzw = cb3[12].xxx ? r5.xyz : r4.yzw;
    r1.y = dot(r4.yzw, r4.yzw);
    r1.y = rsqrt(r1.y);
    r4.yzw = r4.yzw * r1.yyy;
  } else {
    r4.xyzw = float4(0,0,0,0);
    r3.xyz = float3(0,0,0);
  }
  r5.xy = cmp(asint(cb3[6].zw) != int2(-1,-1));
  if (r5.x != 0) {
    r5.xz = asint(cb3[6].zz) & int2(0x80000000,0x7fffffff);
    if (r5.x != 0) {
      r5.xw = mad((int2)r5.zz, asint(cb2[0].xx), (int2)r0.xw);
      r1.y = t5.Load(r5.x).x;
      r2.y = t5.Load(r5.w).x;
    } else {
      r5.xz = mad((int2)r5.zz, asint(cb2[0].xx), (int2)r0.xw);
      r1.y = t4.Load(r5.x).x;
      r2.y = t4.Load(r5.z).x;
    }
    r2.y = r2.y + -r1.y;
    r1.y = r0.z * r2.y + r1.y;
  } else {
    r2.y = mad((int)r1.z, 7, 2);
    r2.y = t3.Load(r2.y).x;
    if (cb3[9].w == 0) {
      r1.z = mad((int)r1.z, 7, 6);
      r1.z = t3.Load(r1.z).x;
      r1.x = (int)-r1.z + (int)r1.x;
      r1.x = (uint)r1.x;
      r0.y = r0.y * cb3[8].x + r1.x;
      r1.y = r0.y * r2.y;
    } else {
      r1.xz = cmp(asint(cb3[9].ww) == int2(1,2));
      r0.y = (int)r1.z | (int)r1.x;
      if (r0.y != 0) {
        r1.y = r4.x * r2.y;
      } else {
        r0.y = cmp(asint(cb3[6].y) != -1);
        r1.x = cmp(asint(cb3[9].w) == 3);
        r0.y = r0.y ? r1.x : 0;
        if (r0.y != 0) {
          r1.xz = asint(cb3[6].yy) & int2(0x80000000,0x7fffffff);
          if (r1.x != 0) {
            r5.xz = mad((int2)r1.zz, asint(cb2[0].xx), (int2)r0.xw);
            r0.y = t5.Load(r5.x).x;
            r1.x = t5.Load(r5.z).x;
          } else {
            r5.xz = mad((int2)r1.zz, asint(cb2[0].xx), (int2)r0.xw);
            r0.y = t4.Load(r5.x).x;
            r1.x = t4.Load(r5.z).x;
          }
          r1.x = r1.x + -r0.y;
          r0.y = r0.z * r1.x + r0.y;
          r1.y = r0.y * r2.y;
        } else {
          r1.y = 0;
        }
      }
    }
  }
  if (r5.y != 0) {
    r1.xz = asint(cb3[6].ww) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r5.xy = mad((int2)r1.zz, asint(cb2[0].xx), (int2)r0.xw);
      r5.x = t5.Load(r5.x).x;
      r0.y = (int)r1.z + 1;
      r6.xy = mad((int2)r0.yy, asint(cb2[0].xx), (int2)r0.xw);
      r5.z = t5.Load(r6.x).x;
      r5.y = t5.Load(r5.y).x;
      r5.w = t5.Load(r6.y).x;
    } else {
      r6.xy = mad((int2)r1.zz, asint(cb2[0].xx), (int2)r0.xw);
      r5.x = t4.Load(r6.x).x;
      r0.y = (int)r1.z + 1;
      r1.xz = mad((int2)r0.yy, asint(cb2[0].xx), (int2)r0.xw);
      r5.z = t4.Load(r1.x).x;
      r5.y = t4.Load(r6.y).x;
      r5.w = t4.Load(r1.z).x;
    }
    r1.xz = r5.yw + -r5.xz;
    r1.xz = r0.zz * r1.xz + r5.xz;
    r0.y = (int)v0.x & asint(cb3[9].y);
    r0.y = mad((int)r0.y, 5, 4);
    r0.y = t6.Load(r0.y).x;
    r1.x = -r0.y * r1.x + 1;
    r0.y = r0.y * r1.z + r1.x;
  } else {
    r1.x = (int)v0.x & asint(cb3[9].y);
    r1.x = mad((int)r1.x, 5, 4);
    r0.y = t6.Load(r1.x).x;
  }
  o2.x = r1.y * r1.w + r2.x;
  o2.y = r0.y * cb3[11].x + cb3[11].y;
  r1.xy = asint(cb3[3].zz) & int2(0x80000000,0x7fffffff);
  if (r1.x != 0) {
    r1.xz = mad((int2)r1.yy, asint(cb2[0].xx), (int2)r0.xw);
    r0.y = t5.Load(r1.x).x;
    r1.x = t5.Load(r1.z).x;
  } else {
    r1.yz = mad((int2)r1.yy, asint(cb2[0].xx), (int2)r0.xw);
    r0.y = t4.Load(r1.y).x;
    r1.x = t4.Load(r1.z).x;
  }
  r1.x = r1.x + -r0.y;
  r0.y = r0.z * r1.x + r0.y;
  r0.y = r2.z ? r0.y : 1;
  r1.x = cmp(asint(cb3[4].y) != -1);
  if (r1.x != 0) {
    r1.xy = asint(cb3[4].yy) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r1.xz = mad((int2)r1.yy, asint(cb2[0].xx), (int2)r0.xw);
      r2.x = t5.Load(r1.x).x;
      r5.xyzw = (int4)r1.yyyy + int4(1,2,1,2);
      r5.xyzw = mad((int4)r5.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r2.y = t5.Load(r5.x).x;
      r2.z = t5.Load(r5.y).x;
      r1.x = t5.Load(r1.z).x;
      r1.z = t5.Load(r5.z).x;
      r1.w = t5.Load(r5.w).x;
    } else {
      r5.xy = mad((int2)r1.yy, asint(cb2[0].xx), (int2)r0.xw);
      r2.x = t4.Load(r5.x).x;
      r6.xyzw = (int4)r1.yyyy + int4(1,2,1,2);
      r6.xyzw = mad((int4)r6.xyzw, asint(cb2[0].xxxx), (int4)r0.xxww);
      r2.y = t4.Load(r6.x).x;
      r2.z = t4.Load(r6.y).x;
      r1.x = t4.Load(r5.y).x;
      r1.z = t4.Load(r6.z).x;
      r1.w = t4.Load(r6.w).x;
    }
    r1.xyz = r1.xzw + -r2.xyz;
    r1.xyz = r0.zzz * r1.xyz + r2.xyz;
    r2.xyz = cb1[4].xxx * cb1[0].xyz;
    r5.xyz = cb1[4].yyy * cb1[1].xyz;
    r5.xyz = r5.xyz * r1.yyy;
    r2.xyz = r2.xyz * r1.xxx + r5.xyz;
    r5.xyz = cb1[4].zzz * cb1[2].xyz;
    r2.xyz = r5.xyz * r1.zzz + r2.xyz;
    r1.xyz = cb3[12].xxx ? r2.xyz : r1.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
  } else {
    r2.xyz = cb0[67].xyz + -r3.xyz;
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r2.xyz * r1.www;
  }
  r2.xyz = r1.zxy * r4.zwy;
  r2.xyz = r1.yzx * r4.wyz + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = cmp(asint(cb2[0].z) == 2);
  r5.xyz = r1.www ? r2.xyz : r1.xyz;
  r1.xyz = r1.www ? -r1.xyz : r2.xyz;
  if (r2.w != 0) {
    r2.xy = asint(cb3[3].ww) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r2.xz = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r1.w = t5.Load(r2.x).x;
      r2.x = t5.Load(r2.z).x;
    } else {
      r0.xw = mad((int2)r2.yy, asint(cb2[0].xx), (int2)r0.xw);
      r1.w = t4.Load(r0.x).x;
      r2.x = t4.Load(r0.w).x;
    }
    r0.x = r2.x + -r1.w;
    r0.x = r0.z * r0.x + r1.w;
    sincos(r0.x, r0.x, r2.x);
    r2.yzw = r0.xxx * r5.xyz;
    r2.yzw = r2.xxx * r1.xyz + r2.yzw;
    r6.xyz = r2.xxx * r5.xyz;
    r5.xyz = -r0.xxx * r1.xyz + r6.xyz;
    r1.xyz = r2.yzw;
  }
  r0.xzw = r4.wyz * r1.yzx;
  r0.xzw = r4.zwy * r1.zxy + -r0.xzw;
  r1.w = cmp(asuint(cb2[0].w) >= 1);
  r2.xyz = r1.www ? r0.xzw : r5.xyz;
  r1.w = (int)v0.x & asint(cb3[9].y);
  r2.w = (int)r1.w * 5;
  r5.xyz = mad((int3)r1.www, int3(5,5,5), int3(2,3,1));
  r1.w = t6.Load(r5.x).x;
  r3.w = t6.Load(r5.y).x;
  r5.xyw = r1.xyz * r1.www;
  r2.xyz = r2.xyz * r3.www + r5.xyw;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r5.xyw = cb0[67].xyz + -r3.xyz;
  r1.w = dot(r5.xyw, r5.xyw);
  r1.w = rsqrt(r1.w);
  r5.xyw = r5.xyw * r1.www;
  r1.w = cmp(0 < asint(cb3[9].z));
  r3.w = dot(r5.xyw, r2.xyz);
  r3.w = cmp(r3.w < 0);
  r1.w = r1.w ? r3.w : 0;
  r1.w = r1.w ? -1 : 1;
  r2.xyz = r2.xyz * r1.www;
  r5.xyw = r2.zxy * r4.zwy;
  o0.xyz = r2.yzx * r4.wyz + -r5.xyw;
  r1.w = t6.Load(r2.w).x;
  r2.w = t6.Load(r5.z).x;
  r0.xzw = r2.www * r0.xzw;
  r0.xzw = r1.xyz * r1.www + r0.xzw;
  r0.xyz = r0.xzw * r0.yyy + r3.xyz;
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o3.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.w = 0;
  o1.xyz = r2.xyz;
  o1.w = 1;
  o2.zw = float2(0,0);
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[23];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[27];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float2 v7 : ATTRIBUTE7,
  uint v8 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : COLOR0,
  out float4 o5 : COLOR1,
  out float4 o6 : COLOR2,
  out float4 o7 : PARTICLE_VELOCITY0,
  out float4 o8 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v8.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v8.x;
  }
  r0.yz = cmp(asint(cb2[6].yz) == int2(-1,-1));
  if (r0.y != 0) {
    o5.xyzw = cb2[14].xyzw;
  }
  if (r0.y == 0) {
    r0.yw = asint(cb2[6].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r0.y = t1.Load(r0.y).x;
      r1.xyz = (int3)r0.www + int3(1,2,3);
      r1.xyz = mad((int3)r1.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r1.x = t1.Load(r1.x).x;
      r1.y = t1.Load(r1.y).x;
      r1.z = t1.Load(r1.z).x;
      o5.x = r0.y;
      o5.yzw = r1.xyz;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r0.y = t0.Load(r0.y).x;
      r1.xyz = (int3)r0.www + int3(1,2,3);
      r1.xyz = mad((int3)r1.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r0.w = t0.Load(r1.x).x;
      r1.x = t0.Load(r1.y).x;
      r1.y = t0.Load(r1.z).x;
      o5.xy = r0.yw;
      o5.zw = r1.xy;
    }
  }
  r0.yw = cmp(asint(cb2[5].wy) == int2(-1,-1));
  if (r0.y != 0) {
    r1.xyz = cb2[12].xyz;
  }
  if (r0.y == 0) {
    r2.xy = asint(cb2[5].ww) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r0.y = mad((int)r2.y, asint(cb2[26].x), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r2.xz = (int2)r2.yy + int2(1,2);
      r2.xz = mad((int2)r2.xz, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t1.Load(r2.x).x;
      r1.z = t1.Load(r2.z).x;
    } else {
      r0.y = mad((int)r2.y, asint(cb2[26].x), (int)r0.x);
      r1.x = t0.Load(r0.y).x;
      r2.xy = (int2)r2.yy + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t0.Load(r2.x).x;
      r1.z = t0.Load(r2.y).x;
    }
  }
  r0.y = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.y);
  r0.y = cmp(0 < r2.w);
  r1.xyz = r1.xyz / r2.www;
  r2.xyz = r0.yyy ? r1.xyz : 0;
  r1.xy = cmp(asint(cb2[7].zx) == int2(-1,-1));
  if (r1.x != 0) {
    r3.xyzw = cb2[19].xyzw;
  }
  if (r1.x == 0) {
    r1.xz = asint(cb2[7].zz) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r1.x = mad((int)r1.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r1.x).x;
      r4.xyz = (int3)r1.zzz + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r1.x = mad((int)r1.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r1.x).x;
      r1.xzw = (int3)r1.zzz + int3(1,2,3);
      r1.xzw = mad((int3)r1.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r1.x).x;
      r3.z = t0.Load(r1.z).x;
      r3.w = t0.Load(r1.w).x;
    }
  }
  if (r0.w != 0) {
    r1.xzw = cb2[10].xyz;
  }
  if (r0.w == 0) {
    r4.xy = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r4.x != 0) {
      r0.w = mad((int)r4.y, asint(cb2[26].x), (int)r0.x);
      r1.x = t1.Load(r0.w).x;
      r4.xz = (int2)r4.yy + int2(1,2);
      r4.xz = mad((int2)r4.xz, asint(cb2[26].xx), (int2)r0.xx);
      r1.z = t1.Load(r4.x).x;
      r1.w = t1.Load(r4.z).x;
    } else {
      r0.w = mad((int)r4.y, asint(cb2[26].x), (int)r0.x);
      r1.x = t0.Load(r0.w).x;
      r4.xy = (int2)r4.yy + int2(1,2);
      r4.xy = mad((int2)r4.xy, asint(cb2[26].xx), (int2)r0.xx);
      r1.z = t0.Load(r4.x).x;
      r1.w = t0.Load(r4.y).x;
    }
  }
  if (r0.z != 0) {
    r4.xyzw = cb2[15].xyzw;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r0.z).x;
      r5.xyz = (int3)r0.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t1.Load(r5.x).x;
      r4.z = t1.Load(r5.y).x;
      r4.w = t1.Load(r5.z).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r0.z).x;
      r5.xyz = (int3)r0.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t0.Load(r5.x).x;
      r4.z = t0.Load(r5.y).x;
      r4.w = t0.Load(r5.z).x;
    }
  }
  if (r1.y != 0) {
    r5.xyz = cb2[17].xyz;
  }
  if (r1.y == 0) {
    r0.zw = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.z).x;
      r6.xy = (int2)r0.ww + int2(1,2);
      r6.xy = mad((int2)r6.xy, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r6.x).x;
      r5.z = t1.Load(r6.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r0.z).x;
      r5.z = t0.Load(r0.w).x;
    }
  }
  r6.xyz = cb2[2].xyz * r5.xyz;
  r0.z = dot(r4.xyzw, r4.xyzw);
  r0.z = rsqrt(r0.z);
  r4.xyzw = r4.xyzw * r0.zzzz;
  r7.xyzw = r4.zzxy + r4.zzxy;
  r0.zw = r7.zw * r4.xy;
  r8.xyzw = r7.xyzw * r4.yzww;
  r1.y = r7.y * r4.w;
  r9.xyz = r4.yxx * r7.wzy + r8.yyw;
  r10.x = r4.x * r7.w + r1.y;
  r10.w = r4.x * r7.y + -r8.w;
  r11.x = r4.x * r7.w + -r1.y;
  r10.yz = float2(1,1) + -r9.yx;
  r11.z = r8.x + r8.z;
  r4.y = r4.y * r7.x + -r8.z;
  r0.z = r0.z + r0.w;
  r4.z = 1 + -r0.z;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r8.x = cb1[4].x * cb1[0].z;
      r8.y = cb1[4].y * cb1[1].z;
      r8.z = cb1[4].z * cb1[2].z;
      r8.xyz = cb2[0].xxx ? r8.xyz : float3(0,0,1);
      r7.xyz = r0.yyy ? r2.zxy : r8.zxy;
      r0.z = 1;
      break;
      case 2 :      r8.xyz = cb1[1].xyz * r1.zzz;
      r8.xyz = cb1[0].xyz * r1.xxx + r8.xyz;
      r8.xyz = cb1[2].xyz * r1.www + r8.xyz;
      r8.xyz = cb1[3].xyz + r8.xyz;
      r8.xyz = cb2[0].xxx ? r8.xyz : r1.xzw;
      r8.xyz = cb0[67].xyz + -r8.xyz;
      r0.y = dot(r8.xyz, r8.xyz);
      r0.y = rsqrt(r0.y);
      r8.xyz = r8.xyz * r0.yyy;
      r12.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r14.xyz = cb1[4].zzz * cb1[2].xyz;
      r12.x = dot(r8.xyz, r12.xyz);
      r12.y = dot(r8.xyz, r13.xyz);
      r12.z = dot(r8.xyz, r14.xyz);
      r7.xyz = cb2[0].xxx ? r12.zxy : r8.zxy;
      r0.z = 2;
      break;
      default :
      r8.xyz = cb1[4].xxx * cb1[0].xyz;
      r12.xyz = cb1[4].yyy * cb1[1].xyz;
      r13.xyz = cb1[4].zzz * cb1[2].xyz;
      r8.x = dot(-cb0[60].xyz, r8.xyz);
      r8.y = dot(-cb0[60].xyz, r12.xyz);
      r8.z = dot(-cb0[60].xyz, r13.xyz);
      r7.xyz = cb2[0].xxx ? r8.zxy : -cb0[60].zxy;
      r0.z = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r0.y = cmp(asint(cb2[0].x) != 0);
      r8.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.y;
      r1.y = r8.y ? r0.w : 0;
      r1.y = (int)r1.y | (int)r8.x;
      r0.y = r0.y ? r1.y : 0;
      r8.xyz = cb1[4].xxx * cb1[0].yzx;
      r12.xyz = cb1[4].yyy * cb1[1].yzx;
      r13.xyz = cb1[4].zzz * cb1[2].yzx;
      r14.z = dot(cb2[25].yzx, r8.xyz);
      r14.x = dot(cb2[25].yzx, r12.xyz);
      r14.y = dot(cb2[25].yzx, r13.xyz);
      r1.y = ~(int)r1.y;
      r0.w = (int)r0.w & (int)r1.y;
      r12.xyz = cb2[25].yyy * r12.xyz;
      r8.xyz = r8.xyz * cb2[25].xxx + r12.xyz;
      r8.xyz = r13.xyz * cb2[25].zzz + r8.xyz;
      r8.xyz = r0.www ? r8.xyz : cb2[25].yzx;
      r8.xyz = r0.yyy ? r14.xzy : r8.xzy;
      r0.y = dot(r7.zyx, r8.xyz);
      r0.y = cmp(0.99000001 < abs(r0.y));
      r0.w = cmp(0.99000001 < abs(r8.z));
      r12.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r12.xyz = r0.yyy ? r12.xyz : r7.yzx;
      r13.xyz = r12.xyz * r8.xzy;
      r12.xyz = r8.yxz * r12.yzx + -r13.xyz;
      r0.y = dot(r12.xyz, r12.xyz);
      r0.y = rsqrt(r0.y);
      r12.xyz = r12.xyz * r0.yyy;
      r13.xyz = r12.xyz * r8.xzy;
      r13.xyz = r12.zxy * r8.zyx + -r13.xyz;
      r14.x = r13.x;
      r14.y = r12.y;
      r14.z = r8.y;
      r15.x = r13.y;
      r15.y = r12.z;
      r15.z = r8.x;
      r8.x = r13.z;
      r8.y = r12.x;
    } else {
      r0.y = cmp((int)r0.z == 3);
      r0.z = cmp(0.99000001 < abs(r7.x));
      r0.w = cmp(0 < r7.x);
      r1.y = cmp(r7.x < 0);
      r0.w = (int)r0.w + (int)-r1.y;
      r0.w = (int)r0.w;
      r12.xyz = float3(1,0,0) * r0.www;
      r12.xyz = r0.zzz ? r12.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[61].xyz : r12.xyz;
      r12.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r16.xyz = cb1[4].zzz * cb1[2].xyz;
      r12.x = dot(r0.yzw, r12.xyz);
      r12.y = dot(r0.yzw, r13.xyz);
      r12.z = dot(r0.yzw, r16.xyz);
      r0.yzw = cb2[0].xxx ? r12.xyz : r0.yzw;
      r12.xyz = r0.yzw * r7.xyz;
      r0.yzw = r0.wyz * r7.yzx + -r12.xyz;
      r1.y = dot(r0.yzw, r0.yzw);
      r1.y = rsqrt(r1.y);
      r0.yzw = r1.yyy * r0.yzw;
      r12.xyz = r7.xyz * r0.yzw;
      r8.xyz = r7.zxy * r0.zwy + -r12.xyz;
      r14.x = r7.y;
      r14.y = r0.w;
      r14.z = r8.x;
      r15.x = r7.z;
      r15.y = r0.y;
      r15.z = r8.y;
      r8.x = r7.x;
      r8.y = r0.z;
    }
    r7.x = dot(r10.zxw, r14.xyz);
    r12.x = dot(r10.zxw, r15.xyz);
    r13.x = dot(r10.zxw, r8.xyz);
    r11.y = r10.y;
    r7.y = dot(r11.xyz, r14.xyz);
    r12.y = dot(r11.xyz, r15.xyz);
    r13.y = dot(r11.xyz, r8.xyz);
    r4.x = r9.z;
    r7.z = dot(r4.xyz, r14.xyz);
    r12.z = dot(r4.xyz, r15.xyz);
    r13.z = dot(r4.xyz, r8.xyz);
    r10.xyz = r12.xyz;
    r4.xyz = r13.xyz;
  } else {
    r7.xz = r9.xz * float2(-1,1) + float2(1,0);
    r7.y = r11.x;
    r10.z = r4.y;
    r4.x = r10.w;
    r4.y = r11.z;
  }
  r0.yzw = cb1[1].xyz * r1.zzz;
  r0.yzw = cb1[0].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb1[2].xyz * r1.www + r0.yzw;
  r0.yzw = cb1[3].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r1.xzw;
  r1.y = cmp(asint(cb2[9].y) == -1);
  if (r1.y != 0) {
    r4.w = cb2[23].w;
  }
  if (r1.y == 0) {
    r8.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r8.x != 0) {
      r1.y = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r4.w = t1.Load(r1.y).x;
    } else {
      r0.x = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r4.w = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[67].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r8.xyz = cb1[4].xxx * cb1[0].xyz;
  r9.xyz = cb1[4].yyy * cb1[1].xyz;
  r11.xyz = cb1[4].zzz * cb1[2].xyz;
  r8.x = dot(r0.xyz, r8.xyz);
  r8.y = dot(r0.xyz, r9.xyz);
  r8.z = dot(r0.xyz, r11.xyz);
  r0.xyz = cb2[0].xxx ? r8.xyz : r0.xyz;
  r0.xyz = r0.xyz * r4.www + r1.xzw;
  r1.xyz = cb2[1].xyz * r5.xyz;
  r5.x = dot(r1.xyz, r7.xyz);
  r5.y = dot(r1.xyz, r10.xyz);
  r5.z = dot(r1.xyz, r4.xyz);
  r1.xyz = r5.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r1.xyz;
  r1.xyz = r7.xyz * r6.xyz;
  r5.xyz = r10.xyz * r6.xyz;
  r6.xyz = r6.xyz * r4.xyz;
  if (cb2[0].x != 0) {
    r8.xyz = cb1[1].xyz * r5.xxx;
    r8.xyz = r1.xxx * cb1[0].xyz + r8.xyz;
    r8.xyz = r6.xxx * cb1[2].xyz + r8.xyz;
    r9.xyz = cb1[1].xyz * r5.yyy;
    r9.xyz = r1.yyy * cb1[0].xyz + r9.xyz;
    r9.xyz = r6.yyy * cb1[2].xyz + r9.xyz;
    r11.xyz = cb1[1].xyz * r5.zzz;
    r11.xyz = r1.zzz * cb1[0].xyz + r11.xyz;
    r6.xyz = r6.zzz * cb1[2].xyz + r11.xyz;
    r11.xyz = cb1[1].xyz * r0.yyy;
    r11.xyz = r0.xxx * cb1[0].xyz + r11.xyz;
    r11.xyz = r0.zzz * cb1[2].xyz + r11.xyz;
    r0.xyz = cb1[3].xyz + r11.xyz;
    r11.xyz = cb1[1].xyz * r10.xxx;
    r11.xyz = r7.xxx * cb1[0].xyz + r11.xyz;
    r11.xyz = r4.xxx * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r10.yyy;
    r12.xyz = r7.yyy * cb1[0].xyz + r12.xyz;
    r12.xyz = r4.yyy * cb1[2].xyz + r12.xyz;
    r13.xyz = cb1[1].xyz * r10.zzz;
    r13.xyz = r7.zzz * cb1[0].xyz + r13.xyz;
    r13.xyz = r4.zzz * cb1[2].xyz + r13.xyz;
    r11.xyz = cb1[4].xxx * r11.xyz;
    r12.xyz = cb1[4].yyy * r12.xyz;
    r4.xyz = cb1[4].zzz * r13.xyz;
    r1.x = r8.x;
    r1.y = r9.x;
    r1.z = r6.x;
    r5.x = r8.y;
    r5.y = r9.y;
    r5.z = r6.y;
    r6.x = r8.z;
    r6.y = r9.z;
    r7.x = r11.x;
    r7.y = r12.x;
    r7.z = r4.x;
    r10.x = r11.y;
    r10.y = r12.y;
    r10.z = r4.y;
    r4.x = r11.z;
    r4.y = r12.z;
  }
  if (cb2[1].w != 0) {
    r8.xyz = cb2[1].xyz + r0.xyz;
    r1.w = r8.x;
    r5.w = r8.y;
    r6.w = r8.z;
  } else {
    r1.w = r0.x;
    r5.w = r0.y;
    r6.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.y = dot(v0.xyzw, r5.xyzw);
  r0.z = dot(v0.xyzw, r6.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r8.x = v6.y;
  r8.yz = v7.xy;
  r9.x = dot(r8.xyz, r1.xyz);
  r9.y = dot(r8.xyz, r5.xyz);
  r9.z = dot(r8.xyz, r6.xyz);
  r8.xy = v5.xy;
  r8.z = v6.x;
  r1.x = dot(r8.xyz, r1.xyz);
  r1.y = dot(r8.xyz, r5.xyz);
  r1.z = dot(r8.xyz, r6.xyz);
  r0.w = cb0[142].z + cb0[142].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.25 * r0.w;
  r1.w = asint(cb2[4].w) & 1;
  r5.xyzw = r1.wwww ? r3.ywzx : float4(1,1,1,1);
  r0.w = dot(r0.ww, r5.xx);
  r1.w = saturate(r0.w);
  r6.xyz = r1.www * r9.xyz;
  r0.w = saturate(-1 + r0.w);
  r8.xyz = -r1.www * r9.xyz + r1.xyz;
  r6.xyz = r0.www * r8.xyz + r6.xyz;
  r0.w = cb0[142].z + r5.y;
  r0.w = r0.w / r5.z;
  r0.w = frac(r0.w);
  r1.w = 1 + r5.w;
  r4.w = r1.w * r0.w;
  r4.w = saturate(cb3[22].z * r4.w);
  r0.w = r0.w * r1.w + -r5.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r4.w * r0.w;
  r5.xyz = r6.xyz + -r1.xyz;
  r1.xyz = r0.www * r5.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r1.xyzw = v0.wwww * cb0[3].xyzw + r1.xyzw;
  o0.xy = cb0[364].xy * r1.zz + r1.xy;
  r5.xyz = v2.yzx * v1.xyz;
  r5.xyz = v2.xyz * v1.yzx + -r5.xyz;
  r5.xyz = v2.www * r5.xyz;
  r6.xyz = v2.yzx * r5.xyz;
  r5.xyz = r5.zxy * v2.zxy + -r6.xyz;
  r5.xyz = v2.www * r5.xyz;
  r6.x = dot(r5.xyz, r7.xyz);
  r6.y = dot(r5.xyz, r10.xyz);
  r6.z = dot(r5.xyz, r4.xyz);
  r5.x = dot(v2.xyz, r7.xyz);
  r5.y = dot(v2.xyz, r10.xyz);
  r5.z = dot(v2.xyz, r4.xyz);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r6.xyz * r0.www;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r5.xyz * r0.www;
  o2.w = cb1[4].w * v2.w;
  o0.zw = r1.zw;
  o1.w = 0;
  o3.xy = v4.xy;
  o3.zw = float2(0,0);
  o4.xyzw = v3.xyzw;
  o6.xyzw = r3.xyzw;
  o7.xyzw = r2.xyzw;
  o8.w = v0.w;
  o8.xyz = r0.xyz;
  return;
}
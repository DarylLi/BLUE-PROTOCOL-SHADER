// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  uint v5 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : PARTICLE_VELOCITY0,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v5.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v5.x;
  }
  r0.yz = cmp(asint(cb2[5].wy) == int2(-1,-1));
  if (r0.y != 0) {
    r1.xyz = cb2[12].xyz;
  }
  if (r0.y == 0) {
    r0.yw = asint(cb2[5].ww) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r2.xy = (int2)r0.ww + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t1.Load(r2.x).x;
      r1.z = t1.Load(r2.y).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t0.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t0.Load(r0.y).x;
      r1.z = t0.Load(r0.w).x;
    }
  }
  r0.y = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.y);
  r0.y = cmp(0 < r2.w);
  r1.xyz = r1.xyz / r2.www;
  r2.xyz = r0.yyy ? r1.xyz : 0;
  if (r0.z != 0) {
    r1.xyz = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t1.Load(r0.z).x;
      r3.xy = (int2)r0.ww + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t1.Load(r3.x).x;
      r1.z = t1.Load(r3.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r1.y = t0.Load(r0.z).x;
      r1.z = t0.Load(r0.w).x;
    }
  }
  r0.z = cmp(asint(cb2[6].z) == -1);
  if (r0.z != 0) {
    r3.xyzw = cb2[15].xyzw;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r0.z).x;
      r4.xyz = (int3)r0.www + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r0.z).x;
      r4.xyz = (int3)r0.www + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r4.x).x;
      r3.z = t0.Load(r4.y).x;
      r3.w = t0.Load(r4.z).x;
    }
  }
  r0.z = cmp(asint(cb2[7].x) == -1);
  if (r0.z != 0) {
    r4.xyz = cb2[17].xyz;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r0.z).x;
      r5.xy = (int2)r0.ww + int2(1,2);
      r5.xy = mad((int2)r5.xy, asint(cb2[26].xx), (int2)r0.xx);
      r4.y = t1.Load(r5.x).x;
      r4.z = t1.Load(r5.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r4.y = t0.Load(r0.z).x;
      r4.z = t0.Load(r0.w).x;
    }
  }
  r5.xyz = cb2[2].xyz * r4.xyz;
  r0.z = dot(r3.xyzw, r3.xyzw);
  r0.z = rsqrt(r0.z);
  r3.xyzw = r3.xyzw * r0.zzzz;
  r6.xyzw = r3.zzxy + r3.zzxy;
  r0.zw = r6.zw * r3.xy;
  r7.xyzw = r6.xyzw * r3.yzww;
  r1.w = r6.y * r3.w;
  r8.xyz = r3.yxx * r6.wzy + r7.yyw;
  r9.x = r3.x * r6.w + r1.w;
  r9.w = r3.x * r6.y + -r7.w;
  r10.x = r3.x * r6.w + -r1.w;
  r9.yz = float2(1,1) + -r8.yx;
  r10.z = r7.x + r7.z;
  r3.y = r3.y * r6.x + -r7.z;
  r0.z = r0.z + r0.w;
  r3.z = 1 + -r0.z;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r7.x = cb1[4].x * cb1[0].z;
      r7.y = cb1[4].y * cb1[1].z;
      r7.z = cb1[4].z * cb1[2].z;
      r7.xyz = cb2[0].xxx ? r7.xyz : float3(0,0,1);
      r6.xyz = r0.yyy ? r2.zxy : r7.zxy;
      r0.z = 1;
      break;
      case 2 :      r7.xyz = cb1[1].xyz * r1.yyy;
      r7.xyz = cb1[0].xyz * r1.xxx + r7.xyz;
      r7.xyz = cb1[2].xyz * r1.zzz + r7.xyz;
      r7.xyz = cb1[3].xyz + r7.xyz;
      r7.xyz = cb2[0].xxx ? r7.xyz : r1.xyz;
      r7.xyz = cb0[67].xyz + -r7.xyz;
      r0.y = dot(r7.xyz, r7.xyz);
      r0.y = rsqrt(r0.y);
      r7.xyz = r7.xyz * r0.yyy;
      r11.xyz = cb1[4].xxx * cb1[0].xyz;
      r12.xyz = cb1[4].yyy * cb1[1].xyz;
      r13.xyz = cb1[4].zzz * cb1[2].xyz;
      r11.x = dot(r7.xyz, r11.xyz);
      r11.y = dot(r7.xyz, r12.xyz);
      r11.z = dot(r7.xyz, r13.xyz);
      r6.xyz = cb2[0].xxx ? r11.zxy : r7.zxy;
      r0.z = 2;
      break;
      default :
      r7.xyz = cb1[4].xxx * cb1[0].xyz;
      r11.xyz = cb1[4].yyy * cb1[1].xyz;
      r12.xyz = cb1[4].zzz * cb1[2].xyz;
      r7.x = dot(-cb0[60].xyz, r7.xyz);
      r7.y = dot(-cb0[60].xyz, r11.xyz);
      r7.z = dot(-cb0[60].xyz, r12.xyz);
      r6.xyz = cb2[0].xxx ? r7.zxy : -cb0[60].zxy;
      r0.z = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r0.y = cmp(asint(cb2[0].x) != 0);
      r7.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.y;
      r1.w = r7.y ? r0.w : 0;
      r1.w = (int)r1.w | (int)r7.x;
      r0.y = r0.y ? r1.w : 0;
      r7.xyz = cb1[4].xxx * cb1[0].yzx;
      r11.xyz = cb1[4].yyy * cb1[1].yzx;
      r12.xyz = cb1[4].zzz * cb1[2].yzx;
      r13.z = dot(cb2[25].yzx, r7.xyz);
      r13.x = dot(cb2[25].yzx, r11.xyz);
      r13.y = dot(cb2[25].yzx, r12.xyz);
      r1.w = ~(int)r1.w;
      r0.w = (int)r0.w & (int)r1.w;
      r11.xyz = cb2[25].yyy * r11.xyz;
      r7.xyz = r7.xyz * cb2[25].xxx + r11.xyz;
      r7.xyz = r12.xyz * cb2[25].zzz + r7.xyz;
      r7.xyz = r0.www ? r7.xyz : cb2[25].yzx;
      r7.xyz = r0.yyy ? r13.xzy : r7.xzy;
      r0.y = dot(r6.zyx, r7.xyz);
      r0.y = cmp(0.99000001 < abs(r0.y));
      r0.w = cmp(0.99000001 < abs(r7.z));
      r11.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r11.xyz = r0.yyy ? r11.xyz : r6.yzx;
      r12.xyz = r11.xyz * r7.xzy;
      r11.xyz = r7.yxz * r11.yzx + -r12.xyz;
      r0.y = dot(r11.xyz, r11.xyz);
      r0.y = rsqrt(r0.y);
      r11.xyz = r11.xyz * r0.yyy;
      r12.xyz = r11.xyz * r7.xzy;
      r12.xyz = r11.zxy * r7.zyx + -r12.xyz;
      r13.x = r12.x;
      r13.y = r11.y;
      r13.z = r7.y;
      r14.x = r12.y;
      r14.y = r11.z;
      r14.z = r7.x;
      r7.x = r12.z;
      r7.y = r11.x;
    } else {
      r0.y = cmp((int)r0.z == 3);
      r0.z = cmp(0.99000001 < abs(r6.x));
      r0.w = cmp(0 < r6.x);
      r1.w = cmp(r6.x < 0);
      r0.w = (int)r0.w + (int)-r1.w;
      r0.w = (int)r0.w;
      r11.xyz = float3(1,0,0) * r0.www;
      r11.xyz = r0.zzz ? r11.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[61].xyz : r11.xyz;
      r11.xyz = cb1[4].xxx * cb1[0].xyz;
      r12.xyz = cb1[4].yyy * cb1[1].xyz;
      r15.xyz = cb1[4].zzz * cb1[2].xyz;
      r11.x = dot(r0.yzw, r11.xyz);
      r11.y = dot(r0.yzw, r12.xyz);
      r11.z = dot(r0.yzw, r15.xyz);
      r0.yzw = cb2[0].xxx ? r11.xyz : r0.yzw;
      r11.xyz = r0.yzw * r6.xyz;
      r0.yzw = r0.wyz * r6.yzx + -r11.xyz;
      r1.w = dot(r0.yzw, r0.yzw);
      r1.w = rsqrt(r1.w);
      r0.yzw = r1.www * r0.yzw;
      r11.xyz = r6.xyz * r0.yzw;
      r7.xyz = r6.zxy * r0.zwy + -r11.xyz;
      r13.x = r6.y;
      r13.y = r0.w;
      r13.z = r7.x;
      r14.x = r6.z;
      r14.y = r0.y;
      r14.z = r7.y;
      r7.x = r6.x;
      r7.y = r0.z;
    }
    r6.x = dot(r9.zxw, r13.xyz);
    r11.x = dot(r9.zxw, r14.xyz);
    r12.x = dot(r9.zxw, r7.xyz);
    r10.y = r9.y;
    r6.y = dot(r10.xyz, r13.xyz);
    r11.y = dot(r10.xyz, r14.xyz);
    r12.y = dot(r10.xyz, r7.xyz);
    r3.x = r8.z;
    r6.z = dot(r3.xyz, r13.xyz);
    r11.z = dot(r3.xyz, r14.xyz);
    r12.z = dot(r3.xyz, r7.xyz);
    r9.xyz = r11.xyz;
    r3.xyz = r12.xyz;
  } else {
    r6.xz = r8.xz * float2(-1,1) + float2(1,0);
    r6.y = r10.x;
    r9.z = r3.y;
    r3.x = r9.w;
    r3.y = r10.z;
  }
  r0.yzw = cb1[1].xyz * r1.yyy;
  r0.yzw = cb1[0].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb1[2].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb1[3].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r1.xyz;
  r1.w = cmp(asint(cb2[9].y) == -1);
  if (r1.w != 0) {
    r3.w = cb2[23].w;
  }
  if (r1.w == 0) {
    r7.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r7.x != 0) {
      r1.w = mad((int)r7.y, asint(cb2[26].x), (int)r0.x);
      r3.w = t1.Load(r1.w).x;
    } else {
      r0.x = mad((int)r7.y, asint(cb2[26].x), (int)r0.x);
      r3.w = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[67].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r7.xyz = cb1[4].xxx * cb1[0].xyz;
  r8.xyz = cb1[4].yyy * cb1[1].xyz;
  r10.xyz = cb1[4].zzz * cb1[2].xyz;
  r7.x = dot(r0.xyz, r7.xyz);
  r7.y = dot(r0.xyz, r8.xyz);
  r7.z = dot(r0.xyz, r10.xyz);
  r0.xyz = cb2[0].xxx ? r7.xyz : r0.xyz;
  r0.xyz = r0.xyz * r3.www + r1.xyz;
  r1.xyz = cb2[1].xyz * r4.xyz;
  r4.x = dot(r1.xyz, r6.xyz);
  r4.y = dot(r1.xyz, r9.xyz);
  r4.z = dot(r1.xyz, r3.xyz);
  r1.xyz = r4.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r1.xyz;
  r1.xyz = r6.xyz * r5.xyz;
  r4.xyz = r9.xyz * r5.xyz;
  r5.xyz = r5.xyz * r3.xyz;
  if (cb2[0].x != 0) {
    r7.xyz = cb1[1].xyz * r4.xxx;
    r7.xyz = r1.xxx * cb1[0].xyz + r7.xyz;
    r7.xyz = r5.xxx * cb1[2].xyz + r7.xyz;
    r8.xyz = cb1[1].xyz * r4.yyy;
    r8.xyz = r1.yyy * cb1[0].xyz + r8.xyz;
    r8.xyz = r5.yyy * cb1[2].xyz + r8.xyz;
    r10.xyz = cb1[1].xyz * r4.zzz;
    r10.xyz = r1.zzz * cb1[0].xyz + r10.xyz;
    r5.xyz = r5.zzz * cb1[2].xyz + r10.xyz;
    r10.xyz = cb1[1].xyz * r0.yyy;
    r10.xyz = r0.xxx * cb1[0].xyz + r10.xyz;
    r10.xyz = r0.zzz * cb1[2].xyz + r10.xyz;
    r0.xyz = cb1[3].xyz + r10.xyz;
    r10.xyz = cb1[1].xyz * r9.xxx;
    r10.xyz = r6.xxx * cb1[0].xyz + r10.xyz;
    r10.xyz = r3.xxx * cb1[2].xyz + r10.xyz;
    r11.xyz = cb1[1].xyz * r9.yyy;
    r11.xyz = r6.yyy * cb1[0].xyz + r11.xyz;
    r11.xyz = r3.yyy * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r9.zzz;
    r12.xyz = r6.zzz * cb1[0].xyz + r12.xyz;
    r12.xyz = r3.zzz * cb1[2].xyz + r12.xyz;
    r10.xyz = cb1[4].xxx * r10.xyz;
    r11.xyz = cb1[4].yyy * r11.xyz;
    r3.xyz = cb1[4].zzz * r12.xyz;
    r1.x = r7.x;
    r1.y = r8.x;
    r1.z = r5.x;
    r4.x = r7.y;
    r4.y = r8.y;
    r4.z = r5.y;
    r5.x = r7.z;
    r5.y = r8.z;
    r6.x = r10.x;
    r6.y = r11.x;
    r6.z = r3.x;
    r9.x = r10.y;
    r9.y = r11.y;
    r9.z = r3.y;
    r3.x = r10.z;
    r3.y = r11.z;
  }
  if (cb2[1].w != 0) {
    r7.xyz = cb2[1].xyz + r0.xyz;
    r1.w = r7.x;
    r4.w = r7.y;
    r5.w = r7.z;
  } else {
    r1.w = r0.x;
    r4.w = r0.y;
    r5.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.y = dot(v0.xyzw, r4.xyzw);
  r0.z = dot(v0.xyzw, r5.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o4.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.x = dot(r0.xyz, r6.xyz);
  r1.y = dot(r0.xyz, r9.xyz);
  r1.z = dot(r0.xyz, r3.xyz);
  r0.x = dot(v2.xyz, r6.xyz);
  r0.y = dot(v2.xyz, r9.xyz);
  r0.z = dot(v2.xyz, r3.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o0.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb1[4].w * v2.w;
  o0.w = 0;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o3.xyzw = r2.xyzw;
  return;
}
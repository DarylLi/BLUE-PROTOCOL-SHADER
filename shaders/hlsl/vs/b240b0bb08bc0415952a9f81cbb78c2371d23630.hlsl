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
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
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
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : COLOR0,
  out float4 o7 : COLOR1,
  out float4 o8 : COLOR2,
  out float4 o9 : PARTICLE_VELOCITY0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v8.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v8.x;
  }
  r1.xyzw = cmp(asint(cb2[6].yzxw) == int4(-1,-1,-1,-1));
  if (r1.x != 0) {
    o7.xyzw = cb2[14].xyzw;
  }
  if (r1.x == 0) {
    r0.yz = asint(cb2[6].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r0.y = t1.Load(r0.y).x;
      r2.xyz = (int3)r0.zzz + int3(1,2,3);
      r2.xyz = mad((int3)r2.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r0.w = t1.Load(r2.x).x;
      r1.x = t1.Load(r2.y).x;
      r2.x = t1.Load(r2.z).x;
      o7.xy = r0.yw;
      o7.z = r1.x;
      o7.w = r2.x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r0.y = t0.Load(r0.y).x;
      r2.xyz = (int3)r0.zzz + int3(1,2,3);
      r2.xyz = mad((int3)r2.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r0.z = t0.Load(r2.x).x;
      r0.w = t0.Load(r2.y).x;
      r1.x = t0.Load(r2.z).x;
      o7.xyz = r0.yzw;
      o7.w = r1.x;
    }
  }
  r0.yzw = cmp(asint(cb2[5].wyz) == int3(-1,-1,-1));
  if (r0.y != 0) {
    r2.xyz = cb2[12].xyz;
  }
  if (r0.y == 0) {
    r3.xy = asint(cb2[5].ww) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.y = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r3.xz = (int2)r3.yy + int2(1,2);
      r3.xz = mad((int2)r3.xz, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r3.x).x;
      r2.z = t1.Load(r3.z).x;
    } else {
      r0.y = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r3.x).x;
      r2.z = t0.Load(r3.y).x;
    }
  }
  r0.y = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r0.y);
  r0.y = cmp(0 < r3.w);
  r2.xyz = r2.xyz / r3.www;
  r3.xyz = r0.yyy ? r2.xyz : 0;
  r2.xyz = cmp(asint(cb2[7].zxy) == int3(-1,-1,-1));
  if (r2.x != 0) {
    r4.xyzw = cb2[19].xyzw;
  }
  if (r2.x == 0) {
    r2.xw = asint(cb2[7].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r1.x = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r1.x).x;
      r5.xyz = (int3)r2.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t1.Load(r5.x).x;
      r4.z = t1.Load(r5.y).x;
      r4.w = t1.Load(r5.z).x;
    } else {
      r1.x = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r1.x).x;
      r5.xyz = (int3)r2.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t0.Load(r5.x).x;
      r4.z = t0.Load(r5.y).x;
      r4.w = t0.Load(r5.z).x;
    }
  }
  if (r0.z != 0) {
    r5.xyz = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r2.xw = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r0.z = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.z).x;
      r6.xy = (int2)r2.ww + int2(1,2);
      r6.xy = mad((int2)r6.xy, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r6.x).x;
      r5.z = t1.Load(r6.y).x;
    } else {
      r0.z = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.z).x;
      r2.xw = (int2)r2.ww + int2(1,2);
      r2.xw = mad((int2)r2.xw, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r2.x).x;
      r5.z = t0.Load(r2.w).x;
    }
  }
  if (r1.y != 0) {
    r6.xyzw = cb2[15].xyzw;
  }
  if (r1.y == 0) {
    r1.xy = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r0.z = mad((int)r1.y, asint(cb2[26].x), (int)r0.x);
      r6.x = t1.Load(r0.z).x;
      r7.xyz = (int3)r1.yyy + int3(1,2,3);
      r7.xyz = mad((int3)r7.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r6.y = t1.Load(r7.x).x;
      r6.z = t1.Load(r7.y).x;
      r6.w = t1.Load(r7.z).x;
    } else {
      r0.z = mad((int)r1.y, asint(cb2[26].x), (int)r0.x);
      r6.x = t0.Load(r0.z).x;
      r7.xyz = (int3)r1.yyy + int3(1,2,3);
      r7.xyz = mad((int3)r7.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r6.y = t0.Load(r7.x).x;
      r6.z = t0.Load(r7.y).x;
      r6.w = t0.Load(r7.z).x;
    }
  }
  if (r2.y != 0) {
    r7.xyz = cb2[17].xyz;
  }
  if (r2.y == 0) {
    r1.xy = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r0.z = mad((int)r1.y, asint(cb2[26].x), (int)r0.x);
      r7.x = t1.Load(r0.z).x;
      r2.xy = (int2)r1.yy + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t1.Load(r2.x).x;
      r7.z = t1.Load(r2.y).x;
    } else {
      r0.z = mad((int)r1.y, asint(cb2[26].x), (int)r0.x);
      r7.x = t0.Load(r0.z).x;
      r1.xy = (int2)r1.yy + int2(1,2);
      r1.xy = mad((int2)r1.xy, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t0.Load(r1.x).x;
      r7.z = t0.Load(r1.y).x;
    }
  }
  r2.xyw = cb2[2].xyz * r7.xyz;
  r0.z = dot(r6.xyzw, r6.xyzw);
  r0.z = rsqrt(r0.z);
  r6.xyzw = r6.xyzw * r0.zzzz;
  r8.xyzw = r6.zzxy + r6.zzxy;
  r1.xy = r8.zw * r6.xy;
  r9.xyzw = r8.xyzw * r6.yzww;
  r0.z = r8.y * r6.w;
  r10.xyz = r6.yxx * r8.wzy + r9.yyw;
  r11.x = r6.x * r8.w + r0.z;
  r11.w = r6.x * r8.y + -r9.w;
  r12.x = r6.x * r8.w + -r0.z;
  r11.yz = float2(1,1) + -r10.yx;
  r12.z = r9.x + r9.z;
  r6.y = r6.y * r8.x + -r9.z;
  r0.z = r1.x + r1.y;
  r6.z = 1 + -r0.z;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r9.x = cb1[4].x * cb1[0].z;
      r9.y = cb1[4].y * cb1[1].z;
      r9.z = cb1[4].z * cb1[2].z;
      r9.xyz = cb2[0].xxx ? r9.xyz : float3(0,0,1);
      r8.xyz = r0.yyy ? r3.zxy : r9.zxy;
      r0.z = 1;
      break;
      case 2 :      r9.xyz = cb1[1].xyz * r5.yyy;
      r9.xyz = cb1[0].xyz * r5.xxx + r9.xyz;
      r9.xyz = cb1[2].xyz * r5.zzz + r9.xyz;
      r9.xyz = cb1[3].xyz + r9.xyz;
      r9.xyz = cb2[0].xxx ? r9.xyz : r5.xyz;
      r9.xyz = cb0[67].xyz + -r9.xyz;
      r0.y = dot(r9.xyz, r9.xyz);
      r0.y = rsqrt(r0.y);
      r9.xyz = r9.xyz * r0.yyy;
      r13.xyz = cb1[4].xxx * cb1[0].xyz;
      r14.xyz = cb1[4].yyy * cb1[1].xyz;
      r15.xyz = cb1[4].zzz * cb1[2].xyz;
      r13.x = dot(r9.xyz, r13.xyz);
      r13.y = dot(r9.xyz, r14.xyz);
      r13.z = dot(r9.xyz, r15.xyz);
      r8.xyz = cb2[0].xxx ? r13.zxy : r9.zxy;
      r0.z = 2;
      break;
      default :
      r9.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r14.xyz = cb1[4].zzz * cb1[2].xyz;
      r9.x = dot(-cb0[60].xyz, r9.xyz);
      r9.y = dot(-cb0[60].xyz, r13.xyz);
      r9.z = dot(-cb0[60].xyz, r14.xyz);
      r8.xyz = cb2[0].xxx ? r9.zxy : -cb0[60].zxy;
      r0.z = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r0.y = cmp(asint(cb2[0].x) != 0);
      r1.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r5.w = ~(int)r0.y;
      r1.y = r1.y ? r5.w : 0;
      r1.x = (int)r1.y | (int)r1.x;
      r0.y = r0.y ? r1.x : 0;
      r9.xyz = cb1[4].xxx * cb1[0].yzx;
      r13.xyz = cb1[4].yyy * cb1[1].yzx;
      r14.xyz = cb1[4].zzz * cb1[2].yzx;
      r15.z = dot(cb2[25].yzx, r9.xyz);
      r15.x = dot(cb2[25].yzx, r13.xyz);
      r15.y = dot(cb2[25].yzx, r14.xyz);
      r1.x = ~(int)r1.x;
      r1.x = r1.x ? r5.w : 0;
      r13.xyz = cb2[25].yyy * r13.xyz;
      r9.xyz = r9.xyz * cb2[25].xxx + r13.xyz;
      r9.xyz = r14.xyz * cb2[25].zzz + r9.xyz;
      r9.xyz = r1.xxx ? r9.xyz : cb2[25].yzx;
      r9.xyz = r0.yyy ? r15.xzy : r9.xzy;
      r0.y = dot(r8.zyx, r9.xyz);
      r0.y = cmp(0.99000001 < abs(r0.y));
      r1.x = cmp(0.99000001 < abs(r9.z));
      r13.xyz = r1.xxx ? float3(1,0,0) : float3(0,0,1);
      r13.xyz = r0.yyy ? r13.xyz : r8.yzx;
      r14.xyz = r13.xyz * r9.xzy;
      r13.xyz = r9.yxz * r13.yzx + -r14.xyz;
      r0.y = dot(r13.xyz, r13.xyz);
      r0.y = rsqrt(r0.y);
      r13.xyz = r13.xyz * r0.yyy;
      r14.xyz = r13.xyz * r9.xzy;
      r14.xyz = r13.zxy * r9.zyx + -r14.xyz;
      r15.x = r14.x;
      r15.y = r13.y;
      r15.z = r9.y;
      r16.x = r14.y;
      r16.y = r13.z;
      r16.z = r9.x;
      r9.x = r14.z;
      r9.y = r13.x;
    } else {
      r0.y = cmp((int)r0.z == 3);
      r1.x = cmp(0.99000001 < abs(r8.x));
      r1.y = cmp(0 < r8.x);
      r5.w = cmp(r8.x < 0);
      r1.y = (int)r1.y + (int)-r5.w;
      r1.y = (int)r1.y;
      r13.xyz = float3(1,0,0) * r1.yyy;
      r13.xyz = r1.xxx ? r13.xyz : float3(0,0,1);
      r13.xyz = r0.yyy ? cb0[61].xyz : r13.xyz;
      r14.xyz = cb1[4].xxx * cb1[0].xyz;
      r17.xyz = cb1[4].yyy * cb1[1].xyz;
      r18.xyz = cb1[4].zzz * cb1[2].xyz;
      r14.x = dot(r13.xyz, r14.xyz);
      r14.y = dot(r13.xyz, r17.xyz);
      r14.z = dot(r13.xyz, r18.xyz);
      r13.xyz = cb2[0].xxx ? r14.xyz : r13.xyz;
      r14.xyz = r13.xyz * r8.xyz;
      r13.xyz = r13.zxy * r8.yzx + -r14.xyz;
      r0.y = dot(r13.xyz, r13.xyz);
      r0.y = rsqrt(r0.y);
      r13.xyz = r13.xyz * r0.yyy;
      r14.xyz = r13.xyz * r8.xyz;
      r9.xyz = r8.zxy * r13.yzx + -r14.xyz;
      r15.x = r8.y;
      r15.y = r13.z;
      r15.z = r9.x;
      r16.x = r8.z;
      r16.y = r13.x;
      r16.z = r9.y;
      r9.x = r8.x;
      r9.y = r13.y;
    }
    r8.x = dot(r11.zxw, r15.xyz);
    r13.x = dot(r11.zxw, r16.xyz);
    r14.x = dot(r11.zxw, r9.xyz);
    r12.y = r11.y;
    r8.y = dot(r12.xyz, r15.xyz);
    r13.y = dot(r12.xyz, r16.xyz);
    r14.y = dot(r12.xyz, r9.xyz);
    r6.x = r10.z;
    r8.z = dot(r6.xyz, r15.xyz);
    r13.z = dot(r6.xyz, r16.xyz);
    r14.z = dot(r6.xyz, r9.xyz);
    r11.xyz = r13.xyz;
    r6.xyz = r14.xyz;
  } else {
    r8.xz = r10.xz * float2(-1,1) + float2(1,0);
    r8.y = r12.x;
    r11.z = r6.y;
    r6.x = r11.w;
    r6.y = r12.z;
    r0.z = 0;
  }
  r9.xyz = cb1[1].xyz * r5.yyy;
  r9.xyz = cb1[0].xyz * r5.xxx + r9.xyz;
  r9.xyz = cb1[2].xyz * r5.zzz + r9.xyz;
  r9.xyz = cb1[3].xyz + r9.xyz;
  r9.xyz = cb2[0].xxx ? r9.xyz : r5.xyz;
  r1.xy = cmp(asint(cb2[9].yz) == int2(-1,-1));
  if (r1.x != 0) {
    r0.y = cb2[23].w;
  }
  if (r1.x == 0) {
    r10.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r10.x != 0) {
      r1.x = mad((int)r10.y, asint(cb2[26].x), (int)r0.x);
      r0.y = t1.Load(r1.x).x;
    } else {
      r1.x = mad((int)r10.y, asint(cb2[26].x), (int)r0.x);
      r0.y = t0.Load(r1.x).x;
    }
  }
  r9.xyz = cb0[67].xyz + -r9.xyz;
  r1.x = dot(r9.xyz, r9.xyz);
  r1.x = rsqrt(r1.x);
  r9.xyz = r9.xyz * r1.xxx;
  r10.xyz = cb1[4].xxx * cb1[0].xyz;
  r12.xyz = cb1[4].yyy * cb1[1].xyz;
  r13.xyz = cb1[4].zzz * cb1[2].xyz;
  r10.x = dot(r9.xyz, r10.xyz);
  r10.y = dot(r9.xyz, r12.xyz);
  r10.z = dot(r9.xyz, r13.xyz);
  r9.xyz = cb2[0].xxx ? r10.xyz : r9.xyz;
  r5.xyz = r9.xyz * r0.yyy + r5.xyz;
  r7.xyz = cb2[1].xyz * r7.xyz;
  r9.x = dot(r7.xyz, r8.xyz);
  r9.y = dot(r7.xyz, r11.xyz);
  r9.z = dot(r7.xyz, r6.xyz);
  r7.xyz = r9.xyz + r5.xyz;
  r5.xyz = cb2[1].www ? r5.xyz : r7.xyz;
  r7.xyz = r8.xyz * r2.xyw;
  r9.xyz = r11.xyz * r2.xyw;
  r10.xyz = r6.xyz * r2.xyw;
  if (r1.z != 0) {
    r2.xyw = cb2[13].xyz;
  }
  if (r1.z == 0) {
    r1.xz = asint(cb2[6].xx) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r0.y = mad((int)r1.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r12.xy = (int2)r1.zz + int2(1,2);
      r12.xy = mad((int2)r12.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r12.x).x;
      r2.w = t1.Load(r12.y).x;
    } else {
      r0.y = mad((int)r1.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r1.xz = (int2)r1.zz + int2(1,2);
      r1.xz = mad((int2)r1.xz, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r1.x).x;
      r2.w = t0.Load(r1.z).x;
    }
  }
  if (r0.w != 0) {
    r12.xyz = cb2[11].xyz;
  }
  if (r0.w == 0) {
    r0.yw = asint(cb2[5].zz) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r12.x = t1.Load(r0.y).x;
      r1.xz = (int2)r0.ww + int2(1,2);
      r1.xz = mad((int2)r1.xz, asint(cb2[26].xx), (int2)r0.xx);
      r12.y = t1.Load(r1.x).x;
      r12.z = t1.Load(r1.z).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r12.x = t0.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb2[26].xx), (int2)r0.xx);
      r12.y = t0.Load(r0.y).x;
      r12.z = t0.Load(r0.w).x;
    }
  }
  if (r1.w != 0) {
    r13.xyzw = cb2[16].xyzw;
  }
  if (r1.w == 0) {
    r0.yw = asint(cb2[6].ww) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r13.x = t1.Load(r0.y).x;
      r1.xzw = (int3)r0.www + int3(1,2,3);
      r1.xzw = mad((int3)r1.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r13.y = t1.Load(r1.x).x;
      r13.z = t1.Load(r1.z).x;
      r13.w = t1.Load(r1.w).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r13.x = t0.Load(r0.y).x;
      r1.xzw = (int3)r0.www + int3(1,2,3);
      r1.xzw = mad((int3)r1.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r13.y = t0.Load(r1.x).x;
      r13.z = t0.Load(r1.z).x;
      r13.w = t0.Load(r1.w).x;
    }
  }
  if (r2.z != 0) {
    r1.xzw = cb2[18].xyz;
  }
  if (r2.z == 0) {
    r0.yw = asint(cb2[7].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r14.xy = (int2)r0.ww + int2(1,2);
      r14.xy = mad((int2)r14.xy, asint(cb2[26].xx), (int2)r0.xx);
      r1.z = t1.Load(r14.x).x;
      r1.w = t1.Load(r14.y).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r1.x = t0.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb2[26].xx), (int2)r0.xx);
      r1.z = t0.Load(r0.y).x;
      r1.w = t0.Load(r0.w).x;
    }
  }
  r14.xyz = cb2[2].xyz * r1.xzw;
  r0.y = dot(r13.xyzw, r13.xyzw);
  r0.y = rsqrt(r0.y);
  r13.xyzw = r13.xyzw * r0.yyyy;
  r15.xyzw = r13.zzxy + r13.zzxy;
  r0.yw = r15.zw * r13.xy;
  r16.xyzw = r15.xyzw * r13.yzww;
  r2.z = r15.y * r13.w;
  r17.xyz = r13.yxx * r15.wzy + r16.yyw;
  r18.x = r13.x * r15.w + r2.z;
  r18.w = r13.x * r15.y + -r16.w;
  r19.x = r13.x * r15.w + -r2.z;
  r18.yz = float2(1,1) + -r17.yx;
  r19.z = r16.x + r16.z;
  r13.y = r13.y * r15.x + -r16.z;
  r0.y = r0.y + r0.w;
  r13.z = 1 + -r0.y;
  if (r0.z != 0) {
    switch (r0.z) {
      case 1 :      r0.y = dot(r2.xyw, r2.xyw);
      r0.y = sqrt(r0.y);
      r0.w = cmp(0 < r0.y);
      r2.xyz = r2.xyw / r0.yyy;
      r2.xyz = r0.www ? r2.xyz : 0;
      r16.x = cb1[10].z * cb1[4].x;
      r16.y = cb1[11].z * cb1[4].y;
      r16.z = cb1[12].z * cb1[4].z;
      r16.xyz = cb2[0].xxx ? r16.xyz : float3(0,0,1);
      r15.xyz = r0.www ? r2.zxy : r16.zxy;
      r0.z = 1;
      break;
      case 2 :      r2.xyz = cb1[11].xyz * r12.yyy;
      r2.xyz = cb1[10].xyz * r12.xxx + r2.xyz;
      r2.xyz = cb1[12].xyz * r12.zzz + r2.xyz;
      r2.xyz = cb1[13].xyz + r2.xyz;
      r2.xyz = cb2[0].xxx ? r2.xyz : r12.xyz;
      r2.xyz = cb0[111].xyz + -r2.xyz;
      r0.y = dot(r2.xyz, r2.xyz);
      r0.y = rsqrt(r0.y);
      r2.xyz = r2.xyz * r0.yyy;
      r16.xyz = cb1[10].xyz * cb1[4].xxx;
      r20.xyz = cb1[11].xyz * cb1[4].yyy;
      r21.xyz = cb1[12].xyz * cb1[4].zzz;
      r16.x = dot(r2.xyz, r16.xyz);
      r16.y = dot(r2.xyz, r20.xyz);
      r16.z = dot(r2.xyz, r21.xyz);
      r15.xyz = cb2[0].xxx ? r16.zxy : r2.zxy;
      r0.z = 2;
      break;
      default :
      r2.xyz = cb1[10].xyz * cb1[4].xxx;
      r16.xyz = cb1[11].xyz * cb1[4].yyy;
      r20.xyz = cb1[12].xyz * cb1[4].zzz;
      r2.x = dot(-cb0[101].xyz, r2.xyz);
      r2.y = dot(-cb0[101].xyz, r16.xyz);
      r2.z = dot(-cb0[101].xyz, r20.xyz);
      r15.xyz = cb2[0].xxx ? r2.zxy : -cb0[101].zxy;
      break;
    }
    if (cb2[24].w != 0) {
      r0.y = cmp(asint(cb2[0].x) != 0);
      r2.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.y;
      r2.y = r0.w ? r2.y : 0;
      r2.x = (int)r2.y | (int)r2.x;
      r0.y = r0.y ? r2.x : 0;
      r2.yzw = cb1[10].yzx * cb1[4].xxx;
      r16.xyz = cb1[11].yzx * cb1[4].yyy;
      r20.xyz = cb1[12].yzx * cb1[4].zzz;
      r21.z = dot(cb2[25].yzx, r2.yzw);
      r21.x = dot(cb2[25].yzx, r16.xyz);
      r21.y = dot(cb2[25].yzx, r20.xyz);
      r2.x = ~(int)r2.x;
      r0.w = r0.w ? r2.x : 0;
      r16.xyz = cb2[25].yyy * r16.xyz;
      r2.xyz = r2.yzw * cb2[25].xxx + r16.xyz;
      r2.xyz = r20.xyz * cb2[25].zzz + r2.xyz;
      r2.xyz = r0.www ? r2.xyz : cb2[25].yzx;
      r2.xyz = r0.yyy ? r21.xzy : r2.xzy;
      r0.y = dot(r15.zyx, r2.xyz);
      r0.y = cmp(0.99000001 < abs(r0.y));
      r0.w = cmp(0.99000001 < abs(r2.z));
      r16.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r16.xyz = r0.yyy ? r16.xyz : r15.yzx;
      r20.xyz = r16.xyz * r2.xzy;
      r16.xyz = r2.yxz * r16.yzx + -r20.xyz;
      r0.y = dot(r16.xyz, r16.xyz);
      r0.y = rsqrt(r0.y);
      r16.xyz = r16.xyz * r0.yyy;
      r20.xyz = r16.xyz * r2.xzy;
      r20.xyz = r16.zxy * r2.zyx + -r20.xyz;
      r21.x = r20.x;
      r21.y = r16.y;
      r21.z = r2.y;
      r22.x = r20.y;
      r22.y = r16.z;
      r22.z = r2.x;
      r2.x = r20.z;
      r2.y = r16.x;
    } else {
      r0.y = cmp((int)r0.z == 3);
      r0.z = cmp(0.99000001 < abs(r15.x));
      r0.w = cmp(0 < r15.x);
      r2.w = cmp(r15.x < 0);
      r0.w = (int)r0.w + (int)-r2.w;
      r0.w = (int)r0.w;
      r16.xyz = float3(1,0,0) * r0.www;
      r16.xyz = r0.zzz ? r16.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[100].xyz : r16.xyz;
      r16.xyz = cb1[10].xyz * cb1[4].xxx;
      r20.xyz = cb1[11].xyz * cb1[4].yyy;
      r23.xyz = cb1[12].xyz * cb1[4].zzz;
      r16.x = dot(r0.yzw, r16.xyz);
      r16.y = dot(r0.yzw, r20.xyz);
      r16.z = dot(r0.yzw, r23.xyz);
      r0.yzw = cb2[0].xxx ? r16.xyz : r0.yzw;
      r16.xyz = r0.yzw * r15.xyz;
      r0.yzw = r0.wyz * r15.yzx + -r16.xyz;
      r2.w = dot(r0.yzw, r0.yzw);
      r2.w = rsqrt(r2.w);
      r0.yzw = r2.www * r0.yzw;
      r16.xyz = r15.xyz * r0.yzw;
      r2.xyz = r15.zxy * r0.zwy + -r16.xyz;
      r21.x = r15.y;
      r21.y = r0.w;
      r21.z = r2.x;
      r22.x = r15.z;
      r22.y = r0.y;
      r22.z = r2.y;
      r2.x = r15.x;
      r2.y = r0.z;
    }
    r15.x = dot(r18.zxw, r21.xyz);
    r16.x = dot(r18.zxw, r22.xyz);
    r20.x = dot(r18.zxw, r2.xyz);
    r19.y = r18.y;
    r15.y = dot(r19.xyz, r21.xyz);
    r16.y = dot(r19.xyz, r22.xyz);
    r20.y = dot(r19.xyz, r2.xyz);
    r13.x = r17.z;
    r15.z = dot(r13.xyz, r21.xyz);
    r16.z = dot(r13.xyz, r22.xyz);
    r20.z = dot(r13.xyz, r2.xyz);
    r18.xyz = r16.xyz;
    r13.xyz = r20.xyz;
  } else {
    r15.xz = r17.xz * float2(-1,1) + float2(1,0);
    r15.y = r19.x;
    r18.z = r13.y;
    r13.x = r18.w;
    r13.y = r19.z;
  }
  r0.yzw = cb1[11].xyz * r12.yyy;
  r0.yzw = cb1[10].xyz * r12.xxx + r0.yzw;
  r0.yzw = cb1[12].xyz * r12.zzz + r0.yzw;
  r0.yzw = cb1[13].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r12.xyz;
  if (r1.y != 0) {
    r2.x = cb2[24].x;
  }
  if (r1.y == 0) {
    r2.yz = asint(cb2[9].zz) & int2(0x80000000,0x7fffffff);
    if (r2.y != 0) {
      r1.y = mad((int)r2.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r1.y).x;
    } else {
      r0.x = mad((int)r2.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[111].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.yzw = cb1[10].xyz * cb1[4].xxx;
  r16.xyz = cb1[11].xyz * cb1[4].yyy;
  r17.xyz = cb1[12].xyz * cb1[4].zzz;
  r19.x = dot(r0.xyz, r2.yzw);
  r19.y = dot(r0.xyz, r16.xyz);
  r19.z = dot(r0.xyz, r17.xyz);
  r0.xyz = cb2[0].xxx ? r19.xyz : r0.xyz;
  r0.xyz = r0.xyz * r2.xxx + r12.xyz;
  r1.xyz = cb2[1].xyz * r1.xzw;
  r2.x = dot(r1.xyz, r15.xyz);
  r2.y = dot(r1.xyz, r18.xyz);
  r2.z = dot(r1.xyz, r13.xyz);
  r1.xyz = r2.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r1.xyz;
  r1.xyz = r15.xyz * r14.xyz;
  r2.xyz = r18.xyz * r14.xyz;
  r12.xyz = r14.xyz * r13.xyz;
  if (cb2[0].x != 0) {
    r13.xyz = cb1[11].xyz * r2.xxx;
    r13.xyz = r1.xxx * cb1[10].xyz + r13.xyz;
    r13.xyz = r12.xxx * cb1[12].xyz + r13.xyz;
    r14.xyz = cb1[11].xyz * r2.yyy;
    r14.xyz = r1.yyy * cb1[10].xyz + r14.xyz;
    r14.xyz = r12.yyy * cb1[12].xyz + r14.xyz;
    r15.xyz = cb1[11].xyz * r2.zzz;
    r15.xyz = r1.zzz * cb1[10].xyz + r15.xyz;
    r12.xyz = r12.zzz * cb1[12].xyz + r15.xyz;
    r15.xyz = cb1[11].xyz * r0.yyy;
    r15.xyz = r0.xxx * cb1[10].xyz + r15.xyz;
    r15.xyz = r0.zzz * cb1[12].xyz + r15.xyz;
    r0.xyz = cb1[13].xyz + r15.xyz;
    r15.xyz = cb1[1].xyz * r9.xxx;
    r15.xyz = r7.xxx * cb1[0].xyz + r15.xyz;
    r15.xyz = r10.xxx * cb1[2].xyz + r15.xyz;
    r16.xyz = cb1[1].xyz * r9.yyy;
    r16.xyz = r7.yyy * cb1[0].xyz + r16.xyz;
    r16.xyz = r10.yyy * cb1[2].xyz + r16.xyz;
    r17.xyz = cb1[1].xyz * r9.zzz;
    r17.xyz = r7.zzz * cb1[0].xyz + r17.xyz;
    r10.xyz = r10.zzz * cb1[2].xyz + r17.xyz;
    r17.xyz = cb1[1].xyz * r5.yyy;
    r17.xyz = r5.xxx * cb1[0].xyz + r17.xyz;
    r17.xyz = r5.zzz * cb1[2].xyz + r17.xyz;
    r5.xyz = cb1[3].xyz + r17.xyz;
    r17.xyz = cb1[1].xyz * r11.xxx;
    r17.xyz = r8.xxx * cb1[0].xyz + r17.xyz;
    r17.xyz = r6.xxx * cb1[2].xyz + r17.xyz;
    r18.xyz = cb1[1].xyz * r11.yyy;
    r18.xyz = r8.yyy * cb1[0].xyz + r18.xyz;
    r18.xyz = r6.yyy * cb1[2].xyz + r18.xyz;
    r19.xyz = cb1[1].xyz * r11.zzz;
    r19.xyz = r8.zzz * cb1[0].xyz + r19.xyz;
    r19.xyz = r6.zzz * cb1[2].xyz + r19.xyz;
    r17.xyz = cb1[4].xxx * r17.xyz;
    r18.xyz = cb1[4].yyy * r18.xyz;
    r6.xyz = cb1[4].zzz * r19.xyz;
    r7.x = r15.x;
    r7.y = r16.x;
    r7.z = r10.x;
    r9.x = r15.y;
    r9.y = r16.y;
    r9.z = r10.y;
    r10.x = r15.z;
    r10.y = r16.z;
    r8.x = r17.x;
    r8.y = r18.x;
    r8.z = r6.x;
    r11.x = r17.y;
    r11.y = r18.y;
    r11.z = r6.y;
    r6.x = r17.z;
    r6.y = r18.z;
    r1.x = r13.x;
    r1.y = r14.x;
    r1.z = r12.x;
    r2.x = r13.y;
    r2.y = r14.y;
    r2.z = r12.y;
    r12.x = r13.z;
    r12.y = r14.z;
  }
  if (cb2[1].w != 0) {
    r13.xyz = cb2[1].xyz + r5.xyz;
    r14.xyz = cb2[1].xyz + r0.xyz;
    r7.w = r13.x;
    r9.w = r13.y;
    r10.w = r13.z;
    r1.w = r14.x;
    r2.w = r14.y;
    r12.w = r14.z;
  } else {
    r7.w = r5.x;
    r9.w = r5.y;
    r10.w = r5.z;
    r1.w = r0.x;
    r2.w = r0.y;
    r12.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r7.xyzw);
  r0.y = dot(v0.xyzw, r9.xyzw);
  r0.z = dot(v0.xyzw, r10.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r5.x = v6.y;
  r5.yz = v7.xy;
  r13.x = dot(r5.xyz, r7.xyz);
  r13.y = dot(r5.xyz, r9.xyz);
  r13.z = dot(r5.xyz, r10.xyz);
  r14.xy = v5.xy;
  r14.z = v6.x;
  r7.x = dot(r14.xyz, r7.xyz);
  r7.y = dot(r14.xyz, r9.xyz);
  r7.z = dot(r14.xyz, r10.xyz);
  r0.w = cb0[142].z + cb0[142].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.25 * r0.w;
  r5.w = asint(cb2[4].w) & 1;
  r9.xyzw = r5.wwww ? r4.ywzx : float4(1,1,1,1);
  r0.w = dot(r0.ww, r9.xx);
  r5.w = saturate(r0.w);
  r10.xyz = r5.www * r13.xyz;
  r0.w = saturate(-1 + r0.w);
  r13.xyz = -r5.www * r13.xyz + r7.xyz;
  r10.xyz = r0.www * r13.xyz + r10.xyz;
  r0.w = cb0[142].z + r9.y;
  r0.w = r0.w / r9.z;
  r0.w = frac(r0.w);
  r5.w = 1 + r9.w;
  r6.w = r5.w * r0.w;
  r6.w = saturate(cb3[22].z * r6.w);
  r0.w = r0.w * r5.w + -r9.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r6.w * r0.w;
  r10.xyz = r10.xyz + -r7.xyz;
  r7.xyz = r0.www * r10.xyz + r7.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r7.xyz = v2.yzx * v1.xyz;
  r7.xyz = v2.xyz * v1.yzx + -r7.xyz;
  r7.xyz = v2.www * r7.xyz;
  r10.xyz = v2.yzx * r7.xyz;
  r7.xyz = r7.zxy * v2.zxy + -r10.xyz;
  r7.xyz = v2.www * r7.xyz;
  r10.x = dot(r7.xyz, r8.xyz);
  r10.y = dot(r7.xyz, r11.xyz);
  r10.z = dot(r7.xyz, r6.xyz);
  r7.x = dot(v2.xyz, r8.xyz);
  r7.y = dot(v2.xyz, r11.xyz);
  r7.z = dot(v2.xyz, r6.xyz);
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r10.xyz * r0.www;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r7.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  r6.x = dot(v0.xyzw, r1.xyzw);
  r6.y = dot(v0.xyzw, r2.xyzw);
  r6.z = dot(v0.xyzw, r12.xyzw);
  r6.xyz = cb0[113].xyz + r6.xyz;
  r7.x = dot(r5.xyz, r1.xyz);
  r7.y = dot(r5.xyz, r2.xyz);
  r7.z = dot(r5.xyz, r12.xyz);
  r1.x = dot(r14.xyz, r1.xyz);
  r1.y = dot(r14.xyz, r2.xyz);
  r1.z = dot(r14.xyz, r12.xyz);
  r0.w = cb0[139].z + cb0[139].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = r0.w * r9.x;
  r1.w = 0.5 * r0.w;
  r1.w = saturate(r1.w);
  r2.xyz = r1.www * r7.xyz;
  r0.w = saturate(r0.w * 0.5 + -1);
  r5.xyz = -r1.www * r7.xyz + r1.xyz;
  r2.xyz = r0.www * r5.xyz + r2.xyz;
  r0.w = cb0[139].z + r9.y;
  r0.w = r0.w / r9.z;
  r0.w = frac(r0.w);
  r1.w = r0.w * r5.w;
  r1.w = saturate(cb3[22].z * r1.w);
  r0.w = r0.w * r5.w + -r9.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r0.www * r2.xyz + r1.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r2.xyzw = cb0[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  o6.xyzw = v3.xyzw;
  o8.xyzw = r4.xyzw;
  o9.xyzw = r3.xyzw;
  return;
}
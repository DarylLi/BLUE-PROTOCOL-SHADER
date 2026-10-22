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
  out float4 o3 : TEXCOORD0,
  out float4 o4 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v8.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v8.x;
  }
  r0.yzw = cmp(asint(cb2[5].wyz) == int3(-1,-1,-1));
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
  r2.xyz = cmp(asint(cb2[7].zxy) == int3(-1,-1,-1));
  if (r2.x != 0) {
    r3.xyzw = cb2[19].xyzw;
  }
  if (r2.x == 0) {
    r2.xw = asint(cb2[7].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r0.y = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r0.y).x;
      r4.xyz = (int3)r2.www + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r0.y = mad((int)r2.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r0.y).x;
      r4.xyz = (int3)r2.www + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r4.x).x;
      r3.z = t0.Load(r4.y).x;
      r3.w = t0.Load(r4.z).x;
    }
  }
  if (r0.z != 0) {
    r4.xyz = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r0.yz = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r0.y).x;
      r2.xw = (int2)r0.zz + int2(1,2);
      r2.xw = mad((int2)r2.xw, asint(cb2[26].xx), (int2)r0.xx);
      r4.y = t1.Load(r2.x).x;
      r4.z = t1.Load(r2.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb2[26].xx), (int2)r0.xx);
      r4.y = t0.Load(r0.y).x;
      r4.z = t0.Load(r0.z).x;
    }
  }
  r5.xyz = cmp(asint(cb2[6].zxw) == int3(-1,-1,-1));
  if (r5.x != 0) {
    r6.xyzw = cb2[15].xyzw;
  }
  if (r5.x == 0) {
    r0.yz = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r6.x = t1.Load(r0.y).x;
      r7.xyz = (int3)r0.zzz + int3(1,2,3);
      r7.xyz = mad((int3)r7.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r6.y = t1.Load(r7.x).x;
      r6.z = t1.Load(r7.y).x;
      r6.w = t1.Load(r7.z).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r6.x = t0.Load(r0.y).x;
      r7.xyz = (int3)r0.zzz + int3(1,2,3);
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
    r0.yz = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r7.x = t1.Load(r0.y).x;
      r2.xy = (int2)r0.zz + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t1.Load(r2.x).x;
      r7.z = t1.Load(r2.y).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r7.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t0.Load(r0.y).x;
      r7.z = t0.Load(r0.z).x;
    }
  }
  r2.xyw = cb2[2].xyz * r7.xyz;
  r0.y = dot(r6.xyzw, r6.xyzw);
  r0.y = rsqrt(r0.y);
  r6.xyzw = r6.xyzw * r0.yyyy;
  r8.xyzw = r6.zzxy + r6.zzxy;
  r0.yz = r8.zw * r6.xy;
  r9.xyzw = r8.xyzw * r6.yzww;
  r1.w = r8.y * r6.w;
  r10.xyz = r6.yxx * r8.wzy + r9.yyw;
  r11.x = r6.x * r8.w + r1.w;
  r11.w = r6.x * r8.y + -r9.w;
  r12.x = r6.x * r8.w + -r1.w;
  r11.yz = float2(1,1) + -r10.yx;
  r12.z = r9.x + r9.z;
  r6.y = r6.y * r8.x + -r9.z;
  r0.y = r0.y + r0.z;
  r6.z = 1 + -r0.y;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r0.z = dot(r1.xyz, r1.xyz);
      r0.z = sqrt(r0.z);
      r1.w = cmp(0 < r0.z);
      r1.xyz = r1.xyz / r0.zzz;
      r1.xyz = r1.www ? r1.xyz : 0;
      r9.x = cb1[4].x * cb1[0].z;
      r9.y = cb1[4].y * cb1[1].z;
      r9.z = cb1[4].z * cb1[2].z;
      r9.xyz = cb2[0].xxx ? r9.xyz : float3(0,0,1);
      r8.xyz = r1.www ? r1.zxy : r9.zxy;
      r0.y = 1;
      break;
      case 2 :      r1.xyz = cb1[1].xyz * r4.yyy;
      r1.xyz = cb1[0].xyz * r4.xxx + r1.xyz;
      r1.xyz = cb1[2].xyz * r4.zzz + r1.xyz;
      r1.xyz = cb1[3].xyz + r1.xyz;
      r1.xyz = cb2[0].xxx ? r1.xyz : r4.xyz;
      r1.xyz = cb0[67].xyz + -r1.xyz;
      r0.z = dot(r1.xyz, r1.xyz);
      r0.z = rsqrt(r0.z);
      r1.xyz = r1.xyz * r0.zzz;
      r9.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r14.xyz = cb1[4].zzz * cb1[2].xyz;
      r9.x = dot(r1.xyz, r9.xyz);
      r9.y = dot(r1.xyz, r13.xyz);
      r9.z = dot(r1.xyz, r14.xyz);
      r8.xyz = cb2[0].xxx ? r9.zxy : r1.zxy;
      r0.y = 2;
      break;
      default :
      r1.xyz = cb1[4].xxx * cb1[0].xyz;
      r9.xyz = cb1[4].yyy * cb1[1].xyz;
      r13.xyz = cb1[4].zzz * cb1[2].xyz;
      r1.x = dot(-cb0[60].xyz, r1.xyz);
      r1.y = dot(-cb0[60].xyz, r9.xyz);
      r1.z = dot(-cb0[60].xyz, r13.xyz);
      r8.xyz = cb2[0].xxx ? r1.zxy : -cb0[60].zxy;
      r0.y = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r0.z = cmp(asint(cb2[0].x) != 0);
      r1.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r1.z = ~(int)r0.z;
      r1.y = r1.y ? r1.z : 0;
      r1.x = (int)r1.y | (int)r1.x;
      r0.z = r0.z ? r1.x : 0;
      r9.xyz = cb1[4].xxx * cb1[0].yzx;
      r13.xyz = cb1[4].yyy * cb1[1].yzx;
      r14.xyz = cb1[4].zzz * cb1[2].yzx;
      r15.z = dot(cb2[25].yzx, r9.xyz);
      r15.x = dot(cb2[25].yzx, r13.xyz);
      r15.y = dot(cb2[25].yzx, r14.xyz);
      r1.x = ~(int)r1.x;
      r1.x = r1.x ? r1.z : 0;
      r1.yzw = cb2[25].yyy * r13.xyz;
      r1.yzw = r9.xyz * cb2[25].xxx + r1.yzw;
      r1.yzw = r14.xyz * cb2[25].zzz + r1.yzw;
      r1.xyz = r1.xxx ? r1.yzw : cb2[25].yzx;
      r1.xyz = r0.zzz ? r15.xzy : r1.xzy;
      r0.z = dot(r8.zyx, r1.xyz);
      r0.z = cmp(0.99000001 < abs(r0.z));
      r1.w = cmp(0.99000001 < abs(r1.z));
      r9.xyz = r1.www ? float3(1,0,0) : float3(0,0,1);
      r9.xyz = r0.zzz ? r9.xyz : r8.yzx;
      r13.xyz = r9.xyz * r1.xzy;
      r9.xyz = r1.yxz * r9.yzx + -r13.xyz;
      r0.z = dot(r9.xyz, r9.xyz);
      r0.z = rsqrt(r0.z);
      r9.xyz = r9.xyz * r0.zzz;
      r13.xyz = r9.xyz * r1.xzy;
      r13.xyz = r9.zxy * r1.zyx + -r13.xyz;
      r14.x = r13.x;
      r14.y = r9.y;
      r14.z = r1.y;
      r15.x = r13.y;
      r15.y = r9.z;
      r15.z = r1.x;
      r1.x = r13.z;
      r1.y = r9.x;
    } else {
      r0.z = cmp((int)r0.y == 3);
      r1.w = cmp(0.99000001 < abs(r8.x));
      r4.w = cmp(0 < r8.x);
      r5.x = cmp(r8.x < 0);
      r4.w = (int)r4.w + (int)-r5.x;
      r4.w = (int)r4.w;
      r9.xyz = float3(1,0,0) * r4.www;
      r9.xyz = r1.www ? r9.xyz : float3(0,0,1);
      r9.xyz = r0.zzz ? cb0[61].xyz : r9.xyz;
      r13.xyz = cb1[4].xxx * cb1[0].xyz;
      r16.xyz = cb1[4].yyy * cb1[1].xyz;
      r17.xyz = cb1[4].zzz * cb1[2].xyz;
      r13.x = dot(r9.xyz, r13.xyz);
      r13.y = dot(r9.xyz, r16.xyz);
      r13.z = dot(r9.xyz, r17.xyz);
      r9.xyz = cb2[0].xxx ? r13.xyz : r9.xyz;
      r13.xyz = r9.xyz * r8.xyz;
      r9.xyz = r9.zxy * r8.yzx + -r13.xyz;
      r0.z = dot(r9.xyz, r9.xyz);
      r0.z = rsqrt(r0.z);
      r9.xyz = r9.xyz * r0.zzz;
      r13.xyz = r9.xyz * r8.xyz;
      r1.xyz = r8.zxy * r9.yzx + -r13.xyz;
      r14.x = r8.y;
      r14.y = r9.z;
      r14.z = r1.x;
      r15.x = r8.z;
      r15.y = r9.x;
      r15.z = r1.y;
      r1.x = r8.x;
      r1.y = r9.y;
    }
    r8.x = dot(r11.zxw, r14.xyz);
    r9.x = dot(r11.zxw, r15.xyz);
    r13.x = dot(r11.zxw, r1.xyz);
    r12.y = r11.y;
    r8.y = dot(r12.xyz, r14.xyz);
    r9.y = dot(r12.xyz, r15.xyz);
    r13.y = dot(r12.xyz, r1.xyz);
    r6.x = r10.z;
    r8.z = dot(r6.xyz, r14.xyz);
    r9.z = dot(r6.xyz, r15.xyz);
    r13.z = dot(r6.xyz, r1.xyz);
    r11.xyz = r9.xyz;
    r6.xyz = r13.xyz;
  } else {
    r8.xz = r10.xz * float2(-1,1) + float2(1,0);
    r8.y = r12.x;
    r11.z = r6.y;
    r6.x = r11.w;
    r6.y = r12.z;
    r0.y = 0;
  }
  r1.xyz = cb1[1].xyz * r4.yyy;
  r1.xyz = cb1[0].xyz * r4.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r4.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = cb2[0].xxx ? r1.xyz : r4.xyz;
  r5.xw = cmp(asint(cb2[9].yz) == int2(-1,-1));
  if (r5.x != 0) {
    r0.z = cb2[23].w;
  }
  if (r5.x == 0) {
    r9.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r1.w = mad((int)r9.y, asint(cb2[26].x), (int)r0.x);
      r0.z = t1.Load(r1.w).x;
    } else {
      r1.w = mad((int)r9.y, asint(cb2[26].x), (int)r0.x);
      r0.z = t0.Load(r1.w).x;
    }
  }
  r1.xyz = cb0[67].xyz + -r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r9.xyz = cb1[4].xxx * cb1[0].xyz;
  r10.xyz = cb1[4].yyy * cb1[1].xyz;
  r12.xyz = cb1[4].zzz * cb1[2].xyz;
  r9.x = dot(r1.xyz, r9.xyz);
  r9.y = dot(r1.xyz, r10.xyz);
  r9.z = dot(r1.xyz, r12.xyz);
  r1.xyz = cb2[0].xxx ? r9.xyz : r1.xyz;
  r1.xyz = r1.xyz * r0.zzz + r4.xyz;
  r4.xyz = cb2[1].xyz * r7.xyz;
  r7.x = dot(r4.xyz, r8.xyz);
  r7.y = dot(r4.xyz, r11.xyz);
  r7.z = dot(r4.xyz, r6.xyz);
  r4.xyz = r7.xyz + r1.xyz;
  r1.xyz = cb2[1].www ? r1.xyz : r4.xyz;
  r4.xyz = r8.xyz * r2.xyw;
  r7.xyz = r11.xyz * r2.xyw;
  r6.xyz = r6.xyz * r2.xyw;
  if (r5.y != 0) {
    r2.xyw = cb2[13].xyz;
  }
  if (r5.y == 0) {
    r5.xy = asint(cb2[6].xx) & int2(0x80000000,0x7fffffff);
    if (r5.x != 0) {
      r0.z = mad((int)r5.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.z).x;
      r8.xy = (int2)r5.yy + int2(1,2);
      r8.xy = mad((int2)r8.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r8.x).x;
      r2.w = t1.Load(r8.y).x;
    } else {
      r0.z = mad((int)r5.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.z).x;
      r5.xy = (int2)r5.yy + int2(1,2);
      r5.xy = mad((int2)r5.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r5.x).x;
      r2.w = t0.Load(r5.y).x;
    }
  }
  if (r0.w != 0) {
    r8.xyz = cb2[11].xyz;
  }
  if (r0.w == 0) {
    r0.zw = asint(cb2[5].zz) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r8.x = t1.Load(r0.z).x;
      r5.xy = (int2)r0.ww + int2(1,2);
      r5.xy = mad((int2)r5.xy, asint(cb2[26].xx), (int2)r0.xx);
      r8.y = t1.Load(r5.x).x;
      r8.z = t1.Load(r5.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r8.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r8.y = t0.Load(r0.z).x;
      r8.z = t0.Load(r0.w).x;
    }
  }
  if (r5.z != 0) {
    r9.xyzw = cb2[16].xyzw;
  }
  if (r5.z == 0) {
    r0.zw = asint(cb2[6].ww) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r9.x = t1.Load(r0.z).x;
      r5.xyz = (int3)r0.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r9.y = t1.Load(r5.x).x;
      r9.z = t1.Load(r5.y).x;
      r9.w = t1.Load(r5.z).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r9.x = t0.Load(r0.z).x;
      r5.xyz = (int3)r0.www + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r9.y = t0.Load(r5.x).x;
      r9.z = t0.Load(r5.y).x;
      r9.w = t0.Load(r5.z).x;
    }
  }
  if (r2.z != 0) {
    r5.xyz = cb2[18].xyz;
  }
  if (r2.z == 0) {
    r0.zw = asint(cb2[7].yy) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.z).x;
      r10.xy = (int2)r0.ww + int2(1,2);
      r10.xy = mad((int2)r10.xy, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r10.x).x;
      r5.z = t1.Load(r10.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r0.z).x;
      r5.z = t0.Load(r0.w).x;
    }
  }
  r10.xyz = cb2[2].xyz * r5.xyz;
  r0.z = dot(r9.xyzw, r9.xyzw);
  r0.z = rsqrt(r0.z);
  r9.xyzw = r9.xyzw * r0.zzzz;
  r11.xyzw = r9.zzxy + r9.zzxy;
  r0.zw = r11.zw * r9.xy;
  r12.xyzw = r11.xyzw * r9.yzww;
  r1.w = r11.y * r9.w;
  r13.xyz = r9.yxx * r11.wzy + r12.yyw;
  r14.x = r9.x * r11.w + r1.w;
  r14.w = r9.x * r11.y + -r12.w;
  r15.x = r9.x * r11.w + -r1.w;
  r14.yz = float2(1,1) + -r13.yx;
  r15.z = r12.x + r12.z;
  r9.y = r9.y * r11.x + -r12.z;
  r0.z = r0.z + r0.w;
  r9.z = 1 + -r0.z;
  if (r0.y != 0) {
    switch (r0.y) {
      case 1 :      r0.z = dot(r2.xyw, r2.xyw);
      r0.z = sqrt(r0.z);
      r0.w = cmp(0 < r0.z);
      r2.xyz = r2.xyw / r0.zzz;
      r2.xyz = r0.www ? r2.xyz : 0;
      r12.x = cb1[10].z * cb1[4].x;
      r12.y = cb1[11].z * cb1[4].y;
      r12.z = cb1[12].z * cb1[4].z;
      r12.xyz = cb2[0].xxx ? r12.xyz : float3(0,0,1);
      r11.xyz = r0.www ? r2.zxy : r12.zxy;
      r0.y = 1;
      break;
      case 2 :      r2.xyz = cb1[11].xyz * r8.yyy;
      r2.xyz = cb1[10].xyz * r8.xxx + r2.xyz;
      r2.xyz = cb1[12].xyz * r8.zzz + r2.xyz;
      r2.xyz = cb1[13].xyz + r2.xyz;
      r2.xyz = cb2[0].xxx ? r2.xyz : r8.xyz;
      r2.xyz = cb0[111].xyz + -r2.xyz;
      r0.z = dot(r2.xyz, r2.xyz);
      r0.z = rsqrt(r0.z);
      r2.xyz = r2.xyz * r0.zzz;
      r12.xyz = cb1[10].xyz * cb1[4].xxx;
      r16.xyz = cb1[11].xyz * cb1[4].yyy;
      r17.xyz = cb1[12].xyz * cb1[4].zzz;
      r12.x = dot(r2.xyz, r12.xyz);
      r12.y = dot(r2.xyz, r16.xyz);
      r12.z = dot(r2.xyz, r17.xyz);
      r11.xyz = cb2[0].xxx ? r12.zxy : r2.zxy;
      r0.y = 2;
      break;
      default :
      r2.xyz = cb1[10].xyz * cb1[4].xxx;
      r12.xyz = cb1[11].xyz * cb1[4].yyy;
      r16.xyz = cb1[12].xyz * cb1[4].zzz;
      r2.x = dot(-cb0[101].xyz, r2.xyz);
      r2.y = dot(-cb0[101].xyz, r12.xyz);
      r2.z = dot(-cb0[101].xyz, r16.xyz);
      r11.xyz = cb2[0].xxx ? r2.zxy : -cb0[101].zxy;
      break;
    }
    if (cb2[24].w != 0) {
      r0.z = cmp(asint(cb2[0].x) != 0);
      r2.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.z;
      r1.w = r0.w ? r2.y : 0;
      r1.w = (int)r1.w | (int)r2.x;
      r0.z = r0.z ? r1.w : 0;
      r2.xyz = cb1[10].yzx * cb1[4].xxx;
      r12.xyz = cb1[11].yzx * cb1[4].yyy;
      r16.xyz = cb1[12].yzx * cb1[4].zzz;
      r17.z = dot(cb2[25].yzx, r2.xyz);
      r17.x = dot(cb2[25].yzx, r12.xyz);
      r17.y = dot(cb2[25].yzx, r16.xyz);
      r1.w = ~(int)r1.w;
      r0.w = r0.w ? r1.w : 0;
      r12.xyz = cb2[25].yyy * r12.xyz;
      r2.xyz = r2.xyz * cb2[25].xxx + r12.xyz;
      r2.xyz = r16.xyz * cb2[25].zzz + r2.xyz;
      r2.xyz = r0.www ? r2.xyz : cb2[25].yzx;
      r2.xyz = r0.zzz ? r17.xzy : r2.xzy;
      r0.z = dot(r11.zyx, r2.xyz);
      r0.z = cmp(0.99000001 < abs(r0.z));
      r0.w = cmp(0.99000001 < abs(r2.z));
      r12.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r12.xyz = r0.zzz ? r12.xyz : r11.yzx;
      r16.xyz = r12.xyz * r2.xzy;
      r12.xyz = r2.yxz * r12.yzx + -r16.xyz;
      r0.z = dot(r12.xyz, r12.xyz);
      r0.z = rsqrt(r0.z);
      r12.xyz = r12.xyz * r0.zzz;
      r16.xyz = r12.xyz * r2.xzy;
      r16.xyz = r12.zxy * r2.zyx + -r16.xyz;
      r17.x = r16.x;
      r17.y = r12.y;
      r17.z = r2.y;
      r18.x = r16.y;
      r18.y = r12.z;
      r18.z = r2.x;
      r2.x = r16.z;
      r2.y = r12.x;
    } else {
      r0.y = cmp((int)r0.y == 3);
      r0.z = cmp(0.99000001 < abs(r11.x));
      r0.w = cmp(0 < r11.x);
      r1.w = cmp(r11.x < 0);
      r0.w = (int)r0.w + (int)-r1.w;
      r0.w = (int)r0.w;
      r12.xyz = float3(1,0,0) * r0.www;
      r12.xyz = r0.zzz ? r12.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[100].xyz : r12.xyz;
      r12.xyz = cb1[10].xyz * cb1[4].xxx;
      r16.xyz = cb1[11].xyz * cb1[4].yyy;
      r19.xyz = cb1[12].xyz * cb1[4].zzz;
      r12.x = dot(r0.yzw, r12.xyz);
      r12.y = dot(r0.yzw, r16.xyz);
      r12.z = dot(r0.yzw, r19.xyz);
      r0.yzw = cb2[0].xxx ? r12.xyz : r0.yzw;
      r12.xyz = r0.yzw * r11.xyz;
      r0.yzw = r0.wyz * r11.yzx + -r12.xyz;
      r1.w = dot(r0.yzw, r0.yzw);
      r1.w = rsqrt(r1.w);
      r0.yzw = r1.www * r0.yzw;
      r12.xyz = r11.xyz * r0.yzw;
      r2.xyz = r11.zxy * r0.zwy + -r12.xyz;
      r17.x = r11.y;
      r17.y = r0.w;
      r17.z = r2.x;
      r18.x = r11.z;
      r18.y = r0.y;
      r18.z = r2.y;
      r2.x = r11.x;
      r2.y = r0.z;
    }
    r11.x = dot(r14.zxw, r17.xyz);
    r12.x = dot(r14.zxw, r18.xyz);
    r16.x = dot(r14.zxw, r2.xyz);
    r15.y = r14.y;
    r11.y = dot(r15.xyz, r17.xyz);
    r12.y = dot(r15.xyz, r18.xyz);
    r16.y = dot(r15.xyz, r2.xyz);
    r9.x = r13.z;
    r11.z = dot(r9.xyz, r17.xyz);
    r12.z = dot(r9.xyz, r18.xyz);
    r16.z = dot(r9.xyz, r2.xyz);
    r14.xyz = r12.xyz;
    r9.xyz = r16.xyz;
  } else {
    r11.xz = r13.xz * float2(-1,1) + float2(1,0);
    r11.y = r15.x;
    r14.z = r9.y;
    r9.x = r14.w;
    r9.y = r15.z;
  }
  r0.yzw = cb1[11].xyz * r8.yyy;
  r0.yzw = cb1[10].xyz * r8.xxx + r0.yzw;
  r0.yzw = cb1[12].xyz * r8.zzz + r0.yzw;
  r0.yzw = cb1[13].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r8.xyz;
  if (r5.w != 0) {
    r1.w = cb2[24].x;
  }
  if (r5.w == 0) {
    r2.xy = asint(cb2[9].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r2.x = mad((int)r2.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t1.Load(r2.x).x;
    } else {
      r0.x = mad((int)r2.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[111].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[10].xyz * cb1[4].xxx;
  r12.xyz = cb1[11].xyz * cb1[4].yyy;
  r13.xyz = cb1[12].xyz * cb1[4].zzz;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.y = dot(r0.xyz, r12.xyz);
  r2.z = dot(r0.xyz, r13.xyz);
  r0.xyz = cb2[0].xxx ? r2.xyz : r0.xyz;
  r0.xyz = r0.xyz * r1.www + r8.xyz;
  r2.xyz = cb2[1].xyz * r5.xyz;
  r5.x = dot(r2.xyz, r11.xyz);
  r5.y = dot(r2.xyz, r14.xyz);
  r5.z = dot(r2.xyz, r9.xyz);
  r2.xyz = r5.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r2.xyz;
  r2.xyz = r11.xyz * r10.xyz;
  r5.xyz = r14.xyz * r10.xyz;
  r8.xyz = r10.xyz * r9.xyz;
  if (cb2[0].x != 0) {
    r9.xyz = cb1[11].xyz * r5.xxx;
    r9.xyz = r2.xxx * cb1[10].xyz + r9.xyz;
    r9.xyz = r8.xxx * cb1[12].xyz + r9.xyz;
    r10.xyz = cb1[11].xyz * r5.yyy;
    r10.xyz = r2.yyy * cb1[10].xyz + r10.xyz;
    r10.xyz = r8.yyy * cb1[12].xyz + r10.xyz;
    r11.xyz = cb1[11].xyz * r5.zzz;
    r11.xyz = r2.zzz * cb1[10].xyz + r11.xyz;
    r8.xyz = r8.zzz * cb1[12].xyz + r11.xyz;
    r11.xyz = cb1[11].xyz * r0.yyy;
    r11.xyz = r0.xxx * cb1[10].xyz + r11.xyz;
    r11.xyz = r0.zzz * cb1[12].xyz + r11.xyz;
    r0.xyz = cb1[13].xyz + r11.xyz;
    r11.xyz = cb1[1].xyz * r7.xxx;
    r11.xyz = r4.xxx * cb1[0].xyz + r11.xyz;
    r11.xyz = r6.xxx * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r7.yyy;
    r12.xyz = r4.yyy * cb1[0].xyz + r12.xyz;
    r12.xyz = r6.yyy * cb1[2].xyz + r12.xyz;
    r13.xyz = cb1[1].xyz * r7.zzz;
    r13.xyz = r4.zzz * cb1[0].xyz + r13.xyz;
    r6.xyz = r6.zzz * cb1[2].xyz + r13.xyz;
    r13.xyz = cb1[1].xyz * r1.yyy;
    r13.xyz = r1.xxx * cb1[0].xyz + r13.xyz;
    r13.xyz = r1.zzz * cb1[2].xyz + r13.xyz;
    r1.xyz = cb1[3].xyz + r13.xyz;
    r4.x = r11.x;
    r4.y = r12.x;
    r4.z = r6.x;
    r7.x = r11.y;
    r7.y = r12.y;
    r7.z = r6.y;
    r6.x = r11.z;
    r6.y = r12.z;
    r2.x = r9.x;
    r2.y = r10.x;
    r2.z = r8.x;
    r5.x = r9.y;
    r5.y = r10.y;
    r5.z = r8.y;
    r8.x = r9.z;
    r8.y = r10.z;
  }
  if (cb2[1].w != 0) {
    r9.xyz = cb2[1].xyz + r1.xyz;
    r10.xyz = cb2[1].xyz + r0.xyz;
    r4.w = r9.x;
    r7.w = r9.y;
    r6.w = r9.z;
    r2.w = r10.x;
    r5.w = r10.y;
    r8.w = r10.z;
  } else {
    r4.w = r1.x;
    r7.w = r1.y;
    r6.w = r1.z;
    r2.w = r0.x;
    r5.w = r0.y;
    r8.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r4.xyzw);
  r0.y = dot(v0.xyzw, r7.xyzw);
  r0.z = dot(v0.xyzw, r6.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.x = v6.y;
  r1.yz = v7.xy;
  r9.x = dot(r1.xyz, r4.xyz);
  r9.y = dot(r1.xyz, r7.xyz);
  r9.z = dot(r1.xyz, r6.xyz);
  r10.xy = v5.xy;
  r10.z = v6.x;
  r4.x = dot(r10.xyz, r4.xyz);
  r4.y = dot(r10.xyz, r7.xyz);
  r4.z = dot(r10.xyz, r6.xyz);
  r0.w = cb0[142].z + cb0[142].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.25 * r0.w;
  r1.w = asint(cb2[4].w) & 1;
  r3.xyzw = r1.wwww ? r3.ywzx : float4(1,1,1,1);
  r0.w = dot(r0.ww, r3.xx);
  r1.w = saturate(r0.w);
  r6.xyz = r1.www * r9.xyz;
  r0.w = saturate(-1 + r0.w);
  r7.xyz = -r1.www * r9.xyz + r4.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r0.w = cb0[142].z + r3.y;
  r0.w = r0.w / r3.z;
  r0.w = frac(r0.w);
  r1.w = 1 + r3.w;
  r4.w = r1.w * r0.w;
  r4.w = saturate(cb3[22].z * r4.w);
  r0.w = r0.w * r1.w + -r3.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r4.w * r0.w;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r0.www * r6.xyz + r4.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r4.x = dot(v0.xyzw, r2.xyzw);
  r4.y = dot(v0.xyzw, r5.xyzw);
  r4.z = dot(v0.xyzw, r8.xyzw);
  r4.xyz = cb0[113].xyz + r4.xyz;
  r6.x = dot(r1.xyz, r2.xyz);
  r6.y = dot(r1.xyz, r5.xyz);
  r6.z = dot(r1.xyz, r8.xyz);
  r1.x = dot(r10.xyz, r2.xyz);
  r1.y = dot(r10.xyz, r5.xyz);
  r1.z = dot(r10.xyz, r8.xyz);
  r0.w = cb0[139].z + cb0[139].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = r0.w * r3.x;
  r2.x = 0.5 * r0.w;
  r2.x = saturate(r2.x);
  r2.yzw = r2.xxx * r6.xyz;
  r0.w = saturate(r0.w * 0.5 + -1);
  r5.xyz = -r2.xxx * r6.xyz + r1.xyz;
  r2.xyz = r0.www * r5.xyz + r2.yzw;
  r0.w = cb0[139].z + r3.y;
  r0.w = r0.w / r3.z;
  r0.w = frac(r0.w);
  r2.w = r0.w * r1.w;
  r2.w = saturate(cb3[22].z * r2.w);
  r0.w = r0.w * r1.w + -r3.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r2.w * r0.w;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r0.www * r2.xyz + r1.xyz;
  r1.xyz = r4.xyz + r1.xyz;
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
  o3.xy = v4.xy;
  o3.zw = float2(0,0);
  o4.xyzw = v3.xyzw;
  return;
}
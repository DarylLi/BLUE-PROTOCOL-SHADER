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
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  uint v4 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v4.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v4.x;
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
  if (r0.z != 0) {
    r2.xyz = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r0.yz = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r3.xy = (int2)r0.zz + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r3.x).x;
      r2.z = t1.Load(r3.y).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb2[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r0.y).x;
      r2.z = t0.Load(r0.z).x;
    }
  }
  r3.xyz = cmp(asint(cb2[6].zxw) == int3(-1,-1,-1));
  if (r3.x != 0) {
    r4.xyzw = cb2[15].xyzw;
  }
  if (r3.x == 0) {
    r0.yz = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r0.y).x;
      r5.xyz = (int3)r0.zzz + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t1.Load(r5.x).x;
      r4.z = t1.Load(r5.y).x;
      r4.w = t1.Load(r5.z).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r0.y).x;
      r5.xyz = (int3)r0.zzz + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t0.Load(r5.x).x;
      r4.z = t0.Load(r5.y).x;
      r4.w = t0.Load(r5.z).x;
    }
  }
  r0.yz = cmp(asint(cb2[7].xy) == int2(-1,-1));
  if (r0.y != 0) {
    r5.xyz = cb2[17].xyz;
  }
  if (r0.y == 0) {
    r3.xw = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.y = mad((int)r3.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.y).x;
      r6.xy = (int2)r3.ww + int2(1,2);
      r6.xy = mad((int2)r6.xy, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r6.x).x;
      r5.z = t1.Load(r6.y).x;
    } else {
      r0.y = mad((int)r3.w, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.y).x;
      r3.xw = (int2)r3.ww + int2(1,2);
      r3.xw = mad((int2)r3.xw, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r3.x).x;
      r5.z = t0.Load(r3.w).x;
    }
  }
  r6.xyz = cb2[2].xyz * r5.xyz;
  r0.y = dot(r4.xyzw, r4.xyzw);
  r0.y = rsqrt(r0.y);
  r4.xyzw = r4.xyzw * r0.yyyy;
  r7.xyzw = r4.zzxy + r4.zzxy;
  r3.xw = r7.zw * r4.xy;
  r8.xyzw = r7.xyzw * r4.yzww;
  r0.y = r7.y * r4.w;
  r9.xyz = r4.yxx * r7.wzy + r8.yyw;
  r10.x = r4.x * r7.w + r0.y;
  r10.w = r4.x * r7.y + -r8.w;
  r11.x = r4.x * r7.w + -r0.y;
  r10.yz = float2(1,1) + -r9.yx;
  r11.z = r8.x + r8.z;
  r4.y = r4.y * r7.x + -r8.z;
  r0.y = r3.x + r3.w;
  r4.z = 1 + -r0.y;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r1.w = dot(r1.xyz, r1.xyz);
      r1.w = sqrt(r1.w);
      r2.w = cmp(0 < r1.w);
      r1.xyz = r1.xyz / r1.www;
      r1.xyz = r2.www ? r1.xyz : 0;
      r8.x = cb1[4].x * cb1[0].z;
      r8.y = cb1[4].y * cb1[1].z;
      r8.z = cb1[4].z * cb1[2].z;
      r8.xyz = cb2[0].xxx ? r8.xyz : float3(0,0,1);
      r7.xyz = r2.www ? r1.zxy : r8.zxy;
      r0.y = 1;
      break;
      case 2 :      r1.xyz = cb1[1].xyz * r2.yyy;
      r1.xyz = cb1[0].xyz * r2.xxx + r1.xyz;
      r1.xyz = cb1[2].xyz * r2.zzz + r1.xyz;
      r1.xyz = cb1[3].xyz + r1.xyz;
      r1.xyz = cb2[0].xxx ? r1.xyz : r2.xyz;
      r1.xyz = cb0[67].xyz + -r1.xyz;
      r1.w = dot(r1.xyz, r1.xyz);
      r1.w = rsqrt(r1.w);
      r1.xyz = r1.xyz * r1.www;
      r8.xyz = cb1[4].xxx * cb1[0].xyz;
      r12.xyz = cb1[4].yyy * cb1[1].xyz;
      r13.xyz = cb1[4].zzz * cb1[2].xyz;
      r8.x = dot(r1.xyz, r8.xyz);
      r8.y = dot(r1.xyz, r12.xyz);
      r8.z = dot(r1.xyz, r13.xyz);
      r7.xyz = cb2[0].xxx ? r8.zxy : r1.zxy;
      r0.y = 2;
      break;
      default :
      r1.xyz = cb1[4].xxx * cb1[0].xyz;
      r8.xyz = cb1[4].yyy * cb1[1].xyz;
      r12.xyz = cb1[4].zzz * cb1[2].xyz;
      r1.x = dot(-cb0[60].xyz, r1.xyz);
      r1.y = dot(-cb0[60].xyz, r8.xyz);
      r1.z = dot(-cb0[60].xyz, r12.xyz);
      r7.xyz = cb2[0].xxx ? r1.zxy : -cb0[60].zxy;
      r0.y = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r1.x = cmp(asint(cb2[0].x) != 0);
      r1.yz = cmp(asint(cb2[25].ww) == int2(1,0));
      r1.w = ~(int)r1.x;
      r1.z = r1.z ? r1.w : 0;
      r1.y = (int)r1.z | (int)r1.y;
      r1.x = r1.x ? r1.y : 0;
      r8.xyz = cb1[4].xxx * cb1[0].yzx;
      r12.xyz = cb1[4].yyy * cb1[1].yzx;
      r13.xyz = cb1[4].zzz * cb1[2].yzx;
      r14.z = dot(cb2[25].yzx, r8.xyz);
      r14.x = dot(cb2[25].yzx, r12.xyz);
      r14.y = dot(cb2[25].yzx, r13.xyz);
      r1.y = ~(int)r1.y;
      r1.y = r1.y ? r1.w : 0;
      r12.xyz = cb2[25].yyy * r12.xyz;
      r8.xyz = r8.xyz * cb2[25].xxx + r12.xyz;
      r8.xyz = r13.xyz * cb2[25].zzz + r8.xyz;
      r1.yzw = r1.yyy ? r8.xyz : cb2[25].yzx;
      r1.xyz = r1.xxx ? r14.xzy : r1.ywz;
      r1.w = dot(r7.zyx, r1.xyz);
      r1.w = cmp(0.99000001 < abs(r1.w));
      r2.w = cmp(0.99000001 < abs(r1.z));
      r8.xyz = r2.www ? float3(1,0,0) : float3(0,0,1);
      r8.xyz = r1.www ? r8.xyz : r7.yzx;
      r12.xyz = r8.xyz * r1.xzy;
      r8.xyz = r1.yxz * r8.yzx + -r12.xyz;
      r1.w = dot(r8.xyz, r8.xyz);
      r1.w = rsqrt(r1.w);
      r8.xyz = r8.xyz * r1.www;
      r12.xyz = r8.xyz * r1.xzy;
      r12.xyz = r8.zxy * r1.zyx + -r12.xyz;
      r13.x = r12.x;
      r13.y = r8.y;
      r13.z = r1.y;
      r14.x = r12.y;
      r14.y = r8.z;
      r14.z = r1.x;
      r1.x = r12.z;
      r1.y = r8.x;
    } else {
      r1.w = cmp((int)r0.y == 3);
      r2.w = cmp(0.99000001 < abs(r7.x));
      r3.x = cmp(0 < r7.x);
      r3.w = cmp(r7.x < 0);
      r3.x = (int)r3.x + (int)-r3.w;
      r3.x = (int)r3.x;
      r8.xyz = float3(1,0,0) * r3.xxx;
      r8.xyz = r2.www ? r8.xyz : float3(0,0,1);
      r8.xyz = r1.www ? cb0[61].xyz : r8.xyz;
      r12.xyz = cb1[4].xxx * cb1[0].xyz;
      r15.xyz = cb1[4].yyy * cb1[1].xyz;
      r16.xyz = cb1[4].zzz * cb1[2].xyz;
      r12.x = dot(r8.xyz, r12.xyz);
      r12.y = dot(r8.xyz, r15.xyz);
      r12.z = dot(r8.xyz, r16.xyz);
      r8.xyz = cb2[0].xxx ? r12.xyz : r8.xyz;
      r12.xyz = r8.xyz * r7.xyz;
      r8.xyz = r8.zxy * r7.yzx + -r12.xyz;
      r1.w = dot(r8.xyz, r8.xyz);
      r1.w = rsqrt(r1.w);
      r8.xyz = r8.xyz * r1.www;
      r12.xyz = r8.xyz * r7.xyz;
      r1.xyz = r7.zxy * r8.yzx + -r12.xyz;
      r13.x = r7.y;
      r13.y = r8.z;
      r13.z = r1.x;
      r14.x = r7.z;
      r14.y = r8.x;
      r14.z = r1.y;
      r1.x = r7.x;
      r1.y = r8.y;
    }
    r7.x = dot(r10.zxw, r13.xyz);
    r8.x = dot(r10.zxw, r14.xyz);
    r12.x = dot(r10.zxw, r1.xyz);
    r11.y = r10.y;
    r7.y = dot(r11.xyz, r13.xyz);
    r8.y = dot(r11.xyz, r14.xyz);
    r12.y = dot(r11.xyz, r1.xyz);
    r4.x = r9.z;
    r7.z = dot(r4.xyz, r13.xyz);
    r8.z = dot(r4.xyz, r14.xyz);
    r12.z = dot(r4.xyz, r1.xyz);
    r10.xyz = r8.xyz;
    r4.xyz = r12.xyz;
  } else {
    r7.xz = r9.xz * float2(-1,1) + float2(1,0);
    r7.y = r11.x;
    r10.z = r4.y;
    r4.x = r10.w;
    r4.y = r11.z;
    r0.y = 0;
  }
  r1.xyz = cb1[1].xyz * r2.yyy;
  r1.xyz = cb1[0].xyz * r2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = cb2[0].xxx ? r1.xyz : r2.xyz;
  r3.xw = cmp(asint(cb2[9].yz) == int2(-1,-1));
  if (r3.x != 0) {
    r1.w = cb2[23].w;
  }
  if (r3.x == 0) {
    r8.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r8.x != 0) {
      r2.w = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t1.Load(r2.w).x;
    } else {
      r2.w = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t0.Load(r2.w).x;
    }
  }
  r1.xyz = cb0[67].xyz + -r1.xyz;
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = rsqrt(r2.w);
  r1.xyz = r2.www * r1.xyz;
  r8.xyz = cb1[4].xxx * cb1[0].xyz;
  r9.xyz = cb1[4].yyy * cb1[1].xyz;
  r11.xyz = cb1[4].zzz * cb1[2].xyz;
  r8.x = dot(r1.xyz, r8.xyz);
  r8.y = dot(r1.xyz, r9.xyz);
  r8.z = dot(r1.xyz, r11.xyz);
  r1.xyz = cb2[0].xxx ? r8.xyz : r1.xyz;
  r1.xyz = r1.xyz * r1.www + r2.xyz;
  r2.xyz = cb2[1].xyz * r5.xyz;
  r5.x = dot(r2.xyz, r7.xyz);
  r5.y = dot(r2.xyz, r10.xyz);
  r5.z = dot(r2.xyz, r4.xyz);
  r2.xyz = r5.xyz + r1.xyz;
  r1.xyz = cb2[1].www ? r1.xyz : r2.xyz;
  r2.xyz = r7.xyz * r6.xyz;
  r5.xyz = r10.xyz * r6.xyz;
  r6.xyz = r6.xyz * r4.xyz;
  if (r3.y != 0) {
    r8.xyz = cb2[13].xyz;
  }
  if (r3.y == 0) {
    r3.xy = asint(cb2[6].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r8.x = t1.Load(r1.w).x;
      r9.xy = (int2)r3.yy + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[26].xx), (int2)r0.xx);
      r8.y = t1.Load(r9.x).x;
      r8.z = t1.Load(r9.y).x;
    } else {
      r1.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r8.x = t0.Load(r1.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r8.y = t0.Load(r3.x).x;
      r8.z = t0.Load(r3.y).x;
    }
  }
  if (r0.w != 0) {
    r9.xyz = cb2[11].xyz;
  }
  if (r0.w == 0) {
    r3.xy = asint(cb2[5].zz) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r9.x = t1.Load(r0.w).x;
      r11.xy = (int2)r3.yy + int2(1,2);
      r11.xy = mad((int2)r11.xy, asint(cb2[26].xx), (int2)r0.xx);
      r9.y = t1.Load(r11.x).x;
      r9.z = t1.Load(r11.y).x;
    } else {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r9.x = t0.Load(r0.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r9.y = t0.Load(r3.x).x;
      r9.z = t0.Load(r3.y).x;
    }
  }
  if (r3.z != 0) {
    r11.xyzw = cb2[16].xyzw;
  }
  if (r3.z == 0) {
    r3.xy = asint(cb2[6].ww) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r11.x = t1.Load(r0.w).x;
      r12.xyz = (int3)r3.yyy + int3(1,2,3);
      r12.xyz = mad((int3)r12.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r11.y = t1.Load(r12.x).x;
      r11.z = t1.Load(r12.y).x;
      r11.w = t1.Load(r12.z).x;
    } else {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r11.x = t0.Load(r0.w).x;
      r3.xyz = (int3)r3.yyy + int3(1,2,3);
      r3.xyz = mad((int3)r3.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r11.y = t0.Load(r3.x).x;
      r11.z = t0.Load(r3.y).x;
      r11.w = t0.Load(r3.z).x;
    }
  }
  if (r0.z != 0) {
    r3.xyz = cb2[18].xyz;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb2[7].yy) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r0.z).x;
      r12.xy = (int2)r0.ww + int2(1,2);
      r12.xy = mad((int2)r12.xy, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t1.Load(r12.x).x;
      r3.z = t1.Load(r12.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t0.Load(r0.z).x;
      r3.z = t0.Load(r0.w).x;
    }
  }
  r12.xyz = cb2[2].xyz * r3.xyz;
  r0.z = dot(r11.xyzw, r11.xyzw);
  r0.z = rsqrt(r0.z);
  r11.xyzw = r11.xyzw * r0.zzzz;
  r13.xyzw = r11.zzxy + r11.zzxy;
  r0.zw = r13.zw * r11.xy;
  r14.xyzw = r13.xyzw * r11.yzww;
  r1.w = r13.y * r11.w;
  r15.xyz = r11.yxx * r13.wzy + r14.yyw;
  r16.x = r11.x * r13.w + r1.w;
  r16.w = r11.x * r13.y + -r14.w;
  r17.x = r11.x * r13.w + -r1.w;
  r16.yz = float2(1,1) + -r15.yx;
  r17.z = r14.x + r14.z;
  r11.y = r11.y * r13.x + -r14.z;
  r0.z = r0.z + r0.w;
  r11.z = 1 + -r0.z;
  if (r0.y != 0) {
    switch (r0.y) {
      case 1 :      r0.z = dot(r8.xyz, r8.xyz);
      r0.z = sqrt(r0.z);
      r0.w = cmp(0 < r0.z);
      r8.xyz = r8.xyz / r0.zzz;
      r8.xyz = r0.www ? r8.xyz : 0;
      r14.x = cb1[10].z * cb1[4].x;
      r14.y = cb1[11].z * cb1[4].y;
      r14.z = cb1[12].z * cb1[4].z;
      r14.xyz = cb2[0].xxx ? r14.xyz : float3(0,0,1);
      r13.xyz = r0.www ? r8.zxy : r14.zxy;
      r0.y = 1;
      break;
      case 2 :      r8.xyz = cb1[11].xyz * r9.yyy;
      r8.xyz = cb1[10].xyz * r9.xxx + r8.xyz;
      r8.xyz = cb1[12].xyz * r9.zzz + r8.xyz;
      r8.xyz = cb1[13].xyz + r8.xyz;
      r8.xyz = cb2[0].xxx ? r8.xyz : r9.xyz;
      r8.xyz = cb0[111].xyz + -r8.xyz;
      r0.z = dot(r8.xyz, r8.xyz);
      r0.z = rsqrt(r0.z);
      r8.xyz = r8.xyz * r0.zzz;
      r14.xyz = cb1[10].xyz * cb1[4].xxx;
      r18.xyz = cb1[11].xyz * cb1[4].yyy;
      r19.xyz = cb1[12].xyz * cb1[4].zzz;
      r14.x = dot(r8.xyz, r14.xyz);
      r14.y = dot(r8.xyz, r18.xyz);
      r14.z = dot(r8.xyz, r19.xyz);
      r13.xyz = cb2[0].xxx ? r14.zxy : r8.zxy;
      r0.y = 2;
      break;
      default :
      r8.xyz = cb1[10].xyz * cb1[4].xxx;
      r14.xyz = cb1[11].xyz * cb1[4].yyy;
      r18.xyz = cb1[12].xyz * cb1[4].zzz;
      r8.x = dot(-cb0[101].xyz, r8.xyz);
      r8.y = dot(-cb0[101].xyz, r14.xyz);
      r8.z = dot(-cb0[101].xyz, r18.xyz);
      r13.xyz = cb2[0].xxx ? r8.zxy : -cb0[101].zxy;
      break;
    }
    if (cb2[24].w != 0) {
      r0.z = cmp(asint(cb2[0].x) != 0);
      r8.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.z;
      r1.w = r0.w ? r8.y : 0;
      r1.w = (int)r1.w | (int)r8.x;
      r0.z = r0.z ? r1.w : 0;
      r8.xyz = cb1[10].yzx * cb1[4].xxx;
      r14.xyz = cb1[11].yzx * cb1[4].yyy;
      r18.xyz = cb1[12].yzx * cb1[4].zzz;
      r19.z = dot(cb2[25].yzx, r8.xyz);
      r19.x = dot(cb2[25].yzx, r14.xyz);
      r19.y = dot(cb2[25].yzx, r18.xyz);
      r1.w = ~(int)r1.w;
      r0.w = r0.w ? r1.w : 0;
      r14.xyz = cb2[25].yyy * r14.xyz;
      r8.xyz = r8.xyz * cb2[25].xxx + r14.xyz;
      r8.xyz = r18.xyz * cb2[25].zzz + r8.xyz;
      r8.xyz = r0.www ? r8.xyz : cb2[25].yzx;
      r8.xyz = r0.zzz ? r19.xzy : r8.xzy;
      r0.z = dot(r13.zyx, r8.xyz);
      r0.z = cmp(0.99000001 < abs(r0.z));
      r0.w = cmp(0.99000001 < abs(r8.z));
      r14.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r14.xyz = r0.zzz ? r14.xyz : r13.yzx;
      r18.xyz = r14.xyz * r8.xzy;
      r14.xyz = r8.yxz * r14.yzx + -r18.xyz;
      r0.z = dot(r14.xyz, r14.xyz);
      r0.z = rsqrt(r0.z);
      r14.xyz = r14.xyz * r0.zzz;
      r18.xyz = r14.xyz * r8.xzy;
      r18.xyz = r14.zxy * r8.zyx + -r18.xyz;
      r19.x = r18.x;
      r19.y = r14.y;
      r19.z = r8.y;
      r20.x = r18.y;
      r20.y = r14.z;
      r20.z = r8.x;
      r8.x = r18.z;
      r8.y = r14.x;
    } else {
      r0.y = cmp((int)r0.y == 3);
      r0.z = cmp(0.99000001 < abs(r13.x));
      r0.w = cmp(0 < r13.x);
      r1.w = cmp(r13.x < 0);
      r0.w = (int)r0.w + (int)-r1.w;
      r0.w = (int)r0.w;
      r14.xyz = float3(1,0,0) * r0.www;
      r14.xyz = r0.zzz ? r14.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[100].xyz : r14.xyz;
      r14.xyz = cb1[10].xyz * cb1[4].xxx;
      r18.xyz = cb1[11].xyz * cb1[4].yyy;
      r21.xyz = cb1[12].xyz * cb1[4].zzz;
      r14.x = dot(r0.yzw, r14.xyz);
      r14.y = dot(r0.yzw, r18.xyz);
      r14.z = dot(r0.yzw, r21.xyz);
      r0.yzw = cb2[0].xxx ? r14.xyz : r0.yzw;
      r14.xyz = r0.yzw * r13.xyz;
      r0.yzw = r0.wyz * r13.yzx + -r14.xyz;
      r1.w = dot(r0.yzw, r0.yzw);
      r1.w = rsqrt(r1.w);
      r0.yzw = r1.www * r0.yzw;
      r14.xyz = r13.xyz * r0.yzw;
      r8.xyz = r13.zxy * r0.zwy + -r14.xyz;
      r19.x = r13.y;
      r19.y = r0.w;
      r19.z = r8.x;
      r20.x = r13.z;
      r20.y = r0.y;
      r20.z = r8.y;
      r8.x = r13.x;
      r8.y = r0.z;
    }
    r13.x = dot(r16.zxw, r19.xyz);
    r14.x = dot(r16.zxw, r20.xyz);
    r18.x = dot(r16.zxw, r8.xyz);
    r17.y = r16.y;
    r13.y = dot(r17.xyz, r19.xyz);
    r14.y = dot(r17.xyz, r20.xyz);
    r18.y = dot(r17.xyz, r8.xyz);
    r11.x = r15.z;
    r13.z = dot(r11.xyz, r19.xyz);
    r14.z = dot(r11.xyz, r20.xyz);
    r18.z = dot(r11.xyz, r8.xyz);
    r16.xyz = r14.xyz;
    r11.xyz = r18.xyz;
  } else {
    r13.xz = r15.xz * float2(-1,1) + float2(1,0);
    r13.y = r17.x;
    r16.z = r11.y;
    r11.x = r16.w;
    r11.y = r17.z;
  }
  r0.yzw = cb1[11].xyz * r9.yyy;
  r0.yzw = cb1[10].xyz * r9.xxx + r0.yzw;
  r0.yzw = cb1[12].xyz * r9.zzz + r0.yzw;
  r0.yzw = cb1[13].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r9.xyz;
  if (r3.w != 0) {
    r1.w = cb2[24].x;
  }
  if (r3.w == 0) {
    r8.xy = asint(cb2[9].zz) & int2(0x80000000,0x7fffffff);
    if (r8.x != 0) {
      r3.w = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t1.Load(r3.w).x;
    } else {
      r0.x = mad((int)r8.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[111].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r8.xyz = cb1[10].xyz * cb1[4].xxx;
  r14.xyz = cb1[11].xyz * cb1[4].yyy;
  r15.xyz = cb1[12].xyz * cb1[4].zzz;
  r8.x = dot(r0.xyz, r8.xyz);
  r8.y = dot(r0.xyz, r14.xyz);
  r8.z = dot(r0.xyz, r15.xyz);
  r0.xyz = cb2[0].xxx ? r8.xyz : r0.xyz;
  r0.xyz = r0.xyz * r1.www + r9.xyz;
  r3.xyz = cb2[1].xyz * r3.xyz;
  r8.x = dot(r3.xyz, r13.xyz);
  r8.y = dot(r3.xyz, r16.xyz);
  r8.z = dot(r3.xyz, r11.xyz);
  r3.xyz = r8.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r3.xyz;
  r3.xyz = r13.xyz * r12.xyz;
  r8.xyz = r16.xyz * r12.xyz;
  r9.xyz = r12.xyz * r11.xyz;
  if (cb2[0].x != 0) {
    r11.xyz = cb1[11].xyz * r8.xxx;
    r11.xyz = r3.xxx * cb1[10].xyz + r11.xyz;
    r11.xyz = r9.xxx * cb1[12].xyz + r11.xyz;
    r12.xyz = cb1[11].xyz * r8.yyy;
    r12.xyz = r3.yyy * cb1[10].xyz + r12.xyz;
    r12.xyz = r9.yyy * cb1[12].xyz + r12.xyz;
    r13.xyz = cb1[11].xyz * r8.zzz;
    r13.xyz = r3.zzz * cb1[10].xyz + r13.xyz;
    r9.xyz = r9.zzz * cb1[12].xyz + r13.xyz;
    r13.xyz = cb1[11].xyz * r0.yyy;
    r13.xyz = r0.xxx * cb1[10].xyz + r13.xyz;
    r13.xyz = r0.zzz * cb1[12].xyz + r13.xyz;
    r0.xyz = cb1[13].xyz + r13.xyz;
    r13.xyz = cb1[1].xyz * r5.xxx;
    r13.xyz = r2.xxx * cb1[0].xyz + r13.xyz;
    r13.xyz = r6.xxx * cb1[2].xyz + r13.xyz;
    r14.xyz = cb1[1].xyz * r5.yyy;
    r14.xyz = r2.yyy * cb1[0].xyz + r14.xyz;
    r14.xyz = r6.yyy * cb1[2].xyz + r14.xyz;
    r15.xyz = cb1[1].xyz * r5.zzz;
    r15.xyz = r2.zzz * cb1[0].xyz + r15.xyz;
    r6.xyz = r6.zzz * cb1[2].xyz + r15.xyz;
    r15.xyz = cb1[1].xyz * r1.yyy;
    r15.xyz = r1.xxx * cb1[0].xyz + r15.xyz;
    r15.xyz = r1.zzz * cb1[2].xyz + r15.xyz;
    r1.xyz = cb1[3].xyz + r15.xyz;
    r15.xyz = cb1[1].xyz * r10.xxx;
    r15.xyz = r7.xxx * cb1[0].xyz + r15.xyz;
    r15.xyz = r4.xxx * cb1[2].xyz + r15.xyz;
    r16.xyz = cb1[1].xyz * r10.yyy;
    r16.xyz = r7.yyy * cb1[0].xyz + r16.xyz;
    r16.xyz = r4.yyy * cb1[2].xyz + r16.xyz;
    r17.xyz = cb1[1].xyz * r10.zzz;
    r17.xyz = r7.zzz * cb1[0].xyz + r17.xyz;
    r17.xyz = r4.zzz * cb1[2].xyz + r17.xyz;
    r15.xyz = cb1[4].xxx * r15.xyz;
    r16.xyz = cb1[4].yyy * r16.xyz;
    r4.xyz = cb1[4].zzz * r17.xyz;
    r2.x = r13.x;
    r2.y = r14.x;
    r2.z = r6.x;
    r5.x = r13.y;
    r5.y = r14.y;
    r5.z = r6.y;
    r6.x = r13.z;
    r6.y = r14.z;
    r7.x = r15.x;
    r7.y = r16.x;
    r7.z = r4.x;
    r10.x = r15.y;
    r10.y = r16.y;
    r10.z = r4.y;
    r4.x = r15.z;
    r4.y = r16.z;
    r3.x = r11.x;
    r3.y = r12.x;
    r3.z = r9.x;
    r8.x = r11.y;
    r8.y = r12.y;
    r8.z = r9.y;
    r9.x = r11.z;
    r9.y = r12.z;
  }
  if (cb2[1].w != 0) {
    r11.xyz = cb2[1].xyz + r1.xyz;
    r12.xyz = cb2[1].xyz + r0.xyz;
    r2.w = r11.x;
    r5.w = r11.y;
    r6.w = r11.z;
    r3.w = r12.x;
    r8.w = r12.y;
    r9.w = r12.z;
  } else {
    r2.w = r1.x;
    r5.w = r1.y;
    r6.w = r1.z;
    r3.w = r0.x;
    r8.w = r0.y;
    r9.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r2.xyzw);
  r0.y = dot(v0.xyzw, r5.xyzw);
  r0.z = dot(v0.xyzw, r6.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.xyz = v2.yzx * v1.xyz;
  r1.xyz = v2.xyz * v1.yzx + -r1.xyz;
  r1.xyz = v2.www * r1.xyz;
  r2.xyz = v2.yzx * r1.xyz;
  r1.xyz = r1.zxy * v2.zxy + -r2.xyz;
  r1.xyz = v2.www * r1.xyz;
  r2.x = dot(r1.xyz, r7.xyz);
  r2.y = dot(r1.xyz, r10.xyz);
  r2.z = dot(r1.xyz, r4.xyz);
  r1.x = dot(v2.xyz, r7.xyz);
  r1.y = dot(v2.xyz, r10.xyz);
  r1.z = dot(v2.xyz, r4.xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r2.xyz * r0.www;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r1.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  r1.x = dot(v0.xyzw, r3.xyzw);
  r1.y = dot(v0.xyzw, r8.xyzw);
  r1.z = dot(v0.xyzw, r9.xyzw);
  r1.xyz = cb0[113].xyz + r1.xyz;
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
  return;
}
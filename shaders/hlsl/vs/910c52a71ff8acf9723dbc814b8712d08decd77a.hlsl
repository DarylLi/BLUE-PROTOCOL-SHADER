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
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r4.xyz = r6.xyz * r4.xyz;
  if (r3.y != 0) {
    r6.xyz = cb2[13].xyz;
  }
  if (r3.y == 0) {
    r3.xy = asint(cb2[6].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r6.x = t1.Load(r1.w).x;
      r7.xy = (int2)r3.yy + int2(1,2);
      r7.xy = mad((int2)r7.xy, asint(cb2[26].xx), (int2)r0.xx);
      r6.y = t1.Load(r7.x).x;
      r6.z = t1.Load(r7.y).x;
    } else {
      r1.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r6.x = t0.Load(r1.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r6.y = t0.Load(r3.x).x;
      r6.z = t0.Load(r3.y).x;
    }
  }
  if (r0.w != 0) {
    r7.xyz = cb2[11].xyz;
  }
  if (r0.w == 0) {
    r3.xy = asint(cb2[5].zz) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r7.x = t1.Load(r0.w).x;
      r8.xy = (int2)r3.yy + int2(1,2);
      r8.xy = mad((int2)r8.xy, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t1.Load(r8.x).x;
      r7.z = t1.Load(r8.y).x;
    } else {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r7.x = t0.Load(r0.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[26].xx), (int2)r0.xx);
      r7.y = t0.Load(r3.x).x;
      r7.z = t0.Load(r3.y).x;
    }
  }
  if (r3.z != 0) {
    r8.xyzw = cb2[16].xyzw;
  }
  if (r3.z == 0) {
    r3.xy = asint(cb2[6].ww) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r8.x = t1.Load(r0.w).x;
      r9.xyz = (int3)r3.yyy + int3(1,2,3);
      r9.xyz = mad((int3)r9.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r8.y = t1.Load(r9.x).x;
      r8.z = t1.Load(r9.y).x;
      r8.w = t1.Load(r9.z).x;
    } else {
      r0.w = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r8.x = t0.Load(r0.w).x;
      r3.xyz = (int3)r3.yyy + int3(1,2,3);
      r3.xyz = mad((int3)r3.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r8.y = t0.Load(r3.x).x;
      r8.z = t0.Load(r3.y).x;
      r8.w = t0.Load(r3.z).x;
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
      r9.xy = (int2)r0.ww + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t1.Load(r9.x).x;
      r3.z = t1.Load(r9.y).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t0.Load(r0.z).x;
      r3.z = t0.Load(r0.w).x;
    }
  }
  r9.xyz = cb2[2].xyz * r3.xyz;
  r0.z = dot(r8.xyzw, r8.xyzw);
  r0.z = rsqrt(r0.z);
  r8.xyzw = r8.xyzw * r0.zzzz;
  r10.xyzw = r8.zzxy + r8.zzxy;
  r0.zw = r10.zw * r8.xy;
  r11.xyzw = r10.xyzw * r8.yzww;
  r1.w = r10.y * r8.w;
  r12.xyz = r8.yxx * r10.wzy + r11.yyw;
  r13.x = r8.x * r10.w + r1.w;
  r13.w = r8.x * r10.y + -r11.w;
  r14.x = r8.x * r10.w + -r1.w;
  r13.yz = float2(1,1) + -r12.yx;
  r14.z = r11.x + r11.z;
  r8.y = r8.y * r10.x + -r11.z;
  r0.z = r0.z + r0.w;
  r8.z = 1 + -r0.z;
  if (r0.y != 0) {
    switch (r0.y) {
      case 1 :      r0.z = dot(r6.xyz, r6.xyz);
      r0.z = sqrt(r0.z);
      r0.w = cmp(0 < r0.z);
      r6.xyz = r6.xyz / r0.zzz;
      r6.xyz = r0.www ? r6.xyz : 0;
      r11.x = cb1[10].z * cb1[4].x;
      r11.y = cb1[11].z * cb1[4].y;
      r11.z = cb1[12].z * cb1[4].z;
      r11.xyz = cb2[0].xxx ? r11.xyz : float3(0,0,1);
      r10.xyz = r0.www ? r6.zxy : r11.zxy;
      r0.y = 1;
      break;
      case 2 :      r6.xyz = cb1[11].xyz * r7.yyy;
      r6.xyz = cb1[10].xyz * r7.xxx + r6.xyz;
      r6.xyz = cb1[12].xyz * r7.zzz + r6.xyz;
      r6.xyz = cb1[13].xyz + r6.xyz;
      r6.xyz = cb2[0].xxx ? r6.xyz : r7.xyz;
      r6.xyz = cb0[111].xyz + -r6.xyz;
      r0.z = dot(r6.xyz, r6.xyz);
      r0.z = rsqrt(r0.z);
      r6.xyz = r6.xyz * r0.zzz;
      r11.xyz = cb1[10].xyz * cb1[4].xxx;
      r15.xyz = cb1[11].xyz * cb1[4].yyy;
      r16.xyz = cb1[12].xyz * cb1[4].zzz;
      r11.x = dot(r6.xyz, r11.xyz);
      r11.y = dot(r6.xyz, r15.xyz);
      r11.z = dot(r6.xyz, r16.xyz);
      r10.xyz = cb2[0].xxx ? r11.zxy : r6.zxy;
      r0.y = 2;
      break;
      default :
      r6.xyz = cb1[10].xyz * cb1[4].xxx;
      r11.xyz = cb1[11].xyz * cb1[4].yyy;
      r15.xyz = cb1[12].xyz * cb1[4].zzz;
      r6.x = dot(-cb0[101].xyz, r6.xyz);
      r6.y = dot(-cb0[101].xyz, r11.xyz);
      r6.z = dot(-cb0[101].xyz, r15.xyz);
      r10.xyz = cb2[0].xxx ? r6.zxy : -cb0[101].zxy;
      break;
    }
    if (cb2[24].w != 0) {
      r0.z = cmp(asint(cb2[0].x) != 0);
      r6.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r0.w = ~(int)r0.z;
      r1.w = r0.w ? r6.y : 0;
      r1.w = (int)r1.w | (int)r6.x;
      r0.z = r0.z ? r1.w : 0;
      r6.xyz = cb1[10].yzx * cb1[4].xxx;
      r11.xyz = cb1[11].yzx * cb1[4].yyy;
      r15.xyz = cb1[12].yzx * cb1[4].zzz;
      r16.z = dot(cb2[25].yzx, r6.xyz);
      r16.x = dot(cb2[25].yzx, r11.xyz);
      r16.y = dot(cb2[25].yzx, r15.xyz);
      r1.w = ~(int)r1.w;
      r0.w = r0.w ? r1.w : 0;
      r11.xyz = cb2[25].yyy * r11.xyz;
      r6.xyz = r6.xyz * cb2[25].xxx + r11.xyz;
      r6.xyz = r15.xyz * cb2[25].zzz + r6.xyz;
      r6.xyz = r0.www ? r6.xyz : cb2[25].yzx;
      r6.xyz = r0.zzz ? r16.xzy : r6.xzy;
      r0.z = dot(r10.zyx, r6.xyz);
      r0.z = cmp(0.99000001 < abs(r0.z));
      r0.w = cmp(0.99000001 < abs(r6.z));
      r11.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
      r11.xyz = r0.zzz ? r11.xyz : r10.yzx;
      r15.xyz = r11.xyz * r6.xzy;
      r11.xyz = r6.yxz * r11.yzx + -r15.xyz;
      r0.z = dot(r11.xyz, r11.xyz);
      r0.z = rsqrt(r0.z);
      r11.xyz = r11.xyz * r0.zzz;
      r15.xyz = r11.xyz * r6.xzy;
      r15.xyz = r11.zxy * r6.zyx + -r15.xyz;
      r16.x = r15.x;
      r16.y = r11.y;
      r16.z = r6.y;
      r17.x = r15.y;
      r17.y = r11.z;
      r17.z = r6.x;
      r6.x = r15.z;
      r6.y = r11.x;
    } else {
      r0.y = cmp((int)r0.y == 3);
      r0.z = cmp(0.99000001 < abs(r10.x));
      r0.w = cmp(0 < r10.x);
      r1.w = cmp(r10.x < 0);
      r0.w = (int)r0.w + (int)-r1.w;
      r0.w = (int)r0.w;
      r11.xyz = float3(1,0,0) * r0.www;
      r11.xyz = r0.zzz ? r11.xyz : float3(0,0,1);
      r0.yzw = r0.yyy ? cb0[100].xyz : r11.xyz;
      r11.xyz = cb1[10].xyz * cb1[4].xxx;
      r15.xyz = cb1[11].xyz * cb1[4].yyy;
      r18.xyz = cb1[12].xyz * cb1[4].zzz;
      r11.x = dot(r0.yzw, r11.xyz);
      r11.y = dot(r0.yzw, r15.xyz);
      r11.z = dot(r0.yzw, r18.xyz);
      r0.yzw = cb2[0].xxx ? r11.xyz : r0.yzw;
      r11.xyz = r0.yzw * r10.xyz;
      r0.yzw = r0.wyz * r10.yzx + -r11.xyz;
      r1.w = dot(r0.yzw, r0.yzw);
      r1.w = rsqrt(r1.w);
      r0.yzw = r1.www * r0.yzw;
      r11.xyz = r10.xyz * r0.yzw;
      r6.xyz = r10.zxy * r0.zwy + -r11.xyz;
      r16.x = r10.y;
      r16.y = r0.w;
      r16.z = r6.x;
      r17.x = r10.z;
      r17.y = r0.y;
      r17.z = r6.y;
      r6.x = r10.x;
      r6.y = r0.z;
    }
    r10.x = dot(r13.zxw, r16.xyz);
    r11.x = dot(r13.zxw, r17.xyz);
    r15.x = dot(r13.zxw, r6.xyz);
    r14.y = r13.y;
    r10.y = dot(r14.xyz, r16.xyz);
    r11.y = dot(r14.xyz, r17.xyz);
    r15.y = dot(r14.xyz, r6.xyz);
    r8.x = r12.z;
    r10.z = dot(r8.xyz, r16.xyz);
    r11.z = dot(r8.xyz, r17.xyz);
    r15.z = dot(r8.xyz, r6.xyz);
    r13.xyz = r11.xyz;
    r8.xyz = r15.xyz;
  } else {
    r10.xz = r12.xz * float2(-1,1) + float2(1,0);
    r10.y = r14.x;
    r13.z = r8.y;
    r8.x = r13.w;
    r8.y = r14.z;
  }
  r0.yzw = cb1[11].xyz * r7.yyy;
  r0.yzw = cb1[10].xyz * r7.xxx + r0.yzw;
  r0.yzw = cb1[12].xyz * r7.zzz + r0.yzw;
  r0.yzw = cb1[13].xyz + r0.yzw;
  r0.yzw = cb2[0].xxx ? r0.yzw : r7.xyz;
  if (r3.w != 0) {
    r1.w = cb2[24].x;
  }
  if (r3.w == 0) {
    r6.xy = asint(cb2[9].zz) & int2(0x80000000,0x7fffffff);
    if (r6.x != 0) {
      r3.w = mad((int)r6.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t1.Load(r3.w).x;
    } else {
      r0.x = mad((int)r6.y, asint(cb2[26].x), (int)r0.x);
      r1.w = t0.Load(r0.x).x;
    }
  }
  r0.xyz = cb0[111].xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r6.xyz = cb1[10].xyz * cb1[4].xxx;
  r11.xyz = cb1[11].xyz * cb1[4].yyy;
  r12.xyz = cb1[12].xyz * cb1[4].zzz;
  r6.x = dot(r0.xyz, r6.xyz);
  r6.y = dot(r0.xyz, r11.xyz);
  r6.z = dot(r0.xyz, r12.xyz);
  r0.xyz = cb2[0].xxx ? r6.xyz : r0.xyz;
  r0.xyz = r0.xyz * r1.www + r7.xyz;
  r3.xyz = cb2[1].xyz * r3.xyz;
  r6.x = dot(r3.xyz, r10.xyz);
  r6.y = dot(r3.xyz, r13.xyz);
  r6.z = dot(r3.xyz, r8.xyz);
  r3.xyz = r6.xyz + r0.xyz;
  r0.xyz = cb2[1].www ? r0.xyz : r3.xyz;
  r3.xyz = r10.xyz * r9.xyz;
  r6.xyz = r13.xyz * r9.xyz;
  r7.xyz = r9.xyz * r8.xyz;
  if (cb2[0].x != 0) {
    r8.xyz = cb1[11].xyz * r6.xxx;
    r8.xyz = r3.xxx * cb1[10].xyz + r8.xyz;
    r8.xyz = r7.xxx * cb1[12].xyz + r8.xyz;
    r9.xyz = cb1[11].xyz * r6.yyy;
    r9.xyz = r3.yyy * cb1[10].xyz + r9.xyz;
    r9.xyz = r7.yyy * cb1[12].xyz + r9.xyz;
    r10.xyz = cb1[11].xyz * r6.zzz;
    r10.xyz = r3.zzz * cb1[10].xyz + r10.xyz;
    r7.xyz = r7.zzz * cb1[12].xyz + r10.xyz;
    r10.xyz = cb1[11].xyz * r0.yyy;
    r10.xyz = r0.xxx * cb1[10].xyz + r10.xyz;
    r10.xyz = r0.zzz * cb1[12].xyz + r10.xyz;
    r0.xyz = cb1[13].xyz + r10.xyz;
    r10.xyz = cb1[1].xyz * r5.xxx;
    r10.xyz = r2.xxx * cb1[0].xyz + r10.xyz;
    r10.xyz = r4.xxx * cb1[2].xyz + r10.xyz;
    r11.xyz = cb1[1].xyz * r5.yyy;
    r11.xyz = r2.yyy * cb1[0].xyz + r11.xyz;
    r11.xyz = r4.yyy * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r5.zzz;
    r12.xyz = r2.zzz * cb1[0].xyz + r12.xyz;
    r4.xyz = r4.zzz * cb1[2].xyz + r12.xyz;
    r12.xyz = cb1[1].xyz * r1.yyy;
    r12.xyz = r1.xxx * cb1[0].xyz + r12.xyz;
    r12.xyz = r1.zzz * cb1[2].xyz + r12.xyz;
    r1.xyz = cb1[3].xyz + r12.xyz;
    r2.x = r10.x;
    r2.y = r11.x;
    r2.z = r4.x;
    r5.x = r10.y;
    r5.y = r11.y;
    r5.z = r4.y;
    r4.x = r10.z;
    r4.y = r11.z;
    r3.x = r8.x;
    r3.y = r9.x;
    r3.z = r7.x;
    r6.x = r8.y;
    r6.y = r9.y;
    r6.z = r7.y;
    r7.x = r8.z;
    r7.y = r9.z;
  }
  if (cb2[1].w != 0) {
    r8.xyz = cb2[1].xyz + r1.xyz;
    r9.xyz = cb2[1].xyz + r0.xyz;
    r2.w = r8.x;
    r5.w = r8.y;
    r4.w = r8.z;
    r3.w = r9.x;
    r6.w = r9.y;
    r7.w = r9.z;
  } else {
    r2.w = r1.x;
    r5.w = r1.y;
    r4.w = r1.z;
    r3.w = r0.x;
    r6.w = r0.y;
    r7.w = r0.z;
  }
  r0.x = dot(v0.xyzw, r2.xyzw);
  r0.y = dot(v0.xyzw, r5.xyzw);
  r0.z = dot(v0.xyzw, r4.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.x = dot(v0.xyzw, r3.xyzw);
  r1.y = dot(v0.xyzw, r6.xyzw);
  r1.z = dot(v0.xyzw, r7.xyzw);
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
  return;
}
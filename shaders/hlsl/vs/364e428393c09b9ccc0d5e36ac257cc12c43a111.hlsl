// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[27];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  uint v4 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float3 p2 : TEXCOORD7,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb3[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v4.x + asint(cb3[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v4.x;
  }
  r0.yz = cmp(asint(cb3[5].wy) == int2(-1,-1));
  if (r0.y != 0) {
    r1.xyz = cb3[12].xyz;
  }
  if (r0.y == 0) {
    r0.yw = asint(cb3[5].ww) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb3[26].x), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r2.xy = (int2)r0.ww + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb3[26].xx), (int2)r0.xx);
      r1.y = t1.Load(r2.x).x;
      r1.z = t1.Load(r2.y).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb3[26].x), (int)r0.x);
      r1.x = t0.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb3[26].xx), (int2)r0.xx);
      r1.y = t0.Load(r0.y).x;
      r1.z = t0.Load(r0.w).x;
    }
  }
  if (r0.z != 0) {
    r2.xyz = cb3[10].xyz;
  }
  if (r0.z == 0) {
    r0.yz = asint(cb3[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.zz + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb3[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r0.y).x;
      r2.z = t1.Load(r0.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb3[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r0.y).x;
      r2.z = t0.Load(r0.z).x;
    }
  }
  r0.y = cmp(asint(cb3[6].z) == -1);
  if (r0.y != 0) {
    r3.xyzw = cb3[15].xyzw;
  }
  if (r0.y == 0) {
    r0.yz = asint(cb3[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r3.x = t1.Load(r0.y).x;
      r4.xyz = (int3)r0.zzz + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb3[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r3.x = t0.Load(r0.y).x;
      r0.yzw = (int3)r0.zzz + int3(1,2,3);
      r0.yzw = mad((int3)r0.yzw, asint(cb3[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r0.y).x;
      r3.z = t0.Load(r0.z).x;
      r3.w = t0.Load(r0.w).x;
    }
  }
  r0.y = cmp(asint(cb3[7].x) == -1);
  if (r0.y != 0) {
    r4.xyz = cb3[17].xyz;
  }
  if (r0.y == 0) {
    r0.yz = asint(cb3[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r4.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.zz + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb3[26].xx), (int2)r0.xx);
      r4.y = t1.Load(r0.y).x;
      r4.z = t1.Load(r0.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb3[26].x), (int)r0.x);
      r4.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb3[26].xx), (int2)r0.xx);
      r4.y = t0.Load(r0.y).x;
      r4.z = t0.Load(r0.z).x;
    }
  }
  r0.yzw = cb3[2].xyz * r4.xyz;
  r1.w = dot(r3.xyzw, r3.xyzw);
  r1.w = rsqrt(r1.w);
  r3.xyzw = r3.xyzw * r1.wwww;
  r5.xyzw = r3.zzxy + r3.zzxy;
  r6.xy = r5.zw * r3.xy;
  r7.xyzw = r5.xyzw * r3.yzww;
  r1.w = r5.y * r3.w;
  r8.xyz = r3.yxx * r5.wzy + r7.yyw;
  r9.x = r3.x * r5.w + r1.w;
  r9.w = r3.x * r5.y + -r7.w;
  r10.x = r3.x * r5.w + -r1.w;
  r9.yz = float2(1,1) + -r8.yx;
  r10.z = r7.x + r7.z;
  r3.y = r3.y * r5.x + -r7.z;
  r1.w = r6.x + r6.y;
  r3.z = 1 + -r1.w;
  if (cb3[24].z != 0) {
    switch (cb3[24].z) {
      case 1 :      r2.w = dot(r1.xyz, r1.xyz);
      r2.w = sqrt(r2.w);
      r3.w = cmp(0 < r2.w);
      r1.xyz = r1.xyz / r2.www;
      r1.xyz = r3.www ? r1.xyz : 0;
      r6.x = cb1[4].x * cb1[0].z;
      r6.y = cb1[4].y * cb1[1].z;
      r6.z = cb1[4].z * cb1[2].z;
      r6.xyz = cb3[0].xxx ? r6.xyz : float3(0,0,1);
      r5.xyz = r3.www ? r1.zxy : r6.zxy;
      r1.w = 1;
      break;
      case 2 :      r1.xyz = cb1[1].xyz * r2.yyy;
      r1.xyz = cb1[0].xyz * r2.xxx + r1.xyz;
      r1.xyz = cb1[2].xyz * r2.zzz + r1.xyz;
      r1.xyz = cb1[3].xyz + r1.xyz;
      r1.xyz = cb3[0].xxx ? r1.xyz : r2.xyz;
      r1.xyz = cb0[67].xyz + -r1.xyz;
      r2.w = dot(r1.xyz, r1.xyz);
      r2.w = rsqrt(r2.w);
      r1.xyz = r2.www * r1.xyz;
      r6.xyz = cb1[4].xxx * cb1[0].xyz;
      r7.xyz = cb1[4].yyy * cb1[1].xyz;
      r11.xyz = cb1[4].zzz * cb1[2].xyz;
      r6.x = dot(r1.xyz, r6.xyz);
      r6.y = dot(r1.xyz, r7.xyz);
      r6.z = dot(r1.xyz, r11.xyz);
      r5.xyz = cb3[0].xxx ? r6.zxy : r1.zxy;
      r1.w = 2;
      break;
      default :
      r1.xyz = cb1[4].xxx * cb1[0].xyz;
      r6.xyz = cb1[4].yyy * cb1[1].xyz;
      r7.xyz = cb1[4].zzz * cb1[2].xyz;
      r1.x = dot(-cb0[60].xyz, r1.xyz);
      r1.y = dot(-cb0[60].xyz, r6.xyz);
      r1.z = dot(-cb0[60].xyz, r7.xyz);
      r5.xyz = cb3[0].xxx ? r1.zxy : -cb0[60].zxy;
      r1.w = cb3[24].z;
      break;
    }
    if (cb3[24].w != 0) {
      r1.x = cmp(asint(cb3[0].x) != 0);
      r1.yz = cmp(asint(cb3[25].ww) == int2(1,0));
      r2.w = ~(int)r1.x;
      r1.z = r1.z ? r2.w : 0;
      r1.y = (int)r1.z | (int)r1.y;
      r1.x = r1.x ? r1.y : 0;
      r6.xyz = cb1[4].xxx * cb1[0].yzx;
      r7.xyz = cb1[4].yyy * cb1[1].yzx;
      r11.xyz = cb1[4].zzz * cb1[2].yzx;
      r12.z = dot(cb3[25].yzx, r6.xyz);
      r12.x = dot(cb3[25].yzx, r7.xyz);
      r12.y = dot(cb3[25].yzx, r11.xyz);
      r1.y = ~(int)r1.y;
      r1.y = r1.y ? r2.w : 0;
      r7.xyz = cb3[25].yyy * r7.xyz;
      r6.xyz = r6.xyz * cb3[25].xxx + r7.xyz;
      r6.xyz = r11.xyz * cb3[25].zzz + r6.xyz;
      r6.xyz = r1.yyy ? r6.xyz : cb3[25].yzx;
      r1.xyz = r1.xxx ? r12.xzy : r6.xzy;
      r2.w = dot(r5.zyx, r1.xyz);
      r2.w = cmp(0.99000001 < abs(r2.w));
      r3.w = cmp(0.99000001 < abs(r1.z));
      r6.xyz = r3.www ? float3(1,0,0) : float3(0,0,1);
      r6.xyz = r2.www ? r6.xyz : r5.yzx;
      r7.xyz = r6.xyz * r1.xzy;
      r6.xyz = r1.yxz * r6.yzx + -r7.xyz;
      r2.w = dot(r6.xyz, r6.xyz);
      r2.w = rsqrt(r2.w);
      r6.xyz = r6.xyz * r2.www;
      r7.xyz = r6.xyz * r1.xzy;
      r7.xyz = r6.zxy * r1.zyx + -r7.xyz;
      r11.x = r7.x;
      r11.y = r6.y;
      r11.z = r1.y;
      r12.x = r7.y;
      r12.y = r6.z;
      r12.z = r1.x;
      r1.x = r7.z;
      r1.y = r6.x;
    } else {
      r1.w = cmp((int)r1.w == 3);
      r2.w = cmp(0.99000001 < abs(r5.x));
      r3.w = cmp(0 < r5.x);
      r4.w = cmp(r5.x < 0);
      r3.w = (int)r3.w + (int)-r4.w;
      r3.w = (int)r3.w;
      r6.xyz = float3(1,0,0) * r3.www;
      r6.xyz = r2.www ? r6.xyz : float3(0,0,1);
      r6.xyz = r1.www ? cb0[61].xyz : r6.xyz;
      r7.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r14.xyz = cb1[4].zzz * cb1[2].xyz;
      r7.x = dot(r6.xyz, r7.xyz);
      r7.y = dot(r6.xyz, r13.xyz);
      r7.z = dot(r6.xyz, r14.xyz);
      r6.xyz = cb3[0].xxx ? r7.xyz : r6.xyz;
      r7.xyz = r6.xyz * r5.xyz;
      r6.xyz = r6.zxy * r5.yzx + -r7.xyz;
      r1.w = dot(r6.xyz, r6.xyz);
      r1.w = rsqrt(r1.w);
      r6.xyz = r6.xyz * r1.www;
      r7.xyz = r6.xyz * r5.xyz;
      r1.xyz = r5.zxy * r6.yzx + -r7.xyz;
      r11.x = r5.y;
      r11.y = r6.z;
      r11.z = r1.x;
      r12.x = r5.z;
      r12.y = r6.x;
      r12.z = r1.y;
      r1.x = r5.x;
      r1.y = r6.y;
    }
    r5.x = dot(r9.zxw, r11.xyz);
    r6.x = dot(r9.zxw, r12.xyz);
    r7.x = dot(r9.zxw, r1.xyz);
    r10.y = r9.y;
    r5.y = dot(r10.xyz, r11.xyz);
    r6.y = dot(r10.xyz, r12.xyz);
    r7.y = dot(r10.xyz, r1.xyz);
    r3.x = r8.z;
    r5.z = dot(r3.xyz, r11.xyz);
    r6.z = dot(r3.xyz, r12.xyz);
    r7.z = dot(r3.xyz, r1.xyz);
    r9.xyz = r6.xyz;
    r3.xyz = r7.xyz;
  } else {
    r5.xz = r8.xz * float2(-1,1) + float2(1,0);
    r5.y = r10.x;
    r9.z = r3.y;
    r3.x = r9.w;
    r3.y = r10.z;
  }
  r1.xyz = cb1[1].xyz * r2.yyy;
  r1.xyz = cb1[0].xyz * r2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = cb3[0].xxx ? r1.xyz : r2.xyz;
  r1.w = cmp(asint(cb3[9].y) == -1);
  if (r1.w != 0) {
    r2.w = cb3[23].w;
  }
  if (r1.w == 0) {
    r6.xy = asint(cb3[9].yy) & int2(0x80000000,0x7fffffff);
    if (r6.x != 0) {
      r1.w = mad((int)r6.y, asint(cb3[26].x), (int)r0.x);
      r2.w = t1.Load(r1.w).x;
    } else {
      r0.x = mad((int)r6.y, asint(cb3[26].x), (int)r0.x);
      r2.w = t0.Load(r0.x).x;
    }
  }
  r1.xyz = cb0[67].xyz + -r1.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r6.xyz = cb1[4].xxx * cb1[0].xyz;
  r7.xyz = cb1[4].yyy * cb1[1].xyz;
  r8.xyz = cb1[4].zzz * cb1[2].xyz;
  r6.x = dot(r1.xyz, r6.xyz);
  r6.y = dot(r1.xyz, r7.xyz);
  r6.z = dot(r1.xyz, r8.xyz);
  r1.xyz = cb3[0].xxx ? r6.xyz : r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r2.xyz = cb3[1].xyz * r4.xyz;
  r4.x = dot(r2.xyz, r5.xyz);
  r4.y = dot(r2.xyz, r9.xyz);
  r4.z = dot(r2.xyz, r3.xyz);
  r2.xyz = r4.xyz + r1.xyz;
  r1.xyz = cb3[1].www ? r1.xyz : r2.xyz;
  r2.xyz = r5.xyz * r0.yzw;
  r4.xyz = r9.xyz * r0.yzw;
  r0.xyz = r3.xyz * r0.yzw;
  if (cb3[0].x != 0) {
    r6.xyz = cb1[1].xyz * r4.xxx;
    r6.xyz = r2.xxx * cb1[0].xyz + r6.xyz;
    r6.xyz = r0.xxx * cb1[2].xyz + r6.xyz;
    r7.xyz = cb1[1].xyz * r4.yyy;
    r7.xyz = r2.yyy * cb1[0].xyz + r7.xyz;
    r7.xyz = r0.yyy * cb1[2].xyz + r7.xyz;
    r8.xyz = cb1[1].xyz * r4.zzz;
    r8.xyz = r2.zzz * cb1[0].xyz + r8.xyz;
    r8.xyz = r0.zzz * cb1[2].xyz + r8.xyz;
    r10.xyz = cb1[1].xyz * r1.yyy;
    r10.xyz = r1.xxx * cb1[0].xyz + r10.xyz;
    r10.xyz = r1.zzz * cb1[2].xyz + r10.xyz;
    r1.xyz = cb1[3].xyz + r10.xyz;
    r10.xyz = cb1[1].xyz * r9.xxx;
    r10.xyz = r5.xxx * cb1[0].xyz + r10.xyz;
    r10.xyz = r3.xxx * cb1[2].xyz + r10.xyz;
    r11.xyz = cb1[1].xyz * r9.yyy;
    r11.xyz = r5.yyy * cb1[0].xyz + r11.xyz;
    r11.xyz = r3.yyy * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r9.zzz;
    r12.xyz = r5.zzz * cb1[0].xyz + r12.xyz;
    r12.xyz = r3.zzz * cb1[2].xyz + r12.xyz;
    r10.xyz = cb1[4].xxx * r10.xyz;
    r11.xyz = cb1[4].yyy * r11.xyz;
    r3.xyz = cb1[4].zzz * r12.xyz;
    r5.x = r10.x;
    r5.y = r11.x;
    r5.z = r3.x;
    r9.x = r10.y;
    r9.y = r11.y;
    r9.z = r3.y;
    r3.x = r10.z;
    r3.y = r11.z;
    r6.w = r7.x;
    r2.xy = r6.xw;
    r7.w = r6.y;
    r4.xy = r7.wy;
    r0.x = r6.z;
    r0.y = r7.z;
    r2.z = r8.x;
    r4.z = r8.y;
    r0.z = r8.z;
  }
  if (cb3[1].w != 0) {
    r6.xyz = cb3[1].xyz + r1.xyz;
    r2.w = r6.x;
    r4.w = r6.y;
    r0.w = r6.z;
  } else {
    r2.w = r1.x;
    r4.w = r1.y;
    r0.w = r1.z;
  }
  r1.y = dot(v0.xyzw, r2.xyzw);
  r1.z = dot(v0.xyzw, r4.xyzw);
  r1.w = dot(v0.xyzw, r0.xyzw);
  r1.xyz = cb0[70].xyz + r1.yzw;
  r6.xyzw = cb2[20].xyzw * r1.yyyy;
  r6.xyzw = r1.xxxx * cb2[19].xyzw + r6.xyzw;
  r6.xyzw = r1.zzzz * cb2[21].xyzw + r6.xyzw;
  r6.xyzw = v0.wwww * cb2[22].xyzw + r6.xyzw;
  r0.w = cmp(0 < cb2[28].x);
  r1.w = cmp(r6.z < 0);
  r0.w = r0.w ? r1.w : 0;
  r2.xy = r0.ww ? float2(9.99999997e-007,1) : r6.zw;
  r7.x = cb2[23].z;
  r7.y = cb2[24].z;
  r7.z = cb2[25].z;
  r0.x = r2.z;
  r0.y = r4.z;
  r0.x = dot(r7.xyz, r0.xyz);
  r0.y = cmp(0 < abs(r0.x));
  r0.z = -abs(r0.x) * abs(r0.x) + 1;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r0.x = r0.z / abs(r0.x);
  r0.x = r0.y ? r0.x : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r0.x = r2.x * cb2[27].w + r0.x;
  o3.z = r0.x * r2.y;
  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r2.xzw = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r2.xzw;
  r0.xyz = v2.www * r0.xyz;
  r4.x = dot(r0.xyz, r5.xyz);
  r4.y = dot(r0.xyz, r9.xyz);
  r4.z = dot(r0.xyz, r3.xyz);
  r0.x = dot(v2.xyz, r5.xyz);
  r0.y = dot(v2.xyz, r9.xyz);
  r0.z = dot(v2.xyz, r3.xyz);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  o0.xyz = r4.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb1[4].w * v2.w;
  o0.w = 0;
  o2.x = 0;
  p2.xyz = r1.xyz;
  o3.xy = r6.xy;
  o3.w = r2.y;
  return;
}
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
  out float4 o1 : TEXCOORD0,
  out float4 o2 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v8.x + asint(cb2[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v8.x;
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
  r0.yw = cmp(asint(cb2[7].zx) == int2(-1,-1));
  if (r0.y != 0) {
    r2.xyzw = cb2[19].xyzw;
  }
  if (r0.y == 0) {
    r3.xy = asint(cb2[7].zz) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r0.y = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r3.xzw = (int3)r3.yyy + int3(1,2,3);
      r3.xzw = mad((int3)r3.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r2.y = t1.Load(r3.x).x;
      r2.z = t1.Load(r3.z).x;
      r2.w = t1.Load(r3.w).x;
    } else {
      r0.y = mad((int)r3.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r3.xyz = (int3)r3.yyy + int3(1,2,3);
      r3.xyz = mad((int3)r3.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r2.y = t0.Load(r3.x).x;
      r2.z = t0.Load(r3.y).x;
      r2.w = t0.Load(r3.z).x;
    }
  }
  if (r0.z != 0) {
    r3.xyz = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r0.yz = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r0.y).x;
      r4.xy = (int2)r0.zz + int2(1,2);
      r4.xy = mad((int2)r4.xy, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb2[26].xx), (int2)r0.xx);
      r3.y = t0.Load(r0.y).x;
      r3.z = t0.Load(r0.z).x;
    }
  }
  r0.y = cmp(asint(cb2[6].z) == -1);
  if (r0.y != 0) {
    r4.xyzw = cb2[15].xyzw;
  }
  if (r0.y == 0) {
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
  if (r0.w != 0) {
    r5.xyz = cb2[17].xyz;
  }
  if (r0.w == 0) {
    r0.yz = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.zz + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r0.y).x;
      r5.z = t1.Load(r0.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r0.y).x;
      r5.z = t0.Load(r0.z).x;
    }
  }
  r0.yzw = cb2[2].xyz * r5.xyz;
  r1.w = dot(r4.xyzw, r4.xyzw);
  r1.w = rsqrt(r1.w);
  r4.xyzw = r4.xyzw * r1.wwww;
  r6.xyzw = r4.zzxy + r4.zzxy;
  r7.xy = r6.zw * r4.xy;
  r8.xyzw = r6.xyzw * r4.yzww;
  r1.w = r6.y * r4.w;
  r9.xyz = r4.yxx * r6.wzy + r8.yyw;
  r10.x = r4.x * r6.w + r1.w;
  r10.w = r4.x * r6.y + -r8.w;
  r11.x = r4.x * r6.w + -r1.w;
  r10.yz = float2(1,1) + -r9.yx;
  r11.z = r8.x + r8.z;
  r4.y = r4.y * r6.x + -r8.z;
  r1.w = r7.x + r7.y;
  r4.z = 1 + -r1.w;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r3.w = dot(r1.xyz, r1.xyz);
      r3.w = sqrt(r3.w);
      r4.w = cmp(0 < r3.w);
      r1.xyz = r1.xyz / r3.www;
      r1.xyz = r4.www ? r1.xyz : 0;
      r7.x = cb1[4].x * cb1[0].z;
      r7.y = cb1[4].y * cb1[1].z;
      r7.z = cb1[4].z * cb1[2].z;
      r7.xyz = cb2[0].xxx ? r7.xyz : float3(0,0,1);
      r6.xyz = r4.www ? r1.zxy : r7.zxy;
      r1.w = 1;
      break;
      case 2 :      r1.xyz = cb1[1].xyz * r3.yyy;
      r1.xyz = cb1[0].xyz * r3.xxx + r1.xyz;
      r1.xyz = cb1[2].xyz * r3.zzz + r1.xyz;
      r1.xyz = cb1[3].xyz + r1.xyz;
      r1.xyz = cb2[0].xxx ? r1.xyz : r3.xyz;
      r1.xyz = cb0[67].xyz + -r1.xyz;
      r3.w = dot(r1.xyz, r1.xyz);
      r3.w = rsqrt(r3.w);
      r1.xyz = r3.www * r1.xyz;
      r7.xyz = cb1[4].xxx * cb1[0].xyz;
      r8.xyz = cb1[4].yyy * cb1[1].xyz;
      r12.xyz = cb1[4].zzz * cb1[2].xyz;
      r7.x = dot(r1.xyz, r7.xyz);
      r7.y = dot(r1.xyz, r8.xyz);
      r7.z = dot(r1.xyz, r12.xyz);
      r6.xyz = cb2[0].xxx ? r7.zxy : r1.zxy;
      r1.w = 2;
      break;
      default :
      r1.xyz = cb1[4].xxx * cb1[0].xyz;
      r7.xyz = cb1[4].yyy * cb1[1].xyz;
      r8.xyz = cb1[4].zzz * cb1[2].xyz;
      r1.x = dot(-cb0[60].xyz, r1.xyz);
      r1.y = dot(-cb0[60].xyz, r7.xyz);
      r1.z = dot(-cb0[60].xyz, r8.xyz);
      r6.xyz = cb2[0].xxx ? r1.zxy : -cb0[60].zxy;
      r1.w = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r1.x = cmp(asint(cb2[0].x) != 0);
      r1.yz = cmp(asint(cb2[25].ww) == int2(1,0));
      r3.w = ~(int)r1.x;
      r1.z = r1.z ? r3.w : 0;
      r1.y = (int)r1.z | (int)r1.y;
      r1.x = r1.x ? r1.y : 0;
      r7.xyz = cb1[4].xxx * cb1[0].yzx;
      r8.xyz = cb1[4].yyy * cb1[1].yzx;
      r12.xyz = cb1[4].zzz * cb1[2].yzx;
      r13.z = dot(cb2[25].yzx, r7.xyz);
      r13.x = dot(cb2[25].yzx, r8.xyz);
      r13.y = dot(cb2[25].yzx, r12.xyz);
      r1.y = ~(int)r1.y;
      r1.y = r1.y ? r3.w : 0;
      r8.xyz = cb2[25].yyy * r8.xyz;
      r7.xyz = r7.xyz * cb2[25].xxx + r8.xyz;
      r7.xyz = r12.xyz * cb2[25].zzz + r7.xyz;
      r7.xyz = r1.yyy ? r7.xyz : cb2[25].yzx;
      r1.xyz = r1.xxx ? r13.xzy : r7.xzy;
      r3.w = dot(r6.zyx, r1.xyz);
      r3.w = cmp(0.99000001 < abs(r3.w));
      r4.w = cmp(0.99000001 < abs(r1.z));
      r7.xyz = r4.www ? float3(1,0,0) : float3(0,0,1);
      r7.xyz = r3.www ? r7.xyz : r6.yzx;
      r8.xyz = r7.xyz * r1.xzy;
      r7.xyz = r1.yxz * r7.yzx + -r8.xyz;
      r3.w = dot(r7.xyz, r7.xyz);
      r3.w = rsqrt(r3.w);
      r7.xyz = r7.xyz * r3.www;
      r8.xyz = r7.xyz * r1.xzy;
      r8.xyz = r7.zxy * r1.zyx + -r8.xyz;
      r12.x = r8.x;
      r12.y = r7.y;
      r12.z = r1.y;
      r13.x = r8.y;
      r13.y = r7.z;
      r13.z = r1.x;
      r1.x = r8.z;
      r1.y = r7.x;
    } else {
      r1.w = cmp((int)r1.w == 3);
      r3.w = cmp(0.99000001 < abs(r6.x));
      r4.w = cmp(0 < r6.x);
      r5.w = cmp(r6.x < 0);
      r4.w = (int)r4.w + (int)-r5.w;
      r4.w = (int)r4.w;
      r7.xyz = float3(1,0,0) * r4.www;
      r7.xyz = r3.www ? r7.xyz : float3(0,0,1);
      r7.xyz = r1.www ? cb0[61].xyz : r7.xyz;
      r8.xyz = cb1[4].xxx * cb1[0].xyz;
      r14.xyz = cb1[4].yyy * cb1[1].xyz;
      r15.xyz = cb1[4].zzz * cb1[2].xyz;
      r8.x = dot(r7.xyz, r8.xyz);
      r8.y = dot(r7.xyz, r14.xyz);
      r8.z = dot(r7.xyz, r15.xyz);
      r7.xyz = cb2[0].xxx ? r8.xyz : r7.xyz;
      r8.xyz = r7.xyz * r6.xyz;
      r7.xyz = r7.zxy * r6.yzx + -r8.xyz;
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = rsqrt(r1.w);
      r7.xyz = r7.xyz * r1.www;
      r8.xyz = r7.xyz * r6.xyz;
      r1.xyz = r6.zxy * r7.yzx + -r8.xyz;
      r12.x = r6.y;
      r12.y = r7.z;
      r12.z = r1.x;
      r13.x = r6.z;
      r13.y = r7.x;
      r13.z = r1.y;
      r1.x = r6.x;
      r1.y = r7.y;
    }
    r6.x = dot(r10.zxw, r12.xyz);
    r7.x = dot(r10.zxw, r13.xyz);
    r8.x = dot(r10.zxw, r1.xyz);
    r11.y = r10.y;
    r6.y = dot(r11.xyz, r12.xyz);
    r7.y = dot(r11.xyz, r13.xyz);
    r8.y = dot(r11.xyz, r1.xyz);
    r4.x = r9.z;
    r6.z = dot(r4.xyz, r12.xyz);
    r7.z = dot(r4.xyz, r13.xyz);
    r8.z = dot(r4.xyz, r1.xyz);
    r10.xyz = r7.xyz;
    r4.xyz = r8.xyz;
  } else {
    r6.xz = r9.xz * float2(-1,1) + float2(1,0);
    r6.y = r11.x;
    r10.z = r4.y;
    r4.x = r10.w;
    r4.y = r11.z;
  }
  r1.xyz = cb1[1].xyz * r3.yyy;
  r1.xyz = cb1[0].xyz * r3.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r3.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = cb2[0].xxx ? r1.xyz : r3.xyz;
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
  r1.xyz = cb0[67].xyz + -r1.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r7.xyz = cb1[4].xxx * cb1[0].xyz;
  r8.xyz = cb1[4].yyy * cb1[1].xyz;
  r9.xyz = cb1[4].zzz * cb1[2].xyz;
  r7.x = dot(r1.xyz, r7.xyz);
  r7.y = dot(r1.xyz, r8.xyz);
  r7.z = dot(r1.xyz, r9.xyz);
  r1.xyz = cb2[0].xxx ? r7.xyz : r1.xyz;
  r1.xyz = r1.xyz * r3.www + r3.xyz;
  r3.xyz = cb2[1].xyz * r5.xyz;
  r5.x = dot(r3.xyz, r6.xyz);
  r5.y = dot(r3.xyz, r10.xyz);
  r5.z = dot(r3.xyz, r4.xyz);
  r3.xyz = r5.xyz + r1.xyz;
  r1.xyz = cb2[1].www ? r1.xyz : r3.xyz;
  r3.xyz = r6.xyz * r0.yzw;
  r5.xyz = r10.xyz * r0.yzw;
  r0.xyz = r4.xyz * r0.yzw;
  if (cb2[0].x != 0) {
    r4.xyz = cb1[1].xyz * r5.xxx;
    r4.xyz = r3.xxx * cb1[0].xyz + r4.xyz;
    r4.xyz = r0.xxx * cb1[2].xyz + r4.xyz;
    r6.xyz = cb1[1].xyz * r5.yyy;
    r6.xyz = r3.yyy * cb1[0].xyz + r6.xyz;
    r6.xyz = r0.yyy * cb1[2].xyz + r6.xyz;
    r7.xyz = cb1[1].xyz * r5.zzz;
    r7.xyz = r3.zzz * cb1[0].xyz + r7.xyz;
    r0.xyz = r0.zzz * cb1[2].xyz + r7.xyz;
    r7.xyz = cb1[1].xyz * r1.yyy;
    r7.xyz = r1.xxx * cb1[0].xyz + r7.xyz;
    r7.xyz = r1.zzz * cb1[2].xyz + r7.xyz;
    r1.xyz = cb1[3].xyz + r7.xyz;
    r3.x = r4.x;
    r3.y = r6.x;
    r3.z = r0.x;
    r5.x = r4.y;
    r5.y = r6.y;
    r5.z = r0.y;
    r0.x = r4.z;
    r0.y = r6.z;
  }
  if (cb2[1].w != 0) {
    r4.xyz = cb2[1].xyz + r1.xyz;
    r3.w = r4.x;
    r5.w = r4.y;
    r0.w = r4.z;
  } else {
    r3.w = r1.x;
    r5.w = r1.y;
    r0.w = r1.z;
  }
  r1.x = dot(v0.xyzw, r3.xyzw);
  r1.y = dot(v0.xyzw, r5.xyzw);
  r1.z = dot(v0.xyzw, r0.xyzw);
  r1.xyz = cb0[70].xyz + r1.xyz;
  r4.x = v6.y;
  r4.yz = v7.xy;
  r6.x = dot(r4.xyz, r3.xyz);
  r6.y = dot(r4.xyz, r5.xyz);
  r6.z = dot(r4.xyz, r0.xyz);
  r4.xy = v5.xy;
  r4.z = v6.x;
  r3.x = dot(r4.xyz, r3.xyz);
  r3.y = dot(r4.xyz, r5.xyz);
  r3.z = dot(r4.xyz, r0.xyz);
  r0.x = cb0[142].z + cb0[142].z;
  r0.x = frac(r0.x);
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r0.x = 1 + r0.x;
  r0.x = 0.25 * r0.x;
  r0.y = asint(cb2[4].w) & 1;
  r2.xyzw = r0.yyyy ? r2.ywzx : float4(1,1,1,1);
  r0.x = dot(r0.xx, r2.xx);
  r0.y = saturate(r0.x);
  r4.xyz = r0.yyy * r6.xyz;
  r0.x = saturate(-1 + r0.x);
  r0.yzw = -r0.yyy * r6.xyz + r3.xyz;
  r0.xyz = r0.xxx * r0.yzw + r4.xyz;
  r0.w = cb0[142].z + r2.y;
  r0.w = r0.w / r2.z;
  r0.w = frac(r0.w);
  r1.w = 1 + r2.w;
  r2.x = r1.w * r0.w;
  r2.x = saturate(cb3[22].z * r2.x);
  r0.w = r0.w * r1.w + -r2.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r2.x * r0.w;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = r0.www * r0.xyz + r3.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.xy = v4.xy;
  o1.zw = float2(0,0);
  o2.xyzw = v3.xyzw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[27];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD6,
  out float3 o4 : TEXCOORD8,
  out uint o5 : SV_RenderTargetArrayIndex0,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb4[5].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v4.x + asint(cb4[5].x);
    r0.x = t2.Load(r0.x).x;
  } else {
    r0.x = v4.x;
  }
  r0.yz = cmp(asint(cb4[5].wy) == int2(-1,-1));
  if (r0.y != 0) {
    r1.xyz = cb4[12].xyz;
  }
  if (r0.y == 0) {
    r0.yw = asint(cb4[5].ww) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb4[26].x), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r2.xy = (int2)r0.ww + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb4[26].xx), (int2)r0.xx);
      r1.y = t1.Load(r2.x).x;
      r1.z = t1.Load(r2.y).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb4[26].x), (int)r0.x);
      r1.x = t0.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb4[26].xx), (int2)r0.xx);
      r1.y = t0.Load(r0.y).x;
      r1.z = t0.Load(r0.w).x;
    }
  }
  if (r0.z != 0) {
    r2.xyz = cb4[10].xyz;
  }
  if (r0.z == 0) {
    r0.yz = asint(cb4[5].yy) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r2.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.zz + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb4[26].xx), (int2)r0.xx);
      r2.y = t1.Load(r0.y).x;
      r2.z = t1.Load(r0.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r2.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb4[26].xx), (int2)r0.xx);
      r2.y = t0.Load(r0.y).x;
      r2.z = t0.Load(r0.z).x;
    }
  }
  r0.y = cmp(asint(cb4[6].z) == -1);
  if (r0.y != 0) {
    r3.xyzw = cb4[15].xyzw;
  }
  if (r0.y == 0) {
    r0.yz = asint(cb4[6].zz) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r3.x = t1.Load(r0.y).x;
      r4.xyz = (int3)r0.zzz + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb4[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r3.x = t0.Load(r0.y).x;
      r0.yzw = (int3)r0.zzz + int3(1,2,3);
      r0.yzw = mad((int3)r0.yzw, asint(cb4[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r0.y).x;
      r3.z = t0.Load(r0.z).x;
      r3.w = t0.Load(r0.w).x;
    }
  }
  r0.y = cmp(asint(cb4[7].x) == -1);
  if (r0.y != 0) {
    r4.xyz = cb4[17].xyz;
  }
  if (r0.y == 0) {
    r0.yz = asint(cb4[7].xx) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r4.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.zz + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb4[26].xx), (int2)r0.xx);
      r4.y = t1.Load(r0.y).x;
      r4.z = t1.Load(r0.w).x;
    } else {
      r0.y = mad((int)r0.z, asint(cb4[26].x), (int)r0.x);
      r4.x = t0.Load(r0.y).x;
      r0.yz = (int2)r0.zz + int2(1,2);
      r0.yz = mad((int2)r0.yz, asint(cb4[26].xx), (int2)r0.xx);
      r4.y = t0.Load(r0.y).x;
      r4.z = t0.Load(r0.z).x;
    }
  }
  r0.yzw = cb4[2].xyz * r4.xyz;
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
  if (cb4[24].z != 0) {
    switch (cb4[24].z) {
      case 1 :      r2.w = dot(r1.xyz, r1.xyz);
      r2.w = sqrt(r2.w);
      r3.w = cmp(0 < r2.w);
      r1.xyz = r1.xyz / r2.www;
      r1.xyz = r3.www ? r1.xyz : 0;
      r6.x = cb2[4].x * cb2[0].z;
      r6.y = cb2[4].y * cb2[1].z;
      r6.z = cb2[4].z * cb2[2].z;
      r6.xyz = cb4[0].xxx ? r6.xyz : float3(0,0,1);
      r5.xyz = r3.www ? r1.zxy : r6.zxy;
      r1.w = 1;
      break;
      case 2 :      r1.xyz = cb2[1].xyz * r2.yyy;
      r1.xyz = cb2[0].xyz * r2.xxx + r1.xyz;
      r1.xyz = cb2[2].xyz * r2.zzz + r1.xyz;
      r1.xyz = cb2[3].xyz + r1.xyz;
      r1.xyz = cb4[0].xxx ? r1.xyz : r2.xyz;
      r1.xyz = cb1[67].xyz + -r1.xyz;
      r2.w = dot(r1.xyz, r1.xyz);
      r2.w = rsqrt(r2.w);
      r1.xyz = r2.www * r1.xyz;
      r6.xyz = cb2[4].xxx * cb2[0].xyz;
      r7.xyz = cb2[4].yyy * cb2[1].xyz;
      r11.xyz = cb2[4].zzz * cb2[2].xyz;
      r6.x = dot(r1.xyz, r6.xyz);
      r6.y = dot(r1.xyz, r7.xyz);
      r6.z = dot(r1.xyz, r11.xyz);
      r5.xyz = cb4[0].xxx ? r6.zxy : r1.zxy;
      r1.w = 2;
      break;
      default :
      r1.xyz = cb2[4].xxx * cb2[0].xyz;
      r6.xyz = cb2[4].yyy * cb2[1].xyz;
      r7.xyz = cb2[4].zzz * cb2[2].xyz;
      r1.x = dot(-cb1[60].xyz, r1.xyz);
      r1.y = dot(-cb1[60].xyz, r6.xyz);
      r1.z = dot(-cb1[60].xyz, r7.xyz);
      r5.xyz = cb4[0].xxx ? r1.zxy : -cb1[60].zxy;
      r1.w = cb4[24].z;
      break;
    }
    if (cb4[24].w != 0) {
      r1.x = cmp(asint(cb4[0].x) != 0);
      r1.yz = cmp(asint(cb4[25].ww) == int2(1,0));
      r2.w = ~(int)r1.x;
      r1.z = r1.z ? r2.w : 0;
      r1.y = (int)r1.z | (int)r1.y;
      r1.x = r1.x ? r1.y : 0;
      r6.xyz = cb2[4].xxx * cb2[0].yzx;
      r7.xyz = cb2[4].yyy * cb2[1].yzx;
      r11.xyz = cb2[4].zzz * cb2[2].yzx;
      r12.z = dot(cb4[25].yzx, r6.xyz);
      r12.x = dot(cb4[25].yzx, r7.xyz);
      r12.y = dot(cb4[25].yzx, r11.xyz);
      r1.y = ~(int)r1.y;
      r1.y = r1.y ? r2.w : 0;
      r7.xyz = cb4[25].yyy * r7.xyz;
      r6.xyz = r6.xyz * cb4[25].xxx + r7.xyz;
      r6.xyz = r11.xyz * cb4[25].zzz + r6.xyz;
      r6.xyz = r1.yyy ? r6.xyz : cb4[25].yzx;
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
      r6.xyz = r1.www ? cb1[61].xyz : r6.xyz;
      r7.xyz = cb2[4].xxx * cb2[0].xyz;
      r13.xyz = cb2[4].yyy * cb2[1].xyz;
      r14.xyz = cb2[4].zzz * cb2[2].xyz;
      r7.x = dot(r6.xyz, r7.xyz);
      r7.y = dot(r6.xyz, r13.xyz);
      r7.z = dot(r6.xyz, r14.xyz);
      r6.xyz = cb4[0].xxx ? r7.xyz : r6.xyz;
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
  r1.xyz = cb2[1].xyz * r2.yyy;
  r1.xyz = cb2[0].xyz * r2.xxx + r1.xyz;
  r1.xyz = cb2[2].xyz * r2.zzz + r1.xyz;
  r1.xyz = cb2[3].xyz + r1.xyz;
  r1.xyz = cb4[0].xxx ? r1.xyz : r2.xyz;
  r1.w = cmp(asint(cb4[9].y) == -1);
  if (r1.w != 0) {
    r2.w = cb4[23].w;
  }
  if (r1.w == 0) {
    r6.xy = asint(cb4[9].yy) & int2(0x80000000,0x7fffffff);
    if (r6.x != 0) {
      r1.w = mad((int)r6.y, asint(cb4[26].x), (int)r0.x);
      r2.w = t1.Load(r1.w).x;
    } else {
      r0.x = mad((int)r6.y, asint(cb4[26].x), (int)r0.x);
      r2.w = t0.Load(r0.x).x;
    }
  }
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r6.xyz = cb2[4].xxx * cb2[0].xyz;
  r7.xyz = cb2[4].yyy * cb2[1].xyz;
  r8.xyz = cb2[4].zzz * cb2[2].xyz;
  r6.x = dot(r1.xyz, r6.xyz);
  r6.y = dot(r1.xyz, r7.xyz);
  r6.z = dot(r1.xyz, r8.xyz);
  r1.xyz = cb4[0].xxx ? r6.xyz : r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r2.xyz = cb4[1].xyz * r4.xyz;
  r4.x = dot(r2.xyz, r5.xyz);
  r4.y = dot(r2.xyz, r9.xyz);
  r4.z = dot(r2.xyz, r3.xyz);
  r2.xyz = r4.xyz + r1.xyz;
  r1.xyz = cb4[1].www ? r1.xyz : r2.xyz;
  r2.xyz = r5.xyz * r0.yzw;
  r4.xyz = r9.xyz * r0.yzw;
  r0.xyz = r3.xyz * r0.yzw;
  if (cb4[0].x != 0) {
    r6.xyz = cb2[1].xyz * r4.xxx;
    r6.xyz = r2.xxx * cb2[0].xyz + r6.xyz;
    r6.xyz = r0.xxx * cb2[2].xyz + r6.xyz;
    r7.xyz = cb2[1].xyz * r4.yyy;
    r7.xyz = r2.yyy * cb2[0].xyz + r7.xyz;
    r7.xyz = r0.yyy * cb2[2].xyz + r7.xyz;
    r8.xyz = cb2[1].xyz * r4.zzz;
    r8.xyz = r2.zzz * cb2[0].xyz + r8.xyz;
    r8.xyz = r0.zzz * cb2[2].xyz + r8.xyz;
    r10.xyz = cb2[1].xyz * r1.yyy;
    r10.xyz = r1.xxx * cb2[0].xyz + r10.xyz;
    r10.xyz = r1.zzz * cb2[2].xyz + r10.xyz;
    r1.xyz = cb2[3].xyz + r10.xyz;
    r10.xyz = cb2[1].xyz * r9.xxx;
    r10.xyz = r5.xxx * cb2[0].xyz + r10.xyz;
    r10.xyz = r3.xxx * cb2[2].xyz + r10.xyz;
    r11.xyz = cb2[1].xyz * r9.yyy;
    r11.xyz = r5.yyy * cb2[0].xyz + r11.xyz;
    r11.xyz = r3.yyy * cb2[2].xyz + r11.xyz;
    r12.xyz = cb2[1].xyz * r9.zzz;
    r12.xyz = r5.zzz * cb2[0].xyz + r12.xyz;
    r12.xyz = r3.zzz * cb2[2].xyz + r12.xyz;
    r10.xyz = cb2[4].xxx * r10.xyz;
    r11.xyz = cb2[4].yyy * r11.xyz;
    r3.xyz = cb2[4].zzz * r12.xyz;
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
  if (cb4[1].w != 0) {
    r6.xyz = cb4[1].xyz + r1.xyz;
    r2.w = r6.x;
    r4.w = r6.y;
    r0.w = r6.z;
  } else {
    r2.w = r1.x;
    r4.w = r1.y;
    r0.w = r1.z;
  }
  r1.x = dot(v0.xyzw, r2.xyzw);
  r1.y = dot(v0.xyzw, r4.xyzw);
  r1.z = dot(v0.xyzw, r0.xyzw);
  r0.xyw = cb1[70].xyz + r1.xyz;
  r1.xyz = v2.yzx * v1.xyz;
  r1.xyz = v2.xyz * v1.yzx + -r1.xyz;
  r1.xyz = v2.www * r1.xyz;
  r2.xyw = v2.yzx * r1.xyz;
  r1.xyz = r1.zxy * v2.zxy + -r2.xyw;
  r1.xyz = v2.www * r1.xyz;
  r6.x = dot(r1.xyz, r5.xyz);
  r6.y = dot(r1.xyz, r9.xyz);
  r6.z = dot(r1.xyz, r3.xyz);
  r1.x = dot(v2.xyz, r5.xyz);
  r1.y = dot(v2.xyz, r9.xyz);
  r1.z = dot(v2.xyz, r3.xyz);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = rsqrt(r1.w);
  o0.xyz = r6.xyz * r1.www;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o1.xyz = r1.xyz * r1.www;
  o1.w = cb2[4].w * v2.w;
  r1.x = asuint(cb0[1].x) << 2;
  r3.xyzw = cb3[r1.x+30].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb3[r1.x+29].xyzw + r3.xyzw;
  r3.xyzw = r0.wwww * cb3[r1.x+31].xyzw + r3.xyzw;
  r1.xyzw = v0.wwww * cb3[r1.x+32].xyzw + r3.xyzw;
  o0.w = 0;
  o3.xyzw = r1.xyzw;
  o6.xyzw = r1.xyzw;
  o2.xyz = r0.xyw;
  o4.x = r2.z;
  o4.y = r4.z;
  o4.z = r0.z;
  o5.x = cb0[1].x;
  return;
}
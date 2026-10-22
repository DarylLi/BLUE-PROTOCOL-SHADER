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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.w = cmp(0 < r0.y);
  r1.xyz = r1.xyz / r0.yyy;
  r1.xyz = r0.www ? r1.xyz : 0;
  r2.xy = cmp(asint(cb2[7].zx) == int2(-1,-1));
  if (r2.x != 0) {
    r3.xyzw = cb2[19].xyzw;
  }
  if (r2.x == 0) {
    r2.xz = asint(cb2[7].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r1.w = mad((int)r2.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t1.Load(r1.w).x;
      r4.xyz = (int3)r2.zzz + int3(1,2,3);
      r4.xyz = mad((int3)r4.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t1.Load(r4.x).x;
      r3.z = t1.Load(r4.y).x;
      r3.w = t1.Load(r4.z).x;
    } else {
      r1.w = mad((int)r2.z, asint(cb2[26].x), (int)r0.x);
      r3.x = t0.Load(r1.w).x;
      r2.xzw = (int3)r2.zzz + int3(1,2,3);
      r2.xzw = mad((int3)r2.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r3.y = t0.Load(r2.x).x;
      r3.z = t0.Load(r2.z).x;
      r3.w = t0.Load(r2.w).x;
    }
  }
  if (r0.z != 0) {
    r2.xzw = cb2[10].xyz;
  }
  if (r0.z == 0) {
    r4.xy = asint(cb2[5].yy) & int2(0x80000000,0x7fffffff);
    if (r4.x != 0) {
      r0.z = mad((int)r4.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t1.Load(r0.z).x;
      r4.xz = (int2)r4.yy + int2(1,2);
      r4.xz = mad((int2)r4.xz, asint(cb2[26].xx), (int2)r0.xx);
      r2.z = t1.Load(r4.x).x;
      r2.w = t1.Load(r4.z).x;
    } else {
      r0.z = mad((int)r4.y, asint(cb2[26].x), (int)r0.x);
      r2.x = t0.Load(r0.z).x;
      r4.xy = (int2)r4.yy + int2(1,2);
      r4.xy = mad((int2)r4.xy, asint(cb2[26].xx), (int2)r0.xx);
      r2.z = t0.Load(r4.x).x;
      r2.w = t0.Load(r4.y).x;
    }
  }
  r0.z = cmp(asint(cb2[6].z) == -1);
  if (r0.z != 0) {
    r4.xyzw = cb2[15].xyzw;
  }
  if (r0.z == 0) {
    r5.xy = asint(cb2[6].zz) & int2(0x80000000,0x7fffffff);
    if (r5.x != 0) {
      r0.z = mad((int)r5.y, asint(cb2[26].x), (int)r0.x);
      r4.x = t1.Load(r0.z).x;
      r5.xzw = (int3)r5.yyy + int3(1,2,3);
      r5.xzw = mad((int3)r5.xzw, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t1.Load(r5.x).x;
      r4.z = t1.Load(r5.z).x;
      r4.w = t1.Load(r5.w).x;
    } else {
      r0.z = mad((int)r5.y, asint(cb2[26].x), (int)r0.x);
      r4.x = t0.Load(r0.z).x;
      r5.xyz = (int3)r5.yyy + int3(1,2,3);
      r5.xyz = mad((int3)r5.xyz, asint(cb2[26].xxx), (int3)r0.xxx);
      r4.y = t0.Load(r5.x).x;
      r4.z = t0.Load(r5.y).x;
      r4.w = t0.Load(r5.z).x;
    }
  }
  if (r2.y != 0) {
    r5.xyz = cb2[17].xyz;
  }
  if (r2.y == 0) {
    r6.xy = asint(cb2[7].xx) & int2(0x80000000,0x7fffffff);
    if (r6.x != 0) {
      r0.z = mad((int)r6.y, asint(cb2[26].x), (int)r0.x);
      r5.x = t1.Load(r0.z).x;
      r6.xz = (int2)r6.yy + int2(1,2);
      r6.xz = mad((int2)r6.xz, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t1.Load(r6.x).x;
      r5.z = t1.Load(r6.z).x;
    } else {
      r0.z = mad((int)r6.y, asint(cb2[26].x), (int)r0.x);
      r5.x = t0.Load(r0.z).x;
      r6.xy = (int2)r6.yy + int2(1,2);
      r6.xy = mad((int2)r6.xy, asint(cb2[26].xx), (int2)r0.xx);
      r5.y = t0.Load(r6.x).x;
      r5.z = t0.Load(r6.y).x;
    }
  }
  r6.xyz = cb2[2].xyz * r5.xyz;
  r0.z = dot(r4.xyzw, r4.xyzw);
  r0.z = rsqrt(r0.z);
  r4.xyzw = r4.xyzw * r0.zzzz;
  r7.xyzw = r4.zzxy + r4.zzxy;
  r8.xy = r7.zw * r4.xy;
  r9.xyzw = r7.xyzw * r4.yzww;
  r0.z = r7.y * r4.w;
  r10.xyz = r4.yxx * r7.wzy + r9.yyw;
  r11.x = r4.x * r7.w + r0.z;
  r11.w = r4.x * r7.y + -r9.w;
  r12.x = r4.x * r7.w + -r0.z;
  r11.yz = float2(1,1) + -r10.yx;
  r12.z = r9.x + r9.z;
  r4.y = r4.y * r7.x + -r9.z;
  r0.z = r8.x + r8.y;
  r4.z = 1 + -r0.z;
  if (cb2[24].z != 0) {
    switch (cb2[24].z) {
      case 1 :      r8.x = cb1[4].x * cb1[0].z;
      r8.y = cb1[4].y * cb1[1].z;
      r8.z = cb1[4].z * cb1[2].z;
      r8.xyz = cb2[0].xxx ? r8.xyz : float3(0,0,1);
      r7.xyz = r0.www ? r1.zxy : r8.zxy;
      r0.z = 1;
      break;
      case 2 :      r8.xyz = cb1[1].xyz * r2.zzz;
      r8.xyz = cb1[0].xyz * r2.xxx + r8.xyz;
      r8.xyz = cb1[2].xyz * r2.www + r8.xyz;
      r8.xyz = cb1[3].xyz + r8.xyz;
      r8.xyz = cb2[0].xxx ? r8.xyz : r2.xzw;
      r8.xyz = cb0[67].xyz + -r8.xyz;
      r0.w = dot(r8.xyz, r8.xyz);
      r0.w = rsqrt(r0.w);
      r8.xyz = r8.xyz * r0.www;
      r9.xyz = cb1[4].xxx * cb1[0].xyz;
      r13.xyz = cb1[4].yyy * cb1[1].xyz;
      r14.xyz = cb1[4].zzz * cb1[2].xyz;
      r9.x = dot(r8.xyz, r9.xyz);
      r9.y = dot(r8.xyz, r13.xyz);
      r9.z = dot(r8.xyz, r14.xyz);
      r7.xyz = cb2[0].xxx ? r9.zxy : r8.zxy;
      r0.z = 2;
      break;
      default :
      r8.xyz = cb1[4].xxx * cb1[0].xyz;
      r9.xyz = cb1[4].yyy * cb1[1].xyz;
      r13.xyz = cb1[4].zzz * cb1[2].xyz;
      r8.x = dot(-cb0[60].xyz, r8.xyz);
      r8.y = dot(-cb0[60].xyz, r9.xyz);
      r8.z = dot(-cb0[60].xyz, r13.xyz);
      r7.xyz = cb2[0].xxx ? r8.zxy : -cb0[60].zxy;
      r0.z = cb2[24].z;
      break;
    }
    if (cb2[24].w != 0) {
      r0.w = cmp(asint(cb2[0].x) != 0);
      r8.xy = cmp(asint(cb2[25].ww) == int2(1,0));
      r1.w = ~(int)r0.w;
      r2.y = r8.y ? r1.w : 0;
      r2.y = (int)r2.y | (int)r8.x;
      r0.w = r0.w ? r2.y : 0;
      r8.xyz = cb1[4].xxx * cb1[0].yzx;
      r9.xyz = cb1[4].yyy * cb1[1].yzx;
      r13.xyz = cb1[4].zzz * cb1[2].yzx;
      r14.z = dot(cb2[25].yzx, r8.xyz);
      r14.x = dot(cb2[25].yzx, r9.xyz);
      r14.y = dot(cb2[25].yzx, r13.xyz);
      r2.y = ~(int)r2.y;
      r1.w = r2.y ? r1.w : 0;
      r9.xyz = cb2[25].yyy * r9.xyz;
      r8.xyz = r8.xyz * cb2[25].xxx + r9.xyz;
      r8.xyz = r13.xyz * cb2[25].zzz + r8.xyz;
      r8.xyz = r1.www ? r8.xyz : cb2[25].yzx;
      r8.xyz = r0.www ? r14.xzy : r8.xzy;
      r0.w = dot(r7.zyx, r8.xyz);
      r0.w = cmp(0.99000001 < abs(r0.w));
      r1.w = cmp(0.99000001 < abs(r8.z));
      r9.xyz = r1.www ? float3(1,0,0) : float3(0,0,1);
      r9.xyz = r0.www ? r9.xyz : r7.yzx;
      r13.xyz = r9.xyz * r8.xzy;
      r9.xyz = r8.yxz * r9.yzx + -r13.xyz;
      r0.w = dot(r9.xyz, r9.xyz);
      r0.w = rsqrt(r0.w);
      r9.xyz = r9.xyz * r0.www;
      r13.xyz = r9.xyz * r8.xzy;
      r13.xyz = r9.zxy * r8.zyx + -r13.xyz;
      r14.x = r13.x;
      r14.y = r9.y;
      r14.z = r8.y;
      r15.x = r13.y;
      r15.y = r9.z;
      r15.z = r8.x;
      r8.x = r13.z;
      r8.y = r9.x;
    } else {
      r0.z = cmp((int)r0.z == 3);
      r0.w = cmp(0.99000001 < abs(r7.x));
      r1.w = cmp(0 < r7.x);
      r2.y = cmp(r7.x < 0);
      r1.w = (int)r1.w + (int)-r2.y;
      r1.w = (int)r1.w;
      r9.xyz = float3(1,0,0) * r1.www;
      r9.xyz = r0.www ? r9.xyz : float3(0,0,1);
      r9.xyz = r0.zzz ? cb0[61].xyz : r9.xyz;
      r13.xyz = cb1[4].xxx * cb1[0].xyz;
      r16.xyz = cb1[4].yyy * cb1[1].xyz;
      r17.xyz = cb1[4].zzz * cb1[2].xyz;
      r13.x = dot(r9.xyz, r13.xyz);
      r13.y = dot(r9.xyz, r16.xyz);
      r13.z = dot(r9.xyz, r17.xyz);
      r9.xyz = cb2[0].xxx ? r13.xyz : r9.xyz;
      r13.xyz = r9.xyz * r7.xyz;
      r9.xyz = r9.zxy * r7.yzx + -r13.xyz;
      r0.z = dot(r9.xyz, r9.xyz);
      r0.z = rsqrt(r0.z);
      r9.xyz = r9.xyz * r0.zzz;
      r13.xyz = r9.xyz * r7.xyz;
      r8.xyz = r7.zxy * r9.yzx + -r13.xyz;
      r14.x = r7.y;
      r14.y = r9.z;
      r14.z = r8.x;
      r15.x = r7.z;
      r15.y = r9.x;
      r15.z = r8.y;
      r8.x = r7.x;
      r8.y = r9.y;
    }
    r7.x = dot(r11.zxw, r14.xyz);
    r9.x = dot(r11.zxw, r15.xyz);
    r13.x = dot(r11.zxw, r8.xyz);
    r12.y = r11.y;
    r7.y = dot(r12.xyz, r14.xyz);
    r9.y = dot(r12.xyz, r15.xyz);
    r13.y = dot(r12.xyz, r8.xyz);
    r4.x = r10.z;
    r7.z = dot(r4.xyz, r14.xyz);
    r9.z = dot(r4.xyz, r15.xyz);
    r13.z = dot(r4.xyz, r8.xyz);
    r11.xyz = r9.xyz;
    r4.xyz = r13.xyz;
  } else {
    r7.xz = r10.xz * float2(-1,1) + float2(1,0);
    r7.y = r12.x;
    r11.z = r4.y;
    r4.x = r11.w;
    r4.y = r12.z;
  }
  r8.xyz = cb1[1].xyz * r2.zzz;
  r8.xyz = cb1[0].xyz * r2.xxx + r8.xyz;
  r8.xyz = cb1[2].xyz * r2.www + r8.xyz;
  r8.xyz = cb1[3].xyz + r8.xyz;
  r8.xyz = cb2[0].xxx ? r8.xyz : r2.xzw;
  r0.z = cmp(asint(cb2[9].y) == -1);
  if (r0.z != 0) {
    r0.w = cb2[23].w;
  }
  if (r0.z == 0) {
    r9.xy = asint(cb2[9].yy) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r0.z = mad((int)r9.y, asint(cb2[26].x), (int)r0.x);
      r0.w = t1.Load(r0.z).x;
    } else {
      r0.x = mad((int)r9.y, asint(cb2[26].x), (int)r0.x);
      r0.w = t0.Load(r0.x).x;
    }
  }
  r8.xyz = cb0[67].xyz + -r8.xyz;
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = rsqrt(r0.x);
  r8.xyz = r8.xyz * r0.xxx;
  r9.xyz = cb1[4].xxx * cb1[0].xyz;
  r10.xyz = cb1[4].yyy * cb1[1].xyz;
  r12.xyz = cb1[4].zzz * cb1[2].xyz;
  r9.x = dot(r8.xyz, r9.xyz);
  r9.y = dot(r8.xyz, r10.xyz);
  r9.z = dot(r8.xyz, r12.xyz);
  r8.xyz = cb2[0].xxx ? r9.xyz : r8.xyz;
  r0.xzw = r8.xyz * r0.www + r2.xzw;
  r2.xyz = cb2[1].xyz * r5.xyz;
  r5.x = dot(r2.xyz, r7.xyz);
  r5.y = dot(r2.xyz, r11.xyz);
  r5.z = dot(r2.xyz, r4.xyz);
  r2.xyz = r5.xyz + r0.xzw;
  r0.xzw = cb2[1].www ? r0.xzw : r2.xyz;
  r2.xyz = r7.xyz * r6.xyz;
  r5.xyz = r11.xyz * r6.xyz;
  r4.xyz = r6.xyz * r4.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r1.xyz = -r1.xyz * cb2[4].zzz + r0.xzw;
  if (cb2[0].x != 0) {
    r6.xyz = cb1[11].xyz * r5.xxx;
    r6.xyz = r2.xxx * cb1[10].xyz + r6.xyz;
    r6.xyz = r4.xxx * cb1[12].xyz + r6.xyz;
    r7.xyz = cb1[11].xyz * r5.yyy;
    r7.xyz = r2.yyy * cb1[10].xyz + r7.xyz;
    r7.xyz = r4.yyy * cb1[12].xyz + r7.xyz;
    r8.xyz = cb1[11].xyz * r5.zzz;
    r8.xyz = r2.zzz * cb1[10].xyz + r8.xyz;
    r8.xyz = r4.zzz * cb1[12].xyz + r8.xyz;
    r9.xyz = cb1[11].xyz * r1.yyy;
    r9.xyz = r1.xxx * cb1[10].xyz + r9.xyz;
    r9.xyz = r1.zzz * cb1[12].xyz + r9.xyz;
    r1.xyz = cb1[13].xyz + r9.xyz;
    r9.xyz = cb1[1].xyz * r5.xxx;
    r9.xyz = r2.xxx * cb1[0].xyz + r9.xyz;
    r9.xyz = r4.xxx * cb1[2].xyz + r9.xyz;
    r10.xyz = cb1[1].xyz * r5.yyy;
    r10.xyz = r2.yyy * cb1[0].xyz + r10.xyz;
    r10.xyz = r4.yyy * cb1[2].xyz + r10.xyz;
    r11.xyz = cb1[1].xyz * r5.zzz;
    r11.xyz = r2.zzz * cb1[0].xyz + r11.xyz;
    r11.xyz = r4.zzz * cb1[2].xyz + r11.xyz;
    r12.xyz = cb1[1].xyz * r0.zzz;
    r12.xyz = r0.xxx * cb1[0].xyz + r12.xyz;
    r12.xyz = r0.www * cb1[2].xyz + r12.xyz;
    r0.xzw = cb1[3].xyz + r12.xyz;
    r12.x = r9.x;
    r12.y = r10.x;
    r12.z = r11.x;
    r13.x = r9.y;
    r13.y = r10.y;
    r13.z = r11.y;
    r11.x = r9.z;
    r11.y = r10.z;
    r2.x = r6.x;
    r2.y = r7.x;
    r2.z = r8.x;
    r5.x = r6.y;
    r5.y = r7.y;
    r5.z = r8.y;
    r4.x = r6.z;
    r4.y = r7.z;
    r4.z = r8.z;
  } else {
    r12.xyz = r2.xyz;
    r13.xyz = r5.xyz;
    r11.xyz = r4.xyz;
  }
  if (cb2[1].w != 0) {
    r6.xyz = cb2[1].xyz + r0.xzw;
    r7.xyz = cb2[1].xyz + r1.xyz;
    r12.w = r6.x;
    r13.w = r6.y;
    r11.w = r6.z;
    r2.w = r7.x;
    r5.w = r7.y;
    r4.w = r7.z;
  } else {
    r12.w = r0.x;
    r13.w = r0.z;
    r11.w = r0.w;
    r2.w = r1.x;
    r5.w = r1.y;
    r4.w = r1.z;
  }
  r0.x = dot(v0.xyzw, r12.xyzw);
  r0.y = dot(v0.xyzw, r13.xyzw);
  r0.z = dot(v0.xyzw, r11.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.x = v6.y;
  r1.yz = v7.xy;
  r6.x = dot(r1.xyz, r12.xyz);
  r6.y = dot(r1.xyz, r13.xyz);
  r6.z = dot(r1.xyz, r11.xyz);
  r7.xy = v5.xy;
  r7.z = v6.x;
  r8.x = dot(r7.xyz, r12.xyz);
  r8.y = dot(r7.xyz, r13.xyz);
  r8.z = dot(r7.xyz, r11.xyz);
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
  r9.xyz = r1.www * r6.xyz;
  r0.w = saturate(-1 + r0.w);
  r6.xyz = -r1.www * r6.xyz + r8.xyz;
  r6.xyz = r0.www * r6.xyz + r9.xyz;
  r0.w = cb0[142].z + r3.y;
  r0.w = r0.w / r3.z;
  r0.w = frac(r0.w);
  r1.w = 1 + r3.w;
  r6.w = r1.w * r0.w;
  r6.w = saturate(cb3[22].z * r6.w);
  r0.w = r0.w * r1.w + -r3.w;
  r0.w = saturate(cb3[22].z * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r6.w * r0.w;
  r6.xyz = r6.xyz + -r8.xyz;
  r6.xyz = r0.www * r6.xyz + r8.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r6.x = dot(v0.xyzw, r2.xyzw);
  r6.y = dot(v0.xyzw, r5.xyzw);
  r6.z = dot(v0.xyzw, r4.xyzw);
  r6.xyz = cb0[113].xyz + r6.xyz;
  r8.x = dot(r1.xyz, r2.xyz);
  r8.y = dot(r1.xyz, r5.xyz);
  r8.z = dot(r1.xyz, r4.xyz);
  r1.x = dot(r7.xyz, r2.xyz);
  r1.y = dot(r7.xyz, r5.xyz);
  r1.z = dot(r7.xyz, r4.xyz);
  r0.w = cb0[139].z + cb0[139].z;
  r0.w = frac(r0.w);
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = r0.w * r3.x;
  r2.x = 0.5 * r0.w;
  r2.x = saturate(r2.x);
  r2.yzw = r2.xxx * r8.xyz;
  r0.w = saturate(r0.w * 0.5 + -1);
  r4.xyz = -r2.xxx * r8.xyz + r1.xyz;
  r2.xyz = r0.www * r4.xyz + r2.yzw;
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
  o3.xy = v4.xy;
  o3.zw = float2(0,0);
  o4.xyzw = v3.xyzw;
  return;
}
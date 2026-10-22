// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float2 v0 : ATTRIBUTE0,
  uint v1 : SV_VertexID0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[1].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v2.x + asint(cb2[1].x);
    r0.x = t3.Load(r0.x).x;
  } else {
    r0.x = v2.x;
  }
  r0.yz = cmp(asint(cb3[9].xz) == int2(-1,-1));
  if (r0.y != 0) {
    r1.xyz = cb3[16].xyz;
  }
  if (r0.y == 0) {
    r0.yw = asint(cb3[9].xx) & int2(0x80000000,0x7fffffff);
    if (r0.y != 0) {
      r0.y = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r1.x = t2.Load(r0.y).x;
      r2.xy = (int2)r0.ww + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[0].yy), (int2)r0.xx);
      r1.y = t2.Load(r2.x).x;
      r1.z = t2.Load(r2.y).x;
    } else {
      r0.y = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r1.x = t1.Load(r0.y).x;
      r0.yw = (int2)r0.ww + int2(1,2);
      r0.yw = mad((int2)r0.yw, asint(cb2[0].yy), (int2)r0.xx);
      r1.y = t1.Load(r0.y).x;
      r1.z = t1.Load(r0.w).x;
    }
  }
  r2.xyz = cb1[1].xyz * r1.yyy;
  r2.xyz = cb1[0].xyz * r1.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r1.xyz = cb3[0].xxx ? r2.xyz : r1.xyz;
  r0.yw = cmp(asint(cb3[10].xz) == int2(-1,-1));
  if (r0.y != 0) {
    r1.w = cb3[21].w;
  }
  if (r0.y == 0) {
    r2.xy = asint(cb3[10].xx) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r0.y = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r1.w = t2.Load(r0.y).x;
    } else {
      r0.y = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r1.w = t1.Load(r0.y).x;
    }
  }
  r0.y = cb3[7].x * r1.w;
  if (r0.w != 0) {
    r2.xy = cb3[18].xy;
  }
  if (r0.w == 0) {
    r2.zw = asint(cb3[10].zz) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r0.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r2.x = t2.Load(r0.w).x;
      r0.w = (int)r2.w + 1;
      r0.w = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r2.y = t2.Load(r0.w).x;
    } else {
      r0.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r2.x = t1.Load(r0.w).x;
      r0.w = (int)r2.w + 1;
      r0.w = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r2.y = t1.Load(r0.w).x;
    }
  }
  if (r0.z != 0) {
    r3.xyz = cb3[20].xyz;
  }
  if (r0.z == 0) {
    r0.zw = asint(cb3[9].zz) & int2(0x80000000,0x7fffffff);
    if (r0.z != 0) {
      r0.z = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r3.x = t2.Load(r0.z).x;
      r2.zw = (int2)r0.ww + int2(1,2);
      r2.zw = mad((int2)r2.zw, asint(cb2[0].yy), (int2)r0.xx);
      r3.y = t2.Load(r2.z).x;
      r3.z = t2.Load(r2.w).x;
    } else {
      r0.z = mad((int)r0.w, asint(cb2[0].y), (int)r0.x);
      r3.x = t1.Load(r0.z).x;
      r0.zw = (int2)r0.ww + int2(1,2);
      r0.zw = mad((int2)r0.zw, asint(cb2[0].yy), (int2)r0.xx);
      r3.y = t1.Load(r0.z).x;
      r3.z = t1.Load(r0.w).x;
    }
  }
  r4.xyz = cb1[4].xxx * cb1[0].xyz;
  r5.xyz = cb1[4].yyy * cb1[1].xyz;
  r6.xyz = cb1[4].zzz * cb1[2].xyz;
  r0.z = cmp(asint(cb3[11].x) == -1);
  if (r0.z != 0) {
    r0.w = cb3[25].x;
  }
  if (r0.z == 0) {
    r2.zw = asint(cb3[11].xx) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r0.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r0.w = t2.Load(r0.z).x;
    } else {
      r0.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r0.w = t1.Load(r0.z).x;
    }
  }
  r0.z = cmp(asint(cb3[12].w) == -1);
  if (r0.z != 0) {
    r7.xyz = cb3[26].xyz;
  }
  if (r0.z == 0) {
    r2.zw = asint(cb3[12].ww) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r0.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r7.x = t2.Load(r0.z).x;
      r8.xy = (int2)r2.ww + int2(1,2);
      r8.xy = mad((int2)r8.xy, asint(cb2[0].yy), (int2)r0.xx);
      r7.y = t2.Load(r8.x).x;
      r7.z = t2.Load(r8.y).x;
    } else {
      r0.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r7.x = t1.Load(r0.z).x;
      r2.zw = (int2)r2.ww + int2(1,2);
      r2.zw = mad((int2)r2.zw, asint(cb2[0].yy), (int2)r0.xx);
      r7.y = t1.Load(r2.z).x;
      r7.z = t1.Load(r2.w).x;
    }
  }
  r8.xyz = r7.yyy * r5.zxy;
  r8.xyz = r4.zxy * r7.xxx + r8.xyz;
  r8.xyz = r6.zxy * r7.zzz + r8.xyz;
  r7.xyz = cb3[0].xxx ? r8.xyz : r7.zxy;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r0.z = max(9.99999997e-007, r0.z);
  r7.xyz = r7.xyz / r0.zzz;
  r2.zw = cmp(asint(cb3[13].yw) == int2(-1,1));
  if (r2.z != 0) {
    r8.xyz = cb3[28].xyz;
  }
  if (r2.z == 0) {
    r9.xy = asint(cb3[13].yy) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r0.z = mad((int)r9.y, asint(cb2[0].y), (int)r0.x);
      r8.x = t2.Load(r0.z).x;
      r9.xz = (int2)r9.yy + int2(1,2);
      r9.xz = mad((int2)r9.xz, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t2.Load(r9.x).x;
      r8.z = t2.Load(r9.z).x;
    } else {
      r0.z = mad((int)r9.y, asint(cb2[0].y), (int)r0.x);
      r8.x = t1.Load(r0.z).x;
      r9.xy = (int2)r9.yy + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t1.Load(r9.x).x;
      r8.z = t1.Load(r9.y).x;
    }
  }
  r9.xyz = cmp(asint(cb3[14].wzx) == int3(-1,-1,-1));
  if (r9.x != 0) {
    r10.xy = cb3[8].xy;
  }
  if (r9.x == 0) {
    r9.xw = asint(cb3[14].ww) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r0.z = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t2.Load(r0.z).x;
      r0.z = (int)r9.w + 1;
      r0.z = mad((int)r0.z, asint(cb2[0].y), (int)r0.x);
      r10.y = t2.Load(r0.z).x;
    } else {
      r0.z = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t1.Load(r0.z).x;
      r0.z = (int)r9.w + 1;
      r0.z = mad((int)r0.z, asint(cb2[0].y), (int)r0.x);
      r10.y = t1.Load(r0.z).x;
    }
  }
  if (r9.y != 0) {
    r9.xw = cb3[19].xy;
  }
  if (r9.y == 0) {
    r10.zw = asint(cb3[14].zz) & int2(0x80000000,0x7fffffff);
    if (r10.z != 0) {
      r0.z = mad((int)r10.w, asint(cb2[0].y), (int)r0.x);
      r9.x = t2.Load(r0.z).x;
      r0.z = (int)r10.w + 1;
      r0.z = mad((int)r0.z, asint(cb2[0].y), (int)r0.x);
      r9.w = t2.Load(r0.z).x;
    } else {
      r0.z = mad((int)r10.w, asint(cb2[0].y), (int)r0.x);
      r9.x = t1.Load(r0.z).x;
      r0.z = (int)r10.w + 1;
      r0.z = mad((int)r0.z, asint(cb2[0].y), (int)r0.x);
      r9.w = t1.Load(r0.z).x;
    }
  }
  r11.xyz = cb0[67].zxy + -r1.zxy;
  r0.z = dot(r11.xyz, r11.xyz);
  r1.w = sqrt(r0.z);
  r1.w = max(9.99999997e-007, r1.w);
  r11.xyz = r11.xyz / r1.www;
  if (r9.z != 0) {
    r1.w = cb3[24].y;
  }
  if (r9.z == 0) {
    r9.yz = asint(cb3[14].xx) & int2(0x80000000,0x7fffffff);
    if (r9.y != 0) {
      r2.z = mad((int)r9.z, asint(cb2[0].y), (int)r0.x);
      r1.w = t2.Load(r2.z).x;
    } else {
      r0.x = mad((int)r9.z, asint(cb2[0].y), (int)r0.x);
      r1.w = t1.Load(r0.x).x;
    }
  }
  r0.x = cmp(asint(cb2[0].w) == 2);
  r7.xyz = r0.xxx ? r7.xyz : r11.xyz;
  if (cb2[0].z == 0) {
    r12.xyz = cb0[64].xyz + -cb0[62].xyz;
    r12.xyz = cb3[5].www * r12.xyz + cb0[62].xyz;
    r13.xyz = cb0[63].yzx + -cb0[61].yzx;
    r13.xyz = cb3[5].www * r13.xyz + cb0[61].yzx;
    r14.xyz = -cb0[60].zxy * r13.xyz;
    r14.xyz = -cb0[60].yzx * r13.yzx + -r14.xyz;
    r2.z = dot(r14.xyz, r14.xyz);
    r2.z = sqrt(r2.z);
    r2.z = max(9.99999997e-007, r2.z);
    r14.xyz = r14.xyz / r2.zzz;
    r15.xyz = -cb0[60].zxy * r14.yzx;
    r15.xyz = -cb0[60].yzx * r14.zxy + -r15.xyz;
    r16.xyz = r13.xyz * r7.xyz;
    r16.xyz = r7.zxy * r13.yzx + -r16.xyz;
    r2.z = dot(r16.xyz, r16.xyz);
    r2.z = sqrt(r2.z);
    r2.z = max(9.99999997e-007, r2.z);
    r16.xyz = r16.xyz / r2.zzz;
    r17.xyz = r16.yzx * r7.xyz;
    r17.xyz = r7.zxy * r16.zxy + -r17.xyz;
    r18.xyz = float3(0,1,0) * r11.xyz;
    r18.xyz = r11.zxy * float3(1,0,0) + -r18.xyz;
    r2.z = dot(r18.xy, r18.xy);
    r2.z = sqrt(r2.z);
    r2.z = max(9.99999997e-007, r2.z);
    r19.xyz = r18.xyz / r2.zzz;
    r20.xyz = r19.yzx * r11.xyz;
    r20.xyz = r11.zxy * r19.zxy + -r20.xyz;
    r0.z = saturate(r0.z * cb3[5].y + -cb3[5].z);
    r21.xyz = r18.yzx * r11.xyz;
    r21.xyz = r11.zxy * r18.zxy + -r21.xyz;
    r22.xyz = -r18.xyz + r12.xyz;
    r18.xyz = r0.zzz * r22.xyz + r18.xyz;
    r22.xyz = -r21.xyz + -r13.zxy;
    r21.xyz = r0.zzz * r22.xyz + r21.xyz;
    r9.yz = cmp(asint(cb2[0].ww) == int2(4,1));
    r16.xyz = r0.xxx ? r16.xyz : r19.xyz;
    r17.xyz = r0.xxx ? r17.xyz : r20.xyz;
    r14.xyz = r9.zzz ? r14.xyz : r16.xyz;
    r15.xyz = r9.zzz ? r15.xyz : r17.xyz;
    r12.xyz = cb2[0].www ? r14.xyz : r12.xyz;
    r13.xyz = cb2[0].www ? r15.xyz : -r13.zxy;
    r12.xyz = r9.yyy ? r18.xyz : r12.xyz;
    r13.xyz = r9.yyy ? r21.xyz : r13.xyz;
  } else {
    r14.xyz = r5.xyz * r3.yyy;
    r14.xyz = r4.xyz * r3.xxx + r14.xyz;
    r14.xyz = r6.xyz * r3.zzz + r14.xyz;
    r3.xyz = cb3[0].xxx ? r14.xyz : r3.xyz;
    r5.xyz = r8.yyy * r5.xyz;
    r4.xyz = r4.xyz * r8.xxx + r5.xyz;
    r4.xyz = r6.xyz * r8.zzz + r4.xyz;
    r4.xyz = cb3[0].xxx ? r4.xyz : r8.xyz;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.z = sqrt(r0.z);
    r0.z = max(9.99999997e-007, r0.z);
    r4.xyz = r4.xyz / r0.zzz;
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = sqrt(r0.z);
    r2.z = cmp(9.99999997e-007 < r0.z);
    r3.xyz = r3.xyz / r0.zzz;
    r3.xyz = r2.zzz ? r3.xyz : float3(0,0,1);
    r0.z = cmp(asint(cb2[0].z) == 2);
    r0.z = r0.z ? 1.000000 : 0;
    r4.xyz = r4.xyz + -r3.xyz;
    r3.xyz = r0.zzz * r4.xyz + r3.xyz;
    r4.xyz = r7.xyz * r3.yzx;
    r4.xyz = r7.zxy * r3.zxy + -r4.xyz;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.z = sqrt(r0.z);
    r0.z = max(9.99999997e-007, r0.z);
    r12.xyz = r4.xyz / r0.zzz;
    r4.xyz = r12.yzx * r7.xyz;
    r4.xyz = r7.zxy * r12.zxy + -r4.xyz;
    r0.x = r0.x ? 1.000000 : 0;
    r4.xyz = r4.xyz + r3.xyz;
    r13.xyz = r0.xxx * r4.xyz + -r3.xyz;
  }
  r0.x = r0.y * 0.0174532942 + cb3[7].y;
  sincos(r0.x, r0.x, r3.x);
  r3.yzw = r12.zxy * r0.xxx;
  r4.xyz = r12.xyz * r3.xxx;
  r0.xyz = r13.xyz * r0.xxx + r4.xyz;
  r3.xyz = r13.zxy * r3.xxx + -r3.yzw;
  r4.xy = cmp(float2(0,0) < r2.xy);
  r4.zw = cmp(r2.xy < float2(0,0));
  r4.xy = (int2)-r4.xy + (int2)r4.zw;
  r4.xy = (int2)r4.xy;
  if (cb2[0].x != 0) {
    r2.z = cmp(asint(cb2[0].x) == 8);
    r2.z = r2.z ? 7 : 3;
    r2.z = (int)r2.z & (int)v1.x;
    r3.w = cb3[4].x * cb3[4].y;
    r4.z = r0.w / r3.w;
    r4.w = cmp(r4.z >= -r4.z);
    r4.z = frac(abs(r4.z));
    r4.z = r4.w ? r4.z : -r4.z;
    r3.w = r4.z * r3.w;
    r3.w = (uint)r3.w;
    r4.z = r4.x * r4.y;
    r4.z = cmp(r4.z < 0);
    r4.w = asint(cb2[0].x) + -1;
    r4.w = (int)-r2.z + (int)r4.w;
    r2.z = r4.z ? r4.w : r2.z;
    r2.z = mad((int)r3.w, asint(cb2[0].x), (int)r2.z);
    r4.zw = t0.Load(r2.z).xy;
    r5.xy = cmp(r4.xy < float2(0,0));
    r5.zw = float2(1,1) + -r4.zw;
    r5.xy = r5.xy ? r5.zw : r4.zw;
  } else {
    r4.xy = cmp(r4.xy < float2(0,0));
    r5.zw = float2(1,1) + -v0.xy;
    r4.zw = r4.xy ? r5.zw : v0.xy;
    r5.xy = v0.xy;
  }
  r4.xy = float2(-0.5,-0.5) + r4.zw;
  r4.xy = r4.xy * r9.xw + float2(0.5,0.5);
  r4.zw = r5.xy + -r10.xy;
  r2.xy = r4.zw * abs(r2.xy);
  r5.xyz = r2.yyy * r3.yzx;
  r2.xyz = r2.xxx * r0.xyz + r5.xyz;
  r2.xyz = r11.yzx * r1.www + r2.xyz;
  r2.xyz = r2.xyz + r1.xyz;
  r1.w = frac(r0.w);
  r0.w = -r1.w + r0.w;
  r3.w = r0.w / cb3[4].x;
  r4.z = cmp(r3.w >= -r3.w);
  r3.w = frac(abs(r3.w));
  r3.w = r4.z ? r3.w : -r3.w;
  r5.x = cb3[4].x * r3.w;
  r0.w = cb3[4].z * r0.w;
  r5.y = floor(r0.w);
  r4.xy = r5.xy + r4.xy;
  o3.xy = cb3[4].zw * r4.xy;
  o1.w = r2.w ? r1.w : 0;
  r4.xyz = r3.zxy * r0.zxy;
  r4.xyz = r0.yzx * r3.xyz + -r4.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xy = cmp(cb3[7].zz < float2(0.5,1.5));
  r6.xyz = -cb3[2].xyz + r1.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r6.xyz * r0.www;
  r0.w = dot(cb3[3].xyz, r6.xyz);
  r6.xyz = r0.www * cb3[3].xyz + cb3[2].xyz;
  r1.xyz = -r6.xyz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r5.yyy ? r7.xyz : r1.xyz;
  r1.xyz = r5.xxx ? r4.xyz : r1.xyz;
  r2.xyz = cb0[70].xyz + r2.xyz;
  r4.xyzw = cb0[1].xyzw * r2.yyyy;
  r4.xyzw = r2.xxxx * cb0[0].xyzw + r4.xyzw;
  r4.xyzw = r2.zzzz * cb0[2].xyzw + r4.xyzw;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  o0.xy = cb0[364].xy * r4.zz + r4.xy;
  r5.xyz = r3.xyz * r1.yzx;
  r3.xyz = r3.zxy * r1.zxy + -r5.xyz;
  r0.w = dot(r3.xyz, r0.xyz);
  r1.w = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.w + (int)r0.w;
  o2.w = (int)r0.w;
  o0.zw = r4.zw;
  o1.xyz = r0.xyz;
  o2.xyz = r1.xyz;
  o3.zw = float2(0,0);
  o4.xyz = r2.xyz;
  o4.w = 1;
  return;
}
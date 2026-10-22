// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[30];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float2 v0 : ATTRIBUTE0,
  uint v1 : SV_VertexID0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb2[1].x) != -1);
  if (r0.x != 0) {
    r0.x = (int)v2.x + asint(cb2[1].x);
    r0.x = t3.Load(r0.x).x;
  } else {
    r0.x = v2.x;
  }
  r1.xyzw = cmp(asint(cb3[9].xzyw) == int4(-1,-1,-1,-1));
  if (r1.x != 0) {
    r0.yzw = cb3[16].xyz;
  }
  if (r1.x == 0) {
    r2.xy = asint(cb3[9].xx) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r1.x = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r0.y = t2.Load(r1.x).x;
      r2.xz = (int2)r2.yy + int2(1,2);
      r2.xz = mad((int2)r2.xz, asint(cb2[0].yy), (int2)r0.xx);
      r0.z = t2.Load(r2.x).x;
      r0.w = t2.Load(r2.z).x;
    } else {
      r1.x = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r0.y = t1.Load(r1.x).x;
      r2.xy = (int2)r2.yy + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[0].yy), (int2)r0.xx);
      r0.z = t1.Load(r2.x).x;
      r0.w = t1.Load(r2.y).x;
    }
  }
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  r2.xyz = cb1[2].xyz * r0.www + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r0.yzw = cb3[0].xxx ? r2.xyz : r0.yzw;
  r2.xyzw = cmp(asint(cb3[10].xzyw) == int4(-1,-1,-1,-1));
  if (r2.x != 0) {
    r1.x = cb3[21].w;
  }
  if (r2.x == 0) {
    r3.xy = asint(cb3[10].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r2.x = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r1.x = t2.Load(r2.x).x;
    } else {
      r2.x = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r1.x = t1.Load(r2.x).x;
    }
  }
  r1.x = cb3[7].x * r1.x;
  if (r2.y != 0) {
    r3.xy = cb3[18].xy;
  }
  if (r2.y == 0) {
    r2.xy = asint(cb3[10].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r2.x = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r3.x = t2.Load(r2.x).x;
      r2.x = (int)r2.y + 1;
      r2.x = mad((int)r2.x, asint(cb2[0].y), (int)r0.x);
      r3.y = t2.Load(r2.x).x;
    } else {
      r2.x = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r3.x = t1.Load(r2.x).x;
      r2.x = (int)r2.y + 1;
      r2.x = mad((int)r2.x, asint(cb2[0].y), (int)r0.x);
      r3.y = t1.Load(r2.x).x;
    }
  }
  if (r1.y != 0) {
    r4.xyz = cb3[20].xyz;
  }
  if (r1.y == 0) {
    r2.xy = asint(cb3[9].zz) & int2(0x80000000,0x7fffffff);
    if (r2.x != 0) {
      r1.y = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r4.x = t2.Load(r1.y).x;
      r3.zw = (int2)r2.yy + int2(1,2);
      r3.zw = mad((int2)r3.zw, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t2.Load(r3.z).x;
      r4.z = t2.Load(r3.w).x;
    } else {
      r1.y = mad((int)r2.y, asint(cb2[0].y), (int)r0.x);
      r4.x = t1.Load(r1.y).x;
      r2.xy = (int2)r2.yy + int2(1,2);
      r2.xy = mad((int2)r2.xy, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t1.Load(r2.x).x;
      r4.z = t1.Load(r2.y).x;
    }
  }
  r5.xyz = cb1[4].xxx * cb1[0].xyz;
  r6.xyz = cb1[4].yyy * cb1[1].xyz;
  r7.xyz = cb1[4].zzz * cb1[2].xyz;
  r1.y = cmp(asint(cb3[11].x) == -1);
  if (r1.y != 0) {
    r2.x = cb3[25].x;
  }
  if (r1.y == 0) {
    r3.zw = asint(cb3[11].xx) & int2(0x80000000,0x7fffffff);
    if (r3.z != 0) {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r2.x = t2.Load(r1.y).x;
    } else {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r2.x = t1.Load(r1.y).x;
    }
  }
  r1.y = cmp(asint(cb3[12].w) == -1);
  if (r1.y != 0) {
    r8.xyz = cb3[26].xyz;
  }
  if (r1.y == 0) {
    r3.zw = asint(cb3[12].ww) & int2(0x80000000,0x7fffffff);
    if (r3.z != 0) {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r8.x = t2.Load(r1.y).x;
      r9.xy = (int2)r3.ww + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t2.Load(r9.x).x;
      r8.z = t2.Load(r9.y).x;
    } else {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r8.x = t1.Load(r1.y).x;
      r3.zw = (int2)r3.ww + int2(1,2);
      r3.zw = mad((int2)r3.zw, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t1.Load(r3.z).x;
      r8.z = t1.Load(r3.w).x;
    }
  }
  r9.xyz = r8.yyy * r6.zxy;
  r9.xyz = r5.zxy * r8.xxx + r9.xyz;
  r9.xyz = r7.zxy * r8.zzz + r9.xyz;
  r8.xyz = cb3[0].xxx ? r9.xyz : r8.zxy;
  r1.y = dot(r8.xyz, r8.xyz);
  r1.y = sqrt(r1.y);
  r1.y = max(9.99999997e-007, r1.y);
  r8.xyz = r8.xyz / r1.yyy;
  r9.xyz = cmp(asint(cb3[13].yxz) == int3(-1,-1,-1));
  if (r9.x != 0) {
    r10.xyz = cb3[28].xyz;
  }
  if (r9.x == 0) {
    r3.zw = asint(cb3[13].yy) & int2(0x80000000,0x7fffffff);
    if (r3.z != 0) {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t2.Load(r1.y).x;
      r9.xw = (int2)r3.ww + int2(1,2);
      r9.xw = mad((int2)r9.xw, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t2.Load(r9.x).x;
      r10.z = t2.Load(r9.w).x;
    } else {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t1.Load(r1.y).x;
      r3.zw = (int2)r3.ww + int2(1,2);
      r3.zw = mad((int2)r3.zw, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t1.Load(r3.z).x;
      r10.z = t1.Load(r3.w).x;
    }
  }
  r11.xyz = cmp(asint(cb3[14].wxy) == int3(-1,-1,-1));
  if (r11.x != 0) {
    r3.zw = cb3[8].xy;
  }
  if (r11.x == 0) {
    r9.xw = asint(cb3[14].ww) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r1.y = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r3.z = t2.Load(r1.y).x;
      r1.y = (int)r9.w + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r3.w = t2.Load(r1.y).x;
    } else {
      r1.y = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r3.z = t1.Load(r1.y).x;
      r1.y = (int)r9.w + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r3.w = t1.Load(r1.y).x;
    }
  }
  r12.xyz = cb0[67].zxy + -r0.wyz;
  r1.y = dot(r12.xyz, r12.xyz);
  r2.y = sqrt(r1.y);
  r2.y = max(9.99999997e-007, r2.y);
  r12.xyz = r12.xyz / r2.yyy;
  if (r11.y != 0) {
    r2.y = cb3[24].y;
  }
  if (r11.y == 0) {
    r9.xw = asint(cb3[14].xx) & int2(0x80000000,0x7fffffff);
    if (r9.x != 0) {
      r4.w = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r2.y = t2.Load(r4.w).x;
    } else {
      r4.w = mad((int)r9.w, asint(cb2[0].y), (int)r0.x);
      r2.y = t1.Load(r4.w).x;
    }
  }
  r11.xyw = cb0[64].xyz + -cb0[62].xyz;
  r11.xyw = cb3[5].www * r11.xyw + cb0[62].xyz;
  r13.xyz = cb0[63].yzx + -cb0[61].yzx;
  r13.xyz = cb3[5].www * r13.xyz + cb0[61].yzx;
  r9.xw = cmp(asint(cb2[0].wz) == int2(2,2));
  r8.xyz = r9.xxx ? r8.xyz : r12.xyz;
  r14.xy = r9.wx ? float2(1,1) : 0;
  r15.xyz = -cb0[60].zxy * r13.xyz;
  r15.xyz = -cb0[60].yzx * r13.yzx + -r15.xyz;
  r4.w = dot(r15.xyz, r15.xyz);
  r4.w = sqrt(r4.w);
  r4.w = max(9.99999997e-007, r4.w);
  r15.xyz = r15.xyz / r4.www;
  r16.xyz = -cb0[60].zxy * r15.yzx;
  r16.xyz = -cb0[60].yzx * r15.zxy + -r16.xyz;
  if (cb2[0].z == 0) {
    r17.xyz = r8.xyz * r13.xyz;
    r17.xyz = r8.zxy * r13.yzx + -r17.xyz;
    r4.w = dot(r17.xyz, r17.xyz);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999997e-007, r4.w);
    r17.xyz = r17.xyz / r4.www;
    r18.xyz = r17.yzx * r8.xyz;
    r18.xyz = r8.zxy * r17.zxy + -r18.xyz;
    r19.xyz = float3(0,1,0) * r12.xyz;
    r19.xyz = r12.zxy * float3(1,0,0) + -r19.xyz;
    r4.w = dot(r19.xy, r19.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999997e-007, r4.w);
    r20.xyz = r19.xyz / r4.www;
    r21.xyz = r20.yzx * r12.xyz;
    r21.xyz = r12.zxy * r20.zxy + -r21.xyz;
    r1.y = saturate(r1.y * cb3[5].y + -cb3[5].z);
    r22.xyz = r19.yzx * r12.xyz;
    r22.xyz = r12.zxy * r19.zxy + -r22.xyz;
    r23.xyz = -r19.xyz + r11.xyw;
    r19.xyz = r1.yyy * r23.xyz + r19.xyz;
    r23.xyz = -r22.xyz + -r13.zxy;
    r22.xyz = r1.yyy * r23.xyz + r22.xyz;
    r14.zw = cmp(asint(cb2[0].ww) == int2(4,1));
    r17.xyz = r9.xxx ? r17.xyz : r20.xyz;
    r18.xyz = r9.xxx ? r18.xyz : r21.xyz;
    r17.xyz = r14.www ? r15.xyz : r17.xyz;
    r18.xyz = r14.www ? r16.xyz : r18.xyz;
    r17.xyz = cb2[0].www ? r17.xyz : r11.xyw;
    r18.xyz = cb2[0].www ? r18.xyz : -r13.zxy;
    r17.xyz = r14.zzz ? r19.xyz : r17.xyz;
    r18.xyz = r14.zzz ? r22.xyz : r18.xyz;
  } else {
    r19.xyz = r6.xyz * r4.yyy;
    r19.xyz = r5.xyz * r4.xxx + r19.xyz;
    r19.xyz = r7.xyz * r4.zzz + r19.xyz;
    r4.xyz = cb3[0].xxx ? r19.xyz : r4.xyz;
    r6.xyz = r10.yyy * r6.xyz;
    r5.xyz = r5.xyz * r10.xxx + r6.xyz;
    r5.xyz = r7.xyz * r10.zzz + r5.xyz;
    r5.xyz = cb3[0].xxx ? r5.xyz : r10.xyz;
    r1.y = dot(r5.xyz, r5.xyz);
    r1.y = sqrt(r1.y);
    r1.y = max(9.99999997e-007, r1.y);
    r5.xyz = r5.xyz / r1.yyy;
    r1.y = dot(r4.xyz, r4.xyz);
    r1.y = sqrt(r1.y);
    r4.w = cmp(9.99999997e-007 < r1.y);
    r4.xyz = r4.xyz / r1.yyy;
    r4.xyz = r4.www ? r4.xyz : float3(0,0,1);
    r5.xyz = r5.xyz + -r4.xyz;
    r4.xyz = r14.xxx * r5.xyz + r4.xyz;
    r5.xyz = r8.xyz * r4.yzx;
    r5.xyz = r8.zxy * r4.zxy + -r5.xyz;
    r1.y = dot(r5.xyz, r5.xyz);
    r1.y = sqrt(r1.y);
    r1.y = max(9.99999997e-007, r1.y);
    r17.xyz = r5.xyz / r1.yyy;
    r5.xyz = r17.yzx * r8.xyz;
    r5.xyz = r8.zxy * r17.zxy + -r5.xyz;
    r5.xyz = r5.xyz + r4.xyz;
    r18.xyz = r14.yyy * r5.xyz + -r4.xyz;
  }
  r1.x = r1.x * 0.0174532942 + cb3[7].y;
  sincos(r1.x, r1.x, r4.x);
  r4.yzw = r17.xyz * r1.xxx;
  r5.xyz = r17.xyz * r4.xxx;
  r5.xyz = r18.xyz * r1.xxx + r5.xyz;
  r4.xyz = r18.xyz * r4.xxx + -r4.yzw;
  if (cb2[0].x != 0) {
    r1.xy = cmp(float2(0,0) < r3.xy);
    r6.xy = cmp(r3.xy < float2(0,0));
    r1.xy = (int2)-r1.xy + (int2)r6.xy;
    r1.xy = (int2)r1.xy;
    r4.w = cmp(asint(cb2[0].x) == 8);
    r4.w = r4.w ? 7 : 3;
    r4.w = (int)r4.w & (int)v1.x;
    r5.w = cb3[4].x * cb3[4].y;
    r6.x = r2.x / r5.w;
    r6.y = cmp(r6.x >= -r6.x);
    r6.x = frac(abs(r6.x));
    r6.x = r6.y ? r6.x : -r6.x;
    r5.w = r6.x * r5.w;
    r5.w = (uint)r5.w;
    r6.x = r1.x * r1.y;
    r6.x = cmp(r6.x < 0);
    r6.y = asint(cb2[0].x) + -1;
    r6.y = (int)-r4.w + (int)r6.y;
    r4.w = r6.x ? r6.y : r4.w;
    r4.w = mad((int)r5.w, asint(cb2[0].x), (int)r4.w);
    r6.xy = t0.Load(r4.w).xy;
    r1.xy = cmp(r1.xy < float2(0,0));
    r6.zw = float2(1,1) + -r6.xy;
    r1.xy = r1.xy ? r6.zw : r6.xy;
  } else {
    r1.xy = v0.xy;
  }
  r1.xy = r1.xy + -r3.zw;
  r1.xy = abs(r3.xy) * r1.xy;
  r4.xyz = r1.yyy * r4.xyz;
  r4.xyz = r1.xxx * r5.xyz + r4.xyz;
  r4.xyz = r12.yzx * r2.yyy + r4.xyz;
  r0.yzw = r4.xyz + r0.yzw;
  if (r1.z != 0) {
    r4.xyz = cb3[17].xyz;
  }
  if (r1.z == 0) {
    r1.xy = asint(cb3[9].yy) & int2(0x80000000,0x7fffffff);
    if (r1.x != 0) {
      r1.x = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r4.x = t2.Load(r1.x).x;
      r1.xz = (int2)r1.yy + int2(1,2);
      r1.xz = mad((int2)r1.xz, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t2.Load(r1.x).x;
      r4.z = t2.Load(r1.z).x;
    } else {
      r1.x = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r4.x = t1.Load(r1.x).x;
      r1.xy = (int2)r1.yy + int2(1,2);
      r1.xy = mad((int2)r1.xy, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t1.Load(r1.x).x;
      r4.z = t1.Load(r1.y).x;
    }
  }
  r1.xyz = cb1[11].xyz * r4.yyy;
  r1.xyz = cb1[10].xyz * r4.xxx + r1.xyz;
  r1.xyz = cb1[12].xyz * r4.zzz + r1.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r1.xyz = cb3[0].xxx ? r1.xyz : r4.xyz;
  if (r2.z != 0) {
    r2.y = cb3[22].x;
  }
  if (r2.z == 0) {
    r3.xy = asint(cb3[10].yy) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r2.z = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t2.Load(r2.z).x;
    } else {
      r2.z = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t1.Load(r2.z).x;
    }
  }
  r2.y = cb3[7].x * r2.y;
  if (r2.w != 0) {
    r3.xy = cb3[18].zw;
  }
  if (r2.w == 0) {
    r2.zw = asint(cb3[10].ww) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r2.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r3.x = t2.Load(r2.z).x;
      r2.z = (int)r2.w + 1;
      r2.z = mad((int)r2.z, asint(cb2[0].y), (int)r0.x);
      r3.y = t2.Load(r2.z).x;
    } else {
      r2.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r3.x = t1.Load(r2.z).x;
      r2.z = (int)r2.w + 1;
      r2.z = mad((int)r2.z, asint(cb2[0].y), (int)r0.x);
      r3.y = t1.Load(r2.z).x;
    }
  }
  if (r1.w != 0) {
    r4.xyz = cb3[21].xyz;
  }
  if (r1.w == 0) {
    r2.zw = asint(cb3[9].ww) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r4.x = t2.Load(r1.w).x;
      r5.xy = (int2)r2.ww + int2(1,2);
      r5.xy = mad((int2)r5.xy, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t2.Load(r5.x).x;
      r4.z = t2.Load(r5.y).x;
    } else {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r4.x = t1.Load(r1.w).x;
      r2.zw = (int2)r2.ww + int2(1,2);
      r2.zw = mad((int2)r2.zw, asint(cb2[0].yy), (int2)r0.xx);
      r4.y = t1.Load(r2.z).x;
      r4.z = t1.Load(r2.w).x;
    }
  }
  r5.xyz = cb1[10].xyz * cb1[4].xxx;
  r6.xyz = cb1[11].xyz * cb1[4].yyy;
  r7.xyz = cb1[12].xyz * cb1[4].zzz;
  if (r9.y != 0) {
    r8.xyz = cb3[27].xyz;
  }
  if (r9.y == 0) {
    r2.zw = asint(cb3[13].xx) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r8.x = t2.Load(r1.w).x;
      r9.yw = (int2)r2.ww + int2(1,2);
      r9.yw = mad((int2)r9.yw, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t2.Load(r9.y).x;
      r8.z = t2.Load(r9.w).x;
    } else {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r8.x = t1.Load(r1.w).x;
      r2.zw = (int2)r2.ww + int2(1,2);
      r2.zw = mad((int2)r2.zw, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t1.Load(r2.z).x;
      r8.z = t1.Load(r2.w).x;
    }
  }
  r10.xyz = r8.yyy * r6.zxy;
  r10.xyz = r5.zxy * r8.xxx + r10.xyz;
  r10.xyz = r7.zxy * r8.zzz + r10.xyz;
  r8.xyz = cb3[0].xxx ? r10.xyz : r8.zxy;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r1.w = max(9.99999997e-007, r1.w);
  r8.xyz = r8.xyz / r1.www;
  if (r9.z != 0) {
    r10.xyz = cb3[29].xyz;
  }
  if (r9.z == 0) {
    r2.zw = asint(cb3[13].zz) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t2.Load(r1.w).x;
      r9.yz = (int2)r2.ww + int2(1,2);
      r9.yz = mad((int2)r9.yz, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t2.Load(r9.y).x;
      r10.z = t2.Load(r9.z).x;
    } else {
      r1.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t1.Load(r1.w).x;
      r2.zw = (int2)r2.ww + int2(1,2);
      r2.zw = mad((int2)r2.zw, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t1.Load(r2.z).x;
      r10.z = t1.Load(r2.w).x;
    }
  }
  r9.yzw = cb0[111].xyz + -r1.xyz;
  r1.w = dot(r9.yzw, r9.yzw);
  r1.w = sqrt(r1.w);
  r1.w = max(9.99999997e-007, r1.w);
  r9.yzw = r9.yzw / r1.www;
  if (r11.z != 0) {
    r1.w = cb3[24].z;
  }
  if (r11.z == 0) {
    r2.zw = asint(cb3[14].yy) & int2(0x80000000,0x7fffffff);
    if (r2.z != 0) {
      r2.z = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r1.w = t2.Load(r2.z).x;
    } else {
      r0.x = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r1.w = t1.Load(r0.x).x;
    }
  }
  r12.xyz = cb0[67].zxy + -r1.zxy;
  r0.x = dot(r12.xyz, r12.xyz);
  r2.z = sqrt(r0.x);
  r2.z = max(9.99999997e-007, r2.z);
  r12.xyz = r12.xyz / r2.zzz;
  r8.xyz = r9.xxx ? r8.xyz : r12.xyz;
  if (cb2[0].z == 0) {
    r17.xyz = r8.xyz * r13.xyz;
    r17.xyz = r8.zxy * r13.yzx + -r17.xyz;
    r2.z = dot(r17.xyz, r17.xyz);
    r2.z = sqrt(r2.z);
    r2.z = max(9.99999997e-007, r2.z);
    r17.xyz = r17.xyz / r2.zzz;
    r18.xyz = r17.yzx * r8.xyz;
    r18.xyz = r8.zxy * r17.zxy + -r18.xyz;
    r19.xyz = float3(0,1,0) * r12.xyz;
    r19.xyz = r12.zxy * float3(1,0,0) + -r19.xyz;
    r2.z = dot(r19.xy, r19.xy);
    r2.z = sqrt(r2.z);
    r2.z = max(9.99999997e-007, r2.z);
    r20.xyz = r19.xyz / r2.zzz;
    r21.xyz = r20.yzx * r12.xyz;
    r21.xyz = r12.zxy * r20.zxy + -r21.xyz;
    r0.x = saturate(r0.x * cb3[5].y + -cb3[5].z);
    r22.xyz = r19.yzx * r12.xyz;
    r12.xyz = r12.zxy * r19.zxy + -r22.xyz;
    r22.xyz = -r19.xyz + r11.xyw;
    r19.xyz = r0.xxx * r22.xyz + r19.xyz;
    r22.xyz = -r13.zxy + -r12.xyz;
    r12.xyz = r0.xxx * r22.xyz + r12.xyz;
    r2.zw = cmp(asint(cb2[0].ww) == int2(4,1));
    r17.xyz = r9.xxx ? r17.xyz : r20.xyz;
    r18.xyz = r9.xxx ? r18.xyz : r21.xyz;
    r15.xyz = r2.www ? r15.xyz : r17.xyz;
    r16.xyz = r2.www ? r16.xyz : r18.xyz;
    r11.xyz = cb2[0].www ? r15.xyz : r11.xyw;
    r13.xyz = cb2[0].www ? r16.xyz : -r13.zxy;
    r11.xyz = r2.zzz ? r19.xyz : r11.xyz;
    r12.xyz = r2.zzz ? r12.xyz : r13.xyz;
  } else {
    r13.xyz = r6.xyz * r4.yyy;
    r13.xyz = r5.xyz * r4.xxx + r13.xyz;
    r13.xyz = r7.xyz * r4.zzz + r13.xyz;
    r4.xyz = cb3[0].xxx ? r13.xyz : r4.xyz;
    r6.xyz = r10.yyy * r6.xyz;
    r5.xyz = r5.xyz * r10.xxx + r6.xyz;
    r5.xyz = r7.xyz * r10.zzz + r5.xyz;
    r5.xyz = cb3[0].xxx ? r5.xyz : r10.xyz;
    r0.x = dot(r5.xyz, r5.xyz);
    r0.x = sqrt(r0.x);
    r0.x = max(9.99999997e-007, r0.x);
    r5.xyz = r5.xyz / r0.xxx;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = sqrt(r0.x);
    r2.z = cmp(9.99999997e-007 < r0.x);
    r4.xyz = r4.xyz / r0.xxx;
    r4.xyz = r2.zzz ? r4.xyz : float3(0,0,1);
    r5.xyz = r5.xyz + -r4.xyz;
    r4.xyz = r14.xxx * r5.xyz + r4.xyz;
    r5.xyz = r8.xyz * r4.yzx;
    r5.xyz = r8.zxy * r4.zxy + -r5.xyz;
    r0.x = dot(r5.xyz, r5.xyz);
    r0.x = sqrt(r0.x);
    r0.x = max(9.99999997e-007, r0.x);
    r11.xyz = r5.xyz / r0.xxx;
    r5.xyz = r11.yzx * r8.xyz;
    r5.xyz = r8.zxy * r11.zxy + -r5.xyz;
    r5.xyz = r5.xyz + r4.xyz;
    r12.xyz = r14.yyy * r5.xyz + -r4.xyz;
  }
  r0.x = r2.y * 0.0174532942 + cb3[7].y;
  sincos(r0.x, r0.x, r4.x);
  r2.yzw = r11.xyz * r0.xxx;
  r4.yzw = r11.xyz * r4.xxx;
  r4.yzw = r12.xyz * r0.xxx + r4.yzw;
  r2.yzw = r12.xyz * r4.xxx + -r2.yzw;
  if (cb2[0].x != 0) {
    r5.xy = cmp(float2(0,0) < r3.xy);
    r5.zw = cmp(r3.xy < float2(0,0));
    r5.xy = (int2)-r5.xy + (int2)r5.zw;
    r5.xy = (int2)r5.xy;
    r0.x = cmp(asint(cb2[0].x) == 8);
    r0.x = r0.x ? 7 : 3;
    r0.x = (int)r0.x & (int)v1.x;
    r4.x = cb3[4].x * cb3[4].y;
    r2.x = r2.x / r4.x;
    r5.z = cmp(r2.x >= -r2.x);
    r2.x = frac(abs(r2.x));
    r2.x = r5.z ? r2.x : -r2.x;
    r2.x = r2.x * r4.x;
    r2.x = (uint)r2.x;
    r4.x = r5.x * r5.y;
    r4.x = cmp(r4.x < 0);
    r5.z = asint(cb2[0].x) + -1;
    r5.z = (int)-r0.x + (int)r5.z;
    r0.x = r4.x ? r5.z : r0.x;
    r0.x = mad((int)r2.x, asint(cb2[0].x), (int)r0.x);
    r5.zw = t0.Load(r0.x).xy;
    r5.xy = cmp(r5.xy < float2(0,0));
    r6.xy = float2(1,1) + -r5.zw;
    r5.xy = r5.xy ? r6.xy : r5.zw;
  } else {
    r5.xy = v0.xy;
  }
  r3.zw = r5.xy + -r3.zw;
  r3.xy = abs(r3.xy) * r3.zw;
  r2.xyz = r3.yyy * r2.yzw;
  r2.xyz = r3.xxx * r4.yzw + r2.xyz;
  r2.xyz = r9.yzw * r1.www + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = cb0[70].xyz + r0.yzw;
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
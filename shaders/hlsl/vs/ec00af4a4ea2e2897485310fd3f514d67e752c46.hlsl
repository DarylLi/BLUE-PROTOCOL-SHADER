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
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float2 o5 : LIGHTMAP_UVS0,
  out float3 o6 : PARTICLE_LIGHTING_OFFSET0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
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
  r9.xyzw = cmp(asint(cb3[13].yxzw) == int4(-1,-1,-1,1));
  if (r9.x != 0) {
    r10.xyz = cb3[28].xyz;
  }
  if (r9.x == 0) {
    r3.zw = asint(cb3[13].yy) & int2(0x80000000,0x7fffffff);
    if (r3.z != 0) {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t2.Load(r1.y).x;
      r11.xy = (int2)r3.ww + int2(1,2);
      r11.xy = mad((int2)r11.xy, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t2.Load(r11.x).x;
      r10.z = t2.Load(r11.y).x;
    } else {
      r1.y = mad((int)r3.w, asint(cb2[0].y), (int)r0.x);
      r10.x = t1.Load(r1.y).x;
      r3.zw = (int2)r3.ww + int2(1,2);
      r3.zw = mad((int2)r3.zw, asint(cb2[0].yy), (int2)r0.xx);
      r10.y = t1.Load(r3.z).x;
      r10.z = t1.Load(r3.w).x;
    }
  }
  r11.xyzw = cmp(asint(cb3[14].wzxy) == int4(-1,-1,-1,-1));
  if (r11.x != 0) {
    r3.zw = cb3[8].xy;
  }
  if (r11.x == 0) {
    r12.xy = asint(cb3[14].ww) & int2(0x80000000,0x7fffffff);
    if (r12.x != 0) {
      r1.y = mad((int)r12.y, asint(cb2[0].y), (int)r0.x);
      r3.z = t2.Load(r1.y).x;
      r1.y = (int)r12.y + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r3.w = t2.Load(r1.y).x;
    } else {
      r1.y = mad((int)r12.y, asint(cb2[0].y), (int)r0.x);
      r3.z = t1.Load(r1.y).x;
      r1.y = (int)r12.y + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r3.w = t1.Load(r1.y).x;
    }
  }
  if (r11.y != 0) {
    r12.xy = cb3[19].xy;
  }
  if (r11.y == 0) {
    r11.xy = asint(cb3[14].zz) & int2(0x80000000,0x7fffffff);
    if (r11.x != 0) {
      r1.y = mad((int)r11.y, asint(cb2[0].y), (int)r0.x);
      r12.x = t2.Load(r1.y).x;
      r1.y = (int)r11.y + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r12.y = t2.Load(r1.y).x;
    } else {
      r1.y = mad((int)r11.y, asint(cb2[0].y), (int)r0.x);
      r12.x = t1.Load(r1.y).x;
      r1.y = (int)r11.y + 1;
      r1.y = mad((int)r1.y, asint(cb2[0].y), (int)r0.x);
      r12.y = t1.Load(r1.y).x;
    }
  }
  r13.xyz = cb0[67].zxy + -r0.wyz;
  r1.y = dot(r13.xyz, r13.xyz);
  r2.y = sqrt(r1.y);
  r2.y = max(9.99999997e-007, r2.y);
  r13.xyz = r13.xyz / r2.yyy;
  if (r11.z != 0) {
    r2.y = cb3[24].y;
  }
  if (r11.z == 0) {
    r11.xy = asint(cb3[14].xx) & int2(0x80000000,0x7fffffff);
    if (r11.x != 0) {
      r4.w = mad((int)r11.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t2.Load(r4.w).x;
    } else {
      r4.w = mad((int)r11.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t1.Load(r4.w).x;
    }
  }
  r11.xyz = cb0[64].xyz + -cb0[62].xyz;
  r11.xyz = cb3[5].www * r11.xyz + cb0[62].xyz;
  r14.xyz = cb0[63].yzx + -cb0[61].yzx;
  r14.xyz = cb3[5].www * r14.xyz + cb0[61].yzx;
  r12.zw = cmp(asint(cb2[0].wz) == int2(2,2));
  r8.xyz = r12.zzz ? r8.xyz : r13.xyz;
  r15.xy = r12.wz ? float2(1,1) : 0;
  r16.xyz = -cb0[60].zxy * r14.xyz;
  r16.xyz = -cb0[60].yzx * r14.yzx + -r16.xyz;
  r4.w = dot(r16.xyz, r16.xyz);
  r4.w = sqrt(r4.w);
  r4.w = max(9.99999997e-007, r4.w);
  r16.xyz = r16.xyz / r4.www;
  r17.xyz = -cb0[60].zxy * r16.yzx;
  r17.xyz = -cb0[60].yzx * r16.zxy + -r17.xyz;
  if (cb2[0].z == 0) {
    r18.xyz = r8.xyz * r14.xyz;
    r18.xyz = r8.zxy * r14.yzx + -r18.xyz;
    r4.w = dot(r18.xyz, r18.xyz);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999997e-007, r4.w);
    r18.xyz = r18.xyz / r4.www;
    r19.xyz = r18.yzx * r8.xyz;
    r19.xyz = r8.zxy * r18.zxy + -r19.xyz;
    r20.xyz = float3(0,1,0) * r13.xyz;
    r20.xyz = r13.zxy * float3(1,0,0) + -r20.xyz;
    r4.w = dot(r20.xy, r20.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999997e-007, r4.w);
    r21.xyz = r20.xyz / r4.www;
    r22.xyz = r21.yzx * r13.xyz;
    r22.xyz = r13.zxy * r21.zxy + -r22.xyz;
    r1.y = saturate(r1.y * cb3[5].y + -cb3[5].z);
    r23.xyz = r20.yzx * r13.xyz;
    r23.xyz = r13.zxy * r20.zxy + -r23.xyz;
    r24.xyz = -r20.xyz + r11.xyz;
    r20.xyz = r1.yyy * r24.xyz + r20.xyz;
    r24.xyz = -r23.xyz + -r14.zxy;
    r23.xyz = r1.yyy * r24.xyz + r23.xyz;
    r15.zw = cmp(asint(cb2[0].ww) == int2(4,1));
    r18.xyz = r12.zzz ? r18.xyz : r21.xyz;
    r19.xyz = r12.zzz ? r19.xyz : r22.xyz;
    r18.xyz = r15.www ? r16.xyz : r18.xyz;
    r19.xyz = r15.www ? r17.xyz : r19.xyz;
    r18.xyz = cb2[0].www ? r18.xyz : r11.xyz;
    r19.xyz = cb2[0].www ? r19.xyz : -r14.zxy;
    r18.xyz = r15.zzz ? r20.xyz : r18.xyz;
    r19.xyz = r15.zzz ? r23.xyz : r19.xyz;
  } else {
    r20.xyz = r6.xyz * r4.yyy;
    r20.xyz = r5.xyz * r4.xxx + r20.xyz;
    r20.xyz = r7.xyz * r4.zzz + r20.xyz;
    r4.xyz = cb3[0].xxx ? r20.xyz : r4.xyz;
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
    r4.xyz = r15.xxx * r5.xyz + r4.xyz;
    r5.xyz = r8.xyz * r4.yzx;
    r5.xyz = r8.zxy * r4.zxy + -r5.xyz;
    r1.y = dot(r5.xyz, r5.xyz);
    r1.y = sqrt(r1.y);
    r1.y = max(9.99999997e-007, r1.y);
    r18.xyz = r5.xyz / r1.yyy;
    r5.xyz = r18.yzx * r8.xyz;
    r5.xyz = r8.zxy * r18.zxy + -r5.xyz;
    r5.xyz = r5.xyz + r4.xyz;
    r19.xyz = r15.yyy * r5.xyz + -r4.xyz;
  }
  r1.x = r1.x * 0.0174532942 + cb3[7].y;
  sincos(r1.x, r1.x, r4.x);
  r4.yzw = r18.zxy * r1.xxx;
  r5.xyz = r18.xyz * r4.xxx;
  r5.xyz = r19.xyz * r1.xxx + r5.xyz;
  r4.xyz = r19.zxy * r4.xxx + -r4.yzw;
  r1.xy = cmp(float2(0,0) < r3.xy);
  r6.xy = cmp(r3.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r6.xy;
  r1.xy = (int2)r1.xy;
  if (cb2[0].x != 0) {
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
    r6.zw = cmp(r1.xy < float2(0,0));
    r7.xy = float2(1,1) + -r6.xy;
    r6.zw = r6.zw ? r7.xy : r6.xy;
  } else {
    r1.xy = cmp(r1.xy < float2(0,0));
    r7.xy = float2(1,1) + -v0.xy;
    r6.xy = r1.xy ? r7.xy : v0.xy;
    r6.zw = v0.xy;
  }
  r1.xy = float2(-0.5,-0.5) + r6.xy;
  r1.xy = r1.xy * r12.xy + float2(0.5,0.5);
  r6.xy = r6.zw + -r3.zw;
  r3.xy = r6.xy * abs(r3.xy);
  r6.xyz = r3.yyy * r4.yzx;
  r6.xyz = r3.xxx * r5.xyz + r6.xyz;
  r6.xyz = r13.yzx * r2.yyy + r6.xyz;
  r6.xyz = r6.xyz + r0.yzw;
  if (r1.z != 0) {
    r7.xyz = cb3[17].xyz;
  }
  if (r1.z == 0) {
    r3.xy = asint(cb3[9].yy) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.z = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r7.x = t2.Load(r1.z).x;
      r8.xy = (int2)r3.yy + int2(1,2);
      r8.xy = mad((int2)r8.xy, asint(cb2[0].yy), (int2)r0.xx);
      r7.y = t2.Load(r8.x).x;
      r7.z = t2.Load(r8.y).x;
    } else {
      r1.z = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r7.x = t1.Load(r1.z).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[0].yy), (int2)r0.xx);
      r7.y = t1.Load(r3.x).x;
      r7.z = t1.Load(r3.y).x;
    }
  }
  r8.xyz = cb1[11].xyz * r7.yyy;
  r8.xyz = cb1[10].xyz * r7.xxx + r8.xyz;
  r8.xyz = cb1[12].xyz * r7.zzz + r8.xyz;
  r8.xyz = cb1[13].xyz + r8.xyz;
  r7.xyz = cb3[0].xxx ? r8.xyz : r7.xyz;
  if (r2.z != 0) {
    r1.z = cb3[22].x;
  }
  if (r2.z == 0) {
    r2.yz = asint(cb3[10].yy) & int2(0x80000000,0x7fffffff);
    if (r2.y != 0) {
      r2.y = mad((int)r2.z, asint(cb2[0].y), (int)r0.x);
      r1.z = t2.Load(r2.y).x;
    } else {
      r2.y = mad((int)r2.z, asint(cb2[0].y), (int)r0.x);
      r1.z = t1.Load(r2.y).x;
    }
  }
  r1.z = cb3[7].x * r1.z;
  if (r2.w != 0) {
    r2.yz = cb3[18].zw;
  }
  if (r2.w == 0) {
    r3.xy = asint(cb3[10].ww) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r2.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t2.Load(r2.w).x;
      r2.w = (int)r3.y + 1;
      r2.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r2.z = t2.Load(r2.w).x;
    } else {
      r2.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r2.y = t1.Load(r2.w).x;
      r2.w = (int)r3.y + 1;
      r2.w = mad((int)r2.w, asint(cb2[0].y), (int)r0.x);
      r2.z = t1.Load(r2.w).x;
    }
  }
  if (r1.w != 0) {
    r8.xyz = cb3[21].xyz;
  }
  if (r1.w == 0) {
    r3.xy = asint(cb3[9].ww) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r8.x = t2.Load(r1.w).x;
      r10.xy = (int2)r3.yy + int2(1,2);
      r10.xy = mad((int2)r10.xy, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t2.Load(r10.x).x;
      r8.z = t2.Load(r10.y).x;
    } else {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r8.x = t1.Load(r1.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[0].yy), (int2)r0.xx);
      r8.y = t1.Load(r3.x).x;
      r8.z = t1.Load(r3.y).x;
    }
  }
  r10.xyz = cb1[10].xyz * cb1[4].xxx;
  r12.xyw = cb1[11].xyz * cb1[4].yyy;
  r13.xyz = cb1[12].xyz * cb1[4].zzz;
  if (r9.y != 0) {
    r18.xyz = cb3[27].xyz;
  }
  if (r9.y == 0) {
    r3.xy = asint(cb3[13].xx) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r18.x = t2.Load(r1.w).x;
      r9.xy = (int2)r3.yy + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[0].yy), (int2)r0.xx);
      r18.y = t2.Load(r9.x).x;
      r18.z = t2.Load(r9.y).x;
    } else {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r18.x = t1.Load(r1.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[0].yy), (int2)r0.xx);
      r18.y = t1.Load(r3.x).x;
      r18.z = t1.Load(r3.y).x;
    }
  }
  r19.xyz = r18.yyy * r12.wxy;
  r19.xyz = r10.zxy * r18.xxx + r19.xyz;
  r19.xyz = r13.zxy * r18.zzz + r19.xyz;
  r18.xyz = cb3[0].xxx ? r19.xyz : r18.zxy;
  r1.w = dot(r18.xyz, r18.xyz);
  r1.w = sqrt(r1.w);
  r1.w = max(9.99999997e-007, r1.w);
  r18.xyz = r18.xyz / r1.www;
  if (r9.z != 0) {
    r19.xyz = cb3[29].xyz;
  }
  if (r9.z == 0) {
    r3.xy = asint(cb3[13].zz) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r19.x = t2.Load(r1.w).x;
      r9.xy = (int2)r3.yy + int2(1,2);
      r9.xy = mad((int2)r9.xy, asint(cb2[0].yy), (int2)r0.xx);
      r19.y = t2.Load(r9.x).x;
      r19.z = t2.Load(r9.y).x;
    } else {
      r1.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r19.x = t1.Load(r1.w).x;
      r3.xy = (int2)r3.yy + int2(1,2);
      r3.xy = mad((int2)r3.xy, asint(cb2[0].yy), (int2)r0.xx);
      r19.y = t1.Load(r3.x).x;
      r19.z = t1.Load(r3.y).x;
    }
  }
  r9.xyz = cb0[111].xyz + -r7.xyz;
  r1.w = dot(r9.xyz, r9.xyz);
  r1.w = sqrt(r1.w);
  r1.w = max(9.99999997e-007, r1.w);
  r9.xyz = r9.xyz / r1.www;
  if (r11.w != 0) {
    r1.w = cb3[24].z;
  }
  if (r11.w == 0) {
    r3.xy = asint(cb3[14].yy) & int2(0x80000000,0x7fffffff);
    if (r3.x != 0) {
      r2.w = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r1.w = t2.Load(r2.w).x;
    } else {
      r0.x = mad((int)r3.y, asint(cb2[0].y), (int)r0.x);
      r1.w = t1.Load(r0.x).x;
    }
  }
  r20.xyz = cb0[67].zxy + -r7.zxy;
  r0.x = dot(r20.xyz, r20.xyz);
  r2.w = sqrt(r0.x);
  r2.w = max(9.99999997e-007, r2.w);
  r20.xyz = r20.xyz / r2.www;
  r18.xyz = r12.zzz ? r18.xyz : r20.xyz;
  if (cb2[0].z == 0) {
    r21.xyz = r18.xyz * r14.xyz;
    r21.xyz = r18.zxy * r14.yzx + -r21.xyz;
    r2.w = dot(r21.xyz, r21.xyz);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999997e-007, r2.w);
    r21.xyz = r21.xyz / r2.www;
    r22.xyz = r21.yzx * r18.xyz;
    r22.xyz = r18.zxy * r21.zxy + -r22.xyz;
    r23.xyz = float3(0,1,0) * r20.xyz;
    r23.xyz = r20.zxy * float3(1,0,0) + -r23.xyz;
    r2.w = dot(r23.xy, r23.xy);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999997e-007, r2.w);
    r24.xyz = r23.xyz / r2.www;
    r25.xyz = r24.yzx * r20.xyz;
    r25.xyz = r20.zxy * r24.zxy + -r25.xyz;
    r0.x = saturate(r0.x * cb3[5].y + -cb3[5].z);
    r26.xyz = r23.yzx * r20.xyz;
    r20.xyz = r20.zxy * r23.zxy + -r26.xyz;
    r26.xyz = -r23.xyz + r11.xyz;
    r23.xyz = r0.xxx * r26.xyz + r23.xyz;
    r26.xyz = -r20.xyz + -r14.zxy;
    r20.xyz = r0.xxx * r26.xyz + r20.xyz;
    r3.xy = cmp(asint(cb2[0].ww) == int2(4,1));
    r21.xyz = r12.zzz ? r21.xyz : r24.xyz;
    r22.xyz = r12.zzz ? r22.xyz : r25.xyz;
    r16.xyz = r3.yyy ? r16.xyz : r21.xyz;
    r17.xyz = r3.yyy ? r17.xyz : r22.xyz;
    r11.xyz = cb2[0].www ? r16.xyz : r11.xyz;
    r14.xyz = cb2[0].www ? r17.xyz : -r14.zxy;
    r11.xyz = r3.xxx ? r23.xyz : r11.xyz;
    r14.xyz = r3.xxx ? r20.xyz : r14.xyz;
  } else {
    r16.xyz = r12.xyw * r8.yyy;
    r16.xyz = r10.xyz * r8.xxx + r16.xyz;
    r16.xyz = r13.xyz * r8.zzz + r16.xyz;
    r8.xyz = cb3[0].xxx ? r16.xyz : r8.xyz;
    r12.xyz = r19.yyy * r12.xyw;
    r10.xyz = r10.xyz * r19.xxx + r12.xyz;
    r10.xyz = r13.xyz * r19.zzz + r10.xyz;
    r10.xyz = cb3[0].xxx ? r10.xyz : r19.xyz;
    r0.x = dot(r10.xyz, r10.xyz);
    r0.x = sqrt(r0.x);
    r0.x = max(9.99999997e-007, r0.x);
    r10.xyz = r10.xyz / r0.xxx;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = sqrt(r0.x);
    r2.w = cmp(9.99999997e-007 < r0.x);
    r8.xyz = r8.xyz / r0.xxx;
    r8.xyz = r2.www ? r8.xyz : float3(0,0,1);
    r10.xyz = r10.xyz + -r8.xyz;
    r8.xyz = r15.xxx * r10.xyz + r8.xyz;
    r10.xyz = r18.xyz * r8.yzx;
    r10.xyz = r18.zxy * r8.zxy + -r10.xyz;
    r0.x = dot(r10.xyz, r10.xyz);
    r0.x = sqrt(r0.x);
    r0.x = max(9.99999997e-007, r0.x);
    r11.xyz = r10.xyz / r0.xxx;
    r10.xyz = r18.xyz * r11.yzx;
    r10.xyz = r18.zxy * r11.zxy + -r10.xyz;
    r10.xyz = r10.xyz + r8.xyz;
    r14.xyz = r15.yyy * r10.xyz + -r8.xyz;
  }
  r0.x = r1.z * 0.0174532942 + cb3[7].y;
  sincos(r0.x, r0.x, r3.x);
  r8.xyz = r11.xyz * r0.xxx;
  r10.xyz = r11.xyz * r3.xxx;
  r10.xyz = r14.xyz * r0.xxx + r10.xyz;
  r8.xyz = r14.xyz * r3.xxx + -r8.xyz;
  if (cb2[0].x != 0) {
    r3.xy = cmp(float2(0,0) < r2.yz);
    r11.xy = cmp(r2.yz < float2(0,0));
    r3.xy = (int2)-r3.xy + (int2)r11.xy;
    r3.xy = (int2)r3.xy;
    r0.x = cmp(asint(cb2[0].x) == 8);
    r0.x = r0.x ? 7 : 3;
    r0.x = (int)r0.x & (int)v1.x;
    r1.z = cb3[4].x * cb3[4].y;
    r2.w = r2.x / r1.z;
    r4.w = cmp(r2.w >= -r2.w);
    r2.w = frac(abs(r2.w));
    r2.w = r4.w ? r2.w : -r2.w;
    r1.z = r2.w * r1.z;
    r1.z = (uint)r1.z;
    r2.w = r3.x * r3.y;
    r2.w = cmp(r2.w < 0);
    r4.w = asint(cb2[0].x) + -1;
    r4.w = (int)-r0.x + (int)r4.w;
    r0.x = r2.w ? r4.w : r0.x;
    r0.x = mad((int)r1.z, asint(cb2[0].x), (int)r0.x);
    r11.xy = t0.Load(r0.x).xy;
    r3.xy = cmp(r3.xy < float2(0,0));
    r11.zw = float2(1,1) + -r11.xy;
    r3.xy = r3.xy ? r11.zw : r11.xy;
  } else {
    r3.xy = v0.xy;
  }
  r3.xy = r3.xy + -r3.zw;
  r2.yz = r3.xy * abs(r2.yz);
  r3.xyz = r2.zzz * r8.xyz;
  r2.yzw = r2.yyy * r10.xyz + r3.xyz;
  r2.yzw = r9.xyz * r1.www + r2.yzw;
  r2.yzw = r7.xyz + r2.yzw;
  r0.x = frac(r2.x);
  r1.z = r2.x + -r0.x;
  r1.w = r1.z / cb3[4].x;
  r2.x = cmp(r1.w >= -r1.w);
  r1.w = frac(abs(r1.w));
  r1.w = r2.x ? r1.w : -r1.w;
  r3.x = cb3[4].x * r1.w;
  r1.z = cb3[4].z * r1.z;
  r3.y = floor(r1.z);
  r1.xy = r3.xy + r1.xy;
  o5.xy = cb3[4].zw * r1.xy;
  o3.w = r9.w ? r0.x : 0;
  r1.xyz = r5.zxy * r4.zxy;
  r1.xyz = r5.yzx * r4.xyz + -r1.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r3.xy = cmp(cb3[7].zz < float2(0.5,1.5));
  r7.xyz = -cb3[2].xyz + r0.yzw;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = rsqrt(r0.x);
  r8.xyz = r7.xyz * r0.xxx;
  r0.x = dot(cb3[3].xyz, r7.xyz);
  r7.xyz = r0.xxx * cb3[3].xyz + cb3[2].xyz;
  r0.xyz = -r7.xyz + r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r3.yyy ? r8.xyz : r0.xyz;
  r0.xyz = r3.xxx ? r1.xyz : r0.xyz;
  r1.xyz = cb0[70].xyz + r6.xyz;
  r3.xyz = r4.xyz * r0.yzx;
  r3.xyz = r4.zxy * r0.zxy + -r3.xyz;
  r0.w = dot(r3.xyz, r5.xyz);
  r1.w = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.w + (int)r0.w;
  o4.w = (int)r0.w;
  r2.xyz = cb0[113].xyz + r2.yzw;
  r3.xyzw = cb0[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[93].xyzw + r3.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.w = cmp(1 < asint(cb0[135].x));
  r2.x = 0.00100000005 * r1.w;
  r0.w = r0.w ? r2.x : 0;
  o0.z = r1.z + r0.w;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.xyz = r5.xyz;
  o4.xyz = r0.xyz;
  o6.xyz = float3(0,0,0);
  return;
}
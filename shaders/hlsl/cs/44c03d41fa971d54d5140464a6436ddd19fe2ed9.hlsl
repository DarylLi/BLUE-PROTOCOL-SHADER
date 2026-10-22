// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[100];
groupshared struct { float val[3]; } g1[100];
groupshared struct { float val[4]; } g0[100];
Buffer<uint4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[45];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadGroupID.x << 1;
  r0.x = (int)r0.x + 2;
  r1.x = t6.Load(r0.x).x;
  r0.x = (int)r0.x + 1;
  r0.x = t6.Load(r0.x).x;
  r1.yzw = r0.xxx;
  r0.xyzw = (uint4)r1.xyzw << int4(3,3,3,3);
  r0.xyzw = (int4)r0.xyzw + asint(cb0[44].xyyy);
  r1.xy = (int2)r0.xw + int2(-1,-1);
  r1.z = cmp((uint)vThreadIDInGroupFlattened.x < 50);
  if (r1.z != 0) {
    r1.z = (uint)vThreadIDInGroupFlattened.x << 1;
    r2.xy = (int2)r1.xy;
    uiDest.x = (uint)r1.z / 10;
    r4.x = (uint)r1.z % 10;
    r3.x = uiDest.x;
    r4.x = (uint)r4.x;
    r4.y = (uint)r3.x;
    r2.zw = r4.xy + r2.xy;
    r2.zw = float2(0.5,0.5) + r2.zw;
    r2.zw = cb0[42].zw * r2.zw;
    r2.zw = max(cb0[34].xy, r2.zw);
    r2.zw = min(cb0[34].zw, r2.zw);
    r3.xyzw = t4.SampleLevel(s1_s, r2.zw, 0).xyzw;
    g0[r1.z].val[0/4] = r3.x;
    g0[r1.z].val[0/4+1] = r3.y;
    g0[r1.z].val[0/4+2] = r3.z;
    g0[r1.z].val[0/4+3] = r3.w;
    r3.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
    r1.w = t1.SampleLevel(s0_s, r2.zw, 0).w;
    r2.z = t2.SampleLevel(s0_s, r2.zw, 0).x;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = rsqrt(r2.w);
    r3.xyz = r3.xyz * r2.www;
    r1.w = 255 * r1.w;
    r1.w = round(r1.w);
    r1.w = (uint)r1.w;
    r1.w = (int)r1.w & 15;
    r4.xyzw = cmp((int4)r1.wwww == int4(2,3,4,5));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.z | (int)r2.w;
    r2.w = (int)r4.w | (int)r2.w;
    r5.xyzw = cmp((int4)r1.wwww == int4(6,7,8,12));
    r2.w = (int)r2.w | (int)r5.x;
    r2.w = (int)r5.y | (int)r2.w;
    r2.w = (int)r5.z | (int)r2.w;
    r2.w = (int)r5.w | (int)r2.w;
    r4.xy = cmp((int2)r1.ww == int2(13,9));
    r1.w = (int)r2.w | (int)r4.x;
    r1.w = (int)r4.y | (int)r1.w;
    r1.w = (int)r2.z & (int)r1.w;
    g1[r1.z].val[0/4] = r3.x;
    g1[r1.z].val[0/4+1] = r3.y;
    g1[r1.z].val[0/4+2] = r3.z;
    r2.z = (int)r4.y | (int)r4.w;
    r1.w = r1.w * 255 + 0.5;
    r1.w = (uint)r1.w;
    r1.w = r2.z ? r1.w : 256;
    g2[r1.z].val[0/4] = r1.w;
    r1.w = mad((int)vThreadIDInGroupFlattened.x, 2, 1);
    r2.z = cmp((uint)r1.w < 100);
    if (r2.z != 0) {
      uiDest.x = (uint)r1.w / 10;
      r4.x = (uint)r1.w % 10;
      r3.x = uiDest.x;
      r4.x = (uint)r4.x;
      r4.y = (uint)r3.x;
      r2.xy = r4.xy + r2.xy;
      r2.xy = float2(0.5,0.5) + r2.xy;
      r2.xy = cb0[42].zw * r2.xy;
      r2.xy = max(cb0[34].xy, r2.xy);
      r2.xy = min(cb0[34].zw, r2.xy);
      r3.xyzw = t4.SampleLevel(s1_s, r2.xy, 0).xyzw;
      g0[r1.w].val[0/4] = r3.x;
      g0[r1.w].val[0/4+1] = r3.y;
      g0[r1.w].val[0/4+2] = r3.z;
      g0[r1.w].val[0/4+3] = r3.w;
      r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
      r2.z = t1.SampleLevel(s0_s, r2.xy, 0).w;
      r2.x = t2.SampleLevel(s0_s, r2.xy, 0).x;
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r2.y = dot(r3.xyz, r3.xyz);
      r2.y = rsqrt(r2.y);
      r3.xyz = r3.xyz * r2.yyy;
      r2.y = 255 * r2.z;
      r2.y = round(r2.y);
      r2.y = (uint)r2.y;
      r2.y = (int)r2.y & 15;
      r4.xyzw = cmp((int4)r2.yyyy == int4(2,3,4,5));
      r2.z = (int)r4.y | (int)r4.x;
      r2.z = (int)r4.z | (int)r2.z;
      r2.z = (int)r4.w | (int)r2.z;
      r5.xyzw = cmp((int4)r2.yyyy == int4(6,7,8,12));
      r2.z = (int)r2.z | (int)r5.x;
      r2.z = (int)r5.y | (int)r2.z;
      r2.z = (int)r5.z | (int)r2.z;
      r2.z = (int)r5.w | (int)r2.z;
      r2.yw = cmp((int2)r2.yy == int2(13,9));
      r2.y = (int)r2.y | (int)r2.z;
      r2.y = (int)r2.w | (int)r2.y;
      r2.x = r2.y ? r2.x : 0;
      g1[r1.w].val[0/4] = r3.x;
      g1[r1.w].val[0/4+1] = r3.y;
      g1[r1.w].val[0/4+2] = r3.z;
      r2.y = (int)r2.w | (int)r4.w;
      r2.x = r2.x * 255 + 0.5;
      r2.x = (uint)r2.x;
      r2.x = r2.y ? r2.x : 256;
      g2[r1.w].val[0/4] = r2.x;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r2.x = (int)vThreadIDInGroupFlattened.x & 7;
  r2.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(3,3,3);
  r0.xyzw = (int4)r0.xyzw + (int4)r2.xyzw;
  r1.zw = (uint2)r0.xw;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xy = cb0[42].zw * r1.zw;
  r1.xy = (int2)r0.xy + (int2)-r1.xy;
  r1.xy = (int2)r1.xy + int2(-1,-1);
  r1.xy = (uint2)r1.xy;
  r2.zw = cmp(r1.xy < float2(9,9));
  r2.z = r2.w ? r2.z : 0;
  if (r2.z != 0) {
    r2.zw = float2(1,1) + r1.xy;
    r2.zw = (int2)r2.zw;
    r2.z = mad((int)r2.w, 10, (int)r2.z);
    r3.x = g0[r2.z].val[0/4];
    r3.y = g0[r2.z].val[0/4+1];
    r3.z = g0[r2.z].val[0/4+2];
    r3.w = g0[r2.z].val[0/4+3];
  } else {
    r2.zw = max(cb0[34].xy, r2.xy);
    r2.zw = min(cb0[34].zw, r2.zw);
    r3.xyzw = t4.SampleLevel(s2_s, r2.zw, 0).xyzw;
  }
  r2.z = cmp(0 >= r3.w);
  if (r2.z != 0) {
    r4.xyzw = float4(0,0,0,0);
  }
  if (r2.z == 0) {
    r5.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
    r2.z = t1.SampleLevel(s0_s, r2.xy, 0).w;
    r6.xy = t2.SampleLevel(s0_s, r2.xy, 0).xw;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r5.xyz * r2.www;
    r2.z = 255 * r2.z;
    r2.z = round(r2.z);
    r2.z = (uint)r2.z;
    r2.z = (int)r2.z & 15;
    r7.xyzw = cmp((int4)r2.zzzz == int4(2,3,4,5));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.w = (int)r7.w | (int)r2.w;
    r8.xyzw = cmp((int4)r2.zzzz == int4(6,7,8,12));
    r2.w = (int)r2.w | (int)r8.x;
    r2.w = (int)r8.y | (int)r2.w;
    r2.w = (int)r8.z | (int)r2.w;
    r2.w = (int)r8.w | (int)r2.w;
    r6.zw = cmp((int2)r2.zz == int2(13,9));
    r2.z = (int)r2.w | (int)r6.z;
    r2.z = (int)r6.w | (int)r2.z;
    r2.zw = (int2)r6.xy & (int2)r2.zz;
    r2.z = r2.z * 255 + 0.5;
    r8.y = (uint)r2.z;
    r8.xzw = float3(1,0,0);
    r9.xyzw = t3.Load(r8.xyz).xyzw;
    r8.xzw = float3(2,0,0);
    r10.xyzw = t3.Load(r8.xyz).xyzw;
    r10.xyzw = float4(499.999969,499.999969,499.999969,499.999969) * r10.xyzw;
    r2.z = t3.Load(r8.wyw).w;
    r2.z = 500 * r2.z;
    r5.w = (int)r6.w | (int)r7.w;
    r5.w = r5.w ? 1.000000 : 0;
    r6.x = r5.w * r2.w;
    r6.xyzw = r10.xyzw * r6.xxxx;
    r8.xzw = float3(4,0,0);
    r7.xyz = t3.Load(r8.xyz).xyz;
    r10.xyzw = float4(-0.330000013,-0.330000013,-0.330000013,-0.330000013) + r9.wxyz;
    r7.w = r10.x * r10.x;
    r7.w = r7.w * r7.w;
    r7.w = r7.w * 100 + 3.5;
    r8.xzw = max(float3(0,0,0), r10.yzw);
    r8.xzw = r8.xzw * r8.xzw;
    r8.xzw = r8.xzw * r8.xzw;
    r8.xzw = r8.xzw * float3(100,100,100) + float3(3.5,3.5,3.5);
    r10.xy = t5.SampleLevel(s1_s, r2.xy, 0).zw;
    r9.w = 10000 * r10.x;
    r9.w = max(8, r9.w);
    r9.w = min(64, r9.w);
    r10.x = max(16, r9.w);
    r10.yz = cmp(r10.yy >= float2(0.5,3.20000005));
    r10.yz = r10.yz ? float2(1,1) : 0;
    r10.x = r10.x + -r9.w;
    r9.w = r10.y * r10.x + r9.w;
    r10.x = 8 + -r9.w;
    r9.w = r10.z * r10.x + r9.w;
    r9.w = (int)r9.w;
    r10.x = (int)cb0[27].z;
    r10.y = cmp(0 < (int)r10.x);
    r9.w = r10.y ? r10.x : r9.w;
    r2.xy = cb0[28].xy * r2.xy;
    r2.xy = (int2)r2.xy;
    r10.xy = (int2)r2.xy * int2(0x19660d,0x19660d);
    r10.z = asint(cb1[144].x) * 0x0019660d;
    r10.xyz = (int3)r10.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.x = mad((int)r10.y, (int)r10.z, (int)r10.x);
    r2.y = mad((int)r10.z, (int)r2.x, (int)r10.y);
    r10.x = mad((int)r2.x, (int)r2.y, (int)r10.z);
    r2.x = mad((int)r2.y, (int)r10.x, (int)r2.x);
    r2.x = (uint)r2.x >> 16;
    r2.y = cb0[27].x / r3.w;
    r2.y = r2.z * r2.y;
    r2.z = cb0[31].x * cb0[28].z;
    r10.x = r2.y * r2.z;
    r2.y = cb0[28].x * cb0[28].w;
    r10.y = r10.x * r2.y;
    r2.yz = cb0[28].zw / r10.xy;
    r2.y = r2.y + r2.z;
    r2.y = 0.5 * r2.y;
    r2.z = r6.w / r7.w;
    r7.w = -r2.y / r2.z;
    r7.w = 1.44269502 * r7.w;
    r7.w = exp2(r7.w);
    r7.w = -r7.w * 0.25 + 1;
    r10.z = 3 * r2.z;
    r10.w = -r2.y / r10.z;
    r10.w = 1.44269502 * r10.w;
    r10.w = exp2(r10.w);
    r7.w = -r10.w * 0.75 + r7.w;
    r11.xyz = float3(1.89999998,1.89999998,1.89999998) + -r9.xyz;
    r9.xyz = float3(-0.800000012,-0.800000012,-0.800000012) + r9.xyz;
    r9.xyz = r9.xyz * r9.xyz;
    r9.xyz = r9.xyz * float3(3.5,3.5,3.5) + r11.xyz;
    r9.xyz = r6.www / r9.xyz;
    r11.xyz = -r2.yyy / r9.xyz;
    r11.xyz = float3(1.44269502,1.44269502,1.44269502) * r11.xyz;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = -r11.xyz * float3(0.25,0.25,0.25) + float3(1,1,1);
    r9.xyz = float3(3,3,3) * r9.xyz;
    r9.xyz = -r2.yyy / r9.xyz;
    r9.xyz = float3(1.44269502,1.44269502,1.44269502) * r9.xyz;
    r9.xyz = exp2(r9.xyz);
    r9.xyz = -r9.xyz * float3(0.75,0.75,0.75) + r11.xyz;
    r2.y = 1 + -r7.w;
    r10.w = 0.25 / r2.z;
    r11.x = r10.x * r10.y;
    r4.w = (int)r9.w;
    r11.y = 0.0625 * r4.w;
    r6.w = r6.w * r6.w;
    r6.w = r6.w * r11.x;
    r8.xzw = float3(1,1,1) / r8.xzw;
    r11.xzw = r8.xzw * r6.xyz;
    r12.xyz = float3(0,0,0);
    r12.w = r2.x;
    r13.xyzw = float4(0,0,0,0);
    while (true) {
      r14.x = cmp((int)r13.w >= (int)r9.w);
      if (r14.x != 0) break;
      r14.x = (int)r12.w + 1;
      r14.y = (uint)r12.w;
      r14.yz = float2(0.754877687,0.569840252) * r14.yy;
      r14.yz = frac(r14.yz);
      r14.y = r14.y * r2.y + r7.w;
      r14.w = r14.y * -0.600000024 + -2;
      r14.w = r14.w * r2.z;
      r14.y = 1 + -r14.y;
      r14.y = log2(r14.y);
      r14.y = r14.w * r14.y;
      r14.yz = float2(0.693147182,6.28318548) * r14.yz;
      r14.y = max(9.99999975e-006, r14.y);
      sincos(r14.z, r15.x, r16.x);
      r14.z = -r14.y / r2.z;
      r14.z = 1.44269502 * r14.z;
      r14.z = exp2(r14.z);
      r14.w = -r14.y / r10.z;
      r14.w = 1.44269502 * r14.w;
      r14.w = exp2(r14.w);
      r14.z = r14.z + r14.w;
      r14.z = r14.z * r10.w;
      r14.z = max(9.99999975e-006, r14.z);
      r15.yz = r14.yy * r10.xy;
      r16.x = r15.y * r16.x;
      r16.y = r15.z * r15.x;
      r14.w = r14.z * r11.y;
      r14.w = r14.w / r6.w;
      r14.w = log2(r14.w);
      r14.w = max(0, -r14.w);
      r14.w = r14.w * 0.5 + -1;
      r14.w = ceil(r14.w);
      r14.w = max(0, r14.w);
      r14.w = min(5, r14.w);
      r15.xy = r16.xy * cb0[42].xy + r1.xy;
      r15.z = cmp(r14.w == 0.000000);
      r16.zw = cmp(r15.xy >= float2(-1,-1));
      r17.xy = cmp(r15.xy < float2(9,9));
      r15.w = r16.z ? r17.x : 0;
      r15.w = r16.w ? r15.w : 0;
      r15.w = r17.y ? r15.w : 0;
      r15.z = r15.z ? r15.w : 0;
      if (r15.z != 0) {
        r15.xy = float2(1,1) + r15.xy;
        r15.xy = (int2)r15.xy;
        r15.x = mad((int)r15.y, 10, (int)r15.x);
        r17.x = g0[r15.x].val[0/4];
        r17.y = g0[r15.x].val[0/4+1];
        r17.z = g0[r15.x].val[0/4+2];
        r17.w = g0[r15.x].val[0/4+3];
        r15.y = g1[r15.x].val[0/4];
        r15.z = g1[r15.x].val[0/4+1];
        r15.w = g1[r15.x].val[0/4+2];
        r15.x = g2[r15.x].val[0/4];
      } else {
        r16.xy = cb0[42].zw * r1.zw + r16.xy;
        r16.xy = max(cb0[34].xy, r16.xy);
        r16.xy = min(cb0[34].zw, r16.xy);
        r17.xyzw = t4.SampleLevel(s2_s, r16.xy, r14.w).xyzw;
        r18.xyz = t0.SampleLevel(s0_s, r16.xy, 0).xyz;
        r18.xyz = r18.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r14.w = dot(r18.xyz, r18.xyz);
        r14.w = rsqrt(r14.w);
        r15.yzw = r18.xyz * r14.www;
        r14.w = t1.SampleLevel(s0_s, r16.xy, 0).w;
        r16.x = t2.SampleLevel(s0_s, r16.xy, 0).x;
        r14.w = 255 * r14.w;
        r14.w = round(r14.w);
        r14.w = (uint)r14.w;
        r14.w = (int)r14.w & 15;
        r18.xyzw = cmp((int4)r14.wwww == int4(2,3,4,5));
        r16.y = (int)r18.y | (int)r18.x;
        r16.y = (int)r18.z | (int)r16.y;
        r16.y = (int)r18.w | (int)r16.y;
        r19.xyzw = cmp((int4)r14.wwww == int4(6,7,8,12));
        r16.y = (int)r16.y | (int)r19.x;
        r16.y = (int)r19.y | (int)r16.y;
        r16.y = (int)r19.z | (int)r16.y;
        r16.y = (int)r19.w | (int)r16.y;
        r16.zw = cmp((int2)r14.ww == int2(13,9));
        r14.w = (int)r16.z | (int)r16.y;
        r14.w = (int)r16.w | (int)r14.w;
        r14.w = (int)r16.x & (int)r14.w;
        r16.x = (int)r16.w | (int)r18.w;
        if (r16.x != 0) {
          r14.w = r14.w * 255 + 0.5;
          r15.x = (uint)r14.w;
        } else {
          r15.x = 256;
        }
      }
      r14.w = dot(r15.yzw, r5.xyz);
      r14.w = saturate(r14.w * 0.5 + 0.5);
      r14.w = sqrt(r14.w);
      r15.y = r17.w + -r3.w;
      r15.y = 10 * r15.y;
      r15.y = r15.y * r15.y;
      r14.y = r14.y * r14.y + r15.y;
      r14.y = sqrt(r14.y);
      r15.y = cmp((int)r8.y == (int)r15.x);
      r15.yzw = r15.yyy ? float3(1,1,1) : r7.xyz;
      r15.x = cmp((int)r15.x != 256);
      r15.x = r15.x ? 1.000000 : 0;
      r16.xyz = r14.yyy / r6.xyz;
      r16.xyz = -r16.xyz / r8.xzw;
      r18.xyz = float3(1.44269502,1.44269502,1.44269502) * r16.xyz;
      r18.xyz = exp2(r18.xyz);
      r16.xyz = float3(0.48089835,0.48089835,0.48089835) * r16.xyz;
      r16.xyz = exp2(r16.xyz);
      r16.xyz = r18.xyz + r16.xyz;
      r16.xyz = r16.xyz / r11.xzw;
      r16.xyz = float3(0.0397887342,0.0397887342,0.0397887342) * r16.xyz;
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = r16.xyz / r14.zzz;
      r16.xyz = r16.xyz * r15.xxx;
      r18.xyz = r16.xyz * r14.www;
      r15.xyz = r17.xyz * r15.yzw;
      r13.xyz = r18.xyz * r15.xyz + r13.xyz;
      r12.xyz = r16.xyz * r14.www + r12.xyz;
      r13.w = (int)r13.w + 1;
      r12.w = r14.x;
    }
    r1.xyz = cmp(r12.xyz == float3(0,0,0));
    r2.xyz = float3(1,1,1) / r12.xyz;
    r2.xyz = float3(1.00004995,1.00004995,1.00004995) * r2.xyz;
    r1.xyz = r1.xyz ? float3(0,0,0) : r2.xyz;
    r2.xyz = r13.xyz * r1.xyz;
    r1.xyz = -r13.xyz * r1.xyz + r3.xyz;
    r1.xyz = r9.xyz * r1.xyz + r2.xyz;
    r1.w = r5.w * r2.w + -0.100000001;
    r1.w = saturate(10 * r1.w);
    r1.xyz = r1.xyz + -r3.xyz;
    r4.xyz = r1.www * r1.xyz + r3.xyz;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
  return;
}
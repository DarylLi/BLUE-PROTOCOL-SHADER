// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[100];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
    r1.w = t1.SampleLevel(s0_s, r2.zw, 0).w;
    r2.z = t2.SampleLevel(s0_s, r2.zw, 0).x;
    r1.w = 255 * r1.w;
    r1.w = round(r1.w);
    r1.w = (uint)r1.w;
    r1.w = (int)r1.w & 15;
    r3.xyzw = cmp((int4)r1.wwww == int4(2,3,4,5));
    r2.w = (int)r3.y | (int)r3.x;
    r2.w = (int)r3.z | (int)r2.w;
    r2.w = (int)r3.w | (int)r2.w;
    r4.xyzw = cmp((int4)r1.wwww == int4(6,7,8,12));
    r2.w = (int)r2.w | (int)r4.x;
    r2.w = (int)r4.y | (int)r2.w;
    r2.w = (int)r4.z | (int)r2.w;
    r2.w = (int)r4.w | (int)r2.w;
    r3.xy = cmp((int2)r1.ww == int2(13,9));
    r1.w = (int)r2.w | (int)r3.x;
    r1.w = (int)r3.y | (int)r1.w;
    r1.w = (int)r2.z & (int)r1.w;
    r2.z = (int)r3.y | (int)r3.w;
    r1.w = r1.w * 255 + 0.5;
    r1.w = (uint)r1.w;
    r1.w = r2.z ? r1.w : 256;
    g1[r1.z].val[0/4] = r1.w;
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
      r2.z = t1.SampleLevel(s0_s, r2.xy, 0).w;
      r2.x = t2.SampleLevel(s0_s, r2.xy, 0).x;
      r2.y = 255 * r2.z;
      r2.y = round(r2.y);
      r2.y = (uint)r2.y;
      r2.y = (int)r2.y & 15;
      r3.xyzw = cmp((int4)r2.yyyy == int4(2,3,4,5));
      r2.z = (int)r3.y | (int)r3.x;
      r2.z = (int)r3.z | (int)r2.z;
      r2.z = (int)r3.w | (int)r2.z;
      r4.xyzw = cmp((int4)r2.yyyy == int4(6,7,8,12));
      r2.z = (int)r2.z | (int)r4.x;
      r2.z = (int)r4.y | (int)r2.z;
      r2.z = (int)r4.z | (int)r2.z;
      r2.z = (int)r4.w | (int)r2.z;
      r2.yw = cmp((int2)r2.yy == int2(13,9));
      r2.y = (int)r2.y | (int)r2.z;
      r2.y = (int)r2.w | (int)r2.y;
      r2.x = r2.y ? r2.x : 0;
      r2.y = (int)r2.w | (int)r3.w;
      r2.x = r2.x * 255 + 0.5;
      r2.x = (uint)r2.x;
      r2.x = r2.y ? r2.x : 256;
      g1[r1.w].val[0/4] = r2.x;
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
    r2.w = r5.x * r2.w;
    r2.z = 255 * r2.z;
    r2.z = round(r2.z);
    r2.z = (uint)r2.z;
    r2.z = (int)r2.z & 15;
    r5.xyzw = cmp((int4)r2.zzzz == int4(2,3,4,5));
    r5.x = (int)r5.y | (int)r5.x;
    r5.x = (int)r5.z | (int)r5.x;
    r5.x = (int)r5.w | (int)r5.x;
    r7.xyzw = cmp((int4)r2.zzzz == int4(6,7,8,12));
    r5.x = (int)r5.x | (int)r7.x;
    r5.x = (int)r7.y | (int)r5.x;
    r5.x = (int)r7.z | (int)r5.x;
    r5.x = (int)r7.w | (int)r5.x;
    r5.yz = cmp((int2)r2.zz == int2(13,9));
    r2.z = (int)r5.y | (int)r5.x;
    r2.z = (int)r5.z | (int)r2.z;
    r5.xy = (int2)r6.xy & (int2)r2.zz;
    r2.z = r5.x * 255 + 0.5;
    r6.y = (uint)r2.z;
    r6.xzw = float3(1,0,0);
    r7.xyzw = t3.Load(r6.xyz).xyzw;
    r6.xzw = float3(2,0,0);
    r8.xyzw = t3.Load(r6.xyz).xyzw;
    r8.xyzw = float4(499.999969,499.999969,499.999969,499.999969) * r8.xyzw;
    r2.z = t3.Load(r6.wyw).w;
    r2.z = 500 * r2.z;
    r5.x = (int)r5.z | (int)r5.w;
    r5.x = r5.x ? 1.000000 : 0;
    r5.z = r5.x * r5.y;
    r8.xyzw = r8.xyzw * r5.zzzz;
    r6.xzw = float3(4,0,0);
    r6.xzw = t3.Load(r6.xyz).xyz;
    r9.xyzw = float4(-0.330000013,-0.330000013,-0.330000013,-0.330000013) + r7.wxyz;
    r5.z = r9.x * r9.x;
    r5.z = r5.z * r5.z;
    r5.z = r5.z * 100 + 3.5;
    r9.xyz = max(float3(0,0,0), r9.yzw);
    r9.xyz = r9.xyz * r9.xyz;
    r9.xyz = r9.xyz * r9.xyz;
    r9.xyz = r9.xyz * float3(100,100,100) + float3(3.5,3.5,3.5);
    r10.xy = t5.SampleLevel(s1_s, r2.xy, 0).zw;
    r5.w = 10000 * r10.x;
    r5.w = max(8, r5.w);
    r5.w = min(64, r5.w);
    r7.w = max(16, r5.w);
    r10.xy = cmp(r10.yy >= float2(0.5,3.20000005));
    r10.xy = r10.xy ? float2(1,1) : 0;
    r7.w = r7.w + -r5.w;
    r5.w = r10.x * r7.w + r5.w;
    r7.w = 8 + -r5.w;
    r5.w = r10.y * r7.w + r5.w;
    r5.w = (int)r5.w;
    r7.w = (int)cb0[27].z;
    r9.w = cmp(0 < (int)r7.w);
    r5.w = r9.w ? r7.w : r5.w;
    r2.xy = cb0[28].xy * r2.xy;
    r2.xy = (int2)r2.xy;
    r10.xy = (int2)r2.xy * int2(0x19660d,0x19660d);
    r10.z = asint(cb1[144].x) * 0x0019660d;
    r10.xyz = (int3)r10.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.x = mad((int)r10.y, (int)r10.z, (int)r10.x);
    r2.y = mad((int)r10.z, (int)r2.x, (int)r10.y);
    r7.w = mad((int)r2.x, (int)r2.y, (int)r10.z);
    r2.x = mad((int)r2.y, (int)r7.w, (int)r2.x);
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
    r2.z = r8.w / r5.z;
    r5.z = -r2.y / r2.z;
    r5.z = 1.44269502 * r5.z;
    r5.z = exp2(r5.z);
    r5.z = -r5.z * 0.25 + 1;
    r7.w = 3 * r2.z;
    r9.w = -r2.y / r7.w;
    r9.w = 1.44269502 * r9.w;
    r9.w = exp2(r9.w);
    r5.z = -r9.w * 0.75 + r5.z;
    r11.xyz = float3(1.89999998,1.89999998,1.89999998) + -r7.xyz;
    r7.xyz = float3(-0.800000012,-0.800000012,-0.800000012) + r7.xyz;
    r7.xyz = r7.xyz * r7.xyz;
    r7.xyz = r7.xyz * float3(3.5,3.5,3.5) + r11.xyz;
    r7.xyz = r8.www / r7.xyz;
    r11.xyz = -r2.yyy / r7.xyz;
    r11.xyz = float3(1.44269502,1.44269502,1.44269502) * r11.xyz;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = -r11.xyz * float3(0.25,0.25,0.25) + float3(1,1,1);
    r7.xyz = float3(3,3,3) * r7.xyz;
    r7.xyz = -r2.yyy / r7.xyz;
    r7.xyz = float3(1.44269502,1.44269502,1.44269502) * r7.xyz;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = -r7.xyz * float3(0.75,0.75,0.75) + r11.xyz;
    r2.y = 1 + -r5.z;
    r9.w = 0.25 / r2.z;
    r10.z = r10.x * r10.y;
    r4.w = (int)r5.w;
    r10.w = 0.0625 * r4.w;
    r8.w = r8.w * r8.w;
    r8.w = r8.w * r10.z;
    r2.w = saturate(r2.w * 0.5 + 0.5);
    r2.w = sqrt(r2.w);
    r9.xyz = float3(1,1,1) / r9.xyz;
    r11.xyz = r9.xyz * r8.xyz;
    r12.xyz = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r10.z = r2.x;
    r11.w = 0;
    while (true) {
      r12.w = cmp((int)r11.w >= (int)r5.w);
      if (r12.w != 0) break;
      r12.w = (int)r10.z + 1;
      r13.w = (uint)r10.z;
      r14.xy = float2(0.754877687,0.569840252) * r13.ww;
      r14.xy = frac(r14.xy);
      r13.w = r14.x * r2.y + r5.z;
      r14.x = r13.w * -0.600000024 + -2;
      r14.x = r14.x * r2.z;
      r13.w = 1 + -r13.w;
      r13.w = log2(r13.w);
      r13.w = r14.x * r13.w;
      r13.w = 0.693147182 * r13.w;
      r13.w = max(9.99999975e-006, r13.w);
      r14.x = 6.28318548 * r14.y;
      sincos(r14.x, r14.x, r15.x);
      r14.y = -r13.w / r2.z;
      r14.y = 1.44269502 * r14.y;
      r14.y = exp2(r14.y);
      r14.z = -r13.w / r7.w;
      r14.z = 1.44269502 * r14.z;
      r14.z = exp2(r14.z);
      r14.y = r14.y + r14.z;
      r14.y = r14.y * r9.w;
      r14.y = max(9.99999975e-006, r14.y);
      r14.zw = r13.ww * r10.xy;
      r15.x = r14.z * r15.x;
      r15.y = r14.w * r14.x;
      r14.x = r14.y * r10.w;
      r14.x = r14.x / r8.w;
      r14.x = log2(r14.x);
      r14.x = max(0, -r14.x);
      r14.x = 0.5 * r14.x;
      r14.x = ceil(r14.x);
      r14.x = min(5, r14.x);
      r14.zw = r15.xy * cb0[42].xy + r1.xy;
      r15.z = cmp(r14.x == 0.000000);
      r16.xy = cmp(r14.zw >= float2(-1,-1));
      r16.zw = cmp(r14.zw < float2(9,9));
      r15.w = r16.z ? r16.x : 0;
      r15.w = r16.y ? r15.w : 0;
      r15.w = r16.w ? r15.w : 0;
      r15.z = r15.z ? r15.w : 0;
      if (r15.z != 0) {
        r14.zw = float2(1,1) + r14.zw;
        r14.zw = (int2)r14.zw;
        r14.z = mad((int)r14.w, 10, (int)r14.z);
        r16.x = g0[r14.z].val[0/4];
        r16.y = g0[r14.z].val[0/4+1];
        r16.z = g0[r14.z].val[0/4+2];
        r16.w = g0[r14.z].val[0/4+3];
        r14.z = g1[r14.z].val[0/4];
      } else {
        r15.xy = cb0[42].zw * r1.zw + r15.xy;
        r15.xy = max(cb0[34].xy, r15.xy);
        r15.xy = min(cb0[34].zw, r15.xy);
        r16.xyzw = t4.SampleLevel(s2_s, r15.xy, r14.x).xyzw;
        r14.x = t1.SampleLevel(s0_s, r15.xy, 0).w;
        r14.w = t2.SampleLevel(s0_s, r15.xy, 0).x;
        r14.x = 255 * r14.x;
        r14.x = round(r14.x);
        r14.x = (uint)r14.x;
        r14.x = (int)r14.x & 15;
        r15.xyzw = cmp((int4)r14.xxxx == int4(2,3,4,5));
        r15.x = (int)r15.y | (int)r15.x;
        r15.x = (int)r15.z | (int)r15.x;
        r15.x = (int)r15.w | (int)r15.x;
        r17.xyzw = cmp((int4)r14.xxxx == int4(6,7,8,12));
        r15.x = (int)r15.x | (int)r17.x;
        r15.x = (int)r17.y | (int)r15.x;
        r15.x = (int)r17.z | (int)r15.x;
        r15.x = (int)r17.w | (int)r15.x;
        r15.yz = cmp((int2)r14.xx == int2(13,9));
        r14.x = (int)r15.y | (int)r15.x;
        r14.x = (int)r15.z | (int)r14.x;
        r14.x = (int)r14.w & (int)r14.x;
        r14.w = (int)r15.z | (int)r15.w;
        if (r14.w != 0) {
          r14.x = r14.x * 255 + 0.5;
          r14.z = (uint)r14.x;
        } else {
          r14.z = 256;
        }
      }
      r14.x = r16.w + -r3.w;
      r14.x = 10 * r14.x;
      r14.x = r14.x * r14.x;
      r13.w = r13.w * r13.w + r14.x;
      r13.w = sqrt(r13.w);
      r14.x = cmp((int)r6.y == (int)r14.z);
      r15.xyz = r14.xxx ? float3(1,1,1) : r6.xzw;
      r14.x = cmp((int)r14.z != 256);
      r14.x = r14.x ? 1.000000 : 0;
      r17.xyz = r13.www / r8.xyz;
      r17.xyz = -r17.xyz / r9.xyz;
      r18.xyz = float3(1.44269502,1.44269502,1.44269502) * r17.xyz;
      r18.xyz = exp2(r18.xyz);
      r17.xyz = float3(0.48089835,0.48089835,0.48089835) * r17.xyz;
      r17.xyz = exp2(r17.xyz);
      r17.xyz = r18.xyz + r17.xyz;
      r17.xyz = r17.xyz / r11.xyz;
      r17.xyz = float3(0.0397887342,0.0397887342,0.0397887342) * r17.xyz;
      r17.xyz = max(float3(0,0,0), r17.xyz);
      r14.yzw = r17.xyz / r14.yyy;
      r14.xyz = r14.yzw * r14.xxx;
      r17.xyz = r14.xyz * r2.www;
      r15.xyz = r16.xyz * r15.xyz;
      r13.xyz = r17.xyz * r15.xyz + r13.xyz;
      r12.xyz = r14.xyz * r2.www + r12.xyz;
      r11.w = (int)r11.w + 1;
      r10.z = r12.w;
    }
    r1.xyz = cmp(r12.xyz == float3(0,0,0));
    r2.xyz = float3(1,1,1) / r12.xyz;
    r2.xyz = float3(1.00004995,1.00004995,1.00004995) * r2.xyz;
    r1.xyz = r1.xyz ? float3(0,0,0) : r2.xyz;
    r2.xyz = r13.xyz * r1.xyz;
    r1.xyz = -r13.xyz * r1.xyz + r3.xyz;
    r1.xyz = r7.xyz * r1.xyz + r2.xyz;
    r1.w = r5.x * r5.y + -0.100000001;
    r1.w = saturate(10 * r1.w);
    r1.xyz = r1.xyz + -r3.xyz;
    r4.xyz = r1.www * r1.xyz + r3.xyz;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
  return;
}
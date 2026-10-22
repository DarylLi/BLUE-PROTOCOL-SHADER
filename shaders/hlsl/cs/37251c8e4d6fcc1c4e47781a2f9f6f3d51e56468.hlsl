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
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
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
  r2.xyzw = (uint4)r0.xwww;
  r2.xyzw = float4(0.5,0.5,0.5,0.5) + r2.xyzw;
  r1.zw = cb0[42].zw * r2.xw;
  r1.xy = (int2)r0.xy + (int2)-r1.xy;
  r1.xy = (int2)r1.xy + int2(-1,-1);
  r1.xy = (uint2)r1.xy;
  r3.xy = cmp(r1.xy < float2(9,9));
  r3.x = r3.y ? r3.x : 0;
  if (r3.x != 0) {
    r3.xy = float2(1,1) + r1.xy;
    r3.xy = (int2)r3.xy;
    r3.x = mad((int)r3.y, 10, (int)r3.x);
    r3.x = g0[r3.x].val[0/4];
    r3.y = g0[r3.x].val[0/4+1];
    r3.z = g0[r3.x].val[0/4+2];
    r3.w = g0[r3.x].val[0/4+3];
  } else {
    r4.xy = max(cb0[34].xy, r1.zw);
    r4.xy = min(cb0[34].zw, r4.xy);
    r3.xyzw = t4.SampleLevel(s2_s, r4.xy, 0).xyzw;
  }
  r4.x = cmp(0 >= r3.w);
  if (r4.x != 0) {
    r5.xyzw = float4(0,0,0,0);
  }
  if (r4.x == 0) {
    r4.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
    r4.w = t1.SampleLevel(s0_s, r1.zw, 0).w;
    r6.xy = t2.SampleLevel(s0_s, r1.zw, 0).xw;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.z = dot(r4.xyz, r4.xyz);
    r6.z = rsqrt(r6.z);
    r4.xyz = r6.zzz * r4.xyz;
    r4.w = 255 * r4.w;
    r4.w = round(r4.w);
    r4.w = (uint)r4.w;
    r4.w = (int)r4.w & 15;
    r7.xyzw = cmp((int4)r4.wwww == int4(2,3,4,5));
    r6.z = (int)r7.y | (int)r7.x;
    r6.z = (int)r7.z | (int)r6.z;
    r6.z = (int)r7.w | (int)r6.z;
    r8.xyzw = cmp((int4)r4.wwww == int4(6,7,8,12));
    r6.z = (int)r6.z | (int)r8.x;
    r6.z = (int)r8.y | (int)r6.z;
    r6.z = (int)r8.z | (int)r6.z;
    r6.z = (int)r8.w | (int)r6.z;
    r7.xy = cmp((int2)r4.ww == int2(13,9));
    r4.w = (int)r6.z | (int)r7.x;
    r4.w = (int)r7.y | (int)r4.w;
    r6.xy = (int2)r6.xy & (int2)r4.ww;
    r4.w = r6.x * 255 + 0.5;
    r8.y = (uint)r4.w;
    r8.xzw = float3(1,0,0);
    r9.xyzw = t3.Load(r8.xyz).xyzw;
    r8.xzw = float3(2,0,0);
    r10.xyzw = t3.Load(r8.xyz).xyzw;
    r10.xyzw = float4(499.999969,499.999969,499.999969,499.999969) * r10.xyzw;
    r4.w = t3.Load(r8.wyw).w;
    r4.w = 500 * r4.w;
    r6.x = (int)r7.y | (int)r7.w;
    r6.x = (int)r6.x & 0x3f800000;
    r6.z = r6.x * r6.y;
    r7.xyzw = r10.xyzw * r6.zzzz;
    r8.xzw = float3(4,0,0);
    r8.xzw = t3.Load(r8.xyz).xyz;
    r10.xyzw = float4(-0.330000013,-0.330000013,-0.330000013,-0.330000013) + r9.wxyz;
    r6.z = r10.x * r10.x;
    r6.z = r6.z * r6.z;
    r6.z = r6.z * 100 + 3.5;
    r10.xyz = max(float3(0,0,0), r10.yzw);
    r10.xyz = r10.xyz * r10.xyz;
    r10.xyz = r10.xyz * r10.xyz;
    r10.xyz = r10.xyz * float3(100,100,100) + float3(3.5,3.5,3.5);
    r11.xy = t5.SampleLevel(s1_s, r1.zw, 0).zw;
    r6.w = 10000 * r11.x;
    r6.w = max(8, r6.w);
    r6.w = min(64, r6.w);
    r9.w = max(16, r6.w);
    r11.xy = cmp(r11.yy >= float2(0.5,3.20000005));
    r11.xy = r11.xy ? float2(1,1) : 0;
    r9.w = r9.w + -r6.w;
    r6.w = r11.x * r9.w + r6.w;
    r9.w = 8 + -r6.w;
    r6.w = r11.y * r9.w + r6.w;
    r6.w = (int)r6.w;
    r9.w = (int)cb0[27].z;
    r10.w = cmp(0 < (int)r9.w);
    r6.w = r10.w ? r9.w : r6.w;
    r1.zw = cb0[28].xy * r1.zw;
    r1.zw = (int2)r1.zw;
    r11.xy = (int2)r1.zw * int2(0x19660d,0x19660d);
    r11.z = asint(cb1[144].x) * 0x0019660d;
    r11.xyz = (int3)r11.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r1.z = mad((int)r11.y, (int)r11.z, (int)r11.x);
    r1.w = mad((int)r11.z, (int)r1.z, (int)r11.y);
    r9.w = mad((int)r1.z, (int)r1.w, (int)r11.z);
    r1.z = mad((int)r1.w, (int)r9.w, (int)r1.z);
    r1.z = (uint)r1.z >> 16;
    r1.w = cb0[27].x / r3.w;
    r1.w = r4.w * r1.w;
    r4.w = cb0[31].x * cb0[28].z;
    r11.x = r4.w * r1.w;
    r1.w = cb0[28].x * cb0[28].w;
    r11.y = r11.x * r1.w;
    r11.zw = cb0[28].zw / r11.xy;
    r1.w = r11.z + r11.w;
    r1.w = 0.5 * r1.w;
    r4.w = r7.w / r6.z;
    r6.z = -r1.w / r4.w;
    r6.z = 1.44269502 * r6.z;
    r6.z = exp2(r6.z);
    r6.z = -r6.z * 0.25 + 1;
    r9.w = 3 * r4.w;
    r10.w = -r1.w / r9.w;
    r10.w = 1.44269502 * r10.w;
    r10.w = exp2(r10.w);
    r6.z = -r10.w * 0.75 + r6.z;
    r12.xyz = float3(1.89999998,1.89999998,1.89999998) + -r9.xyz;
    r9.xyz = float3(-0.800000012,-0.800000012,-0.800000012) + r9.xyz;
    r9.xyz = r9.xyz * r9.xyz;
    r9.xyz = r9.xyz * float3(3.5,3.5,3.5) + r12.xyz;
    r9.xyz = r7.www / r9.xyz;
    r12.xyz = -r1.www / r9.xyz;
    r12.xyz = float3(1.44269502,1.44269502,1.44269502) * r12.xyz;
    r12.xyz = exp2(r12.xyz);
    r12.xyz = -r12.xyz * float3(0.25,0.25,0.25) + float3(1,1,1);
    r9.xyz = float3(3,3,3) * r9.xyz;
    r9.xyz = -r1.www / r9.xyz;
    r9.xyz = float3(1.44269502,1.44269502,1.44269502) * r9.xyz;
    r9.xyz = exp2(r9.xyz);
    r9.xyz = -r9.xyz * float3(0.75,0.75,0.75) + r12.xyz;
    r1.w = 1 + -r6.z;
    r10.w = 0.25 / r4.w;
    r11.z = r11.x * r11.y;
    r5.w = (int)r6.w;
    r11.w = 0.0625 * r5.w;
    r7.w = r7.w * r7.w;
    r7.w = r7.w * r11.z;
    r10.xyz = float3(1,1,1) / r10.xyz;
    r12.xyz = r10.xyz * r7.xyz;
    r13.xyz = float3(0,0,0);
    r14.xyz = float3(0,0,0);
    r11.z = r1.z;
    r12.w = 0;
    while (true) {
      r13.w = cmp((int)r12.w >= (int)r6.w);
      if (r13.w != 0) break;
      r13.w = (int)r11.z + 1;
      r14.w = (uint)r11.z;
      r15.xy = float2(0.754877687,0.569840252) * r14.ww;
      r15.xy = frac(r15.xy);
      r14.w = r15.x * r1.w + r6.z;
      r15.x = r14.w * -0.600000024 + -2;
      r15.x = r15.x * r4.w;
      r14.w = 1 + -r14.w;
      r14.w = log2(r14.w);
      r14.w = r15.x * r14.w;
      r14.w = 0.693147182 * r14.w;
      r14.w = max(9.99999975e-006, r14.w);
      r15.x = 6.28318548 * r15.y;
      sincos(r15.x, r15.x, r16.x);
      r15.y = -r14.w / r4.w;
      r15.y = 1.44269502 * r15.y;
      r15.y = exp2(r15.y);
      r15.z = -r14.w / r9.w;
      r15.z = 1.44269502 * r15.z;
      r15.z = exp2(r15.z);
      r15.y = r15.y + r15.z;
      r15.y = r15.y * r10.w;
      r15.y = max(9.99999975e-006, r15.y);
      r15.zw = r14.ww * r11.xy;
      r16.x = r15.z * r16.x;
      r16.yzw = r15.www * r15.xxx;
      r15.x = r15.y * r11.w;
      r15.x = r15.x / r7.w;
      r15.x = log2(r15.x);
      r15.x = max(0, -r15.x);
      r15.x = r15.x * 0.5 + -1;
      r15.x = ceil(r15.x);
      r15.x = max(0, r15.x);
      r15.x = min(5, r15.x);
      r15.zw = r16.xw * cb0[42].xy + r1.xy;
      r17.x = cmp(r15.x == 0.000000);
      r17.yz = cmp(r15.zw >= float2(-1,-1));
      r18.xy = cmp(r15.zw < float2(9,9));
      r17.y = r17.y ? r18.x : 0;
      r17.y = r17.z ? r17.y : 0;
      r17.y = r18.y ? r17.y : 0;
      r17.x = r17.y ? r17.x : 0;
      if (r17.x != 0) {
        r15.zw = float2(1,1) + r15.zw;
        r15.zw = (int2)r15.zw;
        r15.z = mad((int)r15.w, 10, (int)r15.z);
        r17.x = g0[r15.z].val[0/4];
        r17.y = g0[r15.z].val[0/4+1];
        r17.z = g0[r15.z].val[0/4+2];
        r17.w = g0[r15.z].val[0/4+3];
        r18.x = g1[r15.z].val[0/4];
        r18.y = g1[r15.z].val[0/4+1];
        r18.z = g1[r15.z].val[0/4+2];
        r15.z = g2[r15.z].val[0/4];
      } else {
        r16.xyzw = cb0[42].zwww * r2.xyzw + r16.xyzw;
        r16.xyzw = max(cb0[34].xyyy, r16.xyzw);
        r16.xyzw = min(cb0[34].zwww, r16.xyzw);
        r17.xyzw = t4.SampleLevel(s2_s, r16.xw, r15.x).xyzw;
        r19.xyz = t0.SampleLevel(s0_s, r16.xw, 0).xyz;
        r19.xyz = r19.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r15.x = dot(r19.xyz, r19.xyz);
        r15.x = rsqrt(r15.x);
        r18.xyz = r19.xyz * r15.xxx;
        r15.x = cmp(0 < r17.w);
        r16.xyzw = saturate(r16.xyzw);
        r16.xyzw = r16.xyzw * cb0[28].xyyy + float4(-0.5,-0.5,-0.5,-0.5);
        r16.xyzw = (uint4)r16.xyzw;
      // No code for instruction (needs manual fix):
            ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r15.w, r16.xyzw, u0.yzwx
        r15.z = r15.x ? r15.w : 256;
      }
      r15.x = dot(r18.xyz, r4.xyz);
      r15.x = saturate(r15.x * 0.5 + 0.5);
      r15.x = sqrt(r15.x);
      r15.w = r17.w + -r3.w;
      r15.w = 10 * r15.w;
      r15.w = r15.w * r15.w;
      r14.w = r14.w * r14.w + r15.w;
      r14.w = sqrt(r14.w);
      r15.w = cmp((int)r8.y == (int)r15.z);
      r16.xyz = r15.www ? float3(1,1,1) : r8.xzw;
      r15.z = cmp((int)r15.z != 256);
      r15.z = r15.z ? 1.000000 : 0;
      r18.xyz = r14.www / r7.xyz;
      r18.xyz = -r18.xyz / r10.xyz;
      r19.xyz = float3(1.44269502,1.44269502,1.44269502) * r18.xyz;
      r19.xyz = exp2(r19.xyz);
      r18.xyz = float3(0.48089835,0.48089835,0.48089835) * r18.xyz;
      r18.xyz = exp2(r18.xyz);
      r18.xyz = r19.xyz + r18.xyz;
      r18.xyz = r18.xyz / r12.xyz;
      r18.xyz = float3(0.0397887342,0.0397887342,0.0397887342) * r18.xyz;
      r18.xyz = max(float3(0,0,0), r18.xyz);
      r18.xyz = r18.xyz / r15.yyy;
      r15.yzw = r18.xyz * r15.zzz;
      r18.xyz = r15.yzw * r15.xxx;
      r16.xyz = r17.xyz * r16.xyz;
      r14.xyz = r18.xyz * r16.xyz + r14.xyz;
      r13.xyz = r15.yzw * r15.xxx + r13.xyz;
      r12.w = (int)r12.w + 1;
      r11.z = r13.w;
    }
    r1.xyz = cmp(r13.xyz == float3(0,0,0));
    r2.xyz = float3(1,1,1) / r13.xyz;
    r2.xyz = float3(1.00004995,1.00004995,1.00004995) * r2.xyz;
    r1.xyz = r1.xyz ? float3(0,0,0) : r2.xyz;
    r2.xyz = r14.xyz * r1.xyz;
    r1.xyz = -r14.xyz * r1.xyz + r3.xyz;
    r1.xyz = r9.xyz * r1.xyz + r2.xyz;
    r1.w = r6.x * r6.y + -0.100000001;
    r1.w = saturate(10 * r1.w);
    r1.xyz = r1.xyz + -r3.xyz;
    r5.xyz = r1.www * r1.xyz + r3.xyz;
  }
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r0.xyzw, r5.xyzw
  return;
}
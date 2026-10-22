// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

TextureCubeArray<float4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[10];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[168];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb5[2].xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb5[5].xyz * cb3[0].xxx;
  r5.xyz = -cb5[5].xyz * cb3[0].xxx + cb5[6].xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r5.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r0.w);
  r6.xyz = -cb3[2].xyz + cb0[67].xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r4.w = max(cb3[2].x, cb3[2].y);
  r4.w = max(cb3[2].z, r4.w);
  r4.w = saturate(ceil(r4.w));
  r5.w = r4.w * r3.w;
  r3.w = r4.w * r3.w + cb5[8].w;
  r4.w = max(r3.w, r5.w);
  r1.w = r1.w / r4.w;
  r3.w = min(r3.w, r5.w);
  r3.w = r3.w / r4.w;
  r4.w = 1 + r3.w;
  r1.w = saturate(r1.w * r4.w + -r3.w);
  r1.w = r1.w * 3 + -1;
  r1.w = max(cb5[9].x, r1.w);
  r1.w = min(1, r1.w);
  r3.w = saturate(ceil(cb4[2].y));
  r4.w = 1 + -r1.w;
  r1.w = r3.w * r4.w + r1.w;
  r6.w = max(0, r1.w);
  r7.xy = mad((int2)v2.xx, int2(36,36), int2(20,23));
  r1.w = t2[r7.x].val[8/4];
  r1.w = cmp(0 < r1.w);
  if (r1.w != 0) {
    r7.xzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xzw = max(float3(0,0,0), r7.xzw);
    r7.xzw = min(float3(0.99000001,0.99000001,0.99000001), r7.xzw);
    r7.xzw = cb0[213].xyz * r7.xzw;
    r8.xyz = (int3)r7.xzw;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.w = 1 + cb0[213].w;
    r7.xzw = r7.xzw / r8.www;
    r7.xzw = frac(r7.xzw);
    r7.xzw = cb0[213].www * r7.xzw;
    r7.xzw = r8.xyz * r1.www + r7.xzw;
    r7.xzw = float3(0.5,0.5,0.5) + r7.xzw;
    r7.xzw = cb0[214].xyz * r7.xzw;
    r8.x = t1.SampleLevel(s0_s, r7.xzw, 0).x;
  } else {
    r8.x = 1;
  }
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r9.w = 0;
  r10.xyz = cb0[136].xyz;
  r10.w = cb0[137].x;
  r9.xyzw = r1.wwww ? r9.xyzw : r10.xyzw;
  r10.yz = r1.ww ? float2(0,0) : cb0[137].yz;
  r7.xz = -cb0[129].xy + v4.xy;
  r7.xz = cb0[131].zw * r7.xz;
  r7.xz = (uint2)r7.xz;
  r1.w = v4.w * cb1[3].x + cb1[3].y;
  r1.w = log2(r1.w);
  r1.w = cb1[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.w = (uint)r1.w;
  r3.w = asint(cb1[1].z) + -1;
  r1.w = min((uint)r3.w, (uint)r1.w);
  r7.xz = (uint2)r7.xz >> asuint(cb1[2].xx);
  r1.w = mad((int)r1.w, asint(cb1[1].y), (int)r7.z);
  r1.w = mad((int)r1.w, asint(cb1[1].x), (int)r7.x);
  r3.w = t2[r7.y].val[12/4];
  if (cb1[0].z != 0) {
    r7.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r7.yzw = r7.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r11.xyzw = cb1[51].xyzw * r2.yyyy;
      r11.xyzw = r2.xxxx * cb1[50].xyzw + r11.xyzw;
      r11.xyzw = r2.zzzz * cb1[52].xyzw + r11.xyzw;
      r11.xyzw = cb1[53].xyzw + r11.xyzw;
      r11.xy = r11.xy / r11.ww;
      r12.xy = cmp(r11.xy >= float2(0,0));
      r12.zw = cmp(float2(1,1) >= r11.xy);
      r12.xy = r12.zw ? r12.xy : 0;
      r4.w = r12.y ? r12.x : 0;
      if (r4.w != 0) {
        r4.w = t4.SampleLevel(s2_s, r11.xy, 0).x;
        r5.w = cmp(r11.z < r4.w);
        r4.w = cmp(0.99000001 < r4.w);
        r4.w = (int)r4.w | (int)r5.w;
        r8.x = r4.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb1[9].z != 0) {
      r4.w = cb1[9].z;
      r5.w = 0;
      while (true) {
        r11.x = cmp((uint)r5.w >= asuint(cb1[9].z));
        if (r11.x != 0) break;
        r11.x = dot(cb1[10].xyzw, icb[r5.w+0].xyzw);
        r11.x = cmp(v4.w < r11.x);
        if (r11.x != 0) {
          r4.w = r5.w;
          break;
        }
        r5.w = (int)r5.w + 1;
      }
      r5.w = cmp((uint)r4.w < asuint(cb1[9].z));
      if (r5.w != 0) {
        r5.w = (uint)r4.w << 2;
        r11.xyzw = cb1[r5.w+12].xyzw * r2.yyyy;
        r11.xyzw = r2.xxxx * cb1[r5.w+11].xyzw + r11.xyzw;
        r11.xyzw = r2.zzzz * cb1[r5.w+13].xyzw + r11.xyzw;
        r11.xyzw = cb1[r5.w+14].xyzw + r11.xyzw;
        r12.xyzw = r11.xyxy / r11.wwww;
        r11.xy = cmp(r12.zw >= cb1[r4.w+27].xy);
        r13.xy = cmp(cb1[r4.w+27].zw >= r12.zw);
        r11.xy = r11.xy ? r13.xy : 0;
        r4.w = r11.y ? r11.x : 0;
        if (r4.w != 0) {
          r12.xyzw = r12.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r11.xy = frac(r12.zw);
          r12.xyzw = floor(r12.xyzw);
          r13.xyzw = float4(0.5,1.5,0.5,0.5) + r12.zwzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r14.x = t3.SampleLevel(s1_s, r13.xy, 0).x;
          r12.xyzw = float4(1.5,1.5,1.5,0.5) + r12.xyzw;
          r12.xyzw = cb1[31].zwzw * r12.xyzw;
          r14.y = t3.SampleLevel(s1_s, r12.xy, 0).x;
          r14.z = t3.SampleLevel(s1_s, r12.zw, 0).x;
          r14.w = t3.SampleLevel(s1_s, r13.zw, 0).x;
          r4.w = r11.z * 4000 + -1;
          r12.xyzw = saturate(r14.xyzw * float4(4000,4000,4000,4000) + -r4.wwww);
          r11.zw = r12.zy + -r12.wx;
          r11.xz = r11.xx * r11.zw + r12.wx;
          r4.w = r11.z + -r11.x;
          r4.w = r11.y * r4.w + r11.x;
        } else {
          r4.w = 1;
        }
      } else {
        r4.w = 1;
      }
    } else {
      r4.w = 1;
    }
    r7.x = 1;
    r5.w = dot(float4(1,1,1,1), r7.xyzw);
    r8.yzw = r7.yzw;
    r7.x = dot(r8.xyzw, float4(1,1,1,1));
    r7.x = -1 + r7.x;
    r5.w = r5.w * r7.x + 1;
    r7.x = saturate(v4.w * cb1[9].x + cb1[9].y);
    r7.x = r7.x * r7.x;
    r5.w = r5.w + -r4.w;
    r4.w = r7.x * r5.w + r4.w;
    r5.w = min(1, r4.w);
    r5.w = r5.w + r4.w;
    r5.w = cmp(0 < r5.w);
    if (r5.w != 0) {
      r5.w = dot(cb1[4].xyz, cb1[4].xyz);
      r5.w = rsqrt(r5.w);
      r7.xyz = cb1[4].xyz * r5.www;
      r5.w = dot(r0.xyz, r7.xyz);
      r7.w = saturate(r5.w);
      r11.x = max(cb0[226].y, cb0[139].x);
      r11.y = dot(r0.xyz, r3.xyz);
      r7.x = dot(r3.xyz, r7.xyz);
      r7.y = r7.x * 2 + 2;
      r7.y = rsqrt(r7.y);
      r5.w = r11.y + r5.w;
      r5.w = saturate(r5.w * r7.y);
      r7.x = saturate(r7.y * r7.x + r7.y);
      r7.y = 9.99999975e-006 + abs(r11.y);
      r7.y = min(1, r7.y);
      r11.yzw = r9.xyz * r7.www;
      r11.yzw = float3(0.318309873,0.318309873,0.318309873) * r11.yzw;
      r7.z = r11.x * r11.x;
      r12.x = r7.z * r7.z;
      r12.y = r5.w * r12.x + -r5.w;
      r5.w = r12.y * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = 3.14159274 * r5.w;
      r5.w = r12.x / r5.w;
      r11.x = -r11.x * r11.x + 1;
      r12.x = r7.y * r11.x + r7.z;
      r7.z = r7.w * r11.x + r7.z;
      r7.y = r7.y * r7.z;
      r7.y = r7.w * r12.x + r7.y;
      r7.y = rcp(r7.y);
      r5.w = r7.y * r5.w;
      r7.x = 1 + -r7.x;
      r7.y = r7.x * r7.x;
      r7.y = r7.y * r7.y;
      r7.z = r7.y * r7.x;
      r11.x = saturate(50 * r10.y);
      r7.x = -r7.y * r7.x + 1;
      r10.x = r9.w;
      r12.xyz = r7.xxx * r10.xyz;
      r7.xyz = r11.xxx * r7.zzz + r12.xyz;
      r5.w = 0.5 * r5.w;
      r7.xyz = r5.www * r7.xyz;
      r7.xyz = r7.www * r7.xyz;
      r12.xyz = cb1[5].xyz * r4.www;
      r11.xyz = r12.xyz * r11.yzw;
      r7.xyz = r12.yzx * r7.yzx;
      r11.w = r7.z;
    } else {
      r7.xy = float2(0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r4.w = asuint(cb1[8].z) >> 8;
    r4.w = (int)r3.w & (int)r4.w;
    r11.xyzw = r4.wwww ? r11.xyzw : float4(0,0,0,0);
    r7.xy = r4.ww ? r7.xy : float2(0,0);
  } else {
    r11.xyzw = float4(0,0,0,0);
    r7.xy = float2(0,0);
  }
  r4.w = (uint)r1.w << 1;
  r4.w = t6.Load(r4.w).x;
  r4.w = min(asuint(cb1[0].x), (uint)r4.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.w = t6.Load(r5.w).x;
  r4.w = min(asuint(cb1[0].x), (uint)r4.w);
  r7.z = dot(-r3.xyz, r0.xyz);
  r7.z = r7.z + r7.z;
  r12.xyz = r0.xyz * -r7.zzz + -r3.xyz;
  r7.z = max(cb0[226].y, cb0[139].x);
  r7.w = r7.z * r7.z;
  r7.z = -r7.z * r7.z + 1;
  r12.w = dot(r0.xyz, r3.xyz);
  r13.x = r12.w + r12.w;
  r13.y = r13.x * r12.w + -1;
  r13.z = 9.99999975e-006 + abs(r12.w);
  r13.z = min(1, r13.z);
  r14.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r13.w = r7.w * r7.w;
  r14.w = saturate(50 * r10.y);
  r8.yw = float2(1,1);
  r10.w = r9.w;
  r15.xyz = r11.xyz;
  r16.x = r11.w;
  r16.yz = r7.xy;
  r9.w = 0;
  while (true) {
    r15.w = cmp((uint)r9.w >= (uint)r4.w);
    if (r15.w != 0) break;
    r15.w = (int)r5.w + (int)r9.w;
    r15.w = t7.Load(r15.w).x;
    r16.w = (int)r15.w * 6;
    r17.xyzw = t5.Load(r16.w).xyzw;
    r16.w = mad((int)r15.w, 6, 1);
    r18.xyzw = t5.Load(r16.w).xyzw;
    r19.xy = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r20.xyzw = t5.Load(r19.x).xyzw;
    r19.xyzw = t5.Load(r19.y).xyzw;
    r16.w = cmp(r18.w == 0.000000);
    r21.x = cmp(-2 < r19.x);
    r17.xyz = r17.xyz + -r2.xyz;
    r21.y = dot(r17.xyz, r17.xyz);
    r21.z = rsqrt(r21.y);
    r22.xyz = r21.zzz * r17.xyz;
    r21.z = r17.w * r17.w;
    r21.y = r21.y * r21.z;
    r21.y = -r21.y * r21.y + 1;
    r21.y = max(0, r21.y);
    r21.y = r21.y * r21.y;
    r23.xyz = r17.xyz * r17.www;
    r17.w = dot(r23.xyz, r23.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r18.w * r17.w;
    r17.w = exp2(r17.w);
    r17.w = r16.w ? r21.y : r17.w;
    r18.w = dot(r22.xyz, r20.xyz);
    r18.w = r18.w + -r19.x;
    r18.w = saturate(r18.w * r19.y);
    r18.w = r18.w * r18.w;
    r18.w = r18.w * r17.w;
    r17.w = r21.x ? r18.w : r17.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r20.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r21.xyzw = (int4)r20.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r20.w >> 4;
        if (1 == 0) r19.x = 0; else if (1+4 < 32) {         r19.x = (uint)r20.w << (32-(1 + 4)); r19.x = (uint)r19.x >> (32-1);        } else r19.x = (uint)r20.w >> 4;
        r22.x = r19.x ? 1 : 0;
        r20.xyz = (int3)r18.www & int3(2,4,8);
        r22.yzw = r20.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r22.xyzw, float4(1,1,1,1));
        r19.x = dot(r21.xyzw, float4(1,1,1,1));
        r19.y = dot(r8.xyyy, r21.xyzw);
        r19.y = -1 + r19.y;
        r19.x = r19.x * r19.y + 1;
        r19.xy = r19.xx * r18.ww;
      } else {
        r19.xy = float2(1,1);
      }
      r18.w = r19.x + r19.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r15.w = mad((int)r15.w, 6, 4);
        r21.xyzw = t5.Load(r15.w).xyzw;
        r15.w = f16tof32(r19.w);
        r18.w = 0.5 * r15.w;
        r20.xyz = -r18.www * r21.xyz + r17.xyz;
        r17.xyz = r18.www * r21.xyz + r17.xyz;
        r18.w = cmp(0 < r15.w);
        if (r18.w != 0) {
          r19.y = dot(r20.xyz, r20.xyz);
          r19.w = dot(r17.xyz, r17.xyz);
          r19.y = rsqrt(r19.y);
          r19.w = rsqrt(r19.w);
          r21.x = r19.y * r19.w;
          r21.y = dot(r20.xyz, r17.xyz);
          r21.y = r21.y * r21.x;
          r21.z = r21.y * 0.5 + r21.x;
          r21.z = 0.5 + r21.z;
          r22.y = r21.x / r21.z;
          r21.x = dot(r0.xyz, r20.xyz);
          r21.z = dot(r0.xyz, r17.xyz);
          r19.w = r21.z * r19.w;
          r19.y = r21.x * r19.y + r19.w;
          r22.x = 0.5 * r19.y;
        } else {
          r19.y = dot(r20.xyz, r20.xyz);
          r19.w = 1 + r19.y;
          r22.y = rcp(r19.w);
          r19.y = rsqrt(r19.y);
          r23.xyz = r20.xyz * r19.yyy;
          r22.x = dot(r0.xyz, r23.xyz);
          r21.y = 1;
        }
        r19.y = cmp(0 < r19.z);
        r19.w = r19.z * r19.z;
        r19.w = saturate(r19.w * r22.y);
        r19.w = sqrt(r19.w);
        r21.x = cmp(r22.x < r19.w);
        r21.z = max(r22.x, -r19.w);
        r21.z = r21.z + r19.w;
        r21.z = r21.z * r21.z;
        r19.w = 4 * r19.w;
        r19.w = r21.z / r19.w;
        r19.w = r21.x ? r19.w : r22.x;
        r19.y = saturate(r19.y ? r19.w : r22.x);
        r16.w = r16.w ? r22.y : 1;
        r17.xyz = r17.xyz + -r20.xyz;
        r19.w = dot(r12.xyz, r17.xyz);
        r22.xyz = r19.www * r12.xyz + -r17.xyz;
        r21.x = dot(r20.xyz, r22.xyz);
        r19.w = r19.w * r19.w;
        r15.w = r15.w * r15.w + -r19.w;
        r15.w = saturate(r21.x / r15.w);
        r17.xyz = r15.www * r17.xyz + r20.xyz;
        r17.xyz = r18.www ? r17.xyz : r20.xyz;
        r15.w = dot(r17.xyz, r17.xyz);
        r15.w = rsqrt(r15.w);
        r17.xyz = r17.xyz * r15.www;
        r18.w = r19.z * r15.w;
        r18.w = saturate(r18.w * r7.z);
        r15.w = saturate(r21.w * r15.w);
        r19.z = dot(r0.xyz, r17.xyz);
        r17.x = dot(r3.xyz, r17.xyz);
        r17.y = r17.x * 2 + 2;
        r17.y = rsqrt(r17.y);
        r17.z = r19.z + r12.w;
        r17.z = saturate(r17.z * r17.y);
        r17.y = saturate(r17.y * r17.x + r17.y);
        r19.w = cmp(0 < r18.w);
        if (r19.w != 0) {
          r20.x = -r18.w * r18.w + 1;
          r20.x = sqrt(r20.x);
          r20.y = dot(r12.ww, r19.zz);
          r20.z = r20.y + -r17.x;
          r21.x = cmp(r20.z >= r20.x);
          if (r21.x != 0) {
            r17.z = 1;
            r17.y = abs(r12.w);
          } else {
            r21.x = -r20.z * r20.z + 1;
            r21.x = rsqrt(r21.x);
            r21.x = r21.x * r18.w;
            r21.z = -r20.z * r19.z + r12.w;
            r21.w = r21.x * r21.z;
            r20.z = -r20.z * r17.x + r13.y;
            r22.x = r19.z * r19.z;
            r22.x = -r12.w * r12.w + -r22.x;
            r22.x = 1 + r22.x;
            r22.x = -r17.x * r17.x + r22.x;
            r20.y = saturate(r20.y * r17.x + r22.x);
            r20.y = sqrt(r20.y);
            r20.yz = r21.xx * r20.yz;
            r22.x = r20.y * r12.w;
            r22.y = r22.x + r22.x;
            r22.z = r19.z * r20.x + r12.w;
            r21.x = r21.x * r21.z + r22.z;
            r21.z = r17.x * r20.x + r20.z;
            r21.z = 1 + r21.z;
            r22.w = r21.z * r20.y;
            r23.x = r21.x * r21.z;
            r23.y = r22.y * r21.x;
            r22.x = r21.x * r22.x;
            r22.x = 0.5 * r22.x;
            r22.x = r22.w * -0.5 + r22.x;
            r22.x = r23.x * r22.x;
            r23.z = -r22.w * 2 + r23.y;
            r23.y = r23.y * r23.z;
            r22.w = r22.w * r22.w + r23.y;
            r23.y = r21.z * r21.z;
            r21.z = r17.x * r20.x + r21.z;
            r21.z = r21.z * -0.5 + -0.5;
            r21.z = r23.x * r21.z;
            r21.z = r22.z * r23.y + r21.z;
            r21.x = r21.x * r21.z + r22.w;
            r21.z = r22.x + r22.x;
            r22.z = r22.x * r22.x;
            r22.z = r21.x * r21.x + r22.z;
            r21.z = r21.z / r22.z;
            r21.x = r21.z * r21.x;
            r21.z = -r21.z * r22.x + 1;
            r20.y = r21.x * r20.y;
            r20.y = r21.z * r21.w + r20.y;
            r21.x = r21.x * r22.y;
            r20.z = r21.z * r20.z + r21.x;
            r19.z = r19.z * r20.x + r20.y;
            r17.x = r17.x * r20.x + r20.z;
            r20.x = r17.x * 2 + 2;
            r20.x = rsqrt(r20.x);
            r19.z = r19.z + r12.w;
            r17.z = saturate(r19.z * r20.x);
            r17.y = saturate(r20.x * r17.x + r20.x);
          }
        }
        r16.w = r16.w * r19.y;
        r20.xyz = r16.www * r14.xyz;
        r17.x = cmp(0 < r15.w);
        r15.w = r15.w * r15.w;
        r19.z = r17.y * 3.5999999 + 0.400000006;
        r15.w = r15.w / r19.z;
        r15.w = r7.w * r7.w + r15.w;
        r15.w = min(1, r15.w);
        r8.z = r17.x ? r15.w : r13.w;
        r15.w = 0.25 * r18.w;
        r17.x = (uint)r8.z >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r17.x = r17.x * 3 + r18.w;
        r15.w = r17.x * r15.w;
        r17.x = 0.00100000005 + r17.y;
        r15.w = r15.w / r17.x;
        r22.x = r15.w + r8.z;
        r22.y = r8.z / r22.x;
        r19.zw = r19.ww ? r22.xy : r8.zw;
        r15.w = cmp(r21.y < 1);
        r18.w = 1.00010002 + -r21.y;
        r21.x = 1 + r21.y;
        r18.w = r18.w / r21.x;
        r18.w = sqrt(r18.w);
        r21.x = 0.25 * r18.w;
        r21.y = (uint)r19.z >> 1;
        r21.y = (int)r21.y + 0x1fbd1df5;
        r18.w = r21.y * 3 + r18.w;
        r18.w = r21.x * r18.w;
        r17.x = r18.w / r17.x;
        r17.x = r19.z + r17.x;
        r17.x = r19.z / r17.x;
        r17.x = sqrt(r17.x);
        r17.x = r19.w * r17.x;
        r15.w = r15.w ? r17.x : r19.w;
        r17.x = r17.z * r8.z + -r17.z;
        r17.x = r17.x * r17.z + 1;
        r17.x = r17.x * r17.x;
        r17.x = 3.14159274 * r17.x;
        r17.x = r8.z / r17.x;
        r15.w = r17.x * r15.w;
        r8.z = sqrt(r8.z);
        r17.x = 1 + -r8.z;
        r17.z = r13.z * r17.x + r8.z;
        r8.z = r19.y * r17.x + r8.z;
        r8.z = r13.z * r8.z;
        r8.z = r19.y * r17.z + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r15.w * r8.z;
        r15.w = 1 + -r17.y;
        r17.x = r15.w * r15.w;
        r17.x = r17.x * r17.x;
        r17.y = r17.x * r15.w;
        r15.w = -r17.x * r15.w + 1;
        r19.yzw = r15.www * r10.wyz;
        r17.xyz = r14.www * r17.yyy + r19.yzw;
        r8.z = 0.5 * r8.z;
        r17.xyz = r8.zzz * r17.xyz;
        r17.xyz = r17.xyz * r16.www;
        r18.xyz = r18.xyz * r17.www;
        r18.xyz = r18.xyz * r19.xxx;
        r19.xyz = r20.xyz * r18.xyz;
        r17.xyz = r18.xyz * r17.xyz;
      } else {
        r19.xyz = float3(0,0,0);
        r17.xyz = float3(0,0,0);
      }
    } else {
      r19.xyz = float3(0,0,0);
      r17.xyz = float3(0,0,0);
    }
    r8.z = (uint)r20.w >> 8;
    r8.z = (int)r3.w & (int)r8.z;
    r18.xyz = r19.xyz + r15.xyz;
    r17.xyz = r17.xyz + r16.xyz;
    r15.xyz = r8.zzz ? r18.xyz : r15.xyz;
    r16.xyz = r8.zzz ? r17.xyz : r16.xyz;
    r9.w = (int)r9.w + 1;
  }
  r7.xyz = r16.xyz + r15.xyz;
  r3.yzw = r13.xxx * r0.xyz + -r3.xyz;
  r12.w = saturate(r12.w);
  r1.w = (int)r1.w + asint(cb1[0].w);
  r4.w = (uint)r1.w << 1;
  r4.w = t6.Load(r4.w).x;
  r4.w = min(asuint(cb1[0].y), (uint)r4.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.w = t6.Load(r1.w).x;
  r5.w = max(0.00100000005, cb0[139].x);
  r5.w = log2(r5.w);
  r5.w = -r5.w * 1.20000005 + 1;
  r7.w = -1 + cb0[195].z;
  r5.w = r7.w + -r5.w;
  r3.x = 0;
  r7.w = 1;
  r8.xyzw = float4(0,0,0,0);
  while (true) {
    r9.w = cmp((uint)r8.w >= (uint)r4.w);
    if (r9.w != 0) break;
    r9.w = cmp(r7.w < 0.00100000005);
    if (r9.w != 0) {
      break;
    }
    r9.w = (int)r1.w + (int)r8.w;
    r9.w = t7.Load(r9.w).x;
    r11.xyz = -cb2[r9.w+0].xyz + r2.xyz;
    r11.w = dot(r11.xyz, r11.xyz);
    r12.x = sqrt(r11.w);
    r12.y = cmp(r12.x < cb2[r9.w+0].w);
    if (r12.y != 0) {
      r12.y = cmp(0 < cb2[r9.w+341].z);
      if (r12.y != 0) {
        r12.y = (uint)r9.w << 2;
        r13.xyz = cb2[r12.y+1024].xyz * r2.yyy;
        r13.xyz = r2.xxx * cb2[r12.y+1023].xyz + r13.xyz;
        r13.xyz = r2.zzz * cb2[r12.y+1025].xyz + r13.xyz;
        r13.xyz = cb2[r12.y+1026].xyz + r13.xyz;
        r14.xyz = cb2[r12.y+1024].xyz * r3.zzz;
        r14.xyz = r3.yyy * cb2[r12.y+1023].xyz + r14.xyz;
        r14.xyz = r3.www * cb2[r12.y+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r13.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r12.y = min(r14.y, r14.z);
        r12.y = min(r14.x, r12.y);
        r14.xyz = r12.yyy * r3.yzw + r2.xyz;
        r15.xyz = cb2[r9.w+682].xyz + cb2[r9.w+0].xyz;
        r15.xyz = -r15.xyz + r14.xyz;
        r12.y = cb2[r9.w+2387].w * 0.699999988;
        r14.xyz = -cb2[r9.w+2387].www * float3(0.5,0.5,0.5) + cb2[r9.w+2387].xyz;
        r16.xyz = cb2[r9.w+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r14.xyz);
        r18.xyz = r13.xyz * cb2[r9.w+2387].xyz + r14.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r14.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb2[r9.w+2387].xyz + -r14.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r12.z = dot(r17.xyz, float3(1,1,1));
        r13.x = dot(r13.xyz, float3(1,1,1));
        r12.z = r13.x + r12.z;
        r12.y = 1 / r12.y;
        r12.y = saturate(r12.z * r12.y);
        r12.z = r12.y * -2 + 3;
        r12.y = r12.y * r12.y;
        r13.x = -r12.z * r12.y + 1;
      } else {
        r12.x = saturate(r12.x / cb2[r9.w+0].w);
        r12.y = dot(r3.yzw, r11.xyz);
        r11.w = -cb2[r9.w+0].w * cb2[r9.w+0].w + r11.w;
        r11.w = r12.y * r12.y + -r11.w;
        r12.z = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r12.y;
        r11.xyz = r11.www * r3.yzw + r11.xyz;
        r11.yzw = -cb2[r9.w+682].xyz + r11.xyz;
        r12.x = r12.x * 2.5 + -1.5;
        r12.x = max(0, r12.x);
        r12.y = r12.x * r12.x;
        r12.x = -r12.x * 2 + 3;
        r11.x = -r12.y * r12.x + 1;
        r13.xyzw = r12.zzzz ? r11.xyzw : r3.xyzw;
        r15.xyz = r13.yzw;
      }
      r15.w = cb2[r9.w+341].y;
      r11.xyzw = t8.SampleLevel(s3_s, r15.xyzw, r5.w).xyzw;
      r11.xyz = cb2[r9.w+341].xxx * r11.xyz;
      r11.xyz = r11.xyz * r13.xxx;
      r8.xyz = r11.xyz * r7.www + r8.xyz;
      r9.w = -r11.w * r13.x + 1;
      r7.w = r9.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = cb0[157].xyz * r8.xyz;
  r1.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r3.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r3.w * r1.w;
  r3.w = min(0, cb0[197].z);
  r3.w = -1 + r3.w;
  r1.w = r1.w * r3.w + 1;
  r3.xyz = r3.xyz * r1.www;
  r8.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.w = r8.x * r8.x;
  r3.w = -9.27999973 * r12.w;
  r3.w = exp2(r3.w);
  r1.w = min(r3.w, r1.w);
  r1.w = r1.w * r8.x + r8.y;
  r8.xy = r1.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r10.xyz = r10.wyz;
  r1.w = r14.w * r8.y;
  r8.xyz = r10.xyz * r8.xxx + r1.www;
  r1.w = dot(cb1[122].xyz, float3(1,1,1));
  r1.w = cmp(9.99999975e-005 < abs(r1.w));
  if (r1.w != 0) {
    r2.w = -1;
    r1.w = dot(cb1[122].xyzw, r2.xyzw);
    r1.w = saturate(abs(r1.w) * cb1[129].x + cb1[129].y);
    r1.w = 1 + -r1.w;
    r11.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r11.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r11.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r1.w = r2.w * r1.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r1.w = r2.w * r1.w;
    r1.w = r1.w * r3.w;
    r2.w = cmp(0 < r1.w);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r5.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb1[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb1[122].xyz * r0.www + r5.xyz;
      r11.xyz = cb1[127].xyz * r0.yyy;
      r0.xyw = r0.xxx * cb1[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r0.xyw;
      r0.w = dot(r5.xyz, r0.xyz);
      r0.w = r0.w + r0.w;
      r0.xyz = r0.xyz * -r0.www + r5.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r5.xyz = cb0[13].xyz * r0.yyy;
      r0.xyw = r0.xxx * cb0[12].xyz + r5.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r0.xyw;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r5.xyz = cb1[r0.w+132].xyw * r0.yyy;
      r5.xyz = r0.xxx * cb1[r0.w+131].xyw + r5.xyz;
      r0.xyz = r0.zzz * cb1[r0.w+133].xyw + r5.xyz;
      r0.xyz = cb1[r0.w+134].xyw + r0.xyz;
      r0.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r0.w+139].xy + cb1[r0.w+139].zw;
      r0.xyzw = t9.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.w = r1.w * r0.w;
    } else {
      r0.xyzw = float4(0,0,0,0);
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = r3.xyz * r8.xyz;
  r3.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r7.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r5.z = cb0[208].z * r0.w;
    r3.xyzw = t10.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v3.w * r3.w;
    r3.xyz = v3.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v3.xyz;
    r5.x = v3.w;
  }
  r5.yzw = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r5.yzw = r5.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.y = t2[r4.y].val[0/4];
    r5.z = t2[r4.y].val[0/4+1];
    r5.w = t2[r4.y].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r4.xyz = cmp(r5.yzw < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r6.xyzw = r0.wwww ? r2.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r6.xyz + r0.xyz;
  r0.xyz = r0.xyz * r5.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}
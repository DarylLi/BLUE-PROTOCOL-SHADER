// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[22];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r1.zw;
  r2.zw = v5.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v5.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r6.xyz = cb5[2].xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r6.xyz = cb5[3].xyz + -cb3[0].xxx;
  r6.xyz = cb5[15].zzz * r6.xyz + cb3[0].xxx;
  r0.w = cb4[2].x * cb0[142].z;
  r1.zw = r0.ww * cb5[16].yw + v2.xy;
  r7.x = r1.z * cb5[16].z + 4;
  r7.y = r1.w * cb5[17].x + 4;
  r1.z = r0.w * cb5[17].w + v2.x;
  r8.x = cb5[18].x * r1.z;
  r0.w = r0.w * cb5[18].y + v2.y;
  r8.y = cb5[18].z * r0.w;
  r0.w = t12.SampleBias(s5_s, r8.xy, cb0[143].y).x;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r1.zw = r0.ww * cb5[19].yw + cb5[13].xy;
  r1.zw = r7.xy + r1.zw;
  r7.xyzw = t13.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
  r0.w = 4 * cb5[20].x;
  r0.w = saturate(r0.w);
  r0.w = 0.200000003 + r0.w;
  r0.w = floor(r0.w);
  r1.z = r7.y + -r7.x;
  r0.w = r0.w * r1.z + r7.x;
  r1.zw = saturate(cb5[20].xx * float2(4,4) + float2(-1,-2));
  r1.zw = float2(0.200000003,0.200000003) + r1.zw;
  r1.zw = floor(r1.zw);
  r3.w = r7.z + -r0.w;
  r0.w = r1.z * r3.w + r0.w;
  r1.z = r7.w + -r0.w;
  r0.w = r1.w * r1.z + r0.w;
  r0.w = saturate(cb5[20].z * r0.w);
  r1.zw = r2.xy / r2.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r1.z = t11.SampleLevel(s4_s, r1.zw, 0).x;
  r1.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r2.z * cb0[65].x + cb0[65].y;
  r2.y = r2.z * cb0[65].z + -cb0[65].w;
  r2.y = 1 / r2.y;
  r2.x = r2.x + r2.y;
  r1.w = r1.w ? r2.w : r2.x;
  r1.z = r1.z + -r1.w;
  r1.z = saturate(r1.z / cb5[21].x);
  r0.w = r1.z * r0.w;
  r2.xyz = -cb0[67].xyz + r4.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.z);
  r7.xyz = -cb3[2].xyz + cb0[67].xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r5.w = max(cb3[2].x, cb3[2].y);
  r5.w = max(cb3[2].z, r5.w);
  r5.w = saturate(ceil(r5.w));
  r6.w = r5.w * r3.w;
  r3.w = r5.w * r3.w + cb5[21].y;
  r5.w = max(r3.w, r6.w);
  r1.w = r1.w / r5.w;
  r3.w = min(r3.w, r6.w);
  r3.w = r3.w / r5.w;
  r5.w = 1 + r3.w;
  r1.w = saturate(r1.w * r5.w + -r3.w);
  r1.w = r1.w * 3 + -1;
  r1.w = max(cb5[21].z, r1.w);
  r1.w = min(1, r1.w);
  r3.w = saturate(ceil(cb4[2].y));
  r5.w = 1 + -r1.w;
  r1.w = r3.w * r5.w + r1.w;
  r0.w = r1.w * r0.w;
  r7.w = max(0, r0.w);
  r8.xy = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r0.w = t2[r8.x].val[8/4];
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r8.xzw = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xzw = max(float3(0,0,0), r8.xzw);
    r8.xzw = min(float3(0.99000001,0.99000001,0.99000001), r8.xzw);
    r8.xzw = cb0[213].xyz * r8.xzw;
    r9.xyz = (int3)r8.xzw;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r0.w = 1 + cb0[213].w;
    r8.xzw = r8.xzw / r9.www;
    r8.xzw = frac(r8.xzw);
    r8.xzw = cb0[213].www * r8.xzw;
    r8.xzw = r9.xyz * r0.www + r8.xzw;
    r8.xzw = float3(0.5,0.5,0.5) + r8.xzw;
    r8.xzw = cb0[214].xyz * r8.xzw;
    r9.x = t1.SampleLevel(s0_s, r8.xzw, 0).x;
  } else {
    r9.x = 1;
  }
  r0.w = cmp(0 != cb0[183].w);
  r10.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r10.w = 0;
  r11.xyz = cb0[136].xyz;
  r11.w = cb0[137].x;
  r10.xyzw = r0.wwww ? r10.xyzw : r11.xyzw;
  r11.yz = r0.ww ? float2(0,0) : cb0[137].yz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r0.w = v5.w * cb1[3].x + cb1[3].y;
  r0.w = log2(r0.w);
  r0.w = cb1[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r1.w = asint(cb1[1].z) + -1;
  r0.w = min((uint)r1.w, (uint)r0.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r0.w = mad((int)r0.w, asint(cb1[1].y), (int)r1.y);
  r0.w = mad((int)r0.w, asint(cb1[1].x), (int)r1.x);
  r1.x = t2[r8.y].val[12/4];
  if (cb1[0].z != 0) {
    r8.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r8.yzw = r8.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r12.xyzw = cb1[51].xyzw * r4.yyyy;
      r12.xyzw = r4.xxxx * cb1[50].xyzw + r12.xyzw;
      r12.xyzw = r4.zzzz * cb1[52].xyzw + r12.xyzw;
      r12.xyzw = cb1[53].xyzw + r12.xyzw;
      r1.yw = r12.xy / r12.ww;
      r12.xy = cmp(r1.yw >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r1.yw);
      r12.xy = r12.xy ? r13.xy : 0;
      r3.w = r12.y ? r12.x : 0;
      if (r3.w != 0) {
        r1.y = t4.SampleLevel(s2_s, r1.yw, 0).x;
        r1.w = cmp(r12.z < r1.y);
        r1.y = cmp(0.99000001 < r1.y);
        r1.y = (int)r1.y | (int)r1.w;
        r9.x = r1.y ? 1.000000 : 0;
      } else {
        r9.x = 1;
      }
    } else {
      r9.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.y = cb1[9].z;
      r1.w = 0;
      while (true) {
        r3.w = cmp((uint)r1.w >= asuint(cb1[9].z));
        if (r3.w != 0) break;
        r3.w = dot(cb1[10].xyzw, icb[r1.w+0].xyzw);
        r3.w = cmp(r2.w < r3.w);
        if (r3.w != 0) {
          r1.y = r1.w;
          break;
        }
        r1.w = (int)r1.w + 1;
      }
      r1.w = cmp((uint)r1.y < asuint(cb1[9].z));
      if (r1.w != 0) {
        r1.w = (uint)r1.y << 2;
        r12.xyzw = cb1[r1.w+12].xyzw * r4.yyyy;
        r12.xyzw = r4.xxxx * cb1[r1.w+11].xyzw + r12.xyzw;
        r12.xyzw = r4.zzzz * cb1[r1.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb1[r1.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb1[r1.y+27].xy);
        r1.yw = cmp(cb1[r1.y+27].zw >= r13.zw);
        r1.yw = r1.yw ? r12.xy : 0;
        r1.y = r1.w ? r1.y : 0;
        if (r1.y != 0) {
          r13.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r1.yw = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r15.x = t3.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t3.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t3.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t3.SampleLevel(s1_s, r14.zw, 0).x;
          r3.w = r12.z * 4000 + -1;
          r12.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r3.wwww);
          r12.yz = r12.zy + -r12.wx;
          r12.xy = r1.yy * r12.yz + r12.wx;
          r1.y = r12.y + -r12.x;
          r1.y = r1.w * r1.y + r12.x;
        } else {
          r1.y = 1;
        }
      } else {
        r1.y = 1;
      }
    } else {
      r1.y = 1;
    }
    r8.x = 1;
    r1.w = dot(float4(1,1,1,1), r8.xyzw);
    r9.yzw = r8.yzw;
    r3.w = dot(r9.xyzw, float4(1,1,1,1));
    r3.w = -1 + r3.w;
    r1.w = r1.w * r3.w + 1;
    r2.w = saturate(r2.w * cb1[9].x + cb1[9].y);
    r2.w = r2.w * r2.w;
    r1.w = r1.w + -r1.y;
    r1.y = r2.w * r1.w + r1.y;
    r1.w = min(1, r1.y);
    r1.w = r1.y + r1.w;
    r1.w = cmp(0 < r1.w);
    if (r1.w != 0) {
      r1.w = dot(cb1[4].xyz, cb1[4].xyz);
      r1.w = rsqrt(r1.w);
      r8.xyz = cb1[4].xyz * r1.www;
      r1.w = dot(r0.xyz, r8.xyz);
      r2.w = saturate(r1.w);
      r3.w = max(cb0[226].y, cb0[139].x);
      r5.w = dot(r0.xyz, r5.xyz);
      r6.w = dot(r5.xyz, r8.xyz);
      r8.x = r6.w * 2 + 2;
      r8.x = rsqrt(r8.x);
      r1.w = r5.w + r1.w;
      r1.w = saturate(r1.w * r8.x);
      r6.w = saturate(r8.x * r6.w + r8.x);
      r5.w = 9.99999975e-006 + abs(r5.w);
      r5.w = min(1, r5.w);
      r8.xyz = r10.xyz * r2.www;
      r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
      r8.w = r3.w * r3.w;
      r12.x = r8.w * r8.w;
      r12.y = r1.w * r12.x + -r1.w;
      r1.w = r12.y * r1.w + 1;
      r1.w = r1.w * r1.w;
      r1.w = 3.14159274 * r1.w;
      r1.w = r12.x / r1.w;
      r3.w = -r3.w * r3.w + 1;
      r12.x = r5.w * r3.w + r8.w;
      r3.w = r2.w * r3.w + r8.w;
      r3.w = r5.w * r3.w;
      r3.w = r2.w * r12.x + r3.w;
      r3.w = rcp(r3.w);
      r1.w = r3.w * r1.w;
      r3.w = 1 + -r6.w;
      r5.w = r3.w * r3.w;
      r5.w = r5.w * r5.w;
      r6.w = r5.w * r3.w;
      r8.w = saturate(50 * r11.y);
      r3.w = -r5.w * r3.w + 1;
      r11.x = r10.w;
      r12.xyz = r3.www * r11.xyz;
      r12.xyz = r8.www * r6.www + r12.xyz;
      r1.w = 0.5 * r1.w;
      r12.xyz = r1.www * r12.xyz;
      r12.xyz = r12.xyz * r2.www;
      r13.xyz = cb1[5].xyz * r1.yyy;
      r8.xyz = r13.xyz * r8.xyz;
      r12.xyz = r13.yzx * r12.yzx;
      r8.w = r12.z;
    } else {
      r12.xy = float2(0,0);
      r8.xyzw = float4(0,0,0,0);
    }
    r1.y = asuint(cb1[8].z) >> 8;
    r1.y = (int)r1.x & (int)r1.y;
    r8.xyzw = r1.yyyy ? r8.xyzw : float4(0,0,0,0);
    r1.yw = r1.yy ? r12.xy : float2(0,0);
  } else {
    r8.xyzw = float4(0,0,0,0);
    r1.yw = float2(0,0);
  }
  r2.w = (uint)r0.w << 1;
  r2.w = t6.Load(r2.w).x;
  r2.w = min(asuint(cb1[0].x), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.w = t6.Load(r3.w).x;
  r2.w = min(asuint(cb1[0].x), (uint)r2.w);
  r5.w = dot(-r5.xyz, r0.xyz);
  r5.w = r5.w + r5.w;
  r12.xyz = r0.xyz * -r5.www + -r5.xyz;
  r5.w = max(cb0[226].y, cb0[139].x);
  r6.w = r5.w * r5.w;
  r5.w = -r5.w * r5.w + 1;
  r12.w = dot(r0.xyz, r5.xyz);
  r13.x = r12.w + r12.w;
  r13.y = r13.x * r12.w + -1;
  r13.z = 9.99999975e-006 + abs(r12.w);
  r13.z = min(1, r13.z);
  r14.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r13.w = r6.w * r6.w;
  r14.w = saturate(50 * r11.y);
  r9.yw = float2(1,1);
  r11.w = r10.w;
  r15.xyz = r8.xyz;
  r16.x = r8.w;
  r16.yz = r1.yw;
  r10.w = 0;
  while (true) {
    r15.w = cmp((uint)r10.w >= (uint)r2.w);
    if (r15.w != 0) break;
    r15.w = (int)r3.w + (int)r10.w;
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
    r17.xyz = r17.xyz + -r4.xyz;
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
        r19.y = dot(r9.xyyy, r21.xyzw);
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
        r18.w = saturate(r18.w * r5.w);
        r15.w = saturate(r21.w * r15.w);
        r19.z = dot(r0.xyz, r17.xyz);
        r17.x = dot(r5.xyz, r17.xyz);
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
        r15.w = r6.w * r6.w + r15.w;
        r15.w = min(1, r15.w);
        r9.z = r17.x ? r15.w : r13.w;
        r15.w = 0.25 * r18.w;
        r17.x = (uint)r9.z >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r17.x = r17.x * 3 + r18.w;
        r15.w = r17.x * r15.w;
        r17.x = 0.00100000005 + r17.y;
        r15.w = r15.w / r17.x;
        r22.x = r15.w + r9.z;
        r22.y = r9.z / r22.x;
        r19.zw = r19.ww ? r22.xy : r9.zw;
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
        r17.x = r17.z * r9.z + -r17.z;
        r17.x = r17.x * r17.z + 1;
        r17.x = r17.x * r17.x;
        r17.x = 3.14159274 * r17.x;
        r17.x = r9.z / r17.x;
        r15.w = r17.x * r15.w;
        r9.z = sqrt(r9.z);
        r17.x = 1 + -r9.z;
        r17.z = r13.z * r17.x + r9.z;
        r9.z = r19.y * r17.x + r9.z;
        r9.z = r13.z * r9.z;
        r9.z = r19.y * r17.z + r9.z;
        r9.z = rcp(r9.z);
        r9.z = r15.w * r9.z;
        r15.w = 1 + -r17.y;
        r17.x = r15.w * r15.w;
        r17.x = r17.x * r17.x;
        r17.y = r17.x * r15.w;
        r15.w = -r17.x * r15.w + 1;
        r19.yzw = r15.www * r11.wyz;
        r17.xyz = r14.www * r17.yyy + r19.yzw;
        r9.z = 0.5 * r9.z;
        r17.xyz = r9.zzz * r17.xyz;
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
    r9.z = (uint)r20.w >> 8;
    r9.z = (int)r1.x & (int)r9.z;
    r18.xyz = r19.xyz + r15.xyz;
    r17.xyz = r17.xyz + r16.xyz;
    r15.xyz = r9.zzz ? r18.xyz : r15.xyz;
    r16.xyz = r9.zzz ? r17.xyz : r16.xyz;
    r10.w = (int)r10.w + 1;
  }
  r1.xyw = r16.xyz + r15.xyz;
  r5.yzw = r13.xxx * r0.xyz + -r5.xyz;
  r12.w = saturate(r12.w);
  r0.w = (int)r0.w + asint(cb1[0].w);
  r2.w = (uint)r0.w << 1;
  r2.w = t6.Load(r2.w).x;
  r2.w = min(asuint(cb1[0].y), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t6.Load(r0.w).x;
  r3.w = max(0.00100000005, cb0[139].x);
  r3.w = log2(r3.w);
  r3.w = -r3.w * 1.20000005 + 1;
  r6.w = -1 + cb0[195].z;
  r3.w = r6.w + -r3.w;
  r5.x = 0;
  r6.w = 1;
  r8.xyzw = float4(0,0,0,0);
  while (true) {
    r9.x = cmp((uint)r8.w >= (uint)r2.w);
    if (r9.x != 0) break;
    r9.x = cmp(r6.w < 0.00100000005);
    if (r9.x != 0) {
      break;
    }
    r9.x = (int)r0.w + (int)r8.w;
    r9.x = t7.Load(r9.x).x;
    r9.yzw = -cb2[r9.x+0].xyz + r4.xyz;
    r10.w = dot(r9.yzw, r9.yzw);
    r12.x = sqrt(r10.w);
    r12.y = cmp(r12.x < cb2[r9.x+0].w);
    if (r12.y != 0) {
      r12.y = cmp(0 < cb2[r9.x+341].z);
      if (r12.y != 0) {
        r12.y = (uint)r9.x << 2;
        r13.xyz = cb2[r12.y+1024].xyz * r4.yyy;
        r13.xyz = r4.xxx * cb2[r12.y+1023].xyz + r13.xyz;
        r13.xyz = r4.zzz * cb2[r12.y+1025].xyz + r13.xyz;
        r13.xyz = cb2[r12.y+1026].xyz + r13.xyz;
        r14.xyz = cb2[r12.y+1024].xyz * r5.zzz;
        r14.xyz = r5.yyy * cb2[r12.y+1023].xyz + r14.xyz;
        r14.xyz = r5.www * cb2[r12.y+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r13.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r12.y = min(r14.y, r14.z);
        r12.y = min(r14.x, r12.y);
        r14.xyz = r12.yyy * r5.yzw + r4.xyz;
        r15.xyz = cb2[r9.x+682].xyz + cb2[r9.x+0].xyz;
        r15.xyz = -r15.xyz + r14.xyz;
        r12.y = cb2[r9.x+2387].w * 0.699999988;
        r14.xyz = -cb2[r9.x+2387].www * float3(0.5,0.5,0.5) + cb2[r9.x+2387].xyz;
        r16.xyz = cb2[r9.x+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r14.xyz);
        r18.xyz = r13.xyz * cb2[r9.x+2387].xyz + r14.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r14.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb2[r9.x+2387].xyz + -r14.xyz;
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
        r12.x = saturate(r12.x / cb2[r9.x+0].w);
        r12.y = dot(r5.yzw, r9.yzw);
        r10.w = -cb2[r9.x+0].w * cb2[r9.x+0].w + r10.w;
        r10.w = r12.y * r12.y + -r10.w;
        r12.z = cmp(r10.w >= 0);
        r10.w = sqrt(r10.w);
        r10.w = r10.w + -r12.y;
        r9.yzw = r10.www * r5.yzw + r9.yzw;
        r16.yzw = -cb2[r9.x+682].xyz + r9.yzw;
        r9.y = r12.x * 2.5 + -1.5;
        r9.y = max(0, r9.y);
        r9.z = r9.y * r9.y;
        r9.y = -r9.y * 2 + 3;
        r16.x = -r9.z * r9.y + 1;
        r13.xyzw = r12.zzzz ? r16.xyzw : r5.xyzw;
        r15.xyz = r13.yzw;
      }
      r15.w = cb2[r9.x+341].y;
      r15.xyzw = t8.SampleLevel(s3_s, r15.xyzw, r3.w).xyzw;
      r9.xyz = cb2[r9.x+341].xxx * r15.xyz;
      r9.xyz = r9.xyz * r13.xxx;
      r8.xyz = r9.xyz * r6.www + r8.xyz;
      r9.x = -r15.w * r13.x + 1;
      r6.w = r9.x * r6.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r5.xyz = cb0[157].xyz * r8.xyz;
  r0.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r2.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r2.w * r0.w;
  r2.w = min(0, cb0[197].z);
  r2.w = -1 + r2.w;
  r0.w = r0.w * r2.w + 1;
  r5.xyz = r5.xyz * r0.www;
  r8.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r8.x * r8.x;
  r2.w = -9.27999973 * r12.w;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r8.x + r8.y;
  r8.xy = r0.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r11.xyz = r11.wyz;
  r0.w = r14.w * r8.y;
  r8.xyz = r11.xyz * r8.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb1[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r9.xyz = -cb1[123].xyz + r4.xyz;
    r2.w = dot(r9.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r9.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r1.z = rsqrt(r1.z);
      r2.xyz = r2.xyz * r1.zzz;
      r1.z = dot(r2.xyz, -cb1[122].xyz);
      r1.z = r1.z + r1.z;
      r2.xyz = cb1[122].xyz * r1.zzz + r2.xyz;
      r9.xyz = cb1[127].xyz * r0.yyy;
      r9.xyz = r0.xxx * cb1[126].xyz + r9.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r9.xyz;
      r1.z = dot(r2.xyz, r0.xyz);
      r1.z = r1.z + r1.z;
      r0.xyz = r0.xyz * -r1.zzz + r2.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r4.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r2.xyz = cb0[13].xyz * r0.yyy;
      r2.xyz = r0.xxx * cb0[12].xyz + r2.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r2.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.z = asuint(cb0[197].w) << 2;
      r2.xyz = cb1[r1.z+132].xyw * r0.yyy;
      r2.xyz = r0.xxx * cb1[r1.z+131].xyw + r2.xyz;
      r0.xyz = r0.zzz * cb1[r1.z+133].xyw + r2.xyz;
      r0.xyz = cb1[r1.z+134].xyw + r0.xyz;
      r1.z = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.z+139].xy + cb1[r1.z+139].zw;
      r2.xyzw = t9.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r5.xyz = r0.xxx * r5.xyz + r2.xyz;
  }
  r0.xyz = r5.xyz * r8.xyz;
  r2.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r0.xyz * r2.xyz + r1.xyw;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r1.xyz = cb0[5].xyw * r4.yyy;
    r1.xyz = r4.xxx * cb0[4].xyw + r1.xyz;
    r1.xyz = r4.zzz * cb0[6].xyw + r1.xyz;
    r1.xyz = cb0[7].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r1.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r2.z = cb0[208].z * r0.w;
    r1.xyzw = t10.SampleLevel(s0_s, r2.xyz, 0).xyzw;
    r2.x = v4.w * r1.w;
    r1.xyz = v4.xyz * r1.www + r1.xyz;
  } else {
    r1.xyz = v4.xyz;
    r2.x = v4.w;
  }
  r2.yzw = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r2.yzw = r2.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r7.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r2.y].val[0/4];
    r5.y = t2[r2.y].val[0/4+1];
    r5.z = t2[r2.y].val[0/4+2];
    r5.xyz = -r5.xyz + r4.xyz;
    r2.y = t2[r2.z].val[0/4];
    r2.z = t2[r2.z].val[0/4+1];
    r2.w = t2[r2.z].val[0/4+2];
    r2.yzw = float3(1,1,1) + r2.yzw;
    r2.yzw = cmp(r2.yzw < abs(r5.xyz));
    r0.w = (int)r2.z | (int)r2.y;
    r0.w = (int)r2.w | (int)r0.w;
    r1.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r4.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r7.xyzw = r0.wwww ? r4.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r7.xyz + r0.xyz;
  r0.xyz = r0.xyz * r2.xxx + r1.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}
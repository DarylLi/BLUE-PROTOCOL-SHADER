// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

TextureCubeArray<float4> t10 : register(t10);

TextureCube<float4> t9 : register(t9);

Buffer<uint4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s7_s : register(s7);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
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
  r1.z = cb4[2].x * cb0[142].z;
  r7.xy = r1.zz * cb5[16].yw + v2.xy;
  r8.x = r7.x * cb5[16].z + 4;
  r8.y = r7.y * cb5[17].x + 4;
  r1.w = r1.z * cb5[17].w + v2.x;
  r1.z = r1.z * cb5[18].y + v2.y;
  r7.xy = cb5[18].xz * r1.wz;
  r1.z = t14.SampleBias(s6_s, r7.xy, cb0[143].y).x;
  r1.z = -0.5 + r1.z;
  r1.z = r1.z + r1.z;
  r1.zw = r1.zz * cb5[19].yw + cb5[13].xy;
  r1.zw = r8.xy + r1.zw;
  r7.xyzw = t15.SampleBias(s7_s, r1.zw, cb0[143].y).xyzw;
  r1.z = 4 * cb5[20].x;
  r1.z = saturate(r1.z);
  r1.z = 0.200000003 + r1.z;
  r1.z = floor(r1.z);
  r1.w = r7.y + -r7.x;
  r1.z = r1.z * r1.w + r7.x;
  r7.xy = saturate(cb5[20].xx * float2(4,4) + float2(-1,-2));
  r7.xy = float2(0.200000003,0.200000003) + r7.xy;
  r7.xy = floor(r7.xy);
  r1.w = r7.z + -r1.z;
  r1.z = r7.x * r1.w + r1.z;
  r1.w = r7.w + -r1.z;
  r1.z = r7.y * r1.w + r1.z;
  r1.z = saturate(cb5[20].z * r1.z);
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r1.w = t13.SampleLevel(s5_s, r2.xy, 0).x;
  r2.x = r1.w * cb0[65].x + cb0[65].y;
  r1.w = r1.w * cb0[65].z + -cb0[65].w;
  r1.w = 1 / r1.w;
  r1.w = r2.x + r1.w;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.y = r2.y + r2.z;
  r2.x = r2.x ? r2.w : r2.y;
  r1.w = -r2.x + r1.w;
  r1.w = saturate(r1.w / cb5[21].x);
  r1.z = r1.z * r1.w;
  r2.xyz = -cb0[67].xyz + r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r1.w);
  r7.xyz = -cb3[2].xyz + cb0[67].xyz;
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = sqrt(r5.w);
  r6.w = max(cb3[2].x, cb3[2].y);
  r6.w = max(cb3[2].z, r6.w);
  r6.w = saturate(ceil(r6.w));
  r7.x = r6.w * r5.w;
  r5.w = r6.w * r5.w + cb5[21].y;
  r6.w = max(r5.w, r7.x);
  r3.w = r3.w / r6.w;
  r5.w = min(r5.w, r7.x);
  r5.w = r5.w / r6.w;
  r6.w = 1 + r5.w;
  r3.w = saturate(r3.w * r6.w + -r5.w);
  r3.w = r3.w * 3 + -1;
  r3.w = max(cb5[21].z, r3.w);
  r3.w = min(1, r3.w);
  r5.w = saturate(ceil(cb4[2].y));
  r6.w = 1 + -r3.w;
  r3.w = r5.w * r6.w + r3.w;
  r1.z = r3.w * r1.z;
  r7.w = max(0, r1.z);
  r8.xy = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r1.z = t2[r8.x].val[8/4];
  r1.z = cmp(0 < r1.z);
  if (r1.z != 0) {
    r8.xzw = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xzw = max(float3(0,0,0), r8.xzw);
    r8.xzw = min(float3(0.99000001,0.99000001,0.99000001), r8.xzw);
    r8.xzw = cb0[213].xyz * r8.xzw;
    r9.xyz = (int3)r8.xzw;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r1.z = 1 + cb0[213].w;
    r8.xzw = r8.xzw / r9.www;
    r8.xzw = frac(r8.xzw);
    r8.xzw = cb0[213].www * r8.xzw;
    r8.xzw = r9.xyz * r1.zzz + r8.xzw;
    r8.xzw = float3(0.5,0.5,0.5) + r8.xzw;
    r8.xzw = cb0[214].xyz * r8.xzw;
    r9.x = t1.SampleLevel(s0_s, r8.xzw, 0).x;
  } else {
    r9.x = 1;
  }
  r1.z = cmp(0 != cb0[183].w);
  r10.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r10.w = 0;
  r11.xyz = cb0[136].xyz;
  r11.w = cb0[137].x;
  r10.xyzw = r1.zzzz ? r10.xyzw : r11.xyzw;
  r11.yz = r1.zz ? float2(0,0) : cb0[137].yz;
  r12.x = t3[0].val[0/4];
  r12.y = t3[0].val[0/4+1];
  r12.z = t3[0].val[0/4+2];
  r12.w = t3[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r12.xyzw, r0.xyzw);
  r13.x = t3[1].val[0/4];
  r13.y = t3[1].val[0/4+1];
  r13.z = t3[1].val[0/4+2];
  r13.w = t3[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r0.xyzw);
  r13.x = t3[2].val[0/4];
  r13.y = t3[2].val[0/4+1];
  r13.z = t3[2].val[0/4+2];
  r13.w = t3[2].val[0/4+3];
  r12.z = dot(r13.xyzw, r0.xyzw);
  r13.xyzw = r0.xyzz * r0.yzzx;
  r14.x = t3[3].val[0/4];
  r14.y = t3[3].val[0/4+1];
  r14.z = t3[3].val[0/4+2];
  r14.w = t3[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r13.xyzw);
  r15.x = t3[4].val[0/4];
  r15.y = t3[4].val[0/4+1];
  r15.z = t3[4].val[0/4+2];
  r15.w = t3[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t3[5].val[0/4];
  r15.y = t3[5].val[0/4+1];
  r15.z = t3[5].val[0/4+2];
  r15.w = t3[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r13.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r8.x = t3[6].val[0/4];
  r8.z = t3[6].val[0/4+1];
  r8.w = t3[6].val[0/4+2];
  r12.xyz = r14.xyz + r12.xyz;
  r8.xzw = r8.xzw * r0.www + r12.xyz;
  r8.xzw = max(float3(0,0,0), r8.xzw);
  r8.xzw = cb0[187].xyz * r8.xzw;
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r0.w = v5.w * cb1[3].x + cb1[3].y;
  r0.w = log2(r0.w);
  r0.w = cb1[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r1.z = asint(cb1[1].z) + -1;
  r0.w = min((uint)r1.z, (uint)r0.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r0.w = mad((int)r0.w, asint(cb1[1].y), (int)r1.y);
  r0.w = mad((int)r0.w, asint(cb1[1].x), (int)r1.x);
  r1.x = t2[r8.y].val[12/4];
  if (cb1[0].z != 0) {
    r12.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r12.yzw = r12.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r13.xyzw = cb1[51].xyzw * r4.yyyy;
      r13.xyzw = r4.xxxx * cb1[50].xyzw + r13.xyzw;
      r13.xyzw = r4.zzzz * cb1[52].xyzw + r13.xyzw;
      r13.xyzw = cb1[53].xyzw + r13.xyzw;
      r1.yz = r13.xy / r13.ww;
      r13.xy = cmp(r1.yz >= float2(0,0));
      r14.xy = cmp(float2(1,1) >= r1.yz);
      r13.xy = r13.xy ? r14.xy : 0;
      r3.w = r13.y ? r13.x : 0;
      if (r3.w != 0) {
        r1.y = t5.SampleLevel(s2_s, r1.yz, 0).x;
        r1.z = cmp(r13.z < r1.y);
        r1.y = cmp(0.99000001 < r1.y);
        r1.y = (int)r1.y | (int)r1.z;
        r9.x = r1.y ? 1.000000 : 0;
      } else {
        r9.x = 1;
      }
    } else {
      r9.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.y = cb1[9].z;
      r1.z = 0;
      while (true) {
        r3.w = cmp((uint)r1.z >= asuint(cb1[9].z));
        if (r3.w != 0) break;
        r3.w = dot(cb1[10].xyzw, icb[r1.z+0].xyzw);
        r3.w = cmp(r2.w < r3.w);
        if (r3.w != 0) {
          r1.y = r1.z;
          break;
        }
        r1.z = (int)r1.z + 1;
      }
      r1.z = cmp((uint)r1.y < asuint(cb1[9].z));
      if (r1.z != 0) {
        r1.z = (uint)r1.y << 2;
        r13.xyzw = cb1[r1.z+12].xyzw * r4.yyyy;
        r13.xyzw = r4.xxxx * cb1[r1.z+11].xyzw + r13.xyzw;
        r13.xyzw = r4.zzzz * cb1[r1.z+13].xyzw + r13.xyzw;
        r13.xyzw = cb1[r1.z+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb1[r1.y+27].xy);
        r1.yz = cmp(cb1[r1.y+27].zw >= r14.zw);
        r1.yz = r1.yz ? r13.xy : 0;
        r1.y = r1.z ? r1.y : 0;
        if (r1.y != 0) {
          r14.xyzw = r14.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r1.yz = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r16.x = t4.SampleLevel(s1_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r16.y = t4.SampleLevel(s1_s, r14.xy, 0).x;
          r16.z = t4.SampleLevel(s1_s, r14.zw, 0).x;
          r16.w = t4.SampleLevel(s1_s, r15.zw, 0).x;
          r3.w = r13.z * 4000 + -1;
          r13.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r3.wwww);
          r13.yz = r13.zy + -r13.wx;
          r13.xy = r1.yy * r13.yz + r13.wx;
          r1.y = r13.y + -r13.x;
          r1.y = r1.z * r1.y + r13.x;
        } else {
          r1.y = 1;
        }
      } else {
        r1.y = 1;
      }
    } else {
      r1.y = 1;
    }
    r12.x = 1;
    r1.z = dot(float4(1,1,1,1), r12.xyzw);
    r9.yzw = r12.yzw;
    r3.w = dot(r9.xyzw, float4(1,1,1,1));
    r3.w = -1 + r3.w;
    r1.z = r1.z * r3.w + 1;
    r2.w = saturate(r2.w * cb1[9].x + cb1[9].y);
    r2.w = r2.w * r2.w;
    r1.z = r1.z + -r1.y;
    r1.y = r2.w * r1.z + r1.y;
    r1.z = min(1, r1.y);
    r1.z = r1.y + r1.z;
    r1.z = cmp(0 < r1.z);
    if (r1.z != 0) {
      r1.z = dot(cb1[4].xyz, cb1[4].xyz);
      r1.z = rsqrt(r1.z);
      r12.xyz = cb1[4].xyz * r1.zzz;
      r1.z = dot(r0.xyz, r12.xyz);
      r2.w = saturate(r1.z);
      r3.w = max(cb0[226].y, cb0[139].x);
      r5.w = dot(r0.xyz, r5.xyz);
      r6.w = dot(r5.xyz, r12.xyz);
      r8.y = r6.w * 2 + 2;
      r8.y = rsqrt(r8.y);
      r1.z = r5.w + r1.z;
      r1.z = saturate(r1.z * r8.y);
      r6.w = saturate(r8.y * r6.w + r8.y);
      r5.w = 9.99999975e-006 + abs(r5.w);
      r5.w = min(1, r5.w);
      r12.xyz = r10.xyz * r2.www;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r8.y = r3.w * r3.w;
      r12.w = r8.y * r8.y;
      r13.x = r1.z * r12.w + -r1.z;
      r1.z = r13.x * r1.z + 1;
      r1.z = r1.z * r1.z;
      r1.z = 3.14159274 * r1.z;
      r1.z = r12.w / r1.z;
      r3.w = -r3.w * r3.w + 1;
      r12.w = r5.w * r3.w + r8.y;
      r3.w = r2.w * r3.w + r8.y;
      r3.w = r5.w * r3.w;
      r3.w = r2.w * r12.w + r3.w;
      r3.w = rcp(r3.w);
      r1.z = r3.w * r1.z;
      r3.w = 1 + -r6.w;
      r5.w = r3.w * r3.w;
      r5.w = r5.w * r5.w;
      r6.w = r5.w * r3.w;
      r8.y = saturate(50 * r11.y);
      r3.w = -r5.w * r3.w + 1;
      r11.x = r10.w;
      r13.xyz = r3.www * r11.xyz;
      r13.xyz = r8.yyy * r6.www + r13.xyz;
      r1.z = 0.5 * r1.z;
      r13.xyz = r1.zzz * r13.xyz;
      r13.xyz = r13.xyz * r2.www;
      r14.xyz = cb1[5].xyz * r1.yyy;
      r12.xyz = r14.xyz * r12.xyz;
      r13.xyz = r14.yzx * r13.yzx;
      r12.w = r13.z;
    } else {
      r13.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r1.y = asuint(cb1[8].z) >> 8;
    r1.y = (int)r1.x & (int)r1.y;
    r12.xyzw = r1.yyyy ? r12.xyzw : float4(0,0,0,0);
    r1.yz = r1.yy ? r13.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r1.yz = float2(0,0);
  }
  r2.w = (uint)r0.w << 1;
  r2.w = t7.Load(r2.w).x;
  r2.w = min(asuint(cb1[0].x), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.w = t7.Load(r3.w).x;
  r2.w = min(asuint(cb1[0].x), (uint)r2.w);
  r5.w = dot(-r5.xyz, r0.xyz);
  r5.w = r5.w + r5.w;
  r13.xyz = r0.xyz * -r5.www + -r5.xyz;
  r5.w = max(cb0[226].y, cb0[139].x);
  r6.w = r5.w * r5.w;
  r5.w = -r5.w * r5.w + 1;
  r8.y = dot(r0.xyz, r5.xyz);
  r13.w = r8.y + r8.y;
  r14.x = r13.w * r8.y + -1;
  r14.y = 9.99999975e-006 + abs(r8.y);
  r14.y = min(1, r14.y);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r14.z = r6.w * r6.w;
  r14.w = saturate(50 * r11.y);
  r9.yw = float2(1,1);
  r11.w = r10.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r1.yz;
  r10.w = 0;
  while (true) {
    r15.w = cmp((uint)r10.w >= (uint)r2.w);
    if (r15.w != 0) break;
    r15.w = (int)r3.w + (int)r10.w;
    r15.w = t8.Load(r15.w).x;
    r16.w = (int)r15.w * 6;
    r18.xyzw = t6.Load(r16.w).xyzw;
    r16.w = mad((int)r15.w, 6, 1);
    r19.xyzw = t6.Load(r16.w).xyzw;
    r20.xy = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r21.xyzw = t6.Load(r20.x).xyzw;
    r20.xyzw = t6.Load(r20.y).xyzw;
    r16.w = cmp(r19.w == 0.000000);
    r17.w = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r4.xyz;
    r22.x = dot(r18.xyz, r18.xyz);
    r22.y = rsqrt(r22.x);
    r22.yzw = r22.yyy * r18.xyz;
    r23.x = r18.w * r18.w;
    r22.x = r23.x * r22.x;
    r22.x = -r22.x * r22.x + 1;
    r22.x = max(0, r22.x);
    r22.x = r22.x * r22.x;
    r23.xyz = r18.xyz * r18.www;
    r18.w = dot(r23.xyz, r23.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r16.w ? r22.x : r18.w;
    r19.w = dot(r22.yzw, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r17.w = r17.w ? r19.w : r18.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r21.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r21.w >> 4;
        if (1 == 0) r19.w = 0; else if (1+4 < 32) {         r19.w = (uint)r21.w << (32-(1 + 4)); r19.w = (uint)r19.w >> (32-1);        } else r19.w = (uint)r21.w >> 4;
        r23.x = r19.w ? 1 : 0;
        r21.xyz = (int3)r18.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r23.xyzw, float4(1,1,1,1));
        r19.w = dot(r22.xyzw, float4(1,1,1,1));
        r20.x = dot(r9.xyyy, r22.xyzw);
        r20.x = -1 + r20.x;
        r19.w = r19.w * r20.x + 1;
        r20.xy = r19.ww * r18.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r18.w = r20.x + r20.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r15.w = mad((int)r15.w, 6, 4);
        r22.xyzw = t6.Load(r15.w).xyzw;
        r15.w = f16tof32(r20.w);
        r18.w = 0.5 * r15.w;
        r21.xyz = -r18.www * r22.xyz + r18.xyz;
        r18.xyz = r18.www * r22.xyz + r18.xyz;
        r18.w = cmp(0 < r15.w);
        if (r18.w != 0) {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = dot(r18.xyz, r18.xyz);
          r19.w = rsqrt(r19.w);
          r20.y = rsqrt(r20.y);
          r20.w = r20.y * r19.w;
          r22.x = dot(r21.xyz, r18.xyz);
          r22.x = r22.x * r20.w;
          r22.y = r22.x * 0.5 + r20.w;
          r22.y = 0.5 + r22.y;
          r23.y = r20.w / r22.y;
          r20.w = dot(r0.xyz, r21.xyz);
          r22.y = dot(r0.xyz, r18.xyz);
          r20.y = r22.y * r20.y;
          r19.w = r20.w * r19.w + r20.y;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = 1 + r19.w;
          r23.y = rcp(r20.y);
          r19.w = rsqrt(r19.w);
          r24.xyz = r21.xyz * r19.www;
          r23.x = dot(r0.xyz, r24.xyz);
          r22.x = 1;
        }
        r19.w = cmp(0 < r20.z);
        r20.y = r20.z * r20.z;
        r20.y = saturate(r20.y * r23.y);
        r20.y = sqrt(r20.y);
        r20.w = cmp(r23.x < r20.y);
        r22.y = max(r23.x, -r20.y);
        r22.y = r22.y + r20.y;
        r22.y = r22.y * r22.y;
        r20.y = 4 * r20.y;
        r20.y = r22.y / r20.y;
        r20.y = r20.w ? r20.y : r23.x;
        r19.w = saturate(r19.w ? r20.y : r23.x);
        r16.w = r16.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.y = dot(r13.xyz, r18.xyz);
        r23.xyz = r20.yyy * r13.xyz + -r18.xyz;
        r20.w = dot(r21.xyz, r23.xyz);
        r20.y = r20.y * r20.y;
        r15.w = r15.w * r15.w + -r20.y;
        r15.w = saturate(r20.w / r15.w);
        r18.xyz = r15.www * r18.xyz + r21.xyz;
        r18.xyz = r18.www ? r18.xyz : r21.xyz;
        r15.w = dot(r18.xyz, r18.xyz);
        r15.w = rsqrt(r15.w);
        r18.xyz = r18.xyz * r15.www;
        r18.w = r20.z * r15.w;
        r18.w = saturate(r18.w * r5.w);
        r15.w = saturate(r22.w * r15.w);
        r20.y = dot(r0.xyz, r18.xyz);
        r18.x = dot(r5.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.y + r8.y;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.z = cmp(0 < r18.w);
        if (r20.z != 0) {
          r20.w = -r18.w * r18.w + 1;
          r20.w = sqrt(r20.w);
          r21.x = dot(r8.yy, r20.yy);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.w);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r8.y);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r18.w;
            r22.y = -r21.y * r20.y + r8.y;
            r22.z = r22.y * r21.z;
            r21.y = -r21.y * r18.x + r14.x;
            r22.w = r20.y * r20.y;
            r22.w = -r8.y * r8.y + -r22.w;
            r22.w = 1 + r22.w;
            r22.w = -r18.x * r18.x + r22.w;
            r21.x = saturate(r21.x * r18.x + r22.w);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.w = r21.x * r8.y;
            r23.x = r22.w + r22.w;
            r23.y = r20.y * r20.w + r8.y;
            r21.z = r21.z * r22.y + r23.y;
            r22.y = r18.x * r20.w + r21.y;
            r22.y = 1 + r22.y;
            r23.zw = r22.yy * r21.xz;
            r24.x = r23.x * r21.z;
            r22.w = r21.z * r22.w;
            r22.w = 0.5 * r22.w;
            r22.w = r23.z * -0.5 + r22.w;
            r24.y = -r23.z * 2 + r24.x;
            r24.x = r24.x * r24.y;
            r23.z = r23.z * r23.z + r24.x;
            r24.x = r22.y * r22.y;
            r22.y = r18.x * r20.w + r22.y;
            r22.y = r22.y * -0.5 + -0.5;
            r22.yw = r23.ww * r22.yw;
            r22.y = r23.y * r24.x + r22.y;
            r21.z = r21.z * r22.y + r23.z;
            r22.y = r22.w + r22.w;
            r23.y = r22.w * r22.w;
            r23.y = r21.z * r21.z + r23.y;
            r22.y = r22.y / r23.y;
            r21.z = r22.y * r21.z;
            r22.y = -r22.y * r22.w + 1;
            r21.x = r21.z * r21.x;
            r21.x = r22.y * r22.z + r21.x;
            r21.z = r21.z * r23.x;
            r21.y = r22.y * r21.y + r21.z;
            r20.y = r20.y * r20.w + r21.x;
            r18.x = r18.x * r20.w + r21.y;
            r20.w = r18.x * 2 + 2;
            r20.w = rsqrt(r20.w);
            r20.y = r20.y + r8.y;
            r18.z = saturate(r20.y * r20.w);
            r18.y = saturate(r20.w * r18.x + r20.w);
          }
        }
        r16.w = r16.w * r19.w;
        r21.xyz = r16.www * r15.xyz;
        r18.x = cmp(0 < r15.w);
        r15.w = r15.w * r15.w;
        r20.y = r18.y * 3.5999999 + 0.400000006;
        r15.w = r15.w / r20.y;
        r15.w = r6.w * r6.w + r15.w;
        r15.w = min(1, r15.w);
        r9.z = r18.x ? r15.w : r14.z;
        r15.w = 0.25 * r18.w;
        r18.x = (uint)r9.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r18.w;
        r15.w = r18.x * r15.w;
        r18.x = 0.00100000005 + r18.y;
        r15.w = r15.w / r18.x;
        r23.x = r15.w + r9.z;
        r23.y = r9.z / r23.x;
        r20.yz = r20.zz ? r23.xy : r9.zw;
        r15.w = cmp(r22.x < 1);
        r18.w = 1.00010002 + -r22.x;
        r20.w = 1 + r22.x;
        r18.w = r18.w / r20.w;
        r18.w = sqrt(r18.w);
        r20.w = 0.25 * r18.w;
        r22.x = (uint)r20.y >> 1;
        r22.x = (int)r22.x + 0x1fbd1df5;
        r18.w = r22.x * 3 + r18.w;
        r18.w = r20.w * r18.w;
        r18.x = r18.w / r18.x;
        r18.x = r20.y + r18.x;
        r18.x = r20.y / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.z * r18.x;
        r15.w = r15.w ? r18.x : r20.z;
        r18.x = r18.z * r9.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r9.z / r18.x;
        r15.w = r18.x * r15.w;
        r9.z = sqrt(r9.z);
        r18.x = 1 + -r9.z;
        r18.z = r14.y * r18.x + r9.z;
        r9.z = r19.w * r18.x + r9.z;
        r9.z = r14.y * r9.z;
        r9.z = r19.w * r18.z + r9.z;
        r9.z = rcp(r9.z);
        r9.z = r15.w * r9.z;
        r15.w = 1 + -r18.y;
        r18.x = r15.w * r15.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r15.w;
        r15.w = -r18.x * r15.w + 1;
        r18.xzw = r15.www * r11.wyz;
        r18.xyz = r14.www * r18.yyy + r18.xzw;
        r9.z = 0.5 * r9.z;
        r18.xyz = r9.zzz * r18.xyz;
        r18.xyz = r18.xyz * r16.www;
        r19.xyz = r19.xyz * r17.www;
        r19.xyz = r19.xyz * r20.xxx;
        r20.xyz = r21.xyz * r19.xyz;
        r18.xyz = r19.xyz * r18.xyz;
      } else {
        r20.xyz = float3(0,0,0);
        r18.xyz = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r18.xyz = float3(0,0,0);
    }
    r9.z = (uint)r21.w >> 8;
    r9.z = (int)r1.x & (int)r9.z;
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r9.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r9.zzz ? r18.xyz : r17.xyz;
    r10.w = (int)r10.w + 1;
  }
  r1.xyz = r17.xyz + r16.xyz;
  r5.yzw = r13.www * r0.xyz + -r5.xyz;
  r8.y = saturate(r8.y);
  r0.w = (int)r0.w + asint(cb1[0].w);
  r2.w = (uint)r0.w << 1;
  r2.w = t7.Load(r2.w).x;
  r2.w = min(asuint(cb1[0].y), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t7.Load(r0.w).x;
  r3.w = max(0.00100000005, cb0[139].x);
  r3.w = log2(r3.w);
  r3.w = -r3.w * 1.20000005 + 1;
  r6.w = -1 + cb0[195].z;
  r6.w = r6.w + -r3.w;
  r5.x = 0;
  r9.xyzw = float4(0,0,0,1);
  r10.w = 0;
  while (true) {
    r12.x = cmp((uint)r10.w >= (uint)r2.w);
    if (r12.x != 0) break;
    r12.x = cmp(r9.w < 0.00100000005);
    if (r12.x != 0) {
      break;
    }
    r12.x = (int)r0.w + (int)r10.w;
    r12.x = t8.Load(r12.x).x;
    r12.yzw = -cb2[r12.x+0].xyz + r4.xyz;
    r13.x = dot(r12.yzw, r12.yzw);
    r13.y = sqrt(r13.x);
    r13.z = cmp(r13.y < cb2[r12.x+0].w);
    if (r13.z != 0) {
      r13.z = cmp(0 < cb2[r12.x+341].z);
      if (r13.z != 0) {
        r13.z = (uint)r12.x << 2;
        r14.xyz = cb2[r13.z+1024].xyz * r4.yyy;
        r14.xyz = r4.xxx * cb2[r13.z+1023].xyz + r14.xyz;
        r14.xyz = r4.zzz * cb2[r13.z+1025].xyz + r14.xyz;
        r14.xyz = cb2[r13.z+1026].xyz + r14.xyz;
        r15.xyz = cb2[r13.z+1024].xyz * r5.zzz;
        r15.xyz = r5.yyy * cb2[r13.z+1023].xyz + r15.xyz;
        r15.xyz = r5.www * cb2[r13.z+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.xyz * r15.xyz + -r15.xyz;
        r15.xyz = -r14.xyz * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r13.z = min(r15.y, r15.z);
        r13.z = min(r15.x, r13.z);
        r15.xyz = r13.zzz * r5.yzw + r4.xyz;
        r16.xyz = cb2[r12.x+682].xyz + cb2[r12.x+0].xyz;
        r15.xyz = -r16.xyz + r15.xyz;
        r13.z = cb2[r12.x+2387].w * 0.699999988;
        r16.xyz = -cb2[r12.x+2387].www * float3(0.5,0.5,0.5) + cb2[r12.x+2387].xyz;
        r17.xyz = cb2[r12.x+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r16.xyz);
        r19.xyz = r14.xyz * cb2[r12.x+2387].xyz + r16.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.xyz = r14.xyz * cb2[r12.x+2387].xyz + -r16.xyz;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r13.w = dot(r18.xyz, float3(1,1,1));
        r14.x = dot(r14.xyz, float3(1,1,1));
        r13.w = r14.x + r13.w;
        r13.z = 1 / r13.z;
        r13.z = saturate(r13.w * r13.z);
        r13.w = r13.z * -2 + 3;
        r13.z = r13.z * r13.z;
        r16.x = -r13.w * r13.z + 1;
      } else {
        r13.y = saturate(r13.y / cb2[r12.x+0].w);
        r13.z = dot(r5.yzw, r12.yzw);
        r13.x = -cb2[r12.x+0].w * cb2[r12.x+0].w + r13.x;
        r13.x = r13.z * r13.z + -r13.x;
        r13.w = cmp(r13.x >= 0);
        r13.x = sqrt(r13.x);
        r13.x = r13.x + -r13.z;
        r12.yzw = r13.xxx * r5.yzw + r12.yzw;
        r17.yzw = -cb2[r12.x+682].xyz + r12.yzw;
        r12.y = r13.y * 2.5 + -1.5;
        r12.y = max(0, r12.y);
        r12.z = r12.y * r12.y;
        r12.y = -r12.y * 2 + 3;
        r17.x = -r12.z * r12.y + 1;
        r16.xyzw = r13.wwww ? r17.xyzw : r5.xyzw;
        r15.xyz = r16.yzw;
      }
      r15.w = cb2[r12.x+341].y;
      r13.xyzw = t10.SampleLevel(s4_s, r15.xyzw, r6.w).xyzw;
      r12.xyz = cb2[r12.x+341].xxx * r13.xyz;
      r12.xyz = r12.xyz * r16.xxx;
      r9.xyz = r12.xyz * r9.www + r9.xyz;
      r12.x = -r13.w * r16.x + 1;
      r9.w = r12.x * r9.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r9.xyz = cb0[157].xyz * r9.xyz;
  r0.w = cmp(0 < cb1[116].y);
  if (r0.w != 0) {
    r0.w = cb1[116].x + -r3.w;
    r0.w = -1 + r0.w;
    r5.xyz = t9.SampleLevel(s3_s, r5.yzw, r0.w).xyz;
    r5.xyz = cb0[187].xyz * r5.xyz;
    r0.w = cmp(cb1[116].z < 1);
    r12.xyz = r9.www * r5.xyz + r9.xyz;
    r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
    r9.xyz = r0.www ? r12.xyz : r9.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r2.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r2.w * r0.w;
  r2.w = min(0, cb0[197].z);
  r2.w = -1 + r2.w;
  r0.w = r0.w * r2.w + 1;
  r5.xyz = r9.www * r5.xyz;
  r5.xyz = r9.xyz * r0.www + r5.xyz;
  r9.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r9.x * r9.x;
  r2.w = -9.27999973 * r8.y;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r9.x + r9.y;
  r9.xy = r0.ww * float2(-1.03999996,1.03999996) + r9.zw;
  r11.xyz = r11.wyz;
  r0.w = r14.w * r9.y;
  r9.xyz = r11.xyz * r9.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb1[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb1[123].xyz + r4.xyz;
    r2.w = dot(r12.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r12.xyz, cb1[125].xyz);
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
      r1.w = rsqrt(r1.w);
      r2.xyz = r2.xyz * r1.www;
      r1.w = dot(r2.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r2.xyz = cb1[122].xyz * r1.www + r2.xyz;
      r12.xyz = cb1[127].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb1[126].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r12.xyz;
      r1.w = dot(r2.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r2.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r4.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r2.xyz = cb0[13].xyz * r0.yyy;
      r2.xyz = r0.xxx * cb0[12].xyz + r2.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r2.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r2.xyz = cb1[r1.w+132].xyw * r0.yyy;
      r2.xyz = r0.xxx * cb1[r1.w+131].xyw + r2.xyz;
      r0.xyz = r0.zzz * cb1[r1.w+133].xyw + r2.xyz;
      r0.xyz = cb1[r1.w+134].xyw + r0.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r2.xyzw = t11.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r5.xyz = r0.xxx * r5.xyz + r2.xyz;
  }
  r0.xyz = r5.xyz * r9.xyz;
  r2.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r0.xyz * r2.xyz + r1.xyz;
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
    r1.xyzw = t12.SampleLevel(s0_s, r2.xyz, 0).xyzw;
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
  r0.xyz = r8.xzw * r10.xyz + r0.xyz;
  r0.xyz = r0.xyz + r7.xyz;
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
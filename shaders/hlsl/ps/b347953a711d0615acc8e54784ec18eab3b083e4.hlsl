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

cbuffer cb6 : register(b6)
{
  float4 cb6[22];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  r6.xyz = cb6[2].xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r6.yzw = r0.xyz * r0.www;
  r7.xyz = cb6[3].xyz + -cb4[0].xxx;
  r7.xyz = cb6[15].zzz * r7.xyz + cb4[0].xxx;
  r1.z = cb5[2].x * cb0[142].z;
  r8.xy = r1.zz * cb6[16].yw + v2.xy;
  r9.x = r8.x * cb6[16].z + 4;
  r9.y = r8.y * cb6[17].x + 4;
  r1.w = r1.z * cb6[17].w + v2.x;
  r1.z = r1.z * cb6[18].y + v2.y;
  r8.xy = cb6[18].xz * r1.wz;
  r1.z = t14.SampleBias(s6_s, r8.xy, cb0[143].y).x;
  r1.z = -0.5 + r1.z;
  r1.z = r1.z + r1.z;
  r1.zw = r1.zz * cb6[19].yw + cb6[13].xy;
  r1.zw = r9.xy + r1.zw;
  r8.xyzw = t15.SampleBias(s7_s, r1.zw, cb0[143].y).xyzw;
  r1.z = 4 * cb6[20].x;
  r1.z = saturate(r1.z);
  r1.z = 0.200000003 + r1.z;
  r1.z = floor(r1.z);
  r1.w = r8.y + -r8.x;
  r1.z = r1.z * r1.w + r8.x;
  r8.xy = saturate(cb6[20].xx * float2(4,4) + float2(-1,-2));
  r8.xy = float2(0.200000003,0.200000003) + r8.xy;
  r8.xy = floor(r8.xy);
  r1.w = r8.z + -r1.z;
  r1.z = r8.x * r1.w + r1.z;
  r1.w = r8.w + -r1.z;
  r1.z = r8.y * r1.w + r1.z;
  r1.z = saturate(cb6[20].z * r1.z);
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
  r1.w = saturate(r1.w / cb6[21].x);
  r1.z = r1.z * r1.w;
  r2.xyz = -cb0[67].xyz + r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r1.w);
  r8.xyz = -cb4[2].xyz + cb0[67].xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r5.w);
  r7.w = max(cb4[2].x, cb4[2].y);
  r7.w = max(cb4[2].z, r7.w);
  r7.w = saturate(ceil(r7.w));
  r8.x = r7.w * r5.w;
  r5.w = r7.w * r5.w + cb6[21].y;
  r7.w = max(r5.w, r8.x);
  r3.w = r3.w / r7.w;
  r5.w = min(r5.w, r8.x);
  r5.w = r5.w / r7.w;
  r7.w = 1 + r5.w;
  r3.w = saturate(r3.w * r7.w + -r5.w);
  r3.w = r3.w * 3 + -1;
  r3.w = max(cb6[21].z, r3.w);
  r3.w = min(1, r3.w);
  r5.w = saturate(ceil(cb5[2].y));
  r7.w = 1 + -r3.w;
  r3.w = r5.w * r7.w + r3.w;
  r1.z = r3.w * r1.z;
  r8.w = max(0, r1.z);
  r1.z = cmp(0 < cb0[215].x);
  r9.xy = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r3.w = t2[r9.x].val[8/4];
  r3.w = cmp(0 < r3.w);
  if (r3.w != 0) {
    r9.xzw = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r9.xzw = max(float3(0,0,0), r9.xzw);
    r9.xzw = min(float3(0.99000001,0.99000001,0.99000001), r9.xzw);
    r9.xzw = cb0[213].xyz * r9.xzw;
    r10.xyz = (int3)r9.xzw;
    r10.w = 0;
    r10.xyzw = t0.Load(r10.xyzw).xyzw;
    r10.xyzw = (uint4)r10.xyzw;
    r3.w = 1 + cb0[213].w;
    r9.xzw = r9.xzw / r10.www;
    r9.xzw = frac(r9.xzw);
    r9.xzw = cb0[213].www * r9.xzw;
    r9.xzw = r10.xyz * r3.www + r9.xzw;
    r9.xzw = float3(0.5,0.5,0.5) + r9.xzw;
    r9.xzw = cb0[214].xyz * r9.xzw;
    r10.x = t1.SampleLevel(s0_s, r9.xzw, 0).x;
  } else {
    r3.w = mad((int)v3.x, 36, 18);
    r3.w = t2[r3.w].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r1.z ? r3.w : 0;
    r10.x = r3.w ? cb2[5].x : 1;
  }
  r3.w = cmp(0 != cb0[183].w);
  r11.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r11.w = 0;
  r12.xyz = cb0[136].xyz;
  r12.w = cb0[137].x;
  r11.xyzw = r3.wwww ? r11.xyzw : r12.xyzw;
  r12.yz = r3.ww ? float2(0,0) : cb0[137].yz;
  r9.xzw = r6.zwz * r6.zwy;
  r13.yw = r6.ww * r6.zy;
  r3.w = r6.y * r6.y + -r9.x;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.zwy;
  r13.xz = r9.wz * float2(1,3) + float2(0,-1);
  r13.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r3.w = 0.429042608 * r3.w;
  r14.x = 0.886227548;
  r5.w = dot(cb2[6].xyzw, r14.xyzw);
  r7.w = dot(cb2[9].xyzw, r13.xyzw);
  r5.w = r7.w + r5.w;
  r15.x = cb2[12].x * r3.w + r5.w;
  r5.w = dot(cb2[7].xyzw, r14.xyzw);
  r7.w = dot(cb2[10].xyzw, r13.xyzw);
  r5.w = r7.w + r5.w;
  r15.y = cb2[12].y * r3.w + r5.w;
  r5.w = dot(cb2[8].xyzw, r14.xyzw);
  r7.w = dot(cb2[11].xyzw, r13.xyzw);
  r5.w = r7.w + r5.w;
  r15.z = cb2[12].z * r3.w + r5.w;
  r9.xzw = max(float3(0,0,0), r15.xyz);
  r9.xzw = r1.zzz ? r9.xzw : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r6.x = 1;
    r13.xyzw = r1.zzzz ? cb2[4].wxyz : r6.xyzw;
    r1.z = 1 + -r13.x;
    r1.z = -r1.z * r1.z + 1;
    r0.xyz = r0.xyz * r0.www + -r13.yzw;
    r0.xyz = r1.zzz * r0.xyz + r13.yzw;
    r3.w = saturate(dot(r13.yzw, r6.yzw));
    r5.w = 1 + -r3.w;
    r13.y = r1.z * r5.w + r3.w;
  } else {
    r0.xyz = r6.yzw;
    r13.xy = float2(1,1);
  }
  r14.x = t3[0].val[0/4];
  r14.y = t3[0].val[0/4+1];
  r14.z = t3[0].val[0/4+2];
  r14.w = t3[0].val[0/4+3];
  r0.w = 1;
  r14.x = dot(r14.xyzw, r0.xyzw);
  r15.x = t3[1].val[0/4];
  r15.y = t3[1].val[0/4+1];
  r15.z = t3[1].val[0/4+2];
  r15.w = t3[1].val[0/4+3];
  r14.y = dot(r15.xyzw, r0.xyzw);
  r15.x = t3[2].val[0/4];
  r15.y = t3[2].val[0/4+1];
  r15.z = t3[2].val[0/4+2];
  r15.w = t3[2].val[0/4+3];
  r14.z = dot(r15.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t3[3].val[0/4];
  r16.y = t3[3].val[0/4+1];
  r16.z = t3[3].val[0/4+2];
  r16.w = t3[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t3[4].val[0/4];
  r17.y = t3[4].val[0/4+1];
  r17.z = t3[4].val[0/4+2];
  r17.w = t3[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t3[5].val[0/4];
  r17.y = t3[5].val[0/4+1];
  r17.z = t3[5].val[0/4+2];
  r17.w = t3[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r14.xyz = r16.xyz + r14.xyz;
  r0.xyz = r0.yzw * r0.xxx + r14.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xzw * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xy = cb0[131].zw * r1.xy;
  r1.z = v5.w * cb1[3].x + cb1[3].y;
  r1.z = log2(r1.z);
  r1.z = cb1[3].z * r1.z;
  r1.z = max(0, r1.z);
  r1.xyz = (uint3)r1.xyz;
  r3.w = asint(cb1[1].z) + -1;
  r1.z = min((uint)r3.w, (uint)r1.z);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r1.z, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r1.y = t2[r9.y].val[12/4];
  if (cb1[0].z != 0) {
    r9.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r9.yzw = r9.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r13.xyzw = cb1[51].xyzw * r4.yyyy;
      r13.xyzw = r4.xxxx * cb1[50].xyzw + r13.xyzw;
      r13.xyzw = r4.zzzz * cb1[52].xyzw + r13.xyzw;
      r13.xyzw = cb1[53].xyzw + r13.xyzw;
      r13.xy = r13.xy / r13.ww;
      r14.xy = cmp(r13.xy >= float2(0,0));
      r14.zw = cmp(float2(1,1) >= r13.xy);
      r14.xy = r14.zw ? r14.xy : 0;
      r1.z = r14.y ? r14.x : 0;
      if (r1.z != 0) {
        r1.z = t5.SampleLevel(s2_s, r13.xy, 0).x;
        r3.w = cmp(r13.z < r1.z);
        r1.z = cmp(0.99000001 < r1.z);
        r1.z = (int)r1.z | (int)r3.w;
        r10.x = r1.z ? 1.000000 : 0;
      } else {
        r10.x = 1;
      }
    } else {
      r10.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.z = cb1[9].z;
      r3.w = 0;
      while (true) {
        r5.w = cmp((uint)r3.w >= asuint(cb1[9].z));
        if (r5.w != 0) break;
        r5.w = dot(cb1[10].xyzw, icb[r3.w+0].xyzw);
        r5.w = cmp(r2.w < r5.w);
        if (r5.w != 0) {
          r1.z = r3.w;
          break;
        }
        r3.w = (int)r3.w + 1;
      }
      r3.w = cmp((uint)r1.z < asuint(cb1[9].z));
      if (r3.w != 0) {
        r3.w = (uint)r1.z << 2;
        r13.xyzw = cb1[r3.w+12].xyzw * r4.yyyy;
        r13.xyzw = r4.xxxx * cb1[r3.w+11].xyzw + r13.xyzw;
        r13.xyzw = r4.zzzz * cb1[r3.w+13].xyzw + r13.xyzw;
        r13.xyzw = cb1[r3.w+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb1[r1.z+27].xy);
        r15.xy = cmp(cb1[r1.z+27].zw >= r14.zw);
        r13.xy = r13.xy ? r15.xy : 0;
        r1.z = r13.y ? r13.x : 0;
        if (r1.z != 0) {
          r14.xyzw = r14.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r13.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r16.x = t4.SampleLevel(s1_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r16.y = t4.SampleLevel(s1_s, r14.xy, 0).x;
          r16.z = t4.SampleLevel(s1_s, r14.zw, 0).x;
          r16.w = t4.SampleLevel(s1_s, r15.zw, 0).x;
          r1.z = r13.z * 4000 + -1;
          r14.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r1.zzzz);
          r13.zw = r14.zy + -r14.wx;
          r13.xz = r13.xx * r13.zw + r14.wx;
          r1.z = r13.z + -r13.x;
          r1.z = r13.y * r1.z + r13.x;
        } else {
          r1.z = 1;
        }
      } else {
        r1.z = 1;
      }
    } else {
      r1.z = 1;
    }
    r9.x = 1;
    r3.w = dot(float4(1,1,1,1), r9.xyzw);
    r10.yzw = r9.yzw;
    r5.w = dot(r10.xyzw, float4(1,1,1,1));
    r5.w = -1 + r5.w;
    r3.w = r3.w * r5.w + 1;
    r2.w = saturate(r2.w * cb1[9].x + cb1[9].y);
    r2.w = r2.w * r2.w;
    r3.w = r3.w + -r1.z;
    r1.z = r2.w * r3.w + r1.z;
    r2.w = min(1, r1.z);
    r2.w = r2.w + r1.z;
    r2.w = cmp(0 < r2.w);
    if (r2.w != 0) {
      r2.w = dot(cb1[4].xyz, cb1[4].xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = cb1[4].xyz * r2.www;
      r2.w = dot(r6.yzw, r9.xyz);
      r3.w = saturate(r2.w);
      r5.w = max(cb0[226].y, cb0[139].x);
      r6.x = dot(r6.yzw, r5.xyz);
      r7.w = dot(r5.xyz, r9.xyz);
      r9.x = r7.w * 2 + 2;
      r9.x = rsqrt(r9.x);
      r2.w = r6.x + r2.w;
      r2.w = saturate(r2.w * r9.x);
      r7.w = saturate(r9.x * r7.w + r9.x);
      r6.x = 9.99999975e-006 + abs(r6.x);
      r6.x = min(1, r6.x);
      r9.xyz = r11.xyz * r3.www;
      r9.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
      r9.w = r5.w * r5.w;
      r13.x = r9.w * r9.w;
      r13.y = r2.w * r13.x + -r2.w;
      r2.w = r13.y * r2.w + 1;
      r2.w = r2.w * r2.w;
      r2.w = 3.14159274 * r2.w;
      r2.w = r13.x / r2.w;
      r5.w = -r5.w * r5.w + 1;
      r13.x = r6.x * r5.w + r9.w;
      r5.w = r3.w * r5.w + r9.w;
      r5.w = r6.x * r5.w;
      r5.w = r3.w * r13.x + r5.w;
      r5.w = rcp(r5.w);
      r2.w = r5.w * r2.w;
      r5.w = 1 + -r7.w;
      r6.x = r5.w * r5.w;
      r6.x = r6.x * r6.x;
      r7.w = r6.x * r5.w;
      r9.w = saturate(50 * r12.y);
      r5.w = -r6.x * r5.w + 1;
      r12.x = r11.w;
      r13.xyz = r5.www * r12.xyz;
      r13.xyz = r9.www * r7.www + r13.xyz;
      r2.w = 0.5 * r2.w;
      r13.xyz = r2.www * r13.xyz;
      r13.xyz = r13.xyz * r3.www;
      r14.xyz = cb1[5].xyz * r1.zzz;
      r9.xyz = r14.xyz * r9.xyz;
      r13.xyz = r14.yzx * r13.yzx;
      r9.w = r13.z;
    } else {
      r13.xy = float2(0,0);
      r9.xyzw = float4(0,0,0,0);
    }
    r1.z = asuint(cb1[8].z) >> 8;
    r1.z = (int)r1.y & (int)r1.z;
    r9.xyzw = r1.zzzz ? r9.xyzw : float4(0,0,0,0);
    r13.xy = r1.zz ? r13.xy : float2(0,0);
  } else {
    r9.xyzw = float4(0,0,0,0);
    r13.xy = float2(0,0);
  }
  r1.z = (uint)r1.x << 1;
  r1.z = t7.Load(r1.z).x;
  r1.z = min(asuint(cb1[0].x), (uint)r1.z);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.w = t7.Load(r2.w).x;
  r1.z = min(asuint(cb1[0].x), (uint)r1.z);
  r3.w = dot(-r5.xyz, r6.yzw);
  r3.w = r3.w + r3.w;
  r14.xyz = r6.yzw * -r3.www + -r5.xyz;
  r3.w = max(cb0[226].y, cb0[139].x);
  r5.w = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r6.x = dot(r6.yzw, r5.xyz);
  r7.w = r6.x + r6.x;
  r13.z = r7.w * r6.x + -1;
  r13.w = 9.99999975e-006 + abs(r6.x);
  r13.w = min(1, r13.w);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
  r14.w = r5.w * r5.w;
  r15.w = saturate(50 * r12.y);
  r10.yw = float2(1,1);
  r12.w = r11.w;
  r16.xyz = r9.xyz;
  r17.x = r9.w;
  r17.yz = r13.xy;
  r11.w = 0;
  while (true) {
    r16.w = cmp((uint)r11.w >= (uint)r1.z);
    if (r16.w != 0) break;
    r16.w = (int)r2.w + (int)r11.w;
    r16.w = t8.Load(r16.w).x;
    r17.w = (int)r16.w * 6;
    r18.xyzw = t6.Load(r17.w).xyzw;
    r17.w = mad((int)r16.w, 6, 1);
    r19.xyzw = t6.Load(r17.w).xyzw;
    r20.xy = mad((int2)r16.ww, int2(6,6), int2(2,3));
    r21.xyzw = t6.Load(r20.x).xyzw;
    r20.xyzw = t6.Load(r20.y).xyzw;
    r17.w = cmp(r19.w == 0.000000);
    r22.x = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r4.xyz;
    r22.y = dot(r18.xyz, r18.xyz);
    r22.z = rsqrt(r22.y);
    r23.xyz = r22.zzz * r18.xyz;
    r22.z = r18.w * r18.w;
    r22.y = r22.y * r22.z;
    r22.y = -r22.y * r22.y + 1;
    r22.y = max(0, r22.y);
    r22.y = r22.y * r22.y;
    r24.xyz = r18.xyz * r18.www;
    r18.w = dot(r24.xyz, r24.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r17.w ? r22.y : r18.w;
    r19.w = dot(r23.xyz, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r18.w = r22.x ? r19.w : r18.w;
    r19.w = cmp(0 < r18.w);
    if (r19.w != 0) {
      r19.w = (int)r21.w & 255;
      r19.w = r19.w ? 1 : 0;
      if (r19.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r19.w = (uint)r21.w >> 4;
        if (1 == 0) r20.x = 0; else if (1+4 < 32) {         r20.x = (uint)r21.w << (32-(1 + 4)); r20.x = (uint)r20.x >> (32-1);        } else r20.x = (uint)r21.w >> 4;
        r23.x = r20.x ? 1 : 0;
        r21.xyz = (int3)r19.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r19.w = dot(r23.xyzw, float4(1,1,1,1));
        r20.x = dot(r22.xyzw, float4(1,1,1,1));
        r20.y = dot(r10.xyyy, r22.xyzw);
        r20.y = -1 + r20.y;
        r20.x = r20.x * r20.y + 1;
        r20.xy = r20.xx * r19.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r19.w = r20.x + r20.y;
      r19.w = cmp(0 < r19.w);
      if (r19.w != 0) {
        r16.w = mad((int)r16.w, 6, 4);
        r22.xyzw = t6.Load(r16.w).xyzw;
        r16.w = f16tof32(r20.w);
        r19.w = 0.5 * r16.w;
        r21.xyz = -r19.www * r22.xyz + r18.xyz;
        r18.xyz = r19.www * r22.xyz + r18.xyz;
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = dot(r18.xyz, r18.xyz);
          r20.y = rsqrt(r20.y);
          r20.w = rsqrt(r20.w);
          r22.x = r20.y * r20.w;
          r22.y = dot(r21.xyz, r18.xyz);
          r22.y = r22.y * r22.x;
          r22.z = r22.y * 0.5 + r22.x;
          r22.z = 0.5 + r22.z;
          r23.y = r22.x / r22.z;
          r22.x = dot(r6.yzw, r21.xyz);
          r22.z = dot(r6.yzw, r18.xyz);
          r20.w = r22.z * r20.w;
          r20.y = r22.x * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r6.yzw, r24.xyz);
          r22.y = 1;
        }
        r20.y = cmp(0 < r20.z);
        r20.w = r20.z * r20.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r22.x = cmp(r23.x < r20.w);
        r22.z = max(r23.x, -r20.w);
        r22.z = r22.z + r20.w;
        r22.z = r22.z * r22.z;
        r20.w = 4 * r20.w;
        r20.w = r22.z / r20.w;
        r20.w = r22.x ? r20.w : r23.x;
        r20.y = saturate(r20.y ? r20.w : r23.x);
        r17.w = r17.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.w = dot(r14.xyz, r18.xyz);
        r23.xyz = r20.www * r14.xyz + -r18.xyz;
        r22.x = dot(r21.xyz, r23.xyz);
        r20.w = r20.w * r20.w;
        r16.w = r16.w * r16.w + -r20.w;
        r16.w = saturate(r22.x / r16.w);
        r18.xyz = r16.www * r18.xyz + r21.xyz;
        r18.xyz = r19.www ? r18.xyz : r21.xyz;
        r16.w = dot(r18.xyz, r18.xyz);
        r16.w = rsqrt(r16.w);
        r18.xyz = r18.xyz * r16.www;
        r19.w = r20.z * r16.w;
        r19.w = saturate(r19.w * r3.w);
        r16.w = saturate(r22.w * r16.w);
        r20.z = dot(r6.yzw, r18.xyz);
        r18.x = dot(r5.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r6.x;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r21.x = -r19.w * r19.w + 1;
          r21.x = sqrt(r21.x);
          r21.y = dot(r6.xx, r20.zz);
          r21.z = r21.y + -r18.x;
          r22.x = cmp(r21.z >= r21.x);
          if (r22.x != 0) {
            r18.z = 1;
            r18.y = abs(r6.x);
          } else {
            r22.x = -r21.z * r21.z + 1;
            r22.x = rsqrt(r22.x);
            r22.x = r22.x * r19.w;
            r22.z = -r21.z * r20.z + r6.x;
            r22.w = r22.x * r22.z;
            r21.z = -r21.z * r18.x + r13.z;
            r23.x = r20.z * r20.z;
            r23.x = -r6.x * r6.x + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r18.x * r18.x + r23.x;
            r21.y = saturate(r21.y * r18.x + r23.x);
            r21.y = sqrt(r21.y);
            r21.yz = r22.xx * r21.yz;
            r23.x = r21.y * r6.x;
            r23.y = r23.x + r23.x;
            r23.z = r20.z * r21.x + r6.x;
            r22.x = r22.x * r22.z + r23.z;
            r22.z = r18.x * r21.x + r21.z;
            r22.z = 1 + r22.z;
            r23.w = r22.z * r21.y;
            r24.x = r22.x * r22.z;
            r24.y = r23.y * r22.x;
            r23.x = r22.x * r23.x;
            r23.x = 0.5 * r23.x;
            r23.x = r23.w * -0.5 + r23.x;
            r23.x = r24.x * r23.x;
            r24.z = -r23.w * 2 + r24.y;
            r24.y = r24.y * r24.z;
            r23.w = r23.w * r23.w + r24.y;
            r24.y = r22.z * r22.z;
            r22.z = r18.x * r21.x + r22.z;
            r22.z = r22.z * -0.5 + -0.5;
            r22.z = r24.x * r22.z;
            r22.z = r23.z * r24.y + r22.z;
            r22.x = r22.x * r22.z + r23.w;
            r22.z = r23.x + r23.x;
            r23.z = r23.x * r23.x;
            r23.z = r22.x * r22.x + r23.z;
            r22.z = r22.z / r23.z;
            r22.x = r22.z * r22.x;
            r22.z = -r22.z * r23.x + 1;
            r21.y = r22.x * r21.y;
            r21.y = r22.z * r22.w + r21.y;
            r22.x = r22.x * r23.y;
            r21.z = r22.z * r21.z + r22.x;
            r20.z = r20.z * r21.x + r21.y;
            r18.x = r18.x * r21.x + r21.z;
            r21.x = r18.x * 2 + 2;
            r21.x = rsqrt(r21.x);
            r20.z = r20.z + r6.x;
            r18.z = saturate(r20.z * r21.x);
            r18.y = saturate(r21.x * r18.x + r21.x);
          }
        }
        r17.w = r17.w * r20.y;
        r21.xyz = r17.www * r15.xyz;
        r18.x = cmp(0 < r16.w);
        r16.w = r16.w * r16.w;
        r20.z = r18.y * 3.5999999 + 0.400000006;
        r16.w = r16.w / r20.z;
        r16.w = r5.w * r5.w + r16.w;
        r16.w = min(1, r16.w);
        r10.z = r18.x ? r16.w : r14.w;
        r16.w = 0.25 * r19.w;
        r18.x = (uint)r10.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r19.w;
        r16.w = r18.x * r16.w;
        r18.x = 0.00100000005 + r18.y;
        r16.w = r16.w / r18.x;
        r23.x = r16.w + r10.z;
        r23.y = r10.z / r23.x;
        r20.zw = r20.ww ? r23.xy : r10.zw;
        r16.w = cmp(r22.y < 1);
        r19.w = 1.00010002 + -r22.y;
        r22.x = 1 + r22.y;
        r19.w = r19.w / r22.x;
        r19.w = sqrt(r19.w);
        r22.x = 0.25 * r19.w;
        r22.y = (uint)r20.z >> 1;
        r22.y = (int)r22.y + 0x1fbd1df5;
        r19.w = r22.y * 3 + r19.w;
        r19.w = r22.x * r19.w;
        r18.x = r19.w / r18.x;
        r18.x = r20.z + r18.x;
        r18.x = r20.z / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.w * r18.x;
        r16.w = r16.w ? r18.x : r20.w;
        r18.x = r18.z * r10.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r10.z / r18.x;
        r16.w = r18.x * r16.w;
        r10.z = sqrt(r10.z);
        r18.x = 1 + -r10.z;
        r18.z = r13.w * r18.x + r10.z;
        r10.z = r20.y * r18.x + r10.z;
        r10.z = r13.w * r10.z;
        r10.z = r20.y * r18.z + r10.z;
        r10.z = rcp(r10.z);
        r10.z = r16.w * r10.z;
        r16.w = 1 + -r18.y;
        r18.x = r16.w * r16.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.w;
        r16.w = -r18.x * r16.w + 1;
        r20.yzw = r16.www * r12.wyz;
        r18.xyz = r15.www * r18.yyy + r20.yzw;
        r10.z = 0.5 * r10.z;
        r18.xyz = r10.zzz * r18.xyz;
        r18.xyz = r18.xyz * r17.www;
        r19.xyz = r19.xyz * r18.www;
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
    r10.z = (uint)r21.w >> 8;
    r10.z = (int)r1.y & (int)r10.z;
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r10.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r10.zzz ? r18.xyz : r17.xyz;
    r11.w = (int)r11.w + 1;
  }
  r9.xyz = r17.xyz + r16.xyz;
  r5.yzw = r7.www * r6.yzw + -r5.xyz;
  r6.x = saturate(r6.x);
  r1.x = (int)r1.x + asint(cb1[0].w);
  r1.y = (uint)r1.x << 1;
  r1.y = t7.Load(r1.y).x;
  r1.y = min(asuint(cb1[0].y), (uint)r1.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t7.Load(r1.x).x;
  r1.z = max(0.00100000005, cb0[139].x);
  r1.z = log2(r1.z);
  r1.z = -r1.z * 1.20000005 + 1;
  r2.w = -1 + cb0[195].z;
  r2.w = r2.w + -r1.z;
  r5.x = 0;
  r3.w = 1;
  r7.w = 0;
  r9.w = 1;
  r10.xyzw = float4(0,0,0,0);
  while (true) {
    r11.w = cmp((uint)r10.w >= (uint)r1.y);
    if (r11.w != 0) break;
    r11.w = cmp(r3.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r1.x + (int)r10.w;
    r11.w = t8.Load(r11.w).x;
    r13.xyz = -cb3[r11.w+0].xyz + r4.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb3[r11.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb3[r11.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r11.w << 2;
        r15.xyz = cb3[r14.y+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb3[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb3[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb3[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb3[r14.y+1024].xyz * r5.zzz;
        r16.xyz = r5.yyy * cb3[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r5.www * cb3[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r5.yzw + r4.xyz;
        r16.xyz = cb3[r11.w+682].xyz + cb3[r11.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb3[r11.w+2387].w * 0.699999988;
        r17.xyz = -cb3[r11.w+2387].www * float3(0.5,0.5,0.5) + cb3[r11.w+2387].xyz;
        r18.xyz = cb3[r11.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb3[r11.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb3[r11.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xyz, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r17.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb3[r11.w+0].w);
        r14.y = dot(r5.yzw, r13.xyz);
        r13.w = -cb3[r11.w+0].w * cb3[r11.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r5.yzw + r13.xyz;
        r13.yzw = -cb3[r11.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r17.xyzw = r14.zzzz ? r13.xyzw : r5.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb3[r11.w+341].y;
      r13.xyzw = t10.SampleLevel(s4_s, r16.xyzw, r2.w).xyzw;
      r13.xyz = cb3[r11.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r17.xxx;
      r10.xyz = r13.xyz * r3.www + r10.xyz;
      r13.x = -r13.w * r17.x + 1;
      r3.w = r13.x * r3.w;
      r11.w = cb3[r11.w+682].w * r17.x;
      r7.w = r11.w * r9.w + r7.w;
      r11.w = 1 + -r17.x;
      r9.w = r11.w * r9.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r10.xyz = cb0[157].xyz * r10.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.w = r7.w * r1.x;
  r1.x = cmp(0 < cb1[116].y);
  if (r1.x != 0) {
    r1.x = cb1[116].x + -r1.z;
    r1.x = -1 + r1.x;
    r1.xyz = t9.SampleLevel(s3_s, r5.yzw, r1.x).xyz;
    r2.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = cb1[117].x * r2.w;
    r1.xyz = cb0[187].xyz * r1.xyz;
    r5.x = cmp(cb1[116].z < 1);
    r13.xyz = r3.www * r1.xyz + r10.xyz;
    r13.w = r2.w * r9.w + r10.w;
    r1.xyz = r5.xxx ? float3(0,0,0) : r1.xyz;
    r10.xyzw = r5.xxxx ? r13.xyzw : r10.xyzw;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r2.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r5.x = r2.w * -2 + 3;
  r2.w = r2.w * r2.w;
  r2.w = r5.x * r2.w;
  r5.x = max(9.99999975e-005, r10.w);
  r0.w = r0.w / r5.x;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r2.w * r0.w + 1;
  r1.xyz = r3.www * r1.xyz;
  r1.xyz = r10.xyz * r0.www + r1.xyz;
  r5.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r5.x * r5.x;
  r2.w = -9.27999973 * r6.x;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r5.x + r5.y;
  r5.xy = r0.ww * float2(-1.03999996,1.03999996) + r5.zw;
  r12.xyz = r12.wyz;
  r0.w = r15.w * r5.y;
  r5.xyz = r12.xyz * r5.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb1[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r10.xyz = -cb1[123].xyz + r4.xyz;
    r2.w = dot(r10.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r10.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r6.yzw);
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
      r10.xyz = cb1[127].xyz * r6.zzz;
      r6.xyz = r6.yyy * cb1[126].xyz + r10.xyz;
      r6.xyz = r6.www * cb1[128].xyz + r6.xyz;
      r1.w = dot(r2.xyz, r6.xyz);
      r1.w = r1.w + r1.w;
      r2.xyz = r6.xyz * -r1.www + r2.xyz;
      r2.xyz = r2.xyz * cb1[129].zzz + r4.xyz;
      r2.xyz = cb0[70].xyz + r2.xyz;
      r6.xyz = cb0[13].xyz * r2.yyy;
      r2.xyw = r2.xxx * cb0[12].xyz + r6.xyz;
      r2.xyz = r2.zzz * cb0[14].xyz + r2.xyw;
      r2.xyz = cb0[15].xyz + r2.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r6.xyz = cb1[r1.w+132].xyw * r2.yyy;
      r2.xyw = r2.xxx * cb1[r1.w+131].xyw + r6.xyz;
      r2.xyz = r2.zzz * cb1[r1.w+133].xyw + r2.xyw;
      r2.xyz = cb1[r1.w+134].xyw + r2.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r2.xy = r2.xy / r2.zz;
      r2.xy = max(-cb1[141].xy, r2.xy);
      r2.xy = min(cb1[141].xy, r2.xy);
      r2.xy = r2.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r2.xyzw = t11.SampleLevel(s4_s, r2.xy, 0).xyzw;
      r0.w = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r1.xyz = r0.www * r1.xyz + r2.xyz;
  }
  r1.xyz = r1.xyz * r5.xyz;
  r2.xyz = r12.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r12.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r12.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r1.xyz = r1.xyz * r2.xyz + r9.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r2.xyz = cb0[5].xyw * r4.yyy;
    r2.xyz = r4.xxx * cb0[4].xyw + r2.xyz;
    r2.xyz = r4.zzz * cb0[6].xyw + r2.xyz;
    r2.xyz = cb0[7].xyw + r2.xyz;
    r2.xy = r2.xy / r2.zz;
    r5.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r2.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r5.z = cb0[208].z * r0.w;
    r2.xyzw = t12.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v4.w * r2.w;
    r2.xyz = v4.xyz * r2.www + r2.xyz;
  } else {
    r2.xyz = v4.xyz;
    r5.x = v4.w;
  }
  r5.yzw = r12.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r5.yzw = r5.yzw + -r1.xyz;
  r1.xyz = cb0[145].yyy * r5.yzw + r1.xyz;
  r8.xyz = max(float3(0,0,0), r7.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = -r6.xyz + r4.xyz;
    r5.y = t2[r5.z].val[0/4];
    r5.z = t2[r5.z].val[0/4+1];
    r5.w = t2[r5.z].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r5.yzw = cmp(r5.yzw < abs(r6.xyz));
    r0.w = (int)r5.z | (int)r5.y;
    r0.w = (int)r5.w | (int)r0.w;
    r1.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r4.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r8.xyzw = r0.wwww ? r4.yzwx : r8.xyzw;
    o0.w = r8.w;
  } else {
    o0.w = r8.w;
  }
  r0.xyz = r0.xyz * r11.xyz + r1.xyz;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xyz = r0.xyz * r5.xxx + r2.xyz;
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
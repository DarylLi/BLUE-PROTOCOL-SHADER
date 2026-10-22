// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

TextureCubeArray<float4> t15 : register(t15);

Buffer<uint4> t14 : register(t14);

Buffer<uint4> t13 : register(t13);

Buffer<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

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
  r0.w = cb4[2].x * cb0[142].z;
  r1.zw = r0.ww * cb5[16].yw + v2.xy;
  r7.x = r1.z * cb5[16].z + 4;
  r7.y = r1.w * cb5[17].x + 4;
  r1.z = r0.w * cb5[17].w + v2.x;
  r8.x = cb5[18].x * r1.z;
  r0.w = r0.w * cb5[18].y + v2.y;
  r8.y = cb5[18].z * r0.w;
  r0.w = t19.SampleBias(s5_s, r8.xy, cb0[143].y).x;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r1.zw = r0.ww * cb5[19].yw + cb5[13].xy;
  r1.zw = r7.xy + r1.zw;
  r7.xyzw = t20.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
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
  r1.z = t18.SampleLevel(s4_s, r1.zw, 0).x;
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
  r8.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
  r8.xyz = cb0[213].xyz * r8.xyz;
  r9.xyz = (int3)r8.xyz;
  r9.w = 0;
  r9.xyzw = t0.Load(r9.xyzw).xyzw;
  r9.xyzw = (uint4)r9.xyzw;
  r0.w = 1 + cb0[213].w;
  r8.xyz = r8.xyz / r9.www;
  r8.xyz = frac(r8.xyz);
  r8.xyz = cb0[213].www * r8.xyz;
  r8.xyz = r9.xyz * r0.www + r8.xyz;
  r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
  r8.xyz = cb0[214].xyz * r8.xyz;
  r9.xy = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r0.w = t9[r9.x].val[8/4];
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r10.x = t8.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r10.x = 1;
  }
  r0.w = cmp(0 != cb0[183].w);
  r11.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r11.w = 0;
  r12.xyz = cb0[136].xyz;
  r12.w = cb0[137].x;
  r11.xyzw = r0.wwww ? r11.xyzw : r12.xyzw;
  r12.yz = r0.ww ? float2(0,0) : cb0[137].yz;
  r13.xyz = t1.SampleLevel(s0_s, r8.xyz, 0).zxy;
  r14.xyzw = t2.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t4.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t6.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r13.yyyy;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = r15.xyzw * r13.zzzz;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = r16.xyzw * r13.xxxx;
  r16.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r16.wxyz;
  r17.xyzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = t5.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = t7.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = r17.xyzw * r13.yyyy;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyzw = r18.xyzw * r13.zzzz;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r8.xyzw = r8.xyzw * r13.xxxx;
  r8.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r8.xyzw;
  r9.xzw = r0.yzy * r0.yzx;
  r19.yw = r0.zz * r0.yx;
  r0.w = r0.x * r0.x + -r9.x;
  r20.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r19.xz = r9.wz * float2(1,3) + float2(0,-1);
  r19.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r19.xyzw;
  r0.w = 0.429042608 * r0.w;
  r21.x = r13.y;
  r21.yzw = r14.yzw;
  r20.x = 0.886227548;
  r1.w = dot(r21.xyzw, r20.xyzw);
  r14.yzw = r17.xyz;
  r3.w = dot(r14.xyzw, r19.xyzw);
  r1.w = r3.w + r1.w;
  r14.x = r17.w * r0.w + r1.w;
  r17.x = r13.z;
  r17.yzw = r15.yzw;
  r1.w = dot(r17.xyzw, r20.xyzw);
  r15.yzw = r18.xyz;
  r3.w = dot(r15.xyzw, r19.xyzw);
  r1.w = r3.w + r1.w;
  r14.y = r18.w * r0.w + r1.w;
  r13.yzw = r16.yzw;
  r1.w = dot(r13.xyzw, r20.xyzw);
  r16.yzw = r8.xyz;
  r3.w = dot(r16.xyzw, r19.xyzw);
  r1.w = r3.w + r1.w;
  r14.z = r8.w * r0.w + r1.w;
  r8.xyz = max(float3(0,0,0), r14.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v5.w * cb1[3].x + cb1[3].y;
  r1.w = log2(r1.w);
  r1.w = cb1[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r3.w = asint(cb1[1].z) + -1;
  r1.w = min((uint)r3.w, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r1.w, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r1.y = t9[r9.y].val[12/4];
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
      r1.w = r14.y ? r14.x : 0;
      if (r1.w != 0) {
        r1.w = t11.SampleLevel(s2_s, r13.xy, 0).x;
        r3.w = cmp(r13.z < r1.w);
        r1.w = cmp(0.99000001 < r1.w);
        r1.w = (int)r1.w | (int)r3.w;
        r10.x = r1.w ? 1.000000 : 0;
      } else {
        r10.x = 1;
      }
    } else {
      r10.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.w = cb1[9].z;
      r3.w = 0;
      while (true) {
        r5.w = cmp((uint)r3.w >= asuint(cb1[9].z));
        if (r5.w != 0) break;
        r5.w = dot(cb1[10].xyzw, icb[r3.w+0].xyzw);
        r5.w = cmp(r2.w < r5.w);
        if (r5.w != 0) {
          r1.w = r3.w;
          break;
        }
        r3.w = (int)r3.w + 1;
      }
      r3.w = cmp((uint)r1.w < asuint(cb1[9].z));
      if (r3.w != 0) {
        r3.w = (uint)r1.w << 2;
        r13.xyzw = cb1[r3.w+12].xyzw * r4.yyyy;
        r13.xyzw = r4.xxxx * cb1[r3.w+11].xyzw + r13.xyzw;
        r13.xyzw = r4.zzzz * cb1[r3.w+13].xyzw + r13.xyzw;
        r13.xyzw = cb1[r3.w+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb1[r1.w+27].xy);
        r15.xy = cmp(cb1[r1.w+27].zw >= r14.zw);
        r13.xy = r13.xy ? r15.xy : 0;
        r1.w = r13.y ? r13.x : 0;
        if (r1.w != 0) {
          r14.xyzw = r14.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r13.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r16.x = t10.SampleLevel(s1_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r16.y = t10.SampleLevel(s1_s, r14.xy, 0).x;
          r16.z = t10.SampleLevel(s1_s, r14.zw, 0).x;
          r16.w = t10.SampleLevel(s1_s, r15.zw, 0).x;
          r1.w = r13.z * 4000 + -1;
          r14.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r1.wwww);
          r13.zw = r14.zy + -r14.wx;
          r13.xz = r13.xx * r13.zw + r14.wx;
          r1.w = r13.z + -r13.x;
          r1.w = r13.y * r1.w + r13.x;
        } else {
          r1.w = 1;
        }
      } else {
        r1.w = 1;
      }
    } else {
      r1.w = 1;
    }
    r9.x = 1;
    r3.w = dot(float4(1,1,1,1), r9.xyzw);
    r10.yzw = r9.yzw;
    r5.w = dot(r10.xyzw, float4(1,1,1,1));
    r5.w = -1 + r5.w;
    r3.w = r3.w * r5.w + 1;
    r2.w = saturate(r2.w * cb1[9].x + cb1[9].y);
    r2.w = r2.w * r2.w;
    r3.w = r3.w + -r1.w;
    r1.w = r2.w * r3.w + r1.w;
    r2.w = min(1, r1.w);
    r2.w = r2.w + r1.w;
    r2.w = cmp(0 < r2.w);
    if (r2.w != 0) {
      r2.w = dot(cb1[4].xyz, cb1[4].xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = cb1[4].xyz * r2.www;
      r2.w = dot(r0.xyz, r9.xyz);
      r3.w = saturate(r2.w);
      r5.w = max(cb0[226].y, cb0[139].x);
      r6.w = dot(r0.xyz, r5.xyz);
      r8.w = dot(r5.xyz, r9.xyz);
      r9.x = r8.w * 2 + 2;
      r9.x = rsqrt(r9.x);
      r2.w = r6.w + r2.w;
      r2.w = saturate(r2.w * r9.x);
      r8.w = saturate(r9.x * r8.w + r9.x);
      r6.w = 9.99999975e-006 + abs(r6.w);
      r6.w = min(1, r6.w);
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
      r13.x = r6.w * r5.w + r9.w;
      r5.w = r3.w * r5.w + r9.w;
      r5.w = r6.w * r5.w;
      r5.w = r3.w * r13.x + r5.w;
      r5.w = rcp(r5.w);
      r2.w = r5.w * r2.w;
      r5.w = 1 + -r8.w;
      r6.w = r5.w * r5.w;
      r6.w = r6.w * r6.w;
      r8.w = r6.w * r5.w;
      r9.w = saturate(50 * r12.y);
      r5.w = -r6.w * r5.w + 1;
      r12.x = r11.w;
      r13.xyz = r5.www * r12.xyz;
      r13.xyz = r9.www * r8.www + r13.xyz;
      r2.w = 0.5 * r2.w;
      r13.xyz = r2.www * r13.xyz;
      r13.xyz = r13.xyz * r3.www;
      r14.xyz = cb1[5].xyz * r1.www;
      r9.xyz = r14.xyz * r9.xyz;
      r13.xyz = r14.yzx * r13.yzx;
      r9.w = r13.z;
    } else {
      r13.xy = float2(0,0);
      r9.xyzw = float4(0,0,0,0);
    }
    r1.w = asuint(cb1[8].z) >> 8;
    r1.w = (int)r1.y & (int)r1.w;
    r9.xyzw = r1.wwww ? r9.xyzw : float4(0,0,0,0);
    r13.xy = r1.ww ? r13.xy : float2(0,0);
  } else {
    r9.xyzw = float4(0,0,0,0);
    r13.xy = float2(0,0);
  }
  r1.w = (uint)r1.x << 1;
  r1.w = t13.Load(r1.w).x;
  r1.w = min(asuint(cb1[0].x), (uint)r1.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.w = t13.Load(r2.w).x;
  r1.w = min(asuint(cb1[0].x), (uint)r1.w);
  r3.w = dot(-r5.xyz, r0.xyz);
  r3.w = r3.w + r3.w;
  r14.xyz = r0.xyz * -r3.www + -r5.xyz;
  r3.w = max(cb0[226].y, cb0[139].x);
  r5.w = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r6.w = dot(r0.xyz, r5.xyz);
  r8.w = r6.w + r6.w;
  r13.z = r8.w * r6.w + -1;
  r13.w = 9.99999975e-006 + abs(r6.w);
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
    r16.w = cmp((uint)r11.w >= (uint)r1.w);
    if (r16.w != 0) break;
    r16.w = (int)r2.w + (int)r11.w;
    r16.w = t14.Load(r16.w).x;
    r17.w = (int)r16.w * 6;
    r18.xyzw = t12.Load(r17.w).xyzw;
    r17.w = mad((int)r16.w, 6, 1);
    r19.xyzw = t12.Load(r17.w).xyzw;
    r20.xy = mad((int2)r16.ww, int2(6,6), int2(2,3));
    r21.xyzw = t12.Load(r20.x).xyzw;
    r20.xyzw = t12.Load(r20.y).xyzw;
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
        r22.xyzw = t12.Load(r16.w).xyzw;
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
          r22.x = dot(r0.xyz, r21.xyz);
          r22.z = dot(r0.xyz, r18.xyz);
          r20.w = r22.z * r20.w;
          r20.y = r22.x * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r0.xyz, r24.xyz);
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
        r20.z = dot(r0.xyz, r18.xyz);
        r18.x = dot(r5.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r6.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r21.x = -r19.w * r19.w + 1;
          r21.x = sqrt(r21.x);
          r21.y = dot(r6.ww, r20.zz);
          r21.z = r21.y + -r18.x;
          r22.x = cmp(r21.z >= r21.x);
          if (r22.x != 0) {
            r18.z = 1;
            r18.y = abs(r6.w);
          } else {
            r22.x = -r21.z * r21.z + 1;
            r22.x = rsqrt(r22.x);
            r22.x = r22.x * r19.w;
            r22.z = -r21.z * r20.z + r6.w;
            r22.w = r22.x * r22.z;
            r21.z = -r21.z * r18.x + r13.z;
            r23.x = r20.z * r20.z;
            r23.x = -r6.w * r6.w + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r18.x * r18.x + r23.x;
            r21.y = saturate(r21.y * r18.x + r23.x);
            r21.y = sqrt(r21.y);
            r21.yz = r22.xx * r21.yz;
            r23.x = r21.y * r6.w;
            r23.y = r23.x + r23.x;
            r23.z = r20.z * r21.x + r6.w;
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
            r20.z = r20.z + r6.w;
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
  r5.yzw = r8.www * r0.xyz + -r5.xyz;
  r6.w = saturate(r6.w);
  r1.x = (int)r1.x + asint(cb1[0].w);
  r1.y = (uint)r1.x << 1;
  r1.y = t13.Load(r1.y).x;
  r1.y = min(asuint(cb1[0].y), (uint)r1.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t13.Load(r1.x).x;
  r1.w = max(0.00100000005, cb0[139].x);
  r1.w = log2(r1.w);
  r1.w = -r1.w * 1.20000005 + 1;
  r2.w = -1 + cb0[195].z;
  r1.w = r2.w + -r1.w;
  r5.x = 0;
  r10.xyz = float3(0,0,0);
  r2.w = 1;
  r3.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= (uint)r1.y);
    if (r10.w != 0) break;
    r10.w = cmp(r2.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r1.x + (int)r9.w;
    r10.w = t14.Load(r10.w).x;
    r13.xyz = -cb2[r10.w+0].xyz + r4.xyz;
    r11.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r11.w);
    r14.x = cmp(r13.w < cb2[r10.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb2[r10.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r10.w << 2;
        r14.yzw = cb2[r14.x+1024].xyz * r4.yyy;
        r14.yzw = r4.xxx * cb2[r14.x+1023].xyz + r14.yzw;
        r14.yzw = r4.zzz * cb2[r14.x+1025].xyz + r14.yzw;
        r14.yzw = cb2[r14.x+1026].xyz + r14.yzw;
        r15.xyz = cb2[r14.x+1024].xyz * r5.zzz;
        r15.xyz = r5.yyy * cb2[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r5.www * cb2[r14.x+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.yzw * r15.xyz + -r15.xyz;
        r15.xyz = -r14.yzw * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r14.x = min(r15.y, r15.z);
        r14.x = min(r15.x, r14.x);
        r15.xyz = r14.xxx * r5.yzw + r4.xyz;
        r16.xyz = cb2[r10.w+682].xyz + cb2[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r15.xyz;
        r14.x = cb2[r10.w+2387].w * 0.699999988;
        r15.xyz = -cb2[r10.w+2387].www * float3(0.5,0.5,0.5) + cb2[r10.w+2387].xyz;
        r17.xyz = cb2[r10.w+2387].xyz * r14.yzw;
        r18.xyz = cmp(r17.xyz < -r15.xyz);
        r19.xyz = r14.yzw * cb2[r10.w+2387].xyz + r15.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.xyz < r17.xyz);
        r14.yzw = r14.yzw * cb2[r10.w+2387].xyz + -r15.xyz;
        r14.yzw = abs(r14.yzw);
        r14.yzw = r17.xyz ? r14.yzw : 0;
        r15.x = dot(r18.xyz, float3(1,1,1));
        r14.y = dot(r14.yzw, float3(1,1,1));
        r14.y = r15.x + r14.y;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r14.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb2[r10.w+0].w);
        r15.x = dot(r5.yzw, r13.xyz);
        r11.w = -cb2[r10.w+0].w * cb2[r10.w+0].w + r11.w;
        r11.w = r15.x * r15.x + -r11.w;
        r15.y = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r15.x;
        r13.xyz = r11.www * r5.yzw + r13.xyz;
        r17.yzw = -cb2[r10.w+682].xyz + r13.xyz;
        r11.w = r13.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r13.x = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r17.x = -r13.x * r11.w + 1;
        r14.xyzw = r15.yyyy ? r17.xyzw : r5.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb2[r10.w+341].y;
      r13.xyzw = t15.SampleLevel(s3_s, r16.xyzw, r1.w).xyzw;
      r13.xyz = cb2[r10.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r10.xyz = r13.xyz * r2.www + r10.xyz;
      r11.w = -r13.w * r14.x + 1;
      r2.w = r11.w * r2.w;
      r10.w = cb2[r10.w+682].w * r14.x;
      r3.w = r10.w * r8.w + r3.w;
      r10.w = 1 + -r14.x;
      r8.w = r10.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r1.xyw = cb0[157].xyz * r10.xyz;
  r2.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r3.w * r2.w;
  r3.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r5.x = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r5.x * r3.w;
  r2.w = max(9.99999975e-005, r2.w);
  r0.w = r0.w / r2.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.w * r0.w + 1;
  r1.xyw = r1.xyw * r0.www;
  r5.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r5.x * r5.x;
  r2.w = -9.27999973 * r6.w;
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
      r10.xyz = cb1[127].xyz * r0.yyy;
      r10.xyz = r0.xxx * cb1[126].xyz + r10.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r10.xyz;
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
      r2.xyzw = t16.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r1.xyw = r0.xxx * r1.xyw + r2.xyz;
  }
  r0.xyz = r1.xyw * r5.xyz;
  r1.xyz = r12.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r12.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r12.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
  r0.xyz = r0.xyz * r1.xyz + r9.xyz;
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
    r1.xyzw = t17.SampleLevel(s0_s, r2.xyz, 0).xyzw;
    r2.x = v4.w * r1.w;
    r1.xyz = v4.xyz * r1.www + r1.xyz;
  } else {
    r1.xyz = v4.xyz;
    r2.x = v4.w;
  }
  r2.yzw = r12.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r2.yzw = r2.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r7.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t9[r2.y].val[0/4];
    r5.y = t9[r2.y].val[0/4+1];
    r5.z = t9[r2.y].val[0/4+2];
    r5.xyz = -r5.xyz + r4.xyz;
    r2.y = t9[r2.z].val[0/4];
    r2.z = t9[r2.z].val[0/4+1];
    r2.w = t9[r2.z].val[0/4+2];
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
  r0.xyz = r8.xyz * r11.xyz + r0.xyz;
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
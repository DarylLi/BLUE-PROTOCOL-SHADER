// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t22 : register(t22);

Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

TextureCubeArray<float4> t17 : register(t17);

TextureCube<float4> t16 : register(t16);

Buffer<uint4> t15 : register(t15);

Buffer<uint4> t14 : register(t14);

Buffer<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

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
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  nointerpolation float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : PARTICLE_LIGHTING_OFFSET0,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  r1.xy = -cb0[129].xy + v7.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v7.ww * r1.zw;
  r2.zw = v7.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v7.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v7.yyyy;
  r3.xyzw = v7.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v7.zzzz * cb0[46].xyzw + r3.xyzw;
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
  r6.xyz = r0.xyz * r0.www;
  r7.xyz = cb4[0].xxx * v3.xyz;
  r8.xyz = -v3.xyz * cb4[0].xxx + cb6[3].xyz;
  r7.xyz = cb6[15].zzz * r8.xyz + r7.xyz;
  r1.z = cb5[2].x * cb0[142].z;
  r8.xy = r1.zz * cb6[16].yw + v4.xy;
  r9.x = r8.x * cb6[16].z + v2.w;
  r9.y = r8.y * cb6[17].x + v2.w;
  r1.w = r1.z * cb6[17].w + v4.x;
  r1.z = r1.z * cb6[18].y + v4.y;
  r8.xy = cb6[18].xz * r1.wz;
  r1.z = t21.SampleBias(s6_s, r8.xy, cb0[143].y).x;
  r1.z = -0.5 + r1.z;
  r1.z = r1.z + r1.z;
  r1.zw = r1.zz * cb6[19].yw + cb6[13].xy;
  r1.zw = r9.xy + r1.zw;
  r8.xyzw = t22.SampleBias(s7_s, r1.zw, cb0[143].y).xyzw;
  r1.z = cb6[20].x * v2.w;
  r1.z = saturate(r1.z);
  r1.z = 0.200000003 + r1.z;
  r1.z = floor(r1.z);
  r1.w = r8.y + -r8.x;
  r1.z = r1.z * r1.w + r8.x;
  r8.xy = saturate(cb6[20].xx * v2.ww + float2(-1,-2));
  r8.xy = float2(0.200000003,0.200000003) + r8.xy;
  r8.xy = floor(r8.xy);
  r1.w = r8.z + -r1.z;
  r1.z = r8.x * r1.w + r1.z;
  r1.w = r8.w + -r1.z;
  r1.z = r8.y * r1.w + r1.z;
  r1.z = r1.z * cb6[20].z + -cb6[20].z;
  r1.z = saturate(cb6[20].z * v3.w + r1.z);
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r1.w = t20.SampleLevel(s5_s, r2.xy, 0).x;
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
  r6.w = max(cb4[2].x, cb4[2].y);
  r6.w = max(cb4[2].z, r6.w);
  r6.w = saturate(ceil(r6.w));
  r7.w = r6.w * r5.w;
  r5.w = r6.w * r5.w + cb6[21].y;
  r6.w = max(r5.w, r7.w);
  r3.w = r3.w / r6.w;
  r5.w = min(r5.w, r7.w);
  r5.w = r5.w / r6.w;
  r6.w = 1 + r5.w;
  r3.w = saturate(r3.w * r6.w + -r5.w);
  r3.w = r3.w * 3 + -1;
  r3.w = max(cb6[21].z, r3.w);
  r3.w = min(1, r3.w);
  r5.w = saturate(ceil(cb5[2].y));
  r6.w = 1 + -r3.w;
  r3.w = r5.w * r6.w + r3.w;
  r1.z = r3.w * r1.z;
  r8.w = max(0, r1.z);
  r9.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r9.xyz = min(float3(0.99000001,0.99000001,0.99000001), r9.xyz);
  r9.xyz = cb0[213].xyz * r9.xyz;
  r10.xyz = (int3)r9.xyz;
  r10.w = 0;
  r10.xyzw = t0.Load(r10.xyzw).xyzw;
  r10.xyzw = (uint4)r10.xyzw;
  r1.z = 1 + cb0[213].w;
  r9.xyz = r9.xyz / r10.www;
  r9.xyz = frac(r9.xyz);
  r9.xyz = cb0[213].www * r9.xyz;
  r9.xyz = r10.xyz * r1.zzz + r9.xyz;
  r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
  r9.xyz = cb0[214].xyz * r9.xyz;
  r1.z = cmp(0 < cb1[20].z);
  if (r1.z != 0) {
    r10.x = t9.SampleLevel(s0_s, r9.xyz, 0).x;
  } else {
    r10.x = 1;
  }
  r1.z = cmp(0 != cb0[183].w);
  r11.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r11.w = 0;
  r12.xyz = cb0[136].xyz;
  r12.w = cb0[137].x;
  r11.xyzw = r1.zzzz ? r11.xyzw : r12.xyzw;
  r12.yz = r1.zz ? float2(0,0) : cb0[137].yz;
  r13.xyz = t1.SampleLevel(s0_s, r9.xyz, 0).zxy;
  r14.xyzw = t2.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t4.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t6.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r13.yyyy;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = r15.xyzw * r13.zzzz;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = r16.xyzw * r13.xxxx;
  r16.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r16.wxyz;
  r17.xyzw = t3.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = t5.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r19.xyzw = t7.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r19.xyzw = r19.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = r17.xyzw * r13.yyyy;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyzw = r18.xyzw * r13.zzzz;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r19.xyzw = r19.xyzw * r13.xxxx;
  r19.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r19.xyzw;
  r20.xyz = r6.yzy * r6.yzx;
  r21.yw = r6.zz * r6.yx;
  r1.z = r6.x * r6.x + -r20.x;
  r22.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.yzx;
  r21.xz = r20.zy * float2(1,3) + float2(0,-1);
  r20.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r21.xyzw;
  r1.z = 0.429042608 * r1.z;
  r21.x = r13.y;
  r21.yzw = r14.yzw;
  r22.x = 0.886227548;
  r3.w = dot(r21.xyzw, r22.xyzw);
  r14.yzw = r17.xyz;
  r5.w = dot(r14.xyzw, r20.xyzw);
  r3.w = r5.w + r3.w;
  r14.x = r17.w * r1.z + r3.w;
  r17.x = r13.z;
  r17.yzw = r15.yzw;
  r3.w = dot(r17.xyzw, r22.xyzw);
  r15.yzw = r18.xyz;
  r5.w = dot(r15.xyzw, r20.xyzw);
  r3.w = r5.w + r3.w;
  r14.y = r18.w * r1.z + r3.w;
  r13.yzw = r16.yzw;
  r3.w = dot(r13.xyzw, r22.xyzw);
  r16.yzw = r19.xyz;
  r5.w = dot(r16.xyzw, r20.xyzw);
  r3.w = r5.w + r3.w;
  r14.z = r19.w * r1.z + r3.w;
  r13.xyz = max(float3(0,0,0), r14.xyz);
  r13.xyz = cb0[157].xyz * r13.xyz;
  r1.z = cmp(cb0[186].y != 0.000000);
  if (r1.z != 0) {
    r9.xyz = t8.SampleLevel(s0_s, r9.xyz, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.z = dot(r9.xyz, r9.xyz);
    r14.x = sqrt(r1.z);
    r1.z = max(9.99999975e-005, r14.x);
    r9.xyz = r9.xyz / r1.zzz;
    r1.z = 1 + -r14.x;
    r1.z = -r1.z * r1.z + 1;
    r0.xyz = r0.xyz * r0.www + -r9.xyz;
    r0.xyz = r1.zzz * r0.xyz + r9.xyz;
    r3.w = saturate(dot(r9.xyz, r6.xyz));
    r5.w = 1 + -r3.w;
    r14.y = r1.z * r5.w + r3.w;
  } else {
    r0.xyz = r6.xyz;
    r14.xy = float2(1,1);
  }
  r9.x = t10[0].val[0/4];
  r9.y = t10[0].val[0/4+1];
  r9.z = t10[0].val[0/4+2];
  r9.w = t10[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r15.x = t10[1].val[0/4];
  r15.y = t10[1].val[0/4+1];
  r15.z = t10[1].val[0/4+2];
  r15.w = t10[1].val[0/4+3];
  r9.y = dot(r15.xyzw, r0.xyzw);
  r15.x = t10[2].val[0/4];
  r15.y = t10[2].val[0/4+1];
  r15.z = t10[2].val[0/4+2];
  r15.w = t10[2].val[0/4+3];
  r9.z = dot(r15.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t10[3].val[0/4];
  r16.y = t10[3].val[0/4+1];
  r16.z = t10[3].val[0/4+2];
  r16.w = t10[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t10[4].val[0/4];
  r17.y = t10[4].val[0/4+1];
  r17.z = t10[4].val[0/4+2];
  r17.w = t10[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t10[5].val[0/4];
  r17.y = t10[5].val[0/4+1];
  r17.z = t10[5].val[0/4+2];
  r17.w = t10[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r9.xyz = r16.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r14.x * r14.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r13.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xy = cb0[131].zw * r1.xy;
  r1.z = v7.w * cb2[3].x + cb2[3].y;
  r1.z = log2(r1.z);
  r1.z = cb2[3].z * r1.z;
  r1.z = max(0, r1.z);
  r1.xyz = (uint3)r1.xyz;
  r3.w = asint(cb2[1].z) + -1;
  r1.z = min((uint)r3.w, (uint)r1.z);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.z, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  if (cb2[0].z != 0) {
    r9.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r9.yzw = r9.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r13.xyzw = cb2[51].xyzw * r4.yyyy;
      r13.xyzw = r4.xxxx * cb2[50].xyzw + r13.xyzw;
      r13.xyzw = r4.zzzz * cb2[52].xyzw + r13.xyzw;
      r13.xyzw = cb2[53].xyzw + r13.xyzw;
      r1.yz = r13.xy / r13.ww;
      r13.xy = cmp(r1.yz >= float2(0,0));
      r14.xy = cmp(float2(1,1) >= r1.yz);
      r13.xy = r13.xy ? r14.xy : 0;
      r3.w = r13.y ? r13.x : 0;
      if (r3.w != 0) {
        r1.y = t12.SampleLevel(s2_s, r1.yz, 0).x;
        r1.z = cmp(r13.z < r1.y);
        r1.y = cmp(0.99000001 < r1.y);
        r1.y = (int)r1.y | (int)r1.z;
        r10.x = r1.y ? 1.000000 : 0;
      } else {
        r10.x = 1;
      }
    } else {
      r10.x = 1;
    }
    if (cb2[9].z != 0) {
      r1.y = cb2[9].z;
      r1.z = 0;
      while (true) {
        r3.w = cmp((uint)r1.z >= asuint(cb2[9].z));
        if (r3.w != 0) break;
        r3.w = dot(cb2[10].xyzw, icb[r1.z+0].xyzw);
        r3.w = cmp(r2.w < r3.w);
        if (r3.w != 0) {
          r1.y = r1.z;
          break;
        }
        r1.z = (int)r1.z + 1;
      }
      r1.z = cmp((uint)r1.y < asuint(cb2[9].z));
      if (r1.z != 0) {
        r1.z = (uint)r1.y << 2;
        r13.xyzw = cb2[r1.z+12].xyzw * r4.yyyy;
        r13.xyzw = r4.xxxx * cb2[r1.z+11].xyzw + r13.xyzw;
        r13.xyzw = r4.zzzz * cb2[r1.z+13].xyzw + r13.xyzw;
        r13.xyzw = cb2[r1.z+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb2[r1.y+27].xy);
        r1.yz = cmp(cb2[r1.y+27].zw >= r14.zw);
        r1.yz = r1.yz ? r13.xy : 0;
        r1.y = r1.z ? r1.y : 0;
        if (r1.y != 0) {
          r14.xyzw = r14.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r1.yz = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r16.x = t11.SampleLevel(s1_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r16.y = t11.SampleLevel(s1_s, r14.xy, 0).x;
          r16.z = t11.SampleLevel(s1_s, r14.zw, 0).x;
          r16.w = t11.SampleLevel(s1_s, r15.zw, 0).x;
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
    r9.x = 1;
    r1.z = dot(float4(1,1,1,1), r9.xyzw);
    r10.yzw = r9.yzw;
    r3.w = dot(r10.xyzw, float4(1,1,1,1));
    r3.w = -1 + r3.w;
    r1.z = r1.z * r3.w + 1;
    r2.w = saturate(r2.w * cb2[9].x + cb2[9].y);
    r2.w = r2.w * r2.w;
    r1.z = r1.z + -r1.y;
    r1.y = r2.w * r1.z + r1.y;
    r1.z = min(1, r1.y);
    r1.z = r1.y + r1.z;
    r1.z = cmp(0 < r1.z);
    if (r1.z != 0) {
      r1.z = dot(cb2[4].xyz, cb2[4].xyz);
      r1.z = rsqrt(r1.z);
      r9.xyz = cb2[4].xyz * r1.zzz;
      r1.z = dot(r6.xyz, r9.xyz);
      r2.w = saturate(r1.z);
      r3.w = max(cb0[226].y, cb0[139].x);
      r5.w = dot(r6.xyz, r5.xyz);
      r6.w = dot(r5.xyz, r9.xyz);
      r7.w = r6.w * 2 + 2;
      r7.w = rsqrt(r7.w);
      r1.z = r5.w + r1.z;
      r1.z = saturate(r1.z * r7.w);
      r6.w = saturate(r7.w * r6.w + r7.w);
      r5.w = 9.99999975e-006 + abs(r5.w);
      r5.w = min(1, r5.w);
      r9.xyz = r11.xyz * r2.www;
      r9.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
      r7.w = r3.w * r3.w;
      r9.w = r7.w * r7.w;
      r13.x = r1.z * r9.w + -r1.z;
      r1.z = r13.x * r1.z + 1;
      r1.z = r1.z * r1.z;
      r1.z = 3.14159274 * r1.z;
      r1.z = r9.w / r1.z;
      r3.w = -r3.w * r3.w + 1;
      r9.w = r5.w * r3.w + r7.w;
      r3.w = r2.w * r3.w + r7.w;
      r3.w = r5.w * r3.w;
      r3.w = r2.w * r9.w + r3.w;
      r3.w = rcp(r3.w);
      r1.z = r3.w * r1.z;
      r3.w = 1 + -r6.w;
      r5.w = r3.w * r3.w;
      r5.w = r5.w * r5.w;
      r6.w = r5.w * r3.w;
      r7.w = saturate(50 * r12.y);
      r3.w = -r5.w * r3.w + 1;
      r12.x = r11.w;
      r13.xyz = r3.www * r12.xyz;
      r13.xyz = r7.www * r6.www + r13.xyz;
      r1.z = 0.5 * r1.z;
      r13.xyz = r1.zzz * r13.xyz;
      r13.xyz = r13.xyz * r2.www;
      r14.xyz = cb2[5].xyz * r1.yyy;
      r9.xyz = r14.xyz * r9.xyz;
      r13.xyz = r14.yzx * r13.yzx;
      r9.w = r13.z;
    } else {
      r13.xy = float2(0,0);
      r9.xyzw = float4(0,0,0,0);
    }
    r1.y = asuint(cb2[8].z) >> 8;
    r1.y = (int)r1.y & asint(cb1[23].w);
    r9.xyzw = r1.yyyy ? r9.xyzw : float4(0,0,0,0);
    r1.yz = r1.yy ? r13.xy : float2(0,0);
  } else {
    r9.xyzw = float4(0,0,0,0);
    r1.yz = float2(0,0);
  }
  r2.w = (uint)r1.x << 1;
  r2.w = t14.Load(r2.w).x;
  r2.w = min(asuint(cb2[0].x), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.w = t14.Load(r3.w).x;
  r2.w = min(asuint(cb2[0].x), (uint)r2.w);
  r5.w = dot(-r5.xyz, r6.xyz);
  r5.w = r5.w + r5.w;
  r13.xyz = r6.xyz * -r5.www + -r5.xyz;
  r5.w = max(cb0[226].y, cb0[139].x);
  r6.w = r5.w * r5.w;
  r5.w = -r5.w * r5.w + 1;
  r7.w = dot(r6.xyz, r5.xyz);
  r13.w = r7.w + r7.w;
  r14.x = r13.w * r7.w + -1;
  r14.y = 9.99999975e-006 + abs(r7.w);
  r14.y = min(1, r14.y);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
  r14.z = r6.w * r6.w;
  r14.w = saturate(50 * r12.y);
  r10.yw = float2(1,1);
  r12.w = r11.w;
  r16.xyz = r9.xyz;
  r17.x = r9.w;
  r17.yz = r1.yz;
  r11.w = 0;
  while (true) {
    r15.w = cmp((uint)r11.w >= (uint)r2.w);
    if (r15.w != 0) break;
    r15.w = (int)r3.w + (int)r11.w;
    r15.w = t15.Load(r15.w).x;
    r16.w = (int)r15.w * 6;
    r18.xyzw = t13.Load(r16.w).xyzw;
    r16.w = mad((int)r15.w, 6, 1);
    r19.xyzw = t13.Load(r16.w).xyzw;
    r20.xy = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r21.xyzw = t13.Load(r20.x).xyzw;
    r20.xyzw = t13.Load(r20.y).xyzw;
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
        r20.x = dot(r10.xyyy, r22.xyzw);
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
        r22.xyzw = t13.Load(r15.w).xyzw;
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
          r20.w = dot(r6.xyz, r21.xyz);
          r22.y = dot(r6.xyz, r18.xyz);
          r20.y = r22.y * r20.y;
          r19.w = r20.w * r19.w + r20.y;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = 1 + r19.w;
          r23.y = rcp(r20.y);
          r19.w = rsqrt(r19.w);
          r24.xyz = r21.xyz * r19.www;
          r23.x = dot(r6.xyz, r24.xyz);
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
        r20.y = dot(r6.xyz, r18.xyz);
        r18.x = dot(r5.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.y + r7.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.z = cmp(0 < r18.w);
        if (r20.z != 0) {
          r20.w = -r18.w * r18.w + 1;
          r20.w = sqrt(r20.w);
          r21.x = dot(r7.ww, r20.yy);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.w);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r7.w);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r18.w;
            r22.y = -r21.y * r20.y + r7.w;
            r22.z = r22.y * r21.z;
            r21.y = -r21.y * r18.x + r14.x;
            r22.w = r20.y * r20.y;
            r22.w = -r7.w * r7.w + -r22.w;
            r22.w = 1 + r22.w;
            r22.w = -r18.x * r18.x + r22.w;
            r21.x = saturate(r21.x * r18.x + r22.w);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.w = r21.x * r7.w;
            r23.x = r22.w + r22.w;
            r23.y = r20.y * r20.w + r7.w;
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
            r20.y = r20.y + r7.w;
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
        r10.z = r18.x ? r15.w : r14.z;
        r15.w = 0.25 * r18.w;
        r18.x = (uint)r10.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r18.w;
        r15.w = r18.x * r15.w;
        r18.x = 0.00100000005 + r18.y;
        r15.w = r15.w / r18.x;
        r23.x = r15.w + r10.z;
        r23.y = r10.z / r23.x;
        r20.yz = r20.zz ? r23.xy : r10.zw;
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
        r18.x = r18.z * r10.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r10.z / r18.x;
        r15.w = r18.x * r15.w;
        r10.z = sqrt(r10.z);
        r18.x = 1 + -r10.z;
        r18.z = r14.y * r18.x + r10.z;
        r10.z = r19.w * r18.x + r10.z;
        r10.z = r14.y * r10.z;
        r10.z = r19.w * r18.z + r10.z;
        r10.z = rcp(r10.z);
        r10.z = r15.w * r10.z;
        r15.w = 1 + -r18.y;
        r18.x = r15.w * r15.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r15.w;
        r15.w = -r18.x * r15.w + 1;
        r18.xzw = r15.www * r12.wyz;
        r18.xyz = r14.www * r18.yyy + r18.xzw;
        r10.z = 0.5 * r10.z;
        r18.xyz = r10.zzz * r18.xyz;
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
    r10.z = (uint)r21.w >> 8;
    r10.z = (int)r10.z & asint(cb1[23].w);
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r10.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r10.zzz ? r18.xyz : r17.xyz;
    r11.w = (int)r11.w + 1;
  }
  r9.xyz = r17.xyz + r16.xyz;
  r5.yzw = r13.www * r6.xyz + -r5.xyz;
  r7.w = saturate(r7.w);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.y = (uint)r1.x << 1;
  r1.y = t14.Load(r1.y).x;
  r1.y = min(asuint(cb2[0].y), (uint)r1.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t14.Load(r1.x).x;
  r1.z = max(0.00100000005, cb0[139].x);
  r1.z = log2(r1.z);
  r1.z = -r1.z * 1.20000005 + 1;
  r2.w = -1 + cb0[195].z;
  r2.w = r2.w + -r1.z;
  r5.x = 0;
  r3.w = 1;
  r6.w = 0;
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
    r11.w = t15.Load(r11.w).x;
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
        r16.xyz = r5.www * cb3[r14.y+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.y = min(r16.y, r16.z);
        r14.y = min(r16.x, r14.y);
        r16.xyz = r14.yyy * r5.yzw + r4.xyz;
        r17.xyz = cb3[r11.w+682].xyz + cb3[r11.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
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
        r15.x = dot(r15.xyz, float3(1,1,1));
        r14.z = r15.x + r14.z;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r15.x = -r14.z * r14.y + 1;
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
        r15.xyzw = r14.zzzz ? r13.xyzw : r5.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb3[r11.w+341].y;
      r13.xyzw = t17.SampleLevel(s4_s, r16.xyzw, r2.w).xyzw;
      r13.xyz = cb3[r11.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r10.xyz = r13.xyz * r3.www + r10.xyz;
      r13.x = -r13.w * r15.x + 1;
      r3.w = r13.x * r3.w;
      r11.w = cb3[r11.w+682].w * r15.x;
      r6.w = r11.w * r9.w + r6.w;
      r11.w = 1 + -r15.x;
      r9.w = r11.w * r9.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r10.xyz = cb0[157].xyz * r10.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.w = r6.w * r1.x;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r1.z;
    r1.x = -1 + r1.x;
    r1.xyz = t16.SampleLevel(s3_s, r5.yzw, r1.x).xyz;
    r2.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = cb2[117].x * r2.w;
    r1.xyz = cb0[187].xyz * r1.xyz;
    r5.x = cmp(cb2[116].z < 1);
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
  r2.w = -9.27999973 * r7.w;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r5.x + r5.y;
  r5.xy = r0.ww * float2(-1.03999996,1.03999996) + r5.zw;
  r12.xyz = r12.wyz;
  r0.w = r14.w * r5.y;
  r5.xyz = r12.xyz * r5.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb2[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r10.xyz = -cb2[123].xyz + r4.xyz;
    r2.w = dot(r10.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r10.xyz, cb2[125].xyz);
    r3.w = cb2[125].w + -abs(r3.w);
    r3.w = saturate(cb2[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r6.xyz);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r1.w = rsqrt(r1.w);
      r2.xyz = r2.xyz * r1.www;
      r1.w = dot(r2.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r2.xyz = cb2[122].xyz * r1.www + r2.xyz;
      r10.xyz = cb2[127].xyz * r6.yyy;
      r6.xyw = r6.xxx * cb2[126].xyz + r10.xyz;
      r6.xyz = r6.zzz * cb2[128].xyz + r6.xyw;
      r1.w = dot(r2.xyz, r6.xyz);
      r1.w = r1.w + r1.w;
      r2.xyz = r6.xyz * -r1.www + r2.xyz;
      r2.xyz = r2.xyz * cb2[129].zzz + r4.xyz;
      r2.xyz = cb0[70].xyz + r2.xyz;
      r6.xyz = cb0[13].xyz * r2.yyy;
      r2.xyw = r2.xxx * cb0[12].xyz + r6.xyz;
      r2.xyz = r2.zzz * cb0[14].xyz + r2.xyw;
      r2.xyz = cb0[15].xyz + r2.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r6.xyz = cb2[r1.w+132].xyw * r2.yyy;
      r2.xyw = r2.xxx * cb2[r1.w+131].xyw + r6.xyz;
      r2.xyz = r2.zzz * cb2[r1.w+133].xyw + r2.xyw;
      r2.xyz = cb2[r1.w+134].xyw + r2.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r2.xy = r2.xy / r2.zz;
      r2.xy = max(-cb2[141].xy, r2.xy);
      r2.xy = min(cb2[141].xy, r2.xy);
      r2.xy = r2.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r2.xyzw = t18.SampleLevel(s4_s, r2.xy, 0).xyzw;
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
  r0.w = cmp(0 < cb2[150].w);
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
    r2.xyzw = t19.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v6.w * r2.w;
    r2.xyz = v6.xyz * r2.www + r2.xyz;
  } else {
    r2.xyz = v6.xyz;
    r5.x = v6.w;
  }
  r5.yzw = r12.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r5.yzw = r5.yzw + -r1.xyz;
  r1.xyz = cb0[145].yyy * r5.yzw + r1.xyz;
  r8.xyz = max(float3(0,0,0), r7.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.yzw = -cb1[5].xyz + r4.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.yzw = cmp(r6.xyz < abs(r5.yzw));
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
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb2[166].xyz + -cb2[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb2[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}
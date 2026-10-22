// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[10];
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
  float4 v0 : TEXCOORD5,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
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

  r0.xyz = v3.zxy * v2.yzx;
  r0.xyz = v3.yzx * v2.zxy + -r0.xyz;
  r0.xyz = v3.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb6[2].xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v2.xyz + r0.xyz;
  r0.xyz = r4.zzz * v3.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb6[5].xyz * cb4[0].xxx;
  r6.xyz = -cb6[5].xyz * cb4[0].xxx + cb6[6].xyz;
  r5.xyz = cb6[8].zzz * r6.xyz + r5.xyz;
  r6.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r1.w);
  r7.xyz = -cb4[2].xyz + cb0[67].xyz;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r4.w);
  r5.w = max(cb4[2].x, cb4[2].y);
  r5.w = max(cb4[2].z, r5.w);
  r5.w = saturate(ceil(r5.w));
  r6.w = r5.w * r4.w;
  r4.w = r5.w * r4.w + cb6[8].w;
  r5.w = max(r4.w, r6.w);
  r3.w = r3.w / r5.w;
  r4.w = min(r4.w, r6.w);
  r4.w = r4.w / r5.w;
  r5.w = 1 + r4.w;
  r3.w = saturate(r3.w * r5.w + -r4.w);
  r3.w = r3.w * 3 + -1;
  r3.w = max(cb6[9].x, r3.w);
  r3.w = min(1, r3.w);
  r4.w = saturate(ceil(cb5[2].y));
  r5.w = 1 + -r3.w;
  r3.w = r4.w * r5.w + r3.w;
  r7.w = saturate(v0.w * r3.w);
  r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
  r8.xyz = cb0[213].xyz * r8.xyz;
  r9.xyz = (int3)r8.xyz;
  r9.w = 0;
  r9.xyzw = t0.Load(r9.xyzw).xyzw;
  r9.xyzw = (uint4)r9.xyzw;
  r3.w = 1 + cb0[213].w;
  r8.xyz = r8.xyz / r9.www;
  r8.xyz = frac(r8.xyz);
  r8.xyz = cb0[213].www * r8.xyz;
  r8.xyz = r9.xyz * r3.www + r8.xyz;
  r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
  r8.xyz = cb0[214].xyz * r8.xyz;
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r9.x = t9.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r9.x = 1;
  }
  r3.w = cmp(0 != cb0[183].w);
  r10.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r10.w = 0;
  r11.xyz = cb0[136].xyz;
  r11.w = cb0[137].x;
  r10.xyzw = r3.wwww ? r10.xyzw : r11.xyzw;
  r11.yz = r3.ww ? float2(0,0) : cb0[137].yz;
  r12.xyz = t1.SampleLevel(s0_s, r8.xyz, 0).zxy;
  r13.xyzw = t2.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t4.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t6.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r12.yyyy;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = r14.xyzw * r12.zzzz;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = r15.xyzw * r12.xxxx;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = t5.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = t7.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = r16.xyzw * r12.yyyy;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r17.xyzw = r17.xyzw * r12.zzzz;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyzw = r18.xyzw * r12.xxxx;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r19.xyz = r4.yzy * r4.yzx;
  r20.yw = r4.zz * r4.yx;
  r3.w = r4.x * r4.x + -r19.x;
  r21.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r20.xz = r19.zy * float2(1,3) + float2(0,-1);
  r19.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r20.xyzw;
  r3.w = 0.429042608 * r3.w;
  r20.x = r12.y;
  r20.yzw = r13.yzw;
  r21.x = 0.886227548;
  r4.w = dot(r20.xyzw, r21.xyzw);
  r13.yzw = r16.xyz;
  r5.w = dot(r13.xyzw, r19.xyzw);
  r4.w = r5.w + r4.w;
  r13.x = r16.w * r3.w + r4.w;
  r16.x = r12.z;
  r16.yzw = r14.yzw;
  r4.w = dot(r16.xyzw, r21.xyzw);
  r14.yzw = r17.xyz;
  r5.w = dot(r14.xyzw, r19.xyzw);
  r4.w = r5.w + r4.w;
  r13.y = r17.w * r3.w + r4.w;
  r12.yzw = r15.yzw;
  r4.w = dot(r12.xyzw, r21.xyzw);
  r15.yzw = r18.xyz;
  r5.w = dot(r15.xyzw, r19.xyzw);
  r4.w = r5.w + r4.w;
  r13.z = r18.w * r3.w + r4.w;
  r12.xyz = max(float3(0,0,0), r13.xyz);
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r8.xyz = t8.SampleLevel(s0_s, r8.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r8.xyz, r8.xyz);
    r13.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r13.x);
    r8.xyz = r8.xyz / r3.www;
    r3.w = 1 + -r13.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r8.xyz;
    r0.xyz = r3.www * r0.xyz + r8.xyz;
    r4.w = saturate(dot(r8.xyz, r4.xyz));
    r5.w = 1 + -r4.w;
    r13.y = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r4.xyz;
    r13.xy = float2(1,1);
  }
  r8.x = t10[0].val[0/4];
  r8.y = t10[0].val[0/4+1];
  r8.z = t10[0].val[0/4+2];
  r8.w = t10[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r14.x = t10[1].val[0/4];
  r14.y = t10[1].val[0/4+1];
  r14.z = t10[1].val[0/4+2];
  r14.w = t10[1].val[0/4+3];
  r8.y = dot(r14.xyzw, r0.xyzw);
  r14.x = t10[2].val[0/4];
  r14.y = t10[2].val[0/4+1];
  r14.z = t10[2].val[0/4+2];
  r14.w = t10[2].val[0/4+3];
  r8.z = dot(r14.xyzw, r0.xyzw);
  r14.xyzw = r0.xyzz * r0.yzzx;
  r15.x = t10[3].val[0/4];
  r15.y = t10[3].val[0/4+1];
  r15.z = t10[3].val[0/4+2];
  r15.w = t10[3].val[0/4+3];
  r15.x = dot(r15.xyzw, r14.xyzw);
  r16.x = t10[4].val[0/4];
  r16.y = t10[4].val[0/4+1];
  r16.z = t10[4].val[0/4+2];
  r16.w = t10[4].val[0/4+3];
  r15.y = dot(r16.xyzw, r14.xyzw);
  r16.x = t10[5].val[0/4];
  r16.y = t10[5].val[0/4+1];
  r16.z = t10[5].val[0/4+2];
  r16.w = t10[5].val[0/4+3];
  r15.z = dot(r16.xyzw, r14.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r8.xyz = r15.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r12.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xy = -cb0[129].xy + v5.xy;
  r8.xy = cb0[131].zw * r8.xy;
  r8.xy = (uint2)r8.xy;
  r3.w = v5.w * cb2[3].x + cb2[3].y;
  r3.w = log2(r3.w);
  r3.w = cb2[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r4.w = asint(cb2[1].z) + -1;
  r3.w = min((uint)r4.w, (uint)r3.w);
  r8.xy = (uint2)r8.xy >> asuint(cb2[2].xx);
  r3.w = mad((int)r3.w, asint(cb2[1].y), (int)r8.y);
  r3.w = mad((int)r3.w, asint(cb2[1].x), (int)r8.x);
  if (cb2[0].z != 0) {
    r8.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r8.yzw = r8.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r12.xy = r12.xy / r12.ww;
      r13.xy = cmp(r12.xy >= float2(0,0));
      r13.zw = cmp(float2(1,1) >= r12.xy);
      r13.xy = r13.zw ? r13.xy : 0;
      r4.w = r13.y ? r13.x : 0;
      if (r4.w != 0) {
        r4.w = t12.SampleLevel(s2_s, r12.xy, 0).x;
        r5.w = cmp(r12.z < r4.w);
        r4.w = cmp(0.99000001 < r4.w);
        r4.w = (int)r4.w | (int)r5.w;
        r9.x = r4.w ? 1.000000 : 0;
      } else {
        r9.x = 1;
      }
    } else {
      r9.x = 1;
    }
    if (cb2[9].z != 0) {
      r4.w = cb2[9].z;
      r5.w = 0;
      while (true) {
        r6.w = cmp((uint)r5.w >= asuint(cb2[9].z));
        if (r6.w != 0) break;
        r6.w = dot(cb2[10].xyzw, icb[r5.w+0].xyzw);
        r6.w = cmp(v5.w < r6.w);
        if (r6.w != 0) {
          r4.w = r5.w;
          break;
        }
        r5.w = (int)r5.w + 1;
      }
      r5.w = cmp((uint)r4.w < asuint(cb2[9].z));
      if (r5.w != 0) {
        r5.w = (uint)r4.w << 2;
        r12.xyzw = cb2[r5.w+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb2[r5.w+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb2[r5.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb2[r5.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb2[r4.w+27].xy);
        r14.xy = cmp(cb2[r4.w+27].zw >= r13.zw);
        r12.xy = r12.xy ? r14.xy : 0;
        r4.w = r12.y ? r12.x : 0;
        if (r4.w != 0) {
          r13.xyzw = r13.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r15.x = t11.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb2[31].zwzw * r13.xyzw;
          r15.y = t11.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t11.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t11.SampleLevel(s1_s, r14.zw, 0).x;
          r4.w = r12.z * 4000 + -1;
          r13.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r4.wwww);
          r12.zw = r13.zy + -r13.wx;
          r12.xz = r12.xx * r12.zw + r13.wx;
          r4.w = r12.z + -r12.x;
          r4.w = r12.y * r4.w + r12.x;
        } else {
          r4.w = 1;
        }
      } else {
        r4.w = 1;
      }
    } else {
      r4.w = 1;
    }
    r8.x = 1;
    r5.w = dot(float4(1,1,1,1), r8.xyzw);
    r9.yzw = r8.yzw;
    r6.w = dot(r9.xyzw, float4(1,1,1,1));
    r6.w = -1 + r6.w;
    r5.w = r5.w * r6.w + 1;
    r6.w = saturate(v5.w * cb2[9].x + cb2[9].y);
    r6.w = r6.w * r6.w;
    r5.w = r5.w + -r4.w;
    r4.w = r6.w * r5.w + r4.w;
    r5.w = min(1, r4.w);
    r5.w = r5.w + r4.w;
    r5.w = cmp(0 < r5.w);
    if (r5.w != 0) {
      r5.w = dot(cb2[4].xyz, cb2[4].xyz);
      r5.w = rsqrt(r5.w);
      r8.xyz = cb2[4].xyz * r5.www;
      r5.w = dot(r4.xyz, r8.xyz);
      r6.w = saturate(r5.w);
      r8.w = max(cb0[226].y, cb0[139].x);
      r12.x = dot(r4.xyz, r3.xyz);
      r8.x = dot(r3.xyz, r8.xyz);
      r8.y = r8.x * 2 + 2;
      r8.y = rsqrt(r8.y);
      r5.w = r12.x + r5.w;
      r5.w = saturate(r5.w * r8.y);
      r8.x = saturate(r8.y * r8.x + r8.y);
      r8.y = 9.99999975e-006 + abs(r12.x);
      r8.y = min(1, r8.y);
      r12.xyz = r10.xyz * r6.www;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r8.z = r8.w * r8.w;
      r12.w = r8.z * r8.z;
      r13.x = r5.w * r12.w + -r5.w;
      r5.w = r13.x * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = 3.14159274 * r5.w;
      r5.w = r12.w / r5.w;
      r8.w = -r8.w * r8.w + 1;
      r12.w = r8.y * r8.w + r8.z;
      r8.z = r6.w * r8.w + r8.z;
      r8.y = r8.y * r8.z;
      r8.y = r6.w * r12.w + r8.y;
      r8.y = rcp(r8.y);
      r5.w = r8.y * r5.w;
      r8.x = 1 + -r8.x;
      r8.y = r8.x * r8.x;
      r8.y = r8.y * r8.y;
      r8.z = r8.y * r8.x;
      r8.w = saturate(50 * r11.y);
      r8.x = -r8.y * r8.x + 1;
      r11.x = r10.w;
      r13.xyz = r8.xxx * r11.xyz;
      r8.xyz = r8.www * r8.zzz + r13.xyz;
      r5.w = 0.5 * r5.w;
      r8.xyz = r5.www * r8.xyz;
      r8.xyz = r8.xyz * r6.www;
      r13.xyz = cb2[5].xyz * r4.www;
      r12.xyz = r13.xyz * r12.xyz;
      r8.xyz = r13.yzx * r8.yzx;
      r12.w = r8.z;
    } else {
      r8.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r4.w = asuint(cb2[8].z) >> 8;
    r4.w = (int)r4.w & asint(cb1[23].w);
    r12.xyzw = r4.wwww ? r12.xyzw : float4(0,0,0,0);
    r8.xy = r4.ww ? r8.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r8.xy = float2(0,0);
  }
  r4.w = (uint)r3.w << 1;
  r4.w = t14.Load(r4.w).x;
  r4.w = min(asuint(cb2[0].x), (uint)r4.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.w = t14.Load(r5.w).x;
  r4.w = min(asuint(cb2[0].x), (uint)r4.w);
  r6.w = dot(-r3.xyz, r4.xyz);
  r6.w = r6.w + r6.w;
  r13.xyz = r4.xyz * -r6.www + -r3.xyz;
  r6.w = max(cb0[226].y, cb0[139].x);
  r8.z = r6.w * r6.w;
  r6.w = -r6.w * r6.w + 1;
  r8.w = dot(r4.xyz, r3.xyz);
  r13.w = r8.w + r8.w;
  r14.x = r13.w * r8.w + -1;
  r14.y = 9.99999975e-006 + abs(r8.w);
  r14.y = min(1, r14.y);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r14.z = r8.z * r8.z;
  r14.w = saturate(50 * r11.y);
  r9.yw = float2(1,1);
  r11.w = r10.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r8.xy;
  r10.w = 0;
  while (true) {
    r15.w = cmp((uint)r10.w >= (uint)r4.w);
    if (r15.w != 0) break;
    r15.w = (int)r5.w + (int)r10.w;
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
    r18.xyz = r18.xyz + -r2.xyz;
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
          r20.w = dot(r4.xyz, r21.xyz);
          r22.y = dot(r4.xyz, r18.xyz);
          r20.y = r22.y * r20.y;
          r19.w = r20.w * r19.w + r20.y;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = 1 + r19.w;
          r23.y = rcp(r20.y);
          r19.w = rsqrt(r19.w);
          r24.xyz = r21.xyz * r19.www;
          r23.x = dot(r4.xyz, r24.xyz);
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
        r18.w = saturate(r18.w * r6.w);
        r15.w = saturate(r22.w * r15.w);
        r20.y = dot(r4.xyz, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.y + r8.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.z = cmp(0 < r18.w);
        if (r20.z != 0) {
          r20.w = -r18.w * r18.w + 1;
          r20.w = sqrt(r20.w);
          r21.x = dot(r8.ww, r20.yy);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.w);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r8.w);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r18.w;
            r22.y = -r21.y * r20.y + r8.w;
            r22.z = r22.y * r21.z;
            r21.y = -r21.y * r18.x + r14.x;
            r22.w = r20.y * r20.y;
            r22.w = -r8.w * r8.w + -r22.w;
            r22.w = 1 + r22.w;
            r22.w = -r18.x * r18.x + r22.w;
            r21.x = saturate(r21.x * r18.x + r22.w);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.w = r21.x * r8.w;
            r23.x = r22.w + r22.w;
            r23.y = r20.y * r20.w + r8.w;
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
            r20.y = r20.y + r8.w;
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
        r15.w = r8.z * r8.z + r15.w;
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
    r9.z = (int)r9.z & asint(cb1[23].w);
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r9.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r9.zzz ? r18.xyz : r17.xyz;
    r10.w = (int)r10.w + 1;
  }
  r8.xyz = r17.xyz + r16.xyz;
  r9.yzw = r13.www * r4.xyz + -r3.xyz;
  r8.w = saturate(r8.w);
  r3.x = (int)r3.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t14.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t14.Load(r3.x).x;
  r3.z = max(0.00100000005, cb0[139].x);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.w = r3.w + -r3.z;
  r9.x = 0;
  r12.xyz = float3(0,0,0);
  r4.w = 1;
  r5.w = 0;
  r6.w = 1;
  r10.w = 0;
  while (true) {
    r12.w = cmp((uint)r10.w >= (uint)r3.y);
    if (r12.w != 0) break;
    r12.w = cmp(r4.w < 0.00100000005);
    if (r12.w != 0) {
      break;
    }
    r12.w = (int)r3.x + (int)r10.w;
    r12.w = t15.Load(r12.w).x;
    r13.xyz = -cb3[r12.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb3[r12.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb3[r12.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r12.w << 2;
        r15.xyz = cb3[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb3[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb3[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb3[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb3[r14.y+1024].xyz * r9.zzz;
        r16.xyz = r9.yyy * cb3[r14.y+1023].xyz + r16.xyz;
        r16.xyz = r9.www * cb3[r14.y+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.y = min(r16.y, r16.z);
        r14.y = min(r16.x, r14.y);
        r16.xyz = r14.yyy * r9.yzw + r2.xyz;
        r17.xyz = cb3[r12.w+682].xyz + cb3[r12.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r14.y = cb3[r12.w+2387].w * 0.699999988;
        r17.xyz = -cb3[r12.w+2387].www * float3(0.5,0.5,0.5) + cb3[r12.w+2387].xyz;
        r18.xyz = cb3[r12.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb3[r12.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb3[r12.w+2387].xyz + -r17.xyz;
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
        r14.x = saturate(r14.x / cb3[r12.w+0].w);
        r14.y = dot(r9.yzw, r13.xyz);
        r13.w = -cb3[r12.w+0].w * cb3[r12.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r9.yzw + r13.xyz;
        r13.yzw = -cb3[r12.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r15.xyzw = r14.zzzz ? r13.xyzw : r9.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb3[r12.w+341].y;
      r13.xyzw = t17.SampleLevel(s4_s, r16.xyzw, r3.w).xyzw;
      r13.xyz = cb3[r12.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r12.xyz = r13.xyz * r4.www + r12.xyz;
      r13.x = -r13.w * r15.x + 1;
      r4.w = r13.x * r4.w;
      r12.w = cb3[r12.w+682].w * r15.x;
      r5.w = r12.w * r6.w + r5.w;
      r12.w = 1 + -r15.x;
      r6.w = r12.w * r6.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.w = r5.w * r3.x;
  r3.x = cmp(0 < cb2[116].y);
  if (r3.x != 0) {
    r3.x = cb2[116].x + -r3.z;
    r3.x = -1 + r3.x;
    r3.xyz = t16.SampleLevel(s3_s, r9.yzw, r3.x).xyz;
    r3.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.w = cb2[117].x * r3.w;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r5.w = cmp(cb2[116].z < 1);
    r9.xyz = r4.www * r3.xyz + r12.xyz;
    r9.w = r3.w * r6.w + r12.w;
    r3.xyz = r5.www ? float3(0,0,0) : r3.xyz;
    r12.xyzw = r5.wwww ? r9.xyzw : r12.xyzw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r5.w = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r5.w * r3.w;
  r5.w = max(9.99999975e-005, r12.w);
  r0.w = r0.w / r5.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.w * r0.w + 1;
  r3.xyz = r4.www * r3.xyz;
  r3.xyz = r12.xyz * r0.www + r3.xyz;
  r9.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r9.x * r9.x;
  r3.w = -9.27999973 * r8.w;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r9.x + r9.y;
  r9.xy = r0.ww * float2(-1.03999996,1.03999996) + r9.zw;
  r11.xyz = r11.wyz;
  r0.w = r14.w * r9.y;
  r9.xyz = r11.xyz * r9.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb2[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb2[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r12.xyz, cb2[125].xyz);
    r3.w = cb2[125].w + -abs(r3.w);
    r3.w = saturate(cb2[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r4.xyz);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r1.w = rsqrt(r1.w);
      r6.xyz = r6.xyz * r1.www;
      r1.w = dot(r6.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r6.xyz = cb2[122].xyz * r1.www + r6.xyz;
      r12.xyz = cb2[127].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb2[126].xyz + r12.xyz;
      r4.xyz = r4.zzz * cb2[128].xyz + r4.xyw;
      r1.w = dot(r6.xyz, r4.xyz);
      r1.w = r1.w + r1.w;
      r4.xyz = r4.xyz * -r1.www + r6.xyz;
      r4.xyz = r4.xyz * cb2[129].zzz + r2.xyz;
      r4.xyz = cb0[70].xyz + r4.xyz;
      r6.xyz = cb0[13].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb0[12].xyz + r6.xyz;
      r4.xyz = r4.zzz * cb0[14].xyz + r4.xyw;
      r4.xyz = cb0[15].xyz + r4.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r6.xyz = cb2[r1.w+132].xyw * r4.yyy;
      r4.xyw = r4.xxx * cb2[r1.w+131].xyw + r6.xyz;
      r4.xyz = r4.zzz * cb2[r1.w+133].xyw + r4.xyw;
      r4.xyz = cb2[r1.w+134].xyw + r4.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r4.xy = r4.xy / r4.zz;
      r4.xy = max(-cb2[141].xy, r4.xy);
      r4.xy = min(cb2[141].xy, r4.xy);
      r4.xy = r4.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r4.xyzw = t18.SampleLevel(s4_s, r4.xy, 0).xyzw;
      r0.w = r4.w * r0.w;
    } else {
      r4.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r4.xyz;
  }
  r3.xyz = r3.xyz * r9.xyz;
  r4.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyz = r3.xyz * r4.xyz + r8.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r6.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r4.xyzw = t19.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r6.x = v4.w * r4.w;
    r4.xyz = v4.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v4.xyz;
    r6.x = v4.w;
  }
  r6.yzw = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r6.yzw = r6.yzw + -r3.xyz;
  r3.xyz = cb0[145].yyy * r6.yzw + r3.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.yzw = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.yzw < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r7.xyzw = r0.wwww ? r2.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r0.xyz * r10.xyz + r3.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r6.xxx + r4.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}
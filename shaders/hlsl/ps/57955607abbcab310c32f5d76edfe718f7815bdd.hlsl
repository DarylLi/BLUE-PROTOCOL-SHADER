// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

TextureCubeArray<float4> t9 : register(t9);

TextureCube<float4> t8 : register(t8);

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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
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
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb6[5].xyz * cb4[0].xxx;
  r5.xyz = -cb6[5].xyz * cb4[0].xxx + cb6[6].xyz;
  r4.xyz = cb6[8].zzz * r5.xyz + r4.xyz;
  r5.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r1.w);
  r6.xyz = -cb4[2].xyz + cb0[67].xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = sqrt(r4.w);
  r5.w = max(cb4[2].x, cb4[2].y);
  r5.w = max(cb4[2].z, r5.w);
  r5.w = saturate(ceil(r5.w));
  r6.x = r5.w * r4.w;
  r4.w = r5.w * r4.w + cb6[8].w;
  r5.w = max(r4.w, r6.x);
  r3.w = r3.w / r5.w;
  r4.w = min(r4.w, r6.x);
  r4.w = r4.w / r5.w;
  r5.w = 1 + r4.w;
  r3.w = saturate(r3.w * r5.w + -r4.w);
  r3.w = r3.w * 3 + -1;
  r3.w = max(cb6[9].x, r3.w);
  r3.w = min(1, r3.w);
  r4.w = saturate(ceil(cb5[2].y));
  r5.w = 1 + -r3.w;
  r3.w = r4.w * r5.w + r3.w;
  r6.w = saturate(v3.w * r3.w);
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r7.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r3.w = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r3.www + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r7.x = t1.SampleLevel(s0_s, r7.xyz, 0).x;
  } else {
    r7.x = 1;
  }
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r8.w = 0;
  r9.xyz = cb0[136].xyz;
  r9.w = cb0[137].x;
  r8.xyzw = r3.wwww ? r8.xyzw : r9.xyzw;
  r9.yz = r3.ww ? float2(0,0) : cb0[137].yz;
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r11.x = t2[6].val[0/4];
  r11.y = t2[6].val[0/4+1];
  r11.z = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r10.xyz = r11.xyz * r0.www + r10.xyz;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r10.xyz = cb0[187].xyz * r10.xyz;
  r11.xy = -cb0[129].xy + v5.xy;
  r11.xy = cb0[131].zw * r11.xy;
  r11.xy = (uint2)r11.xy;
  r0.w = v5.w * cb2[3].x + cb2[3].y;
  r0.w = log2(r0.w);
  r0.w = cb2[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r3.w = asint(cb2[1].z) + -1;
  r0.w = min((uint)r3.w, (uint)r0.w);
  r11.xy = (uint2)r11.xy >> asuint(cb2[2].xx);
  r0.w = mad((int)r0.w, asint(cb2[1].y), (int)r11.y);
  r0.w = mad((int)r0.w, asint(cb2[1].x), (int)r11.x);
  if (cb2[0].z != 0) {
    r11.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r11.yzw = r11.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r12.xy = r12.xy / r12.ww;
      r13.xy = cmp(r12.xy >= float2(0,0));
      r13.zw = cmp(float2(1,1) >= r12.xy);
      r13.xy = r13.zw ? r13.xy : 0;
      r3.w = r13.y ? r13.x : 0;
      if (r3.w != 0) {
        r3.w = t4.SampleLevel(s2_s, r12.xy, 0).x;
        r4.w = cmp(r12.z < r3.w);
        r3.w = cmp(0.99000001 < r3.w);
        r3.w = (int)r3.w | (int)r4.w;
        r7.x = r3.w ? 1.000000 : 0;
      } else {
        r7.x = 1;
      }
    } else {
      r7.x = 1;
    }
    if (cb2[9].z != 0) {
      r3.w = cb2[9].z;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= asuint(cb2[9].z));
        if (r5.w != 0) break;
        r5.w = dot(cb2[10].xyzw, icb[r4.w+0].xyzw);
        r5.w = cmp(v5.w < r5.w);
        if (r5.w != 0) {
          r3.w = r4.w;
          break;
        }
        r4.w = (int)r4.w + 1;
      }
      r4.w = cmp((uint)r3.w < asuint(cb2[9].z));
      if (r4.w != 0) {
        r4.w = (uint)r3.w << 2;
        r12.xyzw = cb2[r4.w+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb2[r4.w+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb2[r4.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb2[r4.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb2[r3.w+27].xy);
        r14.xy = cmp(cb2[r3.w+27].zw >= r13.zw);
        r12.xy = r12.xy ? r14.xy : 0;
        r3.w = r12.y ? r12.x : 0;
        if (r3.w != 0) {
          r13.xyzw = r13.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r15.x = t3.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb2[31].zwzw * r13.xyzw;
          r15.y = t3.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t3.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t3.SampleLevel(s1_s, r14.zw, 0).x;
          r3.w = r12.z * 4000 + -1;
          r13.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r3.wwww);
          r12.zw = r13.zy + -r13.wx;
          r12.xz = r12.xx * r12.zw + r13.wx;
          r3.w = r12.z + -r12.x;
          r3.w = r12.y * r3.w + r12.x;
        } else {
          r3.w = 1;
        }
      } else {
        r3.w = 1;
      }
    } else {
      r3.w = 1;
    }
    r11.x = 1;
    r4.w = dot(float4(1,1,1,1), r11.xyzw);
    r7.yzw = r11.yzw;
    r5.w = dot(r7.xyzw, float4(1,1,1,1));
    r5.w = -1 + r5.w;
    r4.w = r4.w * r5.w + 1;
    r5.w = saturate(v5.w * cb2[9].x + cb2[9].y);
    r5.w = r5.w * r5.w;
    r4.w = r4.w + -r3.w;
    r3.w = r5.w * r4.w + r3.w;
    r4.w = min(1, r3.w);
    r4.w = r4.w + r3.w;
    r4.w = cmp(0 < r4.w);
    if (r4.w != 0) {
      r4.w = dot(cb2[4].xyz, cb2[4].xyz);
      r4.w = rsqrt(r4.w);
      r11.xyz = cb2[4].xyz * r4.www;
      r4.w = dot(r0.xyz, r11.xyz);
      r5.w = saturate(r4.w);
      r10.w = max(cb0[226].y, cb0[139].x);
      r11.w = dot(r0.xyz, r3.xyz);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r4.w = r11.w + r4.w;
      r4.w = saturate(r4.w * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r11.y = 9.99999975e-006 + abs(r11.w);
      r11.y = min(1, r11.y);
      r12.xyz = r8.xyz * r5.www;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r11.z = r10.w * r10.w;
      r11.w = r11.z * r11.z;
      r12.w = r4.w * r11.w + -r4.w;
      r4.w = r12.w * r4.w + 1;
      r4.w = r4.w * r4.w;
      r4.w = 3.14159274 * r4.w;
      r4.w = r11.w / r4.w;
      r10.w = -r10.w * r10.w + 1;
      r11.w = r11.y * r10.w + r11.z;
      r10.w = r5.w * r10.w + r11.z;
      r10.w = r11.y * r10.w;
      r10.w = r5.w * r11.w + r10.w;
      r10.w = rcp(r10.w);
      r4.w = r10.w * r4.w;
      r10.w = 1 + -r11.x;
      r11.x = r10.w * r10.w;
      r11.x = r11.x * r11.x;
      r11.y = r11.x * r10.w;
      r11.z = saturate(50 * r9.y);
      r10.w = -r11.x * r10.w + 1;
      r9.x = r8.w;
      r13.xyz = r10.www * r9.xyz;
      r11.xyz = r11.zzz * r11.yyy + r13.xyz;
      r4.w = 0.5 * r4.w;
      r11.xyz = r4.www * r11.xyz;
      r11.xyz = r11.xyz * r5.www;
      r13.xyz = cb2[5].xyz * r3.www;
      r12.xyz = r13.xyz * r12.xyz;
      r11.xyz = r13.yzx * r11.yzx;
      r12.w = r11.z;
    } else {
      r11.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r3.w = asuint(cb2[8].z) >> 8;
    r3.w = (int)r3.w & asint(cb1[23].w);
    r12.xyzw = r3.wwww ? r12.xyzw : float4(0,0,0,0);
    r11.xy = r3.ww ? r11.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r11.xy = float2(0,0);
  }
  r3.w = (uint)r0.w << 1;
  r3.w = t6.Load(r3.w).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.w = t6.Load(r4.w).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  r5.w = dot(-r3.xyz, r0.xyz);
  r5.w = r5.w + r5.w;
  r13.xyz = r0.xyz * -r5.www + -r3.xyz;
  r5.w = max(cb0[226].y, cb0[139].x);
  r10.w = r5.w * r5.w;
  r5.w = -r5.w * r5.w + 1;
  r11.z = dot(r0.xyz, r3.xyz);
  r11.w = r11.z + r11.z;
  r13.w = r11.w * r11.z + -1;
  r14.x = 9.99999975e-006 + abs(r11.z);
  r14.x = min(1, r14.x);
  r14.yzw = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  r15.x = r10.w * r10.w;
  r15.y = saturate(50 * r9.y);
  r7.yw = float2(1,1);
  r9.w = r8.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r11.xy;
  r8.w = 0;
  while (true) {
    r15.z = cmp((uint)r8.w >= (uint)r3.w);
    if (r15.z != 0) break;
    r15.z = (int)r4.w + (int)r8.w;
    r15.z = t7.Load(r15.z).x;
    r15.w = (int)r15.z * 6;
    r18.xyzw = t5.Load(r15.w).xyzw;
    r15.w = mad((int)r15.z, 6, 1);
    r19.xyzw = t5.Load(r15.w).xyzw;
    r20.xy = mad((int2)r15.zz, int2(6,6), int2(2,3));
    r21.xyzw = t5.Load(r20.x).xyzw;
    r20.xyzw = t5.Load(r20.y).xyzw;
    r15.w = cmp(r19.w == 0.000000);
    r16.w = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r2.xyz;
    r17.w = dot(r18.xyz, r18.xyz);
    r22.x = rsqrt(r17.w);
    r22.xyz = r22.xxx * r18.xyz;
    r22.w = r18.w * r18.w;
    r17.w = r22.w * r17.w;
    r17.w = -r17.w * r17.w + 1;
    r17.w = max(0, r17.w);
    r17.w = r17.w * r17.w;
    r23.xyz = r18.xyz * r18.www;
    r18.w = dot(r23.xyz, r23.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r17.w = r15.w ? r17.w : r18.w;
    r18.w = dot(r22.xyz, r21.xyz);
    r18.w = r18.w + -r20.x;
    r18.w = saturate(r18.w * r20.y);
    r18.w = r18.w * r18.w;
    r18.w = r18.w * r17.w;
    r16.w = r16.w ? r18.w : r17.w;
    r17.w = cmp(0 < r16.w);
    if (r17.w != 0) {
      r17.w = (int)r21.w & 255;
      r17.w = r17.w ? 1 : 0;
      if (r17.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r17.w = (uint)r21.w >> 4;
        if (1 == 0) r18.w = 0; else if (1+4 < 32) {         r18.w = (uint)r21.w << (32-(1 + 4)); r18.w = (uint)r18.w >> (32-1);        } else r18.w = (uint)r21.w >> 4;
        r23.x = r18.w ? 1 : 0;
        r21.xyz = (int3)r17.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r17.w = dot(r23.xyzw, float4(1,1,1,1));
        r18.w = dot(r22.xyzw, float4(1,1,1,1));
        r19.w = dot(r7.xyyy, r22.xyzw);
        r19.w = -1 + r19.w;
        r18.w = r18.w * r19.w + 1;
        r20.xy = r18.ww * r17.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r17.w = r20.x + r20.y;
      r17.w = cmp(0 < r17.w);
      if (r17.w != 0) {
        r15.z = mad((int)r15.z, 6, 4);
        r22.xyzw = t5.Load(r15.z).xyzw;
        r15.z = f16tof32(r20.w);
        r17.w = 0.5 * r15.z;
        r21.xyz = -r17.www * r22.xyz + r18.xyz;
        r18.xyz = r17.www * r22.xyz + r18.xyz;
        r17.w = cmp(0 < r15.z);
        if (r17.w != 0) {
          r18.w = dot(r21.xyz, r21.xyz);
          r19.w = dot(r18.xyz, r18.xyz);
          r18.w = rsqrt(r18.w);
          r19.w = rsqrt(r19.w);
          r20.y = r19.w * r18.w;
          r20.w = dot(r21.xyz, r18.xyz);
          r20.w = r20.w * r20.y;
          r22.x = r20.w * 0.5 + r20.y;
          r22.x = 0.5 + r22.x;
          r22.y = r20.y / r22.x;
          r20.y = dot(r0.xyz, r21.xyz);
          r22.z = dot(r0.xyz, r18.xyz);
          r19.w = r22.z * r19.w;
          r18.w = r20.y * r18.w + r19.w;
          r22.x = 0.5 * r18.w;
        } else {
          r18.w = dot(r21.xyz, r21.xyz);
          r19.w = 1 + r18.w;
          r22.y = rcp(r19.w);
          r18.w = rsqrt(r18.w);
          r23.xyz = r21.xyz * r18.www;
          r22.x = dot(r0.xyz, r23.xyz);
          r20.w = 1;
        }
        r18.w = cmp(0 < r20.z);
        r19.w = r20.z * r20.z;
        r19.w = saturate(r19.w * r22.y);
        r19.w = sqrt(r19.w);
        r20.y = cmp(r22.x < r19.w);
        r22.z = max(r22.x, -r19.w);
        r22.z = r22.z + r19.w;
        r22.z = r22.z * r22.z;
        r19.w = 4 * r19.w;
        r19.w = r22.z / r19.w;
        r19.w = r20.y ? r19.w : r22.x;
        r18.w = saturate(r18.w ? r19.w : r22.x);
        r15.w = r15.w ? r22.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r19.w = dot(r13.xyz, r18.xyz);
        r22.xyz = r19.www * r13.xyz + -r18.xyz;
        r20.y = dot(r21.xyz, r22.xyz);
        r19.w = r19.w * r19.w;
        r15.z = r15.z * r15.z + -r19.w;
        r15.z = saturate(r20.y / r15.z);
        r18.xyz = r15.zzz * r18.xyz + r21.xyz;
        r18.xyz = r17.www ? r18.xyz : r21.xyz;
        r15.z = dot(r18.xyz, r18.xyz);
        r15.z = rsqrt(r15.z);
        r18.xyz = r18.xyz * r15.zzz;
        r17.w = r20.z * r15.z;
        r17.w = saturate(r17.w * r5.w);
        r15.z = saturate(r22.w * r15.z);
        r19.w = dot(r0.xyz, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r19.w + r11.z;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.y = cmp(0 < r17.w);
        if (r20.y != 0) {
          r20.z = -r17.w * r17.w + 1;
          r20.z = sqrt(r20.z);
          r21.x = dot(r11.zz, r19.ww);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.z);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r11.z);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r17.w;
            r22.x = -r21.y * r19.w + r11.z;
            r22.y = r22.x * r21.z;
            r21.y = -r21.y * r18.x + r13.w;
            r22.z = r19.w * r19.w;
            r22.z = -r11.z * r11.z + -r22.z;
            r22.z = 1 + r22.z;
            r22.z = -r18.x * r18.x + r22.z;
            r21.x = saturate(r21.x * r18.x + r22.z);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.z = r21.x * r11.z;
            r22.w = r22.z + r22.z;
            r23.x = r19.w * r20.z + r11.z;
            r21.z = r21.z * r22.x + r23.x;
            r22.x = r18.x * r20.z + r21.y;
            r22.x = 1 + r22.x;
            r23.yz = r22.xx * r21.xz;
            r23.w = r22.w * r21.z;
            r22.z = r21.z * r22.z;
            r22.z = 0.5 * r22.z;
            r22.z = r23.y * -0.5 + r22.z;
            r24.x = -r23.y * 2 + r23.w;
            r23.w = r24.x * r23.w;
            r23.y = r23.y * r23.y + r23.w;
            r23.w = r22.x * r22.x;
            r22.x = r18.x * r20.z + r22.x;
            r22.x = r22.x * -0.5 + -0.5;
            r22.xz = r23.zz * r22.xz;
            r22.x = r23.x * r23.w + r22.x;
            r21.z = r21.z * r22.x + r23.y;
            r22.x = r22.z + r22.z;
            r23.x = r22.z * r22.z;
            r23.x = r21.z * r21.z + r23.x;
            r22.x = r22.x / r23.x;
            r21.z = r22.x * r21.z;
            r22.x = -r22.x * r22.z + 1;
            r21.x = r21.z * r21.x;
            r21.x = r22.x * r22.y + r21.x;
            r21.z = r21.z * r22.w;
            r21.y = r22.x * r21.y + r21.z;
            r19.w = r19.w * r20.z + r21.x;
            r18.x = r18.x * r20.z + r21.y;
            r20.z = r18.x * 2 + 2;
            r20.z = rsqrt(r20.z);
            r19.w = r19.w + r11.z;
            r18.z = saturate(r19.w * r20.z);
            r18.y = saturate(r20.z * r18.x + r20.z);
          }
        }
        r15.w = r15.w * r18.w;
        r21.xyz = r15.www * r14.yzw;
        r18.x = cmp(0 < r15.z);
        r15.z = r15.z * r15.z;
        r19.w = r18.y * 3.5999999 + 0.400000006;
        r15.z = r15.z / r19.w;
        r15.z = r10.w * r10.w + r15.z;
        r15.z = min(1, r15.z);
        r7.z = r18.x ? r15.z : r15.x;
        r15.z = 0.25 * r17.w;
        r18.x = (uint)r7.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r17.w = r18.x * 3 + r17.w;
        r15.z = r17.w * r15.z;
        r17.w = 0.00100000005 + r18.y;
        r15.z = r15.z / r17.w;
        r22.x = r15.z + r7.z;
        r22.y = r7.z / r22.x;
        r20.yz = r20.yy ? r22.xy : r7.zw;
        r15.z = cmp(r20.w < 1);
        r18.x = 1.00010002 + -r20.w;
        r19.w = 1 + r20.w;
        r18.x = r18.x / r19.w;
        r18.x = sqrt(r18.x);
        r19.w = 0.25 * r18.x;
        r20.w = (uint)r20.y >> 1;
        r20.w = (int)r20.w + 0x1fbd1df5;
        r18.x = r20.w * 3 + r18.x;
        r18.x = r19.w * r18.x;
        r17.w = r18.x / r17.w;
        r17.w = r20.y + r17.w;
        r17.w = r20.y / r17.w;
        r17.w = sqrt(r17.w);
        r17.w = r20.z * r17.w;
        r15.z = r15.z ? r17.w : r20.z;
        r17.w = r18.z * r7.z + -r18.z;
        r17.w = r17.w * r18.z + 1;
        r17.w = r17.w * r17.w;
        r17.w = 3.14159274 * r17.w;
        r17.w = r7.z / r17.w;
        r15.z = r17.w * r15.z;
        r7.z = sqrt(r7.z);
        r17.w = 1 + -r7.z;
        r18.x = r14.x * r17.w + r7.z;
        r7.z = r18.w * r17.w + r7.z;
        r7.z = r14.x * r7.z;
        r7.z = r18.w * r18.x + r7.z;
        r7.z = rcp(r7.z);
        r7.z = r15.z * r7.z;
        r15.z = 1 + -r18.y;
        r17.w = r15.z * r15.z;
        r17.w = r17.w * r17.w;
        r18.x = r17.w * r15.z;
        r15.z = -r17.w * r15.z + 1;
        r18.yzw = r15.zzz * r9.wyz;
        r18.xyz = r15.yyy * r18.xxx + r18.yzw;
        r7.z = 0.5 * r7.z;
        r18.xyz = r7.zzz * r18.xyz;
        r18.xyz = r18.xyz * r15.www;
        r19.xyz = r19.xyz * r16.www;
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
    r7.z = (uint)r21.w >> 8;
    r7.z = (int)r7.z & asint(cb1[23].w);
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r7.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r7.zzz ? r18.xyz : r17.xyz;
    r8.w = (int)r8.w + 1;
  }
  r7.xyz = r17.xyz + r16.xyz;
  r3.yzw = r11.www * r0.xyz + -r3.xyz;
  r11.z = saturate(r11.z);
  r0.w = (int)r0.w + asint(cb2[0].w);
  r4.w = (uint)r0.w << 1;
  r4.w = t6.Load(r4.w).x;
  r4.w = min(asuint(cb2[0].y), (uint)r4.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t6.Load(r0.w).x;
  r5.w = max(0.00100000005, cb0[139].x);
  r5.w = log2(r5.w);
  r5.w = -r5.w * 1.20000005 + 1;
  r7.w = -1 + cb0[195].z;
  r7.w = r7.w + -r5.w;
  r3.x = 0;
  r11.xyw = float3(0,0,0);
  r8.w = 1;
  r10.w = 0;
  while (true) {
    r12.x = cmp((uint)r10.w >= (uint)r4.w);
    if (r12.x != 0) break;
    r12.x = cmp(r8.w < 0.00100000005);
    if (r12.x != 0) {
      break;
    }
    r12.x = (int)r0.w + (int)r10.w;
    r12.x = t7.Load(r12.x).x;
    r12.yzw = -cb3[r12.x+0].xyz + r2.xyz;
    r13.x = dot(r12.yzw, r12.yzw);
    r13.y = sqrt(r13.x);
    r13.z = cmp(r13.y < cb3[r12.x+0].w);
    if (r13.z != 0) {
      r13.z = cmp(0 < cb3[r12.x+341].z);
      if (r13.z != 0) {
        r13.z = (uint)r12.x << 2;
        r14.xyz = cb3[r13.z+1024].xyz * r2.yyy;
        r14.xyz = r2.xxx * cb3[r13.z+1023].xyz + r14.xyz;
        r14.xyz = r2.zzz * cb3[r13.z+1025].xyz + r14.xyz;
        r14.xyz = cb3[r13.z+1026].xyz + r14.xyz;
        r15.xzw = cb3[r13.z+1024].xyz * r3.zzz;
        r15.xzw = r3.yyy * cb3[r13.z+1023].xyz + r15.xzw;
        r15.xzw = r3.www * cb3[r13.z+1025].xyz + r15.xzw;
        r15.xzw = rcp(r15.xzw);
        r16.xyz = -r14.xyz * r15.xzw + -r15.xzw;
        r15.xzw = -r14.xyz * r15.xzw + r15.xzw;
        r15.xzw = max(r16.xyz, r15.xzw);
        r13.z = min(r15.z, r15.w);
        r13.z = min(r15.x, r13.z);
        r15.xzw = r13.zzz * r3.yzw + r2.xyz;
        r16.xyz = cb3[r12.x+682].xyz + cb3[r12.x+0].xyz;
        r16.xyz = -r16.xyz + r15.xzw;
        r13.z = cb3[r12.x+2387].w * 0.699999988;
        r15.xzw = -cb3[r12.x+2387].www * float3(0.5,0.5,0.5) + cb3[r12.x+2387].xyz;
        r17.xyz = cb3[r12.x+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r15.xzw);
        r19.xyz = r14.xyz * cb3[r12.x+2387].xyz + r15.xzw;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.xzw < r17.xyz);
        r14.xyz = r14.xyz * cb3[r12.x+2387].xyz + -r15.xzw;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r13.w = dot(r18.xyz, float3(1,1,1));
        r14.x = dot(r14.xyz, float3(1,1,1));
        r13.w = r14.x + r13.w;
        r13.z = 1 / r13.z;
        r13.z = saturate(r13.w * r13.z);
        r13.w = r13.z * -2 + 3;
        r13.z = r13.z * r13.z;
        r14.x = -r13.w * r13.z + 1;
      } else {
        r13.y = saturate(r13.y / cb3[r12.x+0].w);
        r13.z = dot(r3.yzw, r12.yzw);
        r13.x = -cb3[r12.x+0].w * cb3[r12.x+0].w + r13.x;
        r13.x = r13.z * r13.z + -r13.x;
        r13.w = cmp(r13.x >= 0);
        r13.x = sqrt(r13.x);
        r13.x = r13.x + -r13.z;
        r12.yzw = r13.xxx * r3.yzw + r12.yzw;
        r17.yzw = -cb3[r12.x+682].xyz + r12.yzw;
        r12.y = r13.y * 2.5 + -1.5;
        r12.y = max(0, r12.y);
        r12.z = r12.y * r12.y;
        r12.y = -r12.y * 2 + 3;
        r17.x = -r12.z * r12.y + 1;
        r14.xyzw = r13.wwww ? r17.xyzw : r3.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb3[r12.x+341].y;
      r13.xyzw = t9.SampleLevel(s4_s, r16.xyzw, r7.w).xyzw;
      r12.xyz = cb3[r12.x+341].xxx * r13.xyz;
      r12.xyz = r12.xyz * r14.xxx;
      r11.xyw = r12.xyz * r8.www + r11.xyw;
      r12.x = -r13.w * r14.x + 1;
      r8.w = r12.x * r8.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r11.xyw = cb0[157].xyz * r11.xyw;
  r0.w = cmp(0 < cb2[116].y);
  if (r0.w != 0) {
    r0.w = cb2[116].x + -r5.w;
    r0.w = -1 + r0.w;
    r3.xyz = t8.SampleLevel(s3_s, r3.yzw, r0.w).xyz;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r0.w = cmp(cb2[116].z < 1);
    r12.xyz = r8.www * r3.xyz + r11.xyw;
    r3.xyz = r0.www ? float3(0,0,0) : r3.xyz;
    r11.xyw = r0.www ? r12.xyz : r11.xyw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r0.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r3.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r3.w * r0.w;
  r3.w = min(0, cb0[197].z);
  r3.w = -1 + r3.w;
  r0.w = r0.w * r3.w + 1;
  r3.xyz = r8.www * r3.xyz;
  r3.xyz = r11.xyw * r0.www + r3.xyz;
  r12.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r12.x * r12.x;
  r3.w = -9.27999973 * r11.z;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r12.x + r12.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r12.zw;
  r9.xyz = r9.wyz;
  r0.w = r15.y * r11.y;
  r11.xyz = r9.xyz * r11.xxx + r0.www;
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
    r2.w = dot(cb2[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r1.w = rsqrt(r1.w);
      r5.xyz = r5.xyz * r1.www;
      r1.w = dot(r5.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r5.xyz = cb2[122].xyz * r1.www + r5.xyz;
      r12.xyz = cb2[127].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb2[126].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb2[128].xyz + r12.xyz;
      r1.w = dot(r5.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r5.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r5.xyz = cb0[13].xyz * r0.yyy;
      r5.xyz = r0.xxx * cb0[12].xyz + r5.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r5.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r5.xyz = cb2[r1.w+132].xyw * r0.yyy;
      r5.xyz = r0.xxx * cb2[r1.w+131].xyw + r5.xyz;
      r0.xyz = r0.zzz * cb2[r1.w+133].xyw + r5.xyz;
      r0.xyz = cb2[r1.w+134].xyw + r0.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r5.xyzw = t10.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r5.w * r0.w;
    } else {
      r5.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r5.xyz;
  }
  r0.xyz = r3.xyz * r11.xyz;
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r7.xyz;
  r0.w = cmp(0 < cb2[150].w);
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
    r3.xyzw = t11.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v4.w * r3.w;
    r3.xyz = v4.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v4.xyz;
    r5.x = v4.w;
  }
  r5.yzw = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.yzw = r5.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r5.yzw < abs(r4.xyz));
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
  r0.xyz = r10.xyz * r8.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r0.xyz = r0.xyz * r5.xxx + r3.xyz;
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
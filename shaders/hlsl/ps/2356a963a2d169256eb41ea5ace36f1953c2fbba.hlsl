// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t13 : register(t13);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[179];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
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
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r4.xyz = r0.xyz * r0.www;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = cb3[4].xxx * cb3[1].xyz;
  r4.xyz = t13.Sample(s6_s, r4.xyz).xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xyz;
  r4.xyz = cb3[4].yyy * r6.xyz + r4.xyz;
  r4.xyz = cb3[4].zzz * r4.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[4].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz * cb3[5].xxx + cb3[3].xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r6.xyz = saturate(cb3[5].yzw);
  r1.w = r6.z * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb3[6].x);
  r6.zw = mad((int2)v2.xx, int2(36,36), int2(20,23));
  r3.w = t2[r6.z].val[8/4];
  r3.w = cmp(0 < r3.w);
  if (r3.w != 0) {
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
    r8.x = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r8.x = 1;
  }
  r3.w = 0.0799999982 * r6.y;
  r9.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r9.xyz = r6.xxx * r9.xyz + r3.www;
  r4.xyz = -r4.xyz * r6.xxx + r4.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r9.w = 0;
  r4.w = r6.x;
  r4.xyzw = r3.wwww ? r9.xyzw : r4.xyzw;
  r9.yz = r3.ww ? float2(0,0) : r6.yz;
  r6.xy = -cb0[129].xy + v4.xy;
  r6.xy = cb0[131].zw * r6.xy;
  r6.xy = (uint2)r6.xy;
  r3.w = v4.w * cb1[3].x + cb1[3].y;
  r3.w = log2(r3.w);
  r3.w = cb1[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r5.w = asint(cb1[1].z) + -1;
  r3.w = min((uint)r5.w, (uint)r3.w);
  r6.xy = (uint2)r6.xy >> asuint(cb1[2].xx);
  r3.w = mad((int)r3.w, asint(cb1[1].y), (int)r6.y);
  r3.w = mad((int)r3.w, asint(cb1[1].x), (int)r6.x);
  r5.w = t2[r6.w].val[12/4];
  if (cb1[0].z != 0) {
    r6.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r6.yzw = r6.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r10.xyzw = cb1[51].xyzw * r2.yyyy;
      r10.xyzw = r2.xxxx * cb1[50].xyzw + r10.xyzw;
      r10.xyzw = r2.zzzz * cb1[52].xyzw + r10.xyzw;
      r10.xyzw = cb1[53].xyzw + r10.xyzw;
      r10.xy = r10.xy / r10.ww;
      r11.xy = cmp(r10.xy >= float2(0,0));
      r11.zw = cmp(float2(1,1) >= r10.xy);
      r11.xy = r11.zw ? r11.xy : 0;
      r10.w = r11.y ? r11.x : 0;
      if (r10.w != 0) {
        r10.x = t4.SampleLevel(s2_s, r10.xy, 0).x;
        r10.y = cmp(r10.z < r10.x);
        r10.x = cmp(0.99000001 < r10.x);
        r10.x = (int)r10.x | (int)r10.y;
        r8.x = r10.x ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb1[9].z != 0) {
      r10.x = cb1[9].z;
      r10.y = 0;
      while (true) {
        r10.z = cmp((uint)r10.y >= asuint(cb1[9].z));
        if (r10.z != 0) break;
        r10.z = dot(cb1[10].xyzw, icb[r10.y+0].xyzw);
        r10.z = cmp(v4.w < r10.z);
        if (r10.z != 0) {
          r10.x = r10.y;
          break;
        }
        r10.y = (int)r10.y + 1;
      }
      r10.y = cmp((uint)r10.x < asuint(cb1[9].z));
      if (r10.y != 0) {
        r10.y = (uint)r10.x << 2;
        r11.xyzw = cb1[r10.y+12].xyzw * r2.yyyy;
        r11.xyzw = r2.xxxx * cb1[r10.y+11].xyzw + r11.xyzw;
        r11.xyzw = r2.zzzz * cb1[r10.y+13].xyzw + r11.xyzw;
        r11.xyzw = cb1[r10.y+14].xyzw + r11.xyzw;
        r12.xyzw = r11.xyxy / r11.wwww;
        r10.yz = cmp(r12.zw >= cb1[r10.x+27].xy);
        r10.xw = cmp(cb1[r10.x+27].zw >= r12.zw);
        r10.xy = r10.xw ? r10.yz : 0;
        r10.x = r10.y ? r10.x : 0;
        if (r10.x != 0) {
          r10.xyzw = r12.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r11.xy = frac(r10.zw);
          r10.xyzw = floor(r10.xyzw);
          r12.xyzw = float4(0.5,1.5,0.5,0.5) + r10.zwzw;
          r12.xyzw = cb1[31].zwzw * r12.xyzw;
          r13.x = t3.SampleLevel(s1_s, r12.xy, 0).x;
          r10.xyzw = float4(1.5,1.5,1.5,0.5) + r10.xyzw;
          r10.xyzw = cb1[31].zwzw * r10.xyzw;
          r13.y = t3.SampleLevel(s1_s, r10.xy, 0).x;
          r13.z = t3.SampleLevel(s1_s, r10.zw, 0).x;
          r13.w = t3.SampleLevel(s1_s, r12.zw, 0).x;
          r10.x = r11.z * 4000 + -1;
          r10.xyzw = saturate(r13.xyzw * float4(4000,4000,4000,4000) + -r10.xxxx);
          r10.yz = r10.zy + -r10.wx;
          r10.xy = r11.xx * r10.yz + r10.wx;
          r10.y = r10.y + -r10.x;
          r10.x = r11.y * r10.y + r10.x;
        } else {
          r10.x = 1;
        }
      } else {
        r10.x = 1;
      }
    } else {
      r10.x = 1;
    }
    r6.x = 1;
    r6.x = dot(float4(1,1,1,1), r6.xyzw);
    r8.yzw = r6.yzw;
    r6.y = dot(r8.xyzw, float4(1,1,1,1));
    r6.y = -1 + r6.y;
    r6.x = r6.x * r6.y + 1;
    r6.y = saturate(v4.w * cb1[9].x + cb1[9].y);
    r6.y = r6.y * r6.y;
    r6.x = r6.x + -r10.x;
    r6.x = r6.y * r6.x + r10.x;
    r6.y = min(1, r6.x);
    r6.y = r6.x + r6.y;
    r6.y = cmp(0 < r6.y);
    if (r6.y != 0) {
      r6.y = dot(cb1[4].xyz, cb1[4].xyz);
      r6.y = rsqrt(r6.y);
      r6.yzw = cb1[4].xyz * r6.yyy;
      r10.x = dot(r0.xyz, r6.yzw);
      r10.y = saturate(r10.x);
      r10.z = max(cb0[226].y, r1.w);
      r6.y = dot(r3.xyz, r6.yzw);
      r6.z = r6.y * 2 + 2;
      r6.z = rsqrt(r6.z);
      r6.w = r10.x + r0.w;
      r6.w = saturate(r6.w * r6.z);
      r6.y = saturate(r6.z * r6.y + r6.z);
      r6.z = 9.99999975e-006 + abs(r0.w);
      r6.z = min(1, r6.z);
      r11.xyz = r10.yyy * r4.xyz;
      r11.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
      r10.x = r10.z * r10.z;
      r10.w = r10.x * r10.x;
      r11.w = r6.w * r10.w + -r6.w;
      r6.w = r11.w * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = 3.14159274 * r6.w;
      r6.w = r10.w / r6.w;
      r10.z = -r10.z * r10.z + 1;
      r10.w = r6.z * r10.z + r10.x;
      r10.x = r10.y * r10.z + r10.x;
      r6.z = r10.x * r6.z;
      r6.z = r10.y * r10.w + r6.z;
      r6.z = rcp(r6.z);
      r6.z = r6.w * r6.z;
      r6.y = 1 + -r6.y;
      r6.w = r6.y * r6.y;
      r6.w = r6.w * r6.w;
      r10.x = r6.w * r6.y;
      r10.z = saturate(50 * r9.y);
      r6.y = -r6.w * r6.y + 1;
      r9.x = r4.w;
      r12.xyz = r6.yyy * r9.xyz;
      r10.xzw = r10.zzz * r10.xxx + r12.xyz;
      r6.y = 0.5 * r6.z;
      r6.yzw = r6.yyy * r10.xzw;
      r6.yzw = r10.yyy * r6.yzw;
      r10.xyz = cb1[5].xyz * r6.xxx;
      r11.xyz = r11.xyz * r10.xyz;
      r6.xyz = r10.yzx * r6.zwy;
      r11.w = r6.z;
    } else {
      r6.xy = float2(0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r6.z = asuint(cb1[8].z) >> 8;
    r6.z = (int)r5.w & (int)r6.z;
    r10.xyzw = r6.zzzz ? r11.xyzw : float4(0,0,0,0);
    r6.xy = r6.zz ? r6.xy : float2(0,0);
  } else {
    r10.xyzw = float4(0,0,0,0);
    r6.xy = float2(0,0);
  }
  r6.z = (uint)r3.w << 1;
  r6.z = t6.Load(r6.z).x;
  r6.z = min(asuint(cb1[0].x), (uint)r6.z);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r6.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.w = t6.Load(r6.w).x;
  r6.z = min(asuint(cb1[0].x), (uint)r6.z);
  r11.x = dot(-r3.xyz, r0.xyz);
  r11.x = r11.x + r11.x;
  r11.xyz = r0.xyz * -r11.xxx + -r3.xyz;
  r11.w = max(cb0[226].y, r1.w);
  r12.x = r11.w * r11.w;
  r11.w = -r11.w * r11.w + 1;
  r12.y = r0.w + r0.w;
  r12.z = r12.y * r0.w + -1;
  r12.w = 9.99999975e-006 + abs(r0.w);
  r12.w = min(1, r12.w);
  r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r13.w = r12.x * r12.x;
  r14.x = saturate(50 * r9.y);
  r8.yw = float2(1,1);
  r9.w = r4.w;
  r14.yzw = r10.xyz;
  r15.x = r10.w;
  r15.yz = r6.xy;
  r4.w = 0;
  while (true) {
    r15.w = cmp((uint)r4.w >= (uint)r6.z);
    if (r15.w != 0) break;
    r15.w = (int)r4.w + (int)r6.w;
    r15.w = t7.Load(r15.w).x;
    r16.x = (int)r15.w * 6;
    r16.xyzw = t5.Load(r16.x).xyzw;
    r17.x = mad((int)r15.w, 6, 1);
    r17.xyzw = t5.Load(r17.x).xyzw;
    r18.xy = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r19.xyzw = t5.Load(r18.x).xyzw;
    r18.xyzw = t5.Load(r18.y).xyzw;
    r20.x = cmp(r17.w == 0.000000);
    r20.y = cmp(-2 < r18.x);
    r16.xyz = r16.xyz + -r2.xyz;
    r20.z = dot(r16.xyz, r16.xyz);
    r20.w = rsqrt(r20.z);
    r21.xyz = r20.www * r16.xyz;
    r20.w = r16.w * r16.w;
    r20.z = r20.z * r20.w;
    r20.z = -r20.z * r20.z + 1;
    r20.z = max(0, r20.z);
    r20.z = r20.z * r20.z;
    r22.xyz = r16.xyz * r16.www;
    r16.w = dot(r22.xyz, r22.xyz);
    r16.w = min(1, r16.w);
    r16.w = 1 + -r16.w;
    r16.w = log2(r16.w);
    r16.w = r17.w * r16.w;
    r16.w = exp2(r16.w);
    r16.w = r20.x ? r20.z : r16.w;
    r17.w = dot(r21.xyz, r19.xyz);
    r17.w = r17.w + -r18.x;
    r17.w = saturate(r17.w * r18.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r16.w = r20.y ? r17.w : r16.w;
    r17.w = cmp(0 < r16.w);
    if (r17.w != 0) {
      r17.w = (int)r19.w & 255;
      r17.w = r17.w ? 1 : 0;
      if (r17.w != 0) {
        r21.xyzw = (int4)r19.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r17.w = (uint)r19.w >> 4;
        if (1 == 0) r18.x = 0; else if (1+4 < 32) {         r18.x = (uint)r19.w << (32-(1 + 4)); r18.x = (uint)r18.x >> (32-1);        } else r18.x = (uint)r19.w >> 4;
        r22.x = r18.x ? 1 : 0;
        r19.xyz = (int3)r17.www & int3(2,4,8);
        r22.yzw = r19.xyz ? float3(1,1,1) : float3(0,0,0);
        r17.w = dot(r22.xyzw, float4(1,1,1,1));
        r18.x = dot(r21.xyzw, float4(1,1,1,1));
        r18.y = dot(r8.xyyy, r21.xyzw);
        r18.y = -1 + r18.y;
        r18.x = r18.x * r18.y + 1;
        r18.xy = r18.xx * r17.ww;
      } else {
        r18.xy = float2(1,1);
      }
      r17.w = r18.x + r18.y;
      r17.w = cmp(0 < r17.w);
      if (r17.w != 0) {
        r15.w = mad((int)r15.w, 6, 4);
        r21.xyzw = t5.Load(r15.w).xyzw;
        r15.w = f16tof32(r18.w);
        r17.w = 0.5 * r15.w;
        r19.xyz = -r17.www * r21.xyz + r16.xyz;
        r16.xyz = r17.www * r21.xyz + r16.xyz;
        r17.w = cmp(0 < r15.w);
        if (r17.w != 0) {
          r18.y = dot(r19.xyz, r19.xyz);
          r18.w = dot(r16.xyz, r16.xyz);
          r18.y = rsqrt(r18.y);
          r18.w = rsqrt(r18.w);
          r20.y = r18.y * r18.w;
          r20.z = dot(r19.xyz, r16.xyz);
          r20.z = r20.z * r20.y;
          r20.w = r20.z * 0.5 + r20.y;
          r20.w = 0.5 + r20.w;
          r21.y = r20.y / r20.w;
          r20.y = dot(r0.xyz, r19.xyz);
          r20.w = dot(r0.xyz, r16.xyz);
          r18.w = r20.w * r18.w;
          r18.y = r20.y * r18.y + r18.w;
          r21.x = 0.5 * r18.y;
        } else {
          r18.y = dot(r19.xyz, r19.xyz);
          r18.w = 1 + r18.y;
          r21.y = rcp(r18.w);
          r18.y = rsqrt(r18.y);
          r22.xyz = r19.xyz * r18.yyy;
          r21.x = dot(r0.xyz, r22.xyz);
          r20.z = 1;
        }
        r18.y = cmp(0 < r18.z);
        r18.w = r18.z * r18.z;
        r18.w = saturate(r18.w * r21.y);
        r18.w = sqrt(r18.w);
        r20.y = cmp(r21.x < r18.w);
        r20.w = max(r21.x, -r18.w);
        r20.w = r20.w + r18.w;
        r20.w = r20.w * r20.w;
        r18.w = 4 * r18.w;
        r18.w = r20.w / r18.w;
        r18.w = r20.y ? r18.w : r21.x;
        r18.y = saturate(r18.y ? r18.w : r21.x);
        r18.w = r20.x ? r21.y : 1;
        r16.xyz = r16.xyz + -r19.xyz;
        r20.x = dot(r11.xyz, r16.xyz);
        r21.xyz = r20.xxx * r11.xyz + -r16.xyz;
        r20.y = dot(r19.xyz, r21.xyz);
        r20.x = r20.x * r20.x;
        r15.w = r15.w * r15.w + -r20.x;
        r15.w = saturate(r20.y / r15.w);
        r16.xyz = r15.www * r16.xyz + r19.xyz;
        r16.xyz = r17.www ? r16.xyz : r19.xyz;
        r15.w = dot(r16.xyz, r16.xyz);
        r15.w = rsqrt(r15.w);
        r16.xyz = r16.xyz * r15.www;
        r17.w = r18.z * r15.w;
        r17.w = saturate(r17.w * r11.w);
        r15.w = saturate(r21.w * r15.w);
        r18.z = dot(r0.xyz, r16.xyz);
        r16.x = dot(r3.xyz, r16.xyz);
        r16.y = r16.x * 2 + 2;
        r16.y = rsqrt(r16.y);
        r16.z = r18.z + r0.w;
        r16.z = saturate(r16.z * r16.y);
        r16.y = saturate(r16.y * r16.x + r16.y);
        r19.x = cmp(0 < r17.w);
        if (r19.x != 0) {
          r19.y = -r17.w * r17.w + 1;
          r19.y = sqrt(r19.y);
          r19.z = dot(r0.ww, r18.zz);
          r20.x = r19.z + -r16.x;
          r20.y = cmp(r20.x >= r19.y);
          if (r20.y != 0) {
            r16.z = 1;
            r16.y = abs(r0.w);
          } else {
            r20.y = -r20.x * r20.x + 1;
            r20.y = rsqrt(r20.y);
            r20.y = r20.y * r17.w;
            r20.w = -r20.x * r18.z + r0.w;
            r21.x = r20.y * r20.w;
            r20.x = -r20.x * r16.x + r12.z;
            r20.x = r20.y * r20.x;
            r21.y = r18.z * r18.z;
            r21.y = -r0.w * r0.w + -r21.y;
            r21.y = 1 + r21.y;
            r21.y = -r16.x * r16.x + r21.y;
            r19.z = saturate(r19.z * r16.x + r21.y);
            r19.z = sqrt(r19.z);
            r19.z = r20.y * r19.z;
            r21.y = r19.z * r0.w;
            r21.z = r21.y + r21.y;
            r21.w = r18.z * r19.y + r0.w;
            r20.y = r20.y * r20.w + r21.w;
            r20.w = r16.x * r19.y + r20.x;
            r20.w = 1 + r20.w;
            r22.x = r20.w * r19.z;
            r22.y = r20.y * r20.w;
            r22.z = r21.z * r20.y;
            r21.y = r20.y * r21.y;
            r21.y = 0.5 * r21.y;
            r21.y = r22.x * -0.5 + r21.y;
            r21.y = r22.y * r21.y;
            r22.w = -r22.x * 2 + r22.z;
            r22.z = r22.z * r22.w;
            r22.x = r22.x * r22.x + r22.z;
            r22.z = r20.w * r20.w;
            r20.w = r16.x * r19.y + r20.w;
            r20.w = r20.w * -0.5 + -0.5;
            r20.w = r22.y * r20.w;
            r20.w = r21.w * r22.z + r20.w;
            r20.y = r20.y * r20.w + r22.x;
            r20.w = r21.y + r21.y;
            r21.w = r21.y * r21.y;
            r21.w = r20.y * r20.y + r21.w;
            r20.w = r20.w / r21.w;
            r20.y = r20.w * r20.y;
            r20.w = -r20.w * r21.y + 1;
            r19.z = r20.y * r19.z;
            r19.z = r20.w * r21.x + r19.z;
            r20.y = r20.y * r21.z;
            r20.x = r20.w * r20.x + r20.y;
            r18.z = r18.z * r19.y + r19.z;
            r16.x = r16.x * r19.y + r20.x;
            r19.y = r16.x * 2 + 2;
            r19.y = rsqrt(r19.y);
            r18.z = r18.z + r0.w;
            r16.z = saturate(r18.z * r19.y);
            r16.y = saturate(r19.y * r16.x + r19.y);
          }
        }
        r16.x = r18.w * r18.y;
        r20.xyw = r16.xxx * r13.xyz;
        r18.z = cmp(0 < r15.w);
        r15.w = r15.w * r15.w;
        r18.w = r16.y * 3.5999999 + 0.400000006;
        r15.w = r15.w / r18.w;
        r15.w = r12.x * r12.x + r15.w;
        r15.w = min(1, r15.w);
        r8.z = r18.z ? r15.w : r13.w;
        r15.w = 0.25 * r17.w;
        r18.z = (uint)r8.z >> 1;
        r18.z = (int)r18.z + 0x1fbd1df5;
        r17.w = r18.z * 3 + r17.w;
        r15.w = r17.w * r15.w;
        r17.w = 0.00100000005 + r16.y;
        r15.w = r15.w / r17.w;
        r21.x = r15.w + r8.z;
        r21.y = r8.z / r21.x;
        r18.zw = r19.xx ? r21.xy : r8.zw;
        r15.w = cmp(r20.z < 1);
        r19.x = 1.00010002 + -r20.z;
        r19.y = 1 + r20.z;
        r19.x = r19.x / r19.y;
        r19.x = sqrt(r19.x);
        r19.y = 0.25 * r19.x;
        r19.z = (uint)r18.z >> 1;
        r19.z = (int)r19.z + 0x1fbd1df5;
        r19.x = r19.z * 3 + r19.x;
        r19.x = r19.y * r19.x;
        r17.w = r19.x / r17.w;
        r17.w = r18.z + r17.w;
        r17.w = r18.z / r17.w;
        r17.w = sqrt(r17.w);
        r17.w = r18.w * r17.w;
        r15.w = r15.w ? r17.w : r18.w;
        r17.w = r16.z * r8.z + -r16.z;
        r16.z = r17.w * r16.z + 1;
        r16.z = r16.z * r16.z;
        r16.z = 3.14159274 * r16.z;
        r16.z = r8.z / r16.z;
        r15.w = r16.z * r15.w;
        r8.z = sqrt(r8.z);
        r16.z = 1 + -r8.z;
        r17.w = r12.w * r16.z + r8.z;
        r8.z = r18.y * r16.z + r8.z;
        r8.z = r12.w * r8.z;
        r8.z = r18.y * r17.w + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r15.w * r8.z;
        r15.w = 1 + -r16.y;
        r16.y = r15.w * r15.w;
        r16.y = r16.y * r16.y;
        r16.z = r16.y * r15.w;
        r15.w = -r16.y * r15.w + 1;
        r18.yzw = r15.www * r9.wyz;
        r18.yzw = r14.xxx * r16.zzz + r18.yzw;
        r8.z = 0.5 * r8.z;
        r18.yzw = r8.zzz * r18.yzw;
        r16.xyz = r18.yzw * r16.xxx;
        r17.xyz = r17.xyz * r16.www;
        r17.xyz = r17.xyz * r18.xxx;
        r18.xyz = r20.xyw * r17.xyz;
        r16.xyz = r17.xyz * r16.xyz;
      } else {
        r18.xyz = float3(0,0,0);
        r16.xyz = float3(0,0,0);
      }
    } else {
      r18.xyz = float3(0,0,0);
      r16.xyz = float3(0,0,0);
    }
    r8.z = (uint)r19.w >> 8;
    r8.z = (int)r5.w & (int)r8.z;
    r17.xyz = r18.xyz + r14.yzw;
    r16.xyz = r16.xyz + r15.xyz;
    r14.yzw = r8.zzz ? r17.xyz : r14.yzw;
    r15.xyz = r8.zzz ? r16.xyz : r15.xyz;
    r4.w = (int)r4.w + 1;
  }
  r6.xyz = r15.xyz + r14.yzw;
  r8.yzw = r12.yyy * r0.xyz + -r3.xyz;
  r0.w = saturate(r0.w);
  r3.x = (int)r3.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t6.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t6.Load(r3.x).x;
  r3.z = max(0.00100000005, r1.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r8.x = 0;
  r10.xyz = float3(0,0,0);
  r3.w = 1;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= (uint)r3.y);
    if (r5.w != 0) break;
    r5.w = cmp(r3.w < 0.00100000005);
    if (r5.w != 0) {
      break;
    }
    r5.w = (int)r3.x + (int)r4.w;
    r5.w = t7.Load(r5.w).x;
    r11.xyz = -cb2[r5.w+0].xyz + r2.xyz;
    r6.w = dot(r11.xyz, r11.xyz);
    r10.w = sqrt(r6.w);
    r11.w = cmp(r10.w < cb2[r5.w+0].w);
    if (r11.w != 0) {
      r11.w = cmp(0 < cb2[r5.w+341].z);
      if (r11.w != 0) {
        r11.w = (uint)r5.w << 2;
        r12.xyz = cb2[r11.w+1024].xyz * r2.yyy;
        r12.xyz = r2.xxx * cb2[r11.w+1023].xyz + r12.xyz;
        r12.xyz = r2.zzz * cb2[r11.w+1025].xyz + r12.xyz;
        r12.xyz = cb2[r11.w+1026].xyz + r12.xyz;
        r13.xyz = cb2[r11.w+1024].xyz * r8.zzz;
        r13.xyz = r8.yyy * cb2[r11.w+1023].xyz + r13.xyz;
        r13.xyz = r8.www * cb2[r11.w+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.yzw = -r12.xyz * r13.xyz + -r13.xyz;
        r13.xyz = -r12.xyz * r13.xyz + r13.xyz;
        r13.xyz = max(r14.yzw, r13.xyz);
        r11.w = min(r13.y, r13.z);
        r11.w = min(r13.x, r11.w);
        r13.xyz = r11.www * r8.yzw + r2.xyz;
        r14.yzw = cb2[r5.w+682].xyz + cb2[r5.w+0].xyz;
        r13.xyz = -r14.yzw + r13.xyz;
        r11.w = cb2[r5.w+2387].w * 0.699999988;
        r14.yzw = -cb2[r5.w+2387].www * float3(0.5,0.5,0.5) + cb2[r5.w+2387].xyz;
        r15.xyz = cb2[r5.w+2387].xyz * r12.xyz;
        r16.xyz = cmp(r15.xyz < -r14.yzw);
        r17.xyz = r12.xyz * cb2[r5.w+2387].xyz + r14.yzw;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r14.yzw < r15.xyz);
        r12.xyz = r12.xyz * cb2[r5.w+2387].xyz + -r14.yzw;
        r12.xyz = abs(r12.xyz);
        r12.xyz = r15.xyz ? r12.xyz : 0;
        r12.w = dot(r16.xyz, float3(1,1,1));
        r12.x = dot(r12.xyz, float3(1,1,1));
        r12.x = r12.w + r12.x;
        r11.w = 1 / r11.w;
        r11.w = saturate(r12.x * r11.w);
        r12.x = r11.w * -2 + 3;
        r11.w = r11.w * r11.w;
        r12.x = -r12.x * r11.w + 1;
      } else {
        r10.w = saturate(r10.w / cb2[r5.w+0].w);
        r11.w = dot(r8.yzw, r11.xyz);
        r6.w = -cb2[r5.w+0].w * cb2[r5.w+0].w + r6.w;
        r6.w = r11.w * r11.w + -r6.w;
        r14.y = cmp(r6.w >= 0);
        r6.w = sqrt(r6.w);
        r6.w = r6.w + -r11.w;
        r11.xyz = r6.www * r8.yzw + r11.xyz;
        r11.yzw = -cb2[r5.w+682].xyz + r11.xyz;
        r6.w = r10.w * 2.5 + -1.5;
        r6.w = max(0, r6.w);
        r10.w = r6.w * r6.w;
        r6.w = -r6.w * 2 + 3;
        r11.x = -r10.w * r6.w + 1;
        r12.xyzw = r14.yyyy ? r11.xyzw : r8.xyzw;
        r13.xyz = r12.yzw;
      }
      r13.w = cb2[r5.w+341].y;
      r11.xyzw = t8.SampleLevel(s3_s, r13.xyzw, r3.z).xyzw;
      r11.xyz = cb2[r5.w+341].xxx * r11.xyz;
      r11.xyz = r11.xyz * r12.xxx;
      r10.xyz = r11.xyz * r3.www + r10.xyz;
      r5.w = -r11.w * r12.x + 1;
      r3.w = r5.w * r3.w;
    }
    r4.w = (int)r4.w + 1;
  }
  r3.xyz = cb0[157].xyz * r10.xyz;
  r3.w = saturate(r1.w * cb0[197].x + cb0[197].y);
  r4.w = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r4.w * r3.w;
  r4.w = min(0, cb0[197].z);
  r4.w = -1 + r4.w;
  r3.w = r3.w * r4.w + 1;
  r3.xyz = r3.xyz * r3.www;
  r3.w = cmp(cb0[145].x == 0.000000);
  if (r3.w != 0) {
    r3.w = asuint(cb0[144].y);
    r10.xy = r3.ww * float2(32.6650009,11.8149996) + v4.xy;
    r3.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -0.5 + r3.w;
    r10.xyzw = cb0[1].xyzw * r1.yyyy;
    r10.xyzw = r1.xxxx * cb0[0].xyzw + r10.xyzw;
    r10.xyzw = r1.zzzz * cb0[2].xyzw + r10.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r8.xyz = r8.yzw * v4.www + r1.xyz;
    r11.xyzw = cb0[1].xyzw * r8.yyyy;
    r11.xyzw = r8.xxxx * cb0[0].xyzw + r11.xyzw;
    r8.xyzw = r8.zzzz * cb0[2].xyzw + r11.xyzw;
    r8.xyzw = cb0[3].xyzw + r8.xyzw;
    r4.w = rcp(r10.w);
    r11.xyz = r10.xyz * r4.www;
    r4.w = rcp(r8.w);
    r10.xy = v4.ww * cb0[30].zw + r10.zw;
    r5.w = rcp(r10.y);
    r8.xyz = r8.xyz * r4.www + -r11.xyz;
    r4.w = dot(r8.xy, r8.xy);
    r4.w = sqrt(r4.w);
    r6.w = 0.5 * r4.w;
    r10.yz = r11.xy * r6.ww + r8.xy;
    r10.yz = -r4.ww * float2(0.5,0.5) + abs(r10.yz);
    r10.yz = max(float2(0,0), r10.yz);
    r10.yz = r10.yz / abs(r8.xy);
    r10.yz = float2(1,1) + -r10.yz;
    r4.w = min(r10.y, r10.z);
    r4.w = r4.w / r6.w;
    r8.xyz = r8.xyz * r4.www;
    r4.w = -r10.x * r5.w + r11.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r8.z), r4.w);
    r10.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = cb1[176].xy * r10.xy;
    r8.xy = cb1[176].xy * r8.xy;
    r5.w = 0.0833333358 * r4.w;
    r8.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r8.xyz;
    r10.xyz = r8.xyz * r3.www + r11.xyz;
    r3.w = 1;
    r11.xyz = float3(0,0,0);
    r6.w = 0;
    r8.w = 0;
    r10.w = 0;
    r12.xw = float2(0,0);
    r13.xw = float2(0,0);
    while (true) {
      r14.y = cmp((uint)r13.w >= 12);
      if (r14.y != 0) break;
      r14.y = (uint)r13.w;
      r15.xyzw = float4(1,2,3,4) + r14.yyyy;
      r16.xyzw = r15.xxxy * r8.xyzz + r10.xyzz;
      r17.xyzw = r15.yyzz * r8.xyxy + r10.xyxy;
      r15.xyzw = r15.wwzw * r8.xyzz + r10.xyzz;
      r14.y = r1.w * 0.666666687 + r3.w;
      r14.z = r1.w * 0.666666687 + r14.y;
      r18.x = t11.SampleLevel(s4_s, r16.xy, r3.w).x;
      r18.y = t11.SampleLevel(s4_s, r17.xy, r3.w).x;
      r18.z = t11.SampleLevel(s4_s, r17.zw, r14.y).x;
      r18.w = t11.SampleLevel(s4_s, r15.xy, r14.y).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r5.wwww);
      r14.yw = (int2)r16.zw | (int2)r16.xy;
      r14.y = (int)r14.w | (int)r14.y;
      if (r14.y != 0) {
        r13.x = r15.x;
        r11.xyz = r15.yzw;
        r6.w = r16.x;
        r8.w = r16.y;
        r10.w = r16.z;
        r12.w = -1;
        break;
      }
      r12.x = r15.w;
      r13.w = (int)r13.w + 4;
      r3.w = r14.z;
      r13.x = r15.x;
      r11.xyz = r15.yzw;
      r6.w = r16.x;
      r8.w = r16.y;
      r10.w = r16.z;
      r12.w = r14.y;
    }
    if (r12.w != 0) {
      r11.w = 2;
      r15.xy = r11.yz;
      r15.z = 3;
      r11.yzw = r10.www ? r11.xyw : r15.xyz;
      r13.y = r11.x;
      r13.z = 1;
      r11.xyz = r8.www ? r13.xyz : r11.yzw;
      r12.y = r13.x;
      r12.z = 0;
      r11.xyz = r6.www ? r12.xyz : r11.xyz;
      r3.w = (uint)r13.w;
      r3.w = r11.z + r3.w;
      r4.w = r11.x + -r11.y;
      r4.w = saturate(r11.x / r4.w);
      r3.w = r4.w + r3.w;
      r8.xyz = r8.xyz * r3.www + r10.xyz;
      r8.xy = cb1[176].zw * r8.xy;
      r8.xy = r8.xy * float2(2,-2) + float2(-1,1);
      r8.xy = cb0[66].xy * r8.xy;
      r8.xy = r8.xy / cb0[66].xy;
      r10.xyz = cb0[123].xyw * r8.yyy;
      r10.xyz = r8.xxx * cb0[122].xyw + r10.xyz;
      r10.xyz = r8.zzz * cb0[124].xyw + r10.xyz;
      r10.xyz = cb0[125].xyw + r10.xyz;
      r8.zw = r10.xy / r10.zz;
      r10.xy = r8.zw * cb1[177].xy + cb1[177].zw;
      r8.xy = saturate(abs(r8.xy) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r8.xy, r8.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r8.xy = saturate(abs(r8.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r8.xy, r8.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r3.w = min(r4.w, r3.w);
      r8.xyz = t12.SampleLevel(s5_s, r10.xy, 0).xyz;
      r8.xyz = min(float3(0,0,0), -r8.xyz);
      r4.w = saturate(-r1.w * 6.5999999 + 2);
      r3.w = r4.w * r3.w;
      r4.w = 1;
      r8.xyz = -r8.xyz * r3.www;
      r8.xyz = cb1[178].xxx * r8.xyz;
      r3.w = -r4.w * r3.w + 1;
      r3.xyz = r3.xyz * r3.www + r8.xyz;
    }
  }
  r8.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r3.w = r8.x * r8.x;
  r0.w = -9.27999973 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r8.x + r8.y;
  r8.xy = r0.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r9.xyz = r9.wyz;
  r0.w = r14.x * r8.y;
  r8.xyz = r9.xyz * r8.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r10.xyz = -cb1[123].xyz + r2.xyz;
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
    r1.w = -0.200000003 + r1.w;
    r1.w = saturate(10 * r1.w);
    r1.w = 1 + -r1.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r10.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r10.xyz, r10.xyz);
      r1.w = rsqrt(r1.w);
      r10.xyz = r10.xyz * r1.www;
      r1.w = dot(r10.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r10.xyz = cb1[122].xyz * r1.www + r10.xyz;
      r11.xyz = cb1[127].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb1[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r11.xyz;
      r1.w = dot(r10.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r10.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r10.xyz = cb0[13].xyz * r0.yyy;
      r10.xyz = r0.xxx * cb0[12].xyz + r10.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r10.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r10.xyz = cb1[r1.w+132].xyw * r0.yyy;
      r10.xyz = r0.xxx * cb1[r1.w+131].xyw + r10.xyz;
      r0.xyz = r0.zzz * cb1[r1.w+133].xyw + r10.xyz;
      r0.xyz = cb1[r1.w+134].xyw + r0.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r10.xyzw = t9.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r10.w * r0.w;
    } else {
      r10.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r10.xyz;
  }
  r0.xyz = r3.xyz * r8.xyz;
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r6.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r6.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r3.xyzw = t10.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r6.x = v3.w * r3.w;
    r3.xyz = v3.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v3.xyz;
    r6.x = v3.w;
  }
  r4.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r4.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.x = t2[r4.y].val[0/4];
    r5.y = t2[r4.y].val[0/4+1];
    r5.z = t2[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
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
  r0.xyz = r7.xyz + r0.xyz;
  r0.xyz = r0.xyz * r6.xxx + r3.xyz;
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
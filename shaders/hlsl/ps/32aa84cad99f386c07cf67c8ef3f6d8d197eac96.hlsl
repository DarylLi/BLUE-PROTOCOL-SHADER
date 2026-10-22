// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[49];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[130];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.y = (int)r0.x & 15;
  r0.z = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.w = r0.z * cb0[65].x + cb0[65].y;
  r0.z = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r1.xy = -cb0[129].xy + v1.xy;
  r1.xy = (uint2)r1.xy;
  r0.w = r0.z * cb1[3].x + cb1[3].y;
  r0.w = log2(r0.w);
  r0.w = cb1[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r1.z = asint(cb1[1].z) + -1;
  r0.w = min((uint)r1.z, (uint)r0.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r0.w = mad((int)r0.w, asint(cb1[1].y), (int)r1.y);
  r0.w = mad((int)r0.w, asint(cb1[1].x), (int)r1.x);
  r1.x = (uint)r0.w << 1;
  r1.x = t5.Load(r1.x).x;
  r1.x = min(asuint(cb1[0].x), (uint)r1.x);
  r1.y = cmp((int)r1.x == 0);
  r1.z = cmp((int)r0.y == 0);
  r1.y = (int)r1.z | (int)r1.y;
  if (r1.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t5.Load(r0.w).x;
  r2.xyzw = cmp((int4)r0.yyyy == int4(1,2,3,4));
  if (r2.x != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r4.xy = v0.zw * r0.zz;
    r4.yzw = cb0[49].xyz * r4.yyy;
    r4.xyz = r4.xxx * cb0[48].xyz + r4.yzw;
    r4.xyz = r0.zzz * cb0[50].xyz + r4.xyz;
    r4.xyz = cb0[51].xyz + r4.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r5.xyz = float3(0,0,0);
    r2.x = cb1[48].w;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.w);
      if (r5.w != 0) break;
      r5.w = (int)r0.w + (int)r4.w;
      r5.w = t6.Load(r5.w).x;
      r6.x = cmp((uint)r5.w >= (uint)r2.x);
      if (r6.x != 0) {
        break;
      }
      r6.x = (int)r5.w * 6;
      r6.xyzw = t4.Load(r6.x).xyzw;
      r7.x = r6.w * r6.w;
      r7.yzw = -r6.xyz + r4.xyz;
      r7.y = dot(r7.yzw, r7.yzw);
      r7.y = r7.y * r7.x;
      r7.y = cmp(1 < r7.y);
      if (r7.y != 0) {
        r7.y = (int)r4.w + 1;
        r4.w = r7.y;
        continue;
      }
      r7.y = mad((int)r5.w, 6, 1);
      r7.y = t4.Load(r7.y).w;
      r7.zw = mad((int2)r5.ww, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r7.z).xyzw;
      r7.zw = t4.Load(r7.w).xy;
      r5.w = cmp(r7.y == 0.000000);
      r9.x = (uint)r8.w >> 16;
      r9.x = cmp((int)r9.x == 2);
      r6.xyz = r6.xyz + -r4.xyz;
      r9.y = dot(r6.xyz, r6.xyz);
      r9.z = rsqrt(r9.y);
      r10.xyz = r9.zzz * r6.xyz;
      r7.x = r9.y * r7.x;
      r7.x = -r7.x * r7.x + 1;
      r7.x = max(0, r7.x);
      r7.x = r7.x * r7.x;
      r6.xyz = r6.xyz * r6.www;
      r6.x = dot(r6.xyz, r6.xyz);
      r6.x = min(1, r6.x);
      r6.x = 1 + -r6.x;
      r6.x = log2(r6.x);
      r6.x = r7.y * r6.x;
      r6.x = exp2(r6.x);
      r5.w = r5.w ? r7.x : r6.x;
      r6.x = dot(r10.xyz, r8.xyz);
      r6.x = r6.x + -r7.z;
      r6.x = saturate(r6.x * r7.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.x * r5.w;
      r5.w = r9.x ? r6.x : r5.w;
      r5.w = cmp(0 < r5.w);
      if (r5.w != 0) {
        r5.w = (int)r8.w & 255;
        r5.w = r5.w ? 1 : 0;
        if (r5.w != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r3.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r5.ww * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yz;
        }
        r5.w = r6.x + r6.y;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = 1;
        } else {
          r5.w = 0.600000024;
        }
      } else {
        r5.w = 0.300000012;
      }
      r5.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r5.xyz;
      r4.w = (int)r4.w + 1;
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  if (r2.y != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r2.xy = v0.zw * r0.zz;
    r4.xyz = cb0[49].xyz * r2.yyy;
    r4.xyz = r2.xxx * cb0[48].xyz + r4.xyz;
    r4.xyz = r0.zzz * cb0[50].xyz + r4.xyz;
    r4.xyz = cb0[51].xyz + r4.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r6.xyz = float3(0,0,0);
    r2.x = cb1[48].w;
    r2.y = 0;
    while (true) {
      r4.w = cmp((uint)r2.y >= (uint)r1.w);
      if (r4.w != 0) break;
      r4.w = (int)r0.w + (int)r2.y;
      r4.w = t6.Load(r4.w).x;
      r5.w = cmp((uint)r4.w >= (uint)r2.x);
      if (r5.w != 0) {
        break;
      }
      r5.w = (int)r4.w * 6;
      r7.xyzw = t4.Load(r5.w).xyzw;
      r5.w = r7.w * r7.w;
      r8.xyz = -r7.xyz + r4.xyz;
      r6.w = dot(r8.xyz, r8.xyz);
      r6.w = r6.w * r5.w;
      r6.w = cmp(1 < r6.w);
      if (r6.w != 0) {
        r6.w = (int)r2.y + 1;
        r2.y = r6.w;
        continue;
      }
      r6.w = mad((int)r4.w, 6, 1);
      r6.w = t4.Load(r6.w).w;
      r8.xy = mad((int2)r4.ww, int2(6,6), int2(2,3));
      r9.xyzw = t4.Load(r8.x).xyzw;
      r8.xy = t4.Load(r8.y).xy;
      r4.w = cmp(r6.w == 0.000000);
      r8.z = (uint)r9.w >> 16;
      r8.z = cmp((int)r8.z == 2);
      r7.xyz = r7.xyz + -r4.xyz;
      r8.w = dot(r7.xyz, r7.xyz);
      r10.x = rsqrt(r8.w);
      r10.xyz = r10.xxx * r7.xyz;
      r5.w = r8.w * r5.w;
      r5.w = -r5.w * r5.w + 1;
      r5.w = max(0, r5.w);
      r5.w = r5.w * r5.w;
      r7.xyz = r7.xyz * r7.www;
      r7.x = dot(r7.xyz, r7.xyz);
      r7.x = min(1, r7.x);
      r7.x = 1 + -r7.x;
      r7.x = log2(r7.x);
      r6.w = r7.x * r6.w;
      r6.w = exp2(r6.w);
      r4.w = r4.w ? r5.w : r6.w;
      r5.w = dot(r10.xyz, r9.xyz);
      r5.w = r5.w + -r8.x;
      r5.w = saturate(r5.w * r8.y);
      r5.w = r5.w * r5.w;
      r5.w = r5.w * r4.w;
      r4.w = r8.z ? r5.w : r4.w;
      r4.w = cmp(0 < r4.w);
      if (r4.w != 0) {
        r4.w = (int)r9.w & 255;
        r4.w = r4.w ? 1 : 0;
        if (r4.w != 0) {
          r7.xyzw = (int4)r9.wwww & int4(1,2,4,8);
          r7.xyzw = r7.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r4.w = dot(r7.xyzw, float4(1,1,1,1));
          r5.w = dot(r3.xyzw, r7.xyzw);
          r5.w = -1 + r5.w;
          r7.xy = r4.ww * r5.ww + float2(1,1);
        } else {
          r7.xy = r1.yz;
        }
        r4.w = r7.x + r7.y;
        r4.w = cmp(0 < r4.w);
        if (r4.w != 0) {
          r4.w = 1;
        } else {
          r4.w = 0.600000024;
        }
      } else {
        r4.w = 0.300000012;
      }
      r6.xyz = r4.www * float3(0.200000003,0.0500000007,0.0149999997) + r6.xyz;
      r2.y = (int)r2.y + 1;
    }
    r5.xyz = r6.xyz + r5.xyz;
  }
  if (r2.z != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r2.xy = v0.zw * r0.zz;
    r4.xyz = cb0[49].xyz * r2.yyy;
    r2.xyz = r2.xxx * cb0[48].xyz + r4.xyz;
    r2.xyz = r0.zzz * cb0[50].xyz + r2.xyz;
    r2.xyz = cb0[51].xyz + r2.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r4.xyz = float3(0,0,0);
    r4.w = cb1[48].w;
    r5.w = 0;
    while (true) {
      r6.x = cmp((uint)r5.w >= (uint)r1.w);
      if (r6.x != 0) break;
      r6.x = (int)r0.w + (int)r5.w;
      r6.x = t6.Load(r6.x).x;
      r6.y = cmp((uint)r6.x >= (uint)r4.w);
      if (r6.y != 0) {
        break;
      }
      r6.y = (int)r6.x * 6;
      r7.xyzw = t4.Load(r6.y).xyzw;
      r6.y = r7.w * r7.w;
      r8.xyz = -r7.xyz + r2.xyz;
      r6.z = dot(r8.xyz, r8.xyz);
      r6.z = r6.z * r6.y;
      r6.z = cmp(1 < r6.z);
      if (r6.z != 0) {
        r6.z = (int)r5.w + 1;
        r5.w = r6.z;
        continue;
      }
      r6.z = mad((int)r6.x, 6, 1);
      r6.z = t4.Load(r6.z).w;
      r6.xw = mad((int2)r6.xx, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r6.x).xyzw;
      r6.xw = t4.Load(r6.w).xy;
      r9.x = cmp(r6.z == 0.000000);
      r9.y = (uint)r8.w >> 16;
      r9.y = cmp((int)r9.y == 2);
      r7.xyz = r7.xyz + -r2.xyz;
      r9.z = dot(r7.xyz, r7.xyz);
      r9.w = rsqrt(r9.z);
      r10.xyz = r9.www * r7.xyz;
      r6.y = r9.z * r6.y;
      r6.y = -r6.y * r6.y + 1;
      r6.y = max(0, r6.y);
      r6.y = r6.y * r6.y;
      r7.xyz = r7.xyz * r7.www;
      r7.x = dot(r7.xyz, r7.xyz);
      r7.x = min(1, r7.x);
      r7.x = 1 + -r7.x;
      r7.x = log2(r7.x);
      r6.z = r7.x * r6.z;
      r6.z = exp2(r6.z);
      r6.y = r9.x ? r6.y : r6.z;
      r6.z = dot(r10.xyz, r8.xyz);
      r6.x = r6.z + -r6.x;
      r6.x = saturate(r6.x * r6.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.y * r6.x;
      r6.x = r9.y ? r6.x : r6.y;
      r6.x = cmp(0 < r6.x);
      if (r6.x != 0) {
        r6.x = (int)r8.w & 255;
        r6.x = r6.x ? 1 : 0;
        if (r6.x != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r7.x = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r3.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r7.xx * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yz;
        }
        r6.x = r6.x + r6.y;
        r6.x = cmp(0 < r6.x);
        if (r6.x != 0) {
          r6.x = 1;
        } else {
          r6.x = 0.600000024;
        }
      } else {
        r6.x = 0.300000012;
      }
      r4.xyz = r6.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r4.xyz;
      r5.w = (int)r5.w + 1;
    }
    r5.xyz = r5.xyz + r4.xyz;
  }
  if (r2.w != 0) {
    r2.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r2.xyzw = r1.yyyy ? r1.zzzz : r2.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r3.xy = v0.zw * r0.zz;
    r3.yzw = cb0[49].xyz * r3.yyy;
    r3.xyz = r3.xxx * cb0[48].xyz + r3.yzw;
    r3.xyz = r0.zzz * cb0[50].xyz + r3.xyz;
    r3.xyz = cb0[51].xyz + r3.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r3.w = cb1[48].w;
    r4.xyzw = float4(0,0,0,0);
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.w);
      if (r5.w != 0) break;
      r5.w = (int)r0.w + (int)r4.w;
      r5.w = t6.Load(r5.w).x;
      r6.x = cmp((uint)r5.w >= (uint)r3.w);
      if (r6.x != 0) {
        break;
      }
      r6.x = (int)r5.w * 6;
      r6.xyzw = t4.Load(r6.x).xyzw;
      r7.x = r6.w * r6.w;
      r7.yzw = -r6.xyz + r3.xyz;
      r7.y = dot(r7.yzw, r7.yzw);
      r7.y = r7.y * r7.x;
      r7.y = cmp(1 < r7.y);
      if (r7.y != 0) {
        r7.y = (int)r4.w + 1;
        r4.w = r7.y;
        continue;
      }
      r7.y = mad((int)r5.w, 6, 1);
      r7.y = t4.Load(r7.y).w;
      r7.zw = mad((int2)r5.ww, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r7.z).xyzw;
      r7.zw = t4.Load(r7.w).xy;
      r5.w = cmp(r7.y == 0.000000);
      r9.x = (uint)r8.w >> 16;
      r9.x = cmp((int)r9.x == 2);
      r6.xyz = r6.xyz + -r3.xyz;
      r9.y = dot(r6.xyz, r6.xyz);
      r9.z = rsqrt(r9.y);
      r10.xyz = r9.zzz * r6.xyz;
      r7.x = r9.y * r7.x;
      r7.x = -r7.x * r7.x + 1;
      r7.x = max(0, r7.x);
      r7.x = r7.x * r7.x;
      r6.xyz = r6.xyz * r6.www;
      r6.x = dot(r6.xyz, r6.xyz);
      r6.x = min(1, r6.x);
      r6.x = 1 + -r6.x;
      r6.x = log2(r6.x);
      r6.x = r7.y * r6.x;
      r6.x = exp2(r6.x);
      r5.w = r5.w ? r7.x : r6.x;
      r6.x = dot(r10.xyz, r8.xyz);
      r6.x = r6.x + -r7.z;
      r6.x = saturate(r6.x * r7.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.x * r5.w;
      r5.w = r9.x ? r6.x : r5.w;
      r5.w = cmp(0 < r5.w);
      if (r5.w != 0) {
        r5.w = (int)r8.w & 255;
        r5.w = r5.w ? 1 : 0;
        if (r5.w != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r2.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r5.ww * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yz;
        }
        r5.w = r6.x + r6.y;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = 1;
        } else {
          r5.w = 0.600000024;
        }
      } else {
        r5.w = 0.300000012;
      }
      r4.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r4.xyz;
      r4.w = (int)r4.w + 1;
    }
    r5.xyz = r5.xyz + r4.xyz;
  }
  r2.xyzw = cmp((int4)r0.yyyy == int4(5,6,7,8));
  if (r2.x != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r4.xy = v0.zw * r0.zz;
    r4.yzw = cb0[49].xyz * r4.yyy;
    r4.xyz = r4.xxx * cb0[48].xyz + r4.yzw;
    r4.xyz = r0.zzz * cb0[50].xyz + r4.xyz;
    r4.xyz = cb0[51].xyz + r4.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r6.xyz = float3(0,0,0);
    r2.x = cb1[48].w;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.w);
      if (r5.w != 0) break;
      r5.w = (int)r0.w + (int)r4.w;
      r5.w = t6.Load(r5.w).x;
      r6.w = cmp((uint)r5.w >= (uint)r2.x);
      if (r6.w != 0) {
        break;
      }
      r6.w = (int)r5.w * 6;
      r7.xyzw = t4.Load(r6.w).xyzw;
      r6.w = r7.w * r7.w;
      r8.xyz = -r7.xyz + r4.xyz;
      r8.x = dot(r8.xyz, r8.xyz);
      r8.x = r8.x * r6.w;
      r8.x = cmp(1 < r8.x);
      if (r8.x != 0) {
        r8.x = (int)r4.w + 1;
        r4.w = r8.x;
        continue;
      }
      r8.x = mad((int)r5.w, 6, 1);
      r8.x = t4.Load(r8.x).w;
      r8.yz = mad((int2)r5.ww, int2(6,6), int2(2,3));
      r9.xyzw = t4.Load(r8.y).xyzw;
      r8.yz = t4.Load(r8.z).xy;
      r5.w = cmp(r8.x == 0.000000);
      r8.w = (uint)r9.w >> 16;
      r8.w = cmp((int)r8.w == 2);
      r7.xyz = r7.xyz + -r4.xyz;
      r10.x = dot(r7.xyz, r7.xyz);
      r10.y = rsqrt(r10.x);
      r10.yzw = r10.yyy * r7.xyz;
      r6.w = r10.x * r6.w;
      r6.w = -r6.w * r6.w + 1;
      r6.w = max(0, r6.w);
      r6.w = r6.w * r6.w;
      r7.xyz = r7.xyz * r7.www;
      r7.x = dot(r7.xyz, r7.xyz);
      r7.x = min(1, r7.x);
      r7.x = 1 + -r7.x;
      r7.x = log2(r7.x);
      r7.x = r8.x * r7.x;
      r7.x = exp2(r7.x);
      r5.w = r5.w ? r6.w : r7.x;
      r6.w = dot(r10.yzw, r9.xyz);
      r6.w = r6.w + -r8.y;
      r6.w = saturate(r6.w * r8.z);
      r6.w = r6.w * r6.w;
      r6.w = r6.w * r5.w;
      r5.w = r8.w ? r6.w : r5.w;
      r5.w = cmp(0 < r5.w);
      if (r5.w != 0) {
        r5.w = (int)r9.w & 255;
        r5.w = r5.w ? 1 : 0;
        if (r5.w != 0) {
          r7.xyzw = (int4)r9.wwww & int4(1,2,4,8);
          r7.xyzw = r7.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r7.xyzw, float4(1,1,1,1));
          r6.w = dot(r3.xyzw, r7.xyzw);
          r6.w = -1 + r6.w;
          r7.xy = r5.ww * r6.ww + float2(1,1);
        } else {
          r7.xy = r1.yz;
        }
        r5.w = r7.x + r7.y;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = 1;
        } else {
          r5.w = 0.600000024;
        }
      } else {
        r5.w = 0.300000012;
      }
      r6.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r6.xyz;
      r4.w = (int)r4.w + 1;
    }
    r5.xyz = r6.xyz + r5.xyz;
  }
  if (r2.y != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r2.xy = v0.zw * r0.zz;
    r4.xyz = cb0[49].xyz * r2.yyy;
    r4.xyz = r2.xxx * cb0[48].xyz + r4.xyz;
    r4.xyz = r0.zzz * cb0[50].xyz + r4.xyz;
    r4.xyz = cb0[51].xyz + r4.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r6.xyz = float3(0,0,0);
    r2.x = cb1[48].w;
    r2.y = 0;
    while (true) {
      r4.w = cmp((uint)r2.y >= (uint)r1.w);
      if (r4.w != 0) break;
      r4.w = (int)r0.w + (int)r2.y;
      r4.w = t6.Load(r4.w).x;
      r5.w = cmp((uint)r4.w >= (uint)r2.x);
      if (r5.w != 0) {
        break;
      }
      r5.w = (int)r4.w * 6;
      r7.xyzw = t4.Load(r5.w).xyzw;
      r5.w = r7.w * r7.w;
      r8.xyz = -r7.xyz + r4.xyz;
      r6.w = dot(r8.xyz, r8.xyz);
      r6.w = r6.w * r5.w;
      r6.w = cmp(1 < r6.w);
      if (r6.w != 0) {
        r6.w = (int)r2.y + 1;
        r2.y = r6.w;
        continue;
      }
      r6.w = mad((int)r4.w, 6, 1);
      r6.w = t4.Load(r6.w).w;
      r8.xy = mad((int2)r4.ww, int2(6,6), int2(2,3));
      r9.xyzw = t4.Load(r8.x).xyzw;
      r8.xy = t4.Load(r8.y).xy;
      r4.w = cmp(r6.w == 0.000000);
      r8.z = (uint)r9.w >> 16;
      r8.z = cmp((int)r8.z == 2);
      r7.xyz = r7.xyz + -r4.xyz;
      r8.w = dot(r7.xyz, r7.xyz);
      r10.x = rsqrt(r8.w);
      r10.xyz = r10.xxx * r7.xyz;
      r5.w = r8.w * r5.w;
      r5.w = -r5.w * r5.w + 1;
      r5.w = max(0, r5.w);
      r5.w = r5.w * r5.w;
      r7.xyz = r7.xyz * r7.www;
      r7.x = dot(r7.xyz, r7.xyz);
      r7.x = min(1, r7.x);
      r7.x = 1 + -r7.x;
      r7.x = log2(r7.x);
      r6.w = r7.x * r6.w;
      r6.w = exp2(r6.w);
      r4.w = r4.w ? r5.w : r6.w;
      r5.w = dot(r10.xyz, r9.xyz);
      r5.w = r5.w + -r8.x;
      r5.w = saturate(r5.w * r8.y);
      r5.w = r5.w * r5.w;
      r5.w = r5.w * r4.w;
      r4.w = r8.z ? r5.w : r4.w;
      r4.w = cmp(0 < r4.w);
      if (r4.w != 0) {
        r4.w = (int)r9.w & 255;
        r4.w = r4.w ? 1 : 0;
        if (r4.w != 0) {
          r7.xyzw = (int4)r9.wwww & int4(1,2,4,8);
          r7.xyzw = r7.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r4.w = dot(r7.xyzw, float4(1,1,1,1));
          r5.w = dot(r3.xyzw, r7.xyzw);
          r5.w = -1 + r5.w;
          r7.xy = r4.ww * r5.ww + float2(1,1);
        } else {
          r7.xy = r1.yz;
        }
        r4.w = r7.x + r7.y;
        r4.w = cmp(0 < r4.w);
        if (r4.w != 0) {
          r4.w = 1;
        } else {
          r4.w = 0.600000024;
        }
      } else {
        r4.w = 0.300000012;
      }
      r6.xyz = r4.www * float3(0.200000003,0.0500000007,0.0149999997) + r6.xyz;
      r2.y = (int)r2.y + 1;
    }
    r5.xyz = r6.xyz + r5.xyz;
  }
  if (r2.z != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r3.xyzw = r1.yyyy ? r1.zzzz : r3.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r2.xy = v0.zw * r0.zz;
    r4.xyz = cb0[49].xyz * r2.yyy;
    r2.xyz = r2.xxx * cb0[48].xyz + r4.xyz;
    r2.xyz = r0.zzz * cb0[50].xyz + r2.xyz;
    r2.xyz = cb0[51].xyz + r2.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r4.xyz = float3(0,0,0);
    r4.w = cb1[48].w;
    r5.w = 0;
    while (true) {
      r6.x = cmp((uint)r5.w >= (uint)r1.w);
      if (r6.x != 0) break;
      r6.x = (int)r0.w + (int)r5.w;
      r6.x = t6.Load(r6.x).x;
      r6.y = cmp((uint)r6.x >= (uint)r4.w);
      if (r6.y != 0) {
        break;
      }
      r6.y = (int)r6.x * 6;
      r7.xyzw = t4.Load(r6.y).xyzw;
      r6.y = r7.w * r7.w;
      r8.xyz = -r7.xyz + r2.xyz;
      r6.z = dot(r8.xyz, r8.xyz);
      r6.z = r6.z * r6.y;
      r6.z = cmp(1 < r6.z);
      if (r6.z != 0) {
        r6.z = (int)r5.w + 1;
        r5.w = r6.z;
        continue;
      }
      r6.z = mad((int)r6.x, 6, 1);
      r6.z = t4.Load(r6.z).w;
      r6.xw = mad((int2)r6.xx, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r6.x).xyzw;
      r6.xw = t4.Load(r6.w).xy;
      r9.x = cmp(r6.z == 0.000000);
      r9.y = (uint)r8.w >> 16;
      r9.y = cmp((int)r9.y == 2);
      r7.xyz = r7.xyz + -r2.xyz;
      r9.z = dot(r7.xyz, r7.xyz);
      r9.w = rsqrt(r9.z);
      r10.xyz = r9.www * r7.xyz;
      r6.y = r9.z * r6.y;
      r6.y = -r6.y * r6.y + 1;
      r6.y = max(0, r6.y);
      r6.y = r6.y * r6.y;
      r7.xyz = r7.xyz * r7.www;
      r7.x = dot(r7.xyz, r7.xyz);
      r7.x = min(1, r7.x);
      r7.x = 1 + -r7.x;
      r7.x = log2(r7.x);
      r6.z = r7.x * r6.z;
      r6.z = exp2(r6.z);
      r6.y = r9.x ? r6.y : r6.z;
      r6.z = dot(r10.xyz, r8.xyz);
      r6.x = r6.z + -r6.x;
      r6.x = saturate(r6.x * r6.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.y * r6.x;
      r6.x = r9.y ? r6.x : r6.y;
      r6.x = cmp(0 < r6.x);
      if (r6.x != 0) {
        r6.x = (int)r8.w & 255;
        r6.x = r6.x ? 1 : 0;
        if (r6.x != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r7.x = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r3.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r7.xx * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yz;
        }
        r6.x = r6.x + r6.y;
        r6.x = cmp(0 < r6.x);
        if (r6.x != 0) {
          r6.x = 1;
        } else {
          r6.x = 0.600000024;
        }
      } else {
        r6.x = 0.300000012;
      }
      r4.xyz = r6.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r4.xyz;
      r5.w = (int)r5.w + 1;
    }
    r5.xyz = r5.xyz + r4.xyz;
  }
  if (r2.w != 0) {
    r2.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yz = (int2)r0.xx & int2(32,64);
    r1.z = r1.z ? 0 : 1;
    r2.xyzw = r1.yyyy ? r1.zzzz : r2.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r3.xy = v0.zw * r0.zz;
    r3.yzw = cb0[49].xyz * r3.yyy;
    r3.xyz = r3.xxx * cb0[48].xyz + r3.yzw;
    r3.xyz = r0.zzz * cb0[50].xyz + r3.xyz;
    r3.xyz = cb0[51].xyz + r3.xyz;
    r1.w = min(asuint(cb1[0].x), (uint)r1.x);
    r1.z = 1;
    r3.w = cb1[48].w;
    r4.xyzw = float4(0,0,0,0);
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.w);
      if (r5.w != 0) break;
      r5.w = (int)r0.w + (int)r4.w;
      r5.w = t6.Load(r5.w).x;
      r6.x = cmp((uint)r5.w >= (uint)r3.w);
      if (r6.x != 0) {
        break;
      }
      r6.x = (int)r5.w * 6;
      r6.xyzw = t4.Load(r6.x).xyzw;
      r7.x = r6.w * r6.w;
      r7.yzw = -r6.xyz + r3.xyz;
      r7.y = dot(r7.yzw, r7.yzw);
      r7.y = r7.y * r7.x;
      r7.y = cmp(1 < r7.y);
      if (r7.y != 0) {
        r7.y = (int)r4.w + 1;
        r4.w = r7.y;
        continue;
      }
      r7.y = mad((int)r5.w, 6, 1);
      r7.y = t4.Load(r7.y).w;
      r7.zw = mad((int2)r5.ww, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r7.z).xyzw;
      r7.zw = t4.Load(r7.w).xy;
      r5.w = cmp(r7.y == 0.000000);
      r9.x = (uint)r8.w >> 16;
      r9.x = cmp((int)r9.x == 2);
      r6.xyz = r6.xyz + -r3.xyz;
      r9.y = dot(r6.xyz, r6.xyz);
      r9.z = rsqrt(r9.y);
      r10.xyz = r9.zzz * r6.xyz;
      r7.x = r9.y * r7.x;
      r7.x = -r7.x * r7.x + 1;
      r7.x = max(0, r7.x);
      r7.x = r7.x * r7.x;
      r6.xyz = r6.xyz * r6.www;
      r6.x = dot(r6.xyz, r6.xyz);
      r6.x = min(1, r6.x);
      r6.x = 1 + -r6.x;
      r6.x = log2(r6.x);
      r6.x = r7.y * r6.x;
      r6.x = exp2(r6.x);
      r5.w = r5.w ? r7.x : r6.x;
      r6.x = dot(r10.xyz, r8.xyz);
      r6.x = r6.x + -r7.z;
      r6.x = saturate(r6.x * r7.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.x * r5.w;
      r5.w = r9.x ? r6.x : r5.w;
      r5.w = cmp(0 < r5.w);
      if (r5.w != 0) {
        r5.w = (int)r8.w & 255;
        r5.w = r5.w ? 1 : 0;
        if (r5.w != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r2.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r5.ww * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yz;
        }
        r5.w = r6.x + r6.y;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = 1;
        } else {
          r5.w = 0.600000024;
        }
      } else {
        r5.w = 0.300000012;
      }
      r4.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r4.xyz;
      r4.w = (int)r4.w + 1;
    }
    r5.xyz = r5.xyz + r4.xyz;
  }
  r1.yz = cmp((int2)r0.yy == int2(9,10));
  if (r1.y != 0) {
    r2.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r1.yw = (int2)r0.xx & int2(32,64);
    r0.y = r1.w ? 0 : 1;
    r2.xyzw = r1.yyyy ? r0.yyyy : r2.xyzw;
    r1.y = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r3.xy = v0.zw * r0.zz;
    r3.yzw = cb0[49].xyz * r3.yyy;
    r3.xyz = r3.xxx * cb0[48].xyz + r3.yzw;
    r3.xyz = r0.zzz * cb0[50].xyz + r3.xyz;
    r3.xyz = cb0[51].xyz + r3.xyz;
    r0.y = min(asuint(cb1[0].x), (uint)r1.x);
    r1.w = 1;
    r3.w = cb1[48].w;
    r4.xyzw = float4(0,0,0,0);
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r0.y);
      if (r5.w != 0) break;
      r5.w = (int)r0.w + (int)r4.w;
      r5.w = t6.Load(r5.w).x;
      r6.x = cmp((uint)r5.w >= (uint)r3.w);
      if (r6.x != 0) {
        break;
      }
      r6.x = (int)r5.w * 6;
      r6.xyzw = t4.Load(r6.x).xyzw;
      r7.x = r6.w * r6.w;
      r7.yzw = -r6.xyz + r3.xyz;
      r7.y = dot(r7.yzw, r7.yzw);
      r7.y = r7.y * r7.x;
      r7.y = cmp(1 < r7.y);
      if (r7.y != 0) {
        r7.y = (int)r4.w + 1;
        r4.w = r7.y;
        continue;
      }
      r7.y = mad((int)r5.w, 6, 1);
      r7.y = t4.Load(r7.y).w;
      r7.zw = mad((int2)r5.ww, int2(6,6), int2(2,3));
      r8.xyzw = t4.Load(r7.z).xyzw;
      r7.zw = t4.Load(r7.w).xy;
      r5.w = cmp(r7.y == 0.000000);
      r9.x = (uint)r8.w >> 16;
      r9.x = cmp((int)r9.x == 2);
      r6.xyz = r6.xyz + -r3.xyz;
      r9.y = dot(r6.xyz, r6.xyz);
      r9.z = rsqrt(r9.y);
      r10.xyz = r9.zzz * r6.xyz;
      r7.x = r9.y * r7.x;
      r7.x = -r7.x * r7.x + 1;
      r7.x = max(0, r7.x);
      r7.x = r7.x * r7.x;
      r6.xyz = r6.xyz * r6.www;
      r6.x = dot(r6.xyz, r6.xyz);
      r6.x = min(1, r6.x);
      r6.x = 1 + -r6.x;
      r6.x = log2(r6.x);
      r6.x = r7.y * r6.x;
      r6.x = exp2(r6.x);
      r5.w = r5.w ? r7.x : r6.x;
      r6.x = dot(r10.xyz, r8.xyz);
      r6.x = r6.x + -r7.z;
      r6.x = saturate(r6.x * r7.w);
      r6.x = r6.x * r6.x;
      r6.x = r6.x * r5.w;
      r5.w = r9.x ? r6.x : r5.w;
      r5.w = cmp(0 < r5.w);
      if (r5.w != 0) {
        r5.w = (int)r8.w & 255;
        r5.w = r5.w ? 1 : 0;
        if (r5.w != 0) {
          r6.xyzw = (int4)r8.wwww & int4(1,2,4,8);
          r6.xyzw = r6.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r6.xyzw, float4(1,1,1,1));
          r6.x = dot(r2.xyzw, r6.xyzw);
          r6.x = -1 + r6.x;
          r6.xy = r5.ww * r6.xx + float2(1,1);
        } else {
          r6.xy = r1.yw;
        }
        r5.w = r6.x + r6.y;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = 1;
        } else {
          r5.w = 0.600000024;
        }
      } else {
        r5.w = 0.300000012;
      }
      r4.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r4.xyz;
      r4.w = (int)r4.w + 1;
    }
    r5.xyz = r5.xyz + r4.xyz;
  }
  if (r1.z != 0) {
    r2.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r0.xy = (int2)r0.xx & int2(32,64);
    r0.y = r0.y ? 0 : 1;
    r2.xyzw = r0.xxxx ? r0.yyyy : r2.xyzw;
    r0.x = t3.SampleLevel(s0_s, v0.xy, 0).x;
    r1.yz = v0.zw * r0.zz;
    r3.xyz = cb0[49].xyz * r1.zzz;
    r1.yzw = r1.yyy * cb0[48].xyz + r3.xyz;
    r1.yzw = r0.zzz * cb0[50].xyz + r1.yzw;
    r1.yzw = cb0[51].xyz + r1.yzw;
    r0.z = min(asuint(cb1[0].x), (uint)r1.x);
    r0.y = 1;
    r1.x = cb1[48].w;
    r3.xyzw = float4(0,0,0,0);
    while (true) {
      r4.x = cmp((uint)r3.w >= (uint)r0.z);
      if (r4.x != 0) break;
      r4.x = (int)r0.w + (int)r3.w;
      r4.x = t6.Load(r4.x).x;
      r4.y = cmp((uint)r4.x >= (uint)r1.x);
      if (r4.y != 0) {
        break;
      }
      r4.y = (int)r4.x * 6;
      r6.xyzw = t4.Load(r4.y).xyzw;
      r4.y = r6.w * r6.w;
      r7.xyz = -r6.xyz + r1.yzw;
      r4.z = dot(r7.xyz, r7.xyz);
      r4.z = r4.z * r4.y;
      r4.z = cmp(1 < r4.z);
      if (r4.z != 0) {
        r4.z = (int)r3.w + 1;
        r3.w = r4.z;
        continue;
      }
      r4.z = mad((int)r4.x, 6, 1);
      r4.z = t4.Load(r4.z).w;
      r4.xw = mad((int2)r4.xx, int2(6,6), int2(2,3));
      r7.xyzw = t4.Load(r4.x).xyzw;
      r4.xw = t4.Load(r4.w).xy;
      r5.w = cmp(r4.z == 0.000000);
      r8.x = (uint)r7.w >> 16;
      r8.x = cmp((int)r8.x == 2);
      r6.xyz = r6.xyz + -r1.yzw;
      r8.y = dot(r6.xyz, r6.xyz);
      r8.z = rsqrt(r8.y);
      r9.xyz = r8.zzz * r6.xyz;
      r4.y = r8.y * r4.y;
      r4.y = -r4.y * r4.y + 1;
      r4.y = max(0, r4.y);
      r4.y = r4.y * r4.y;
      r6.xyz = r6.xyz * r6.www;
      r6.x = dot(r6.xyz, r6.xyz);
      r6.x = min(1, r6.x);
      r6.x = 1 + -r6.x;
      r6.x = log2(r6.x);
      r4.z = r6.x * r4.z;
      r4.z = exp2(r4.z);
      r4.y = r5.w ? r4.y : r4.z;
      r4.z = dot(r9.xyz, r7.xyz);
      r4.x = r4.z + -r4.x;
      r4.x = saturate(r4.x * r4.w);
      r4.x = r4.x * r4.x;
      r4.x = r4.y * r4.x;
      r4.x = r8.x ? r4.x : r4.y;
      r4.x = cmp(0 < r4.x);
      if (r4.x != 0) {
        r4.x = (int)r7.w & 255;
        r4.x = r4.x ? 1 : 0;
        if (r4.x != 0) {
          r4.xyzw = (int4)r7.wwww & int4(1,2,4,8);
          r4.xyzw = r4.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
          r5.w = dot(r4.xyzw, float4(1,1,1,1));
          r4.x = dot(r2.xyzw, r4.xyzw);
          r4.x = -1 + r4.x;
          r4.xy = r5.ww * r4.xx + float2(1,1);
        } else {
          r4.xy = r0.xy;
        }
        r4.x = r4.x + r4.y;
        r4.x = cmp(0 < r4.x);
        if (r4.x != 0) {
          r4.x = 1;
        } else {
          r4.x = 0.600000024;
        }
      } else {
        r4.x = 0.300000012;
      }
      r3.xyz = r4.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r3.xyz;
      r3.w = (int)r3.w + 1;
    }
    r5.xyz = r5.xyz + r3.xyz;
  }
  o0.xyz = r5.xyz;
  o0.w = 0;
  return;
}
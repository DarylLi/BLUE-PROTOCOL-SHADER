// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)cb0[9].w;
  r0.yz = cmp(cb0[9].yz >= float2(0,0));
  if (r0.y != 0) {
    if (12 == 0) r0.y = 0; else if (12+12 < 32) {     r0.y = (uint)cb0[1].y << (32-(12 + 12)); r0.y = (uint)r0.y >> (32-12);    } else r0.y = (uint)cb0[1].y >> 12;
    r1.xy = asint(cb0[1].yz) & int2(4095,15);
    r1.zw = cb0[0].xy * v0.xy;
    r0.w = floor(cb0[9].y);
    r0.w = (int)r0.w;
    r1.zw = frac(r1.zw);
    r1.zw = cb0[0].zw * r1.zw;
    r0.w = max(0, (int)r0.w);
    r2.zw = min((int2)r0.ww, (int2)r1.yy);
    r3.xy = (uint2)r1.zw;
    r0.w = (int)r1.x + (int)r3.x;
    r0.y = (int)r0.y + (int)r3.y;
    r2.xy = (uint2)r0.wy >> (uint2)r2.ww;
    r3.xyzw = t1.Load(r2.xyw).xyzw;
    r2.xyzw = t2.Load(r2.xyz).xyzw;
    r0.yw = cb0[2].xx ? float2(8.40779079e-045,1.40129846e-044) : float2(1.12103877e-044,1.68155816e-044);
    r1.x = (int)r0.x & 3;
    r1.y = (uint)r0.x >> 2;
    r4.xy = cmp((uint2)r1.yy < int2(1,2));
    r3.xyzw = r4.xxxx ? r3.xyzw : 0;
    r1.y = -(int)r1.y;
    r1.y = r4.y ? r1.y : 0;
    r2.xyzw = (int4)r2.xyzw & (int4)r1.yyyy;
    r2.xyzw = (int4)r3.xyzw | (int4)r2.xyzw;
    r1.y = -(int)r1.x;
    r3.xyz = cmp((uint3)r1.xxx < int3(1,2,3));
    r4.y = r3.y ? r1.y : 0;
    r1.x = (int)r1.x + -3;
    r4.z = r3.y ? 0 : r1.x;
    r4.w = cmp((int)r3.z == 0);
    r4.x = r3.x;
    r2.xyzw = r4.xyzw ? r2.xyzw : 0;
    r1.xy = (int2)r2.yw | (int2)r2.xz;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = (int)r1.x & 15;
    r1.y = 1 << (int)r1.y;
    r1.y = (int)r1.y;
    r1.y = 1 / r1.y;
    if (r0.y == 0) r0.y = 0; else if (r0.y+4 < 32) {     r0.y = (uint)r1.x << (32-(r0.y + 4)); r0.y = (uint)r0.y >> (32-r0.y);    } else r0.y = (uint)r1.x >> 4;
    r2.x = (uint)r0.y;
    r0.y = (uint)r1.x >> (uint)r0.w;
    r2.y = (uint)r0.y;
    r0.yw = r1.zw * r1.yy;
    r0.yw = frac(r0.yw);
    r0.yw = r0.yw * cb0[2].yy + cb0[2].zz;
    r0.yw = r2.xy * cb0[2].ww + r0.yw;
    r1.xyzw = t0.SampleLevel(s0_s, r0.yw, 0).xyzw;
  } else {
    r0.y = asint(cb0[1].y) & 4095;
    if (12 == 0) r0.w = 0; else if (12+12 < 32) {     r0.w = (uint)cb0[1].y << (32-(12 + 12)); r0.w = (uint)r0.w >> (32-12);    } else r0.w = (uint)cb0[1].y >> 12;
    r2.xy = cb0[0].xy * v0.xy;
    r2.xy = frac(r2.xy);
    r2.xy = cb0[0].zw * r2.xy;
    r2.zw = (uint2)r2.xy;
    r3.xy = (int2)r0.yw + (int2)r2.zw;
    r3.zw = float2(0,0);
    r4.xyzw = t1.Load(r3.xyw).xyzw;
    r3.xyzw = t2.Load(r3.xyz).xyzw;
    r0.yw = cb0[2].xx ? float2(8.40779079e-045,1.40129846e-044) : float2(1.12103877e-044,1.68155816e-044);
    r2.z = (int)r0.x & 3;
    r0.x = (uint)r0.x >> 2;
    r5.xy = cmp((uint2)r0.xx < int2(1,2));
    r4.xyzw = r5.xxxx ? r4.xyzw : 0;
    r0.x = -(int)r0.x;
    r0.x = r5.y ? r0.x : 0;
    r3.xyzw = (int4)r3.xyzw & (int4)r0.xxxx;
    r3.xyzw = (int4)r4.xyzw | (int4)r3.xyzw;
    r0.x = -(int)r2.z;
    r4.xyz = cmp((uint3)r2.zzz < int3(1,2,3));
    r5.y = r4.y ? r0.x : 0;
    r0.x = (int)r2.z + -3;
    r5.z = r4.y ? 0 : r0.x;
    r5.w = cmp((int)r4.z == 0);
    r5.x = r4.x;
    r3.xyzw = r5.xyzw ? r3.xyzw : 0;
    r2.zw = (int2)r3.yw | (int2)r3.xz;
    r0.x = (int)r2.w | (int)r2.z;
    r2.z = (int)r0.x & 15;
    r2.z = 1 << (int)r2.z;
    r2.z = (int)r2.z;
    r2.z = 1 / r2.z;
    if (r0.y == 0) r0.y = 0; else if (r0.y+4 < 32) {     r0.y = (uint)r0.x << (32-(r0.y + 4)); r0.y = (uint)r0.y >> (32-r0.y);    } else r0.y = (uint)r0.x >> 4;
    r0.x = (uint)r0.x >> (uint)r0.w;
    r3.xy = (uint2)r0.yx;
    r0.xy = r2.xy * r2.zz;
    r0.xy = frac(r0.xy);
    r0.xy = r0.xy * cb0[2].yy + cb0[2].zz;
    r0.xy = r3.xy * cb0[2].ww + r0.xy;
    r1.xyzw = t0.SampleGrad(s0_s, r0.xy, float4(0,0,0,0), float4(0,0,0,0)).xyzw;
  }
  r2.xyzw = cmp(cb0[3].xyzw != float4(0,0,0,0));
  r0.xy = (int2)r2.zw | (int2)r2.xy;
  r0.x = (int)r0.y | (int)r0.x;
  r0.y = dot(r1.xyzw, cb0[3].xyzw);
  r1.xyzw = r0.xxxx ? r0.yyyy : r1.xyzw;
  r1.w = dot(r1.xyzw, cb0[4].xyzw);
  r2.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r2.xy, r2.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r2.z = sqrt(r0.x);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.w = 1;
  r0.xyzw = r0.zzzz ? r2.xyzw : r1.xyzw;
  r1.x = dot(r0.xyzw, cb0[5].xyzw);
  r1.y = dot(r0.xyzw, cb0[6].xyzw);
  r1.z = dot(r0.xyzw, cb0[7].xyzw);
  r1.w = dot(r0.xyzw, cb0[8].xyzw);
  r0.xyzw = v1.xyzw * r1.xyzw;
  r1.x = cmp(cb0[9].x != 1.000000);
  if (r1.x != 0) {
    r0.xyz = saturate(r0.xyz);
    r1.x = 1 / cb0[9].x;
    r1.x = 2.20000005 / r1.x;
    r1.yzw = log2(r0.xyz);
    r1.xyz = r1.xxx * r1.yzw;
    r2.xyz = exp2(r1.xyz);
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = r2.xyz ? r1.xyz : r3.xyz;
  }
  o0.xyzw = r0.xyzw;
  o1.xyzw = float4(0,0,0,0);
  return;
}
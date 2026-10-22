// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[22];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float2 v8 : ATTRIBUTE6,
  float2 v9 : ATTRIBUTE7,
  float2 v10 : ATTRIBUTE8,
  float3 v11 : ATTRIBUTE11,
  float3 v12 : ATTRIBUTE12,
  float4 v13 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t1.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t1.Load(r2.x).xyzw;
  r4.xyzw = t1.Load(r2.y).xyzw;
  r5.xyzw = t1.Load(r0.y).xyzw;
  r6.xyzw = t1.Load(r2.z).xyzw;
  r2.xyzw = t1.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r2.xyzw = v5.yyyy * r2.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r2.xyzw = v5.xxxx * r4.xyzw + r2.xyzw;
  r4.xyzw = t1.Load(r0.z).xyzw;
  r5.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r6.xyzw = t1.Load(r5.x).xyzw;
  r7.xyzw = t1.Load(r5.y).xyzw;
  r1.xyzw = v5.zzzz * r4.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r6.xyzw + r3.xyzw;
  r2.xyzw = v5.zzzz * r7.xyzw + r2.xyzw;
  r0.xyzw = t1.Load(r0.w).xyzw;
  r4.xyzw = t1.Load(r5.z).xyzw;
  r5.xyzw = t1.Load(r5.w).xyzw;
  r0.xyzw = v5.wwww * r0.xyzw + r1.xyzw;
  r1.xyzw = v5.wwww * r4.xyzw + r3.xyzw;
  r2.xyzw = v5.wwww * r5.xyzw + r2.xyzw;
  r3.x = cmp(4 < asuint(cb0[1].y));
  if (r3.x != 0) {
    r3.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r4.xyzw = t1.Load(r3.x).xyzw;
    r5.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r6.xyzw = t1.Load(r5.x).xyzw;
    r7.xyzw = t1.Load(r5.y).xyzw;
    r4.xyzw = v6.xxxx * r4.xyzw + r0.xyzw;
    r6.xyzw = v6.xxxx * r6.xyzw + r1.xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r2.xyzw;
    r8.xyzw = t1.Load(r3.y).xyzw;
    r9.xyzw = t1.Load(r5.z).xyzw;
    r5.xyzw = t1.Load(r5.w).xyzw;
    r4.xyzw = v6.yyyy * r8.xyzw + r4.xyzw;
    r6.xyzw = v6.yyyy * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.yyyy * r5.xyzw + r7.xyzw;
    r7.xyzw = t1.Load(r3.z).xyzw;
    r8.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r9.xyzw = t1.Load(r8.x).xyzw;
    r10.xyzw = t1.Load(r8.y).xyzw;
    r4.xyzw = v6.zzzz * r7.xyzw + r4.xyzw;
    r6.xyzw = v6.zzzz * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.zzzz * r10.xyzw + r5.xyzw;
    r3.xyzw = t1.Load(r3.w).xyzw;
    r7.xyzw = t1.Load(r8.z).xyzw;
    r8.xyzw = t1.Load(r8.w).xyzw;
    r0.xyzw = v6.wwww * r3.xyzw + r4.xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r6.xyzw;
    r2.xyzw = v6.wwww * r8.xyzw + r5.xyzw;
  }
  r3.xyz = v11.xyz + v0.xyz;
  r3.w = 1;
  r0.x = dot(r0.xyzw, r3.xyzw);
  r0.y = dot(r1.xyzw, r3.xyzw);
  r0.z = dot(r2.xyzw, r3.xyzw);
  r0.xyz = v12.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * v10.xxx;
  r1.xyz = v9.yyy * cb2[0].xyz + r1.xyz;
  r1.xyz = v10.yyy * cb2[2].xyz + r1.xyz;
  r2.xyz = cb4[21].yyy * r1.xyz;
  r0.w = cb1[142].z * cb4[14].z + v7.x;
  r3.y = cb4[15].y * r0.w;
  r0.w = cb1[142].z * cb4[15].z + v7.y;
  r0.w = cb4[15].w * r0.w;
  r1.w = floor(r3.y);
  r1.w = (int)r1.w;
  r1.w = mad((int)r1.w, 0x0019660d, 0xd17070a0);
  r2.w = mad(0x3c6ef35f, (int)r1.w, 0x3c6ef35f);
  r3.z = mad((int)r1.w, (int)r2.w, 0x3c6ef35f);
  r1.w = mad((int)r2.w, (int)r3.z, (int)r1.w);
  r2.w = mad((int)r3.z, (int)r1.w, (int)r2.w);
  r1.w = mad((int)r1.w, (int)r2.w, (int)r3.z);
  r1.w = (uint)r1.w >> 16;
  r1.w = (uint)r1.w;
  r1.w = r1.w * 1.52590223e-006 + 0.100000001;
  r3.x = cb1[142].z * r1.w + r0.w;
  r0.w = t0.SampleLevel(s0_s, r3.xy, -1).x;
  r1.w = r0.w * cb4[17].z + -cb4[17].z;
  r1.w = saturate(cb4[18].y + r1.w);
  r1.w = 1 + -r1.w;
  r1.w = 1 + -r1.w;
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb4[16].yy);
  r3.xy = v7.xy + r0.ww;
  r3.xy = -cb4[7].xy + r3.xy;
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb4[18].z;
  r0.w = 1 + -r0.w;
  r2.w = cb4[18].w * r0.w;
  r2.w = r2.w * r2.w;
  r2.w = 1.44269514 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = 1 / r2.w;
  r3.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r2.w = 1 + -r2.w;
  r2.w = -r2.w * 0.899999976 + 1;
  r0.w = r0.w ? r2.w : 1;
  r0.w = r3.x ? r0.w : 1;
  r0.w = -r1.w * r0.w + 1;
  r0.w = 1 + -r0.w;
  r3.xyz = -cb1[70].xyz + r0.xyz;
  r3.xyz = cb2[5].xyz + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = 0.00499999989 * r1.w;
  r1.w = min(1, r1.w);
  r1.w = r1.w * 5 + -5;
  r1.w = saturate(cb3[2].z * 6 + r1.w);
  r2.xyz = r0.www * r2.xyz + -r1.xyz;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.xy = v7.xy;
  o1.zw = float2(0,0);
  return;
}
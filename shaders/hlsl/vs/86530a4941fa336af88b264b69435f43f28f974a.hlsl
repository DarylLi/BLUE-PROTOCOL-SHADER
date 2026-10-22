// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out uint o6 : SV_RenderTargetArrayIndex0,
  out float4 o7 : SV_POSITION0)
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
  r3.x = dot(r0.xyz, v1.xyz);
  r3.y = dot(r1.xyz, v1.xyz);
  r3.z = dot(r2.xyz, v1.xyz);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r4.x = dot(r0.xyz, v2.xyz);
  r4.y = dot(r1.xyz, v2.xyz);
  r4.z = dot(r2.xyz, v2.xyz);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r5.xyz = v11.xyz + v0.xyz;
  r5.w = 1;
  r0.x = dot(r0.xyzw, r5.xyzw);
  r0.y = dot(r1.xyzw, r5.xyzw);
  r0.z = dot(r2.xyzw, r5.xyzw);
  r0.xyz = v12.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb2[4].xxx * cb2[0].xyz;
  r2.xyz = cb2[4].yyy * cb2[1].xyz;
  r5.xyz = cb2[4].zzz * cb2[2].xyz;
  r6.xyz = r4.yyy * r2.xyz;
  r4.xyw = r4.xxx * r1.xyz + r6.xyz;
  r4.xyz = r4.zzz * r5.xyz + r4.xyw;
  r6.xyz = cb2[1].xyz * v10.xxx;
  r6.xyz = v9.yyy * cb2[0].xyz + r6.xyz;
  r6.xyz = v10.yyy * cb2[2].xyz + r6.xyz;
  r7.xyz = cb5[21].yyy * r6.xyz;
  r0.w = cb1[142].z * cb5[14].z + v7.x;
  r8.y = cb5[15].y * r0.w;
  r0.w = cb1[142].z * cb5[15].z + v7.y;
  r0.w = cb5[15].w * r0.w;
  r1.w = floor(r8.y);
  r1.w = (int)r1.w;
  r1.w = mad((int)r1.w, 0x0019660d, 0xd17070a0);
  r2.w = mad(0x3c6ef35f, (int)r1.w, 0x3c6ef35f);
  r3.w = mad((int)r1.w, (int)r2.w, 0x3c6ef35f);
  r1.w = mad((int)r2.w, (int)r3.w, (int)r1.w);
  r2.w = mad((int)r3.w, (int)r1.w, (int)r2.w);
  r1.w = mad((int)r1.w, (int)r2.w, (int)r3.w);
  r1.w = (uint)r1.w >> 16;
  r1.w = (uint)r1.w;
  r1.w = r1.w * 1.52590223e-006 + 0.100000001;
  r8.x = cb1[142].z * r1.w + r0.w;
  r0.w = t0.SampleLevel(s0_s, r8.xy, -1).x;
  r1.w = r0.w * cb5[17].z + -cb5[17].z;
  r1.w = saturate(cb5[18].y + r1.w);
  r1.w = 1 + -r1.w;
  r1.w = 1 + -r1.w;
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb5[16].yy);
  r8.xy = v7.xy + r0.ww;
  r8.xy = -cb5[7].xy + r8.xy;
  r0.w = dot(r8.xy, r8.xy);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb5[18].z;
  r0.w = 1 + -r0.w;
  r2.w = cb5[18].w * r0.w;
  r2.w = r2.w * r2.w;
  r2.w = 1.44269514 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = 1 / r2.w;
  r3.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r2.w = 1 + -r2.w;
  r2.w = -r2.w * 0.899999976 + 1;
  r0.w = r0.w ? r2.w : 1;
  r0.w = r3.w ? r0.w : 1;
  r0.w = -r1.w * r0.w + 1;
  r0.w = 1 + -r0.w;
  r8.xyz = -cb1[70].xyz + r0.xyz;
  r8.xyz = cb2[5].xyz + -r8.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r1.w = 0.00499999989 * r1.w;
  r1.w = min(1, r1.w);
  r1.w = r1.w * 5 + -5;
  r1.w = saturate(cb4[2].z * 6 + r1.w);
  r7.xyz = r0.www * r7.xyz + -r6.xyz;
  r6.xyz = r1.www * r7.xyz + r6.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.xyz = r3.yyy * r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r2.xyz;
  o0.xyz = r3.zzz * r5.xyz + r1.xyz;
  o1.w = cb2[4].w * v2.w;
  r0.w = asuint(cb0[1].z) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r1.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  o0.w = 0;
  o1.xyz = r4.xyz;
  o2.xy = v7.xy;
  o2.zw = float2(0,0);
  o4.xyzw = r1.xyzw;
  o7.xyzw = r1.xyzw;
  o3.xyz = r0.xyz;
  o5.xyz = r4.xyz;
  o6.x = cb0[1].z;
  return;
}
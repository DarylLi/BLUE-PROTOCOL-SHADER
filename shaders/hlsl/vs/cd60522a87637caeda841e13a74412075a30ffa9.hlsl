// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[74];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  float3 v8 : ATTRIBUTE11,
  float3 v9 : ATTRIBUTE12,
  float4 v10 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t0.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t0.Load(r2.x).xyzw;
  r4.xyzw = t0.Load(r2.y).xyzw;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r6.xyzw = t0.Load(r2.z).xyzw;
  r2.xyzw = t0.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r2.xyzw = v5.yyyy * r2.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r2.xyzw = v5.xxxx * r4.xyzw + r2.xyzw;
  r4.xyzw = t0.Load(r0.z).xyzw;
  r5.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r6.xyzw = t0.Load(r5.x).xyzw;
  r7.xyzw = t0.Load(r5.y).xyzw;
  r1.xyzw = v5.zzzz * r4.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r6.xyzw + r3.xyzw;
  r2.xyzw = v5.zzzz * r7.xyzw + r2.xyzw;
  r0.xyzw = t0.Load(r0.w).xyzw;
  r4.xyzw = t0.Load(r5.z).xyzw;
  r5.xyzw = t0.Load(r5.w).xyzw;
  r0.xyzw = v5.wwww * r0.xyzw + r1.xyzw;
  r1.xyzw = v5.wwww * r4.xyzw + r3.xyzw;
  r2.xyzw = v5.wwww * r5.xyzw + r2.xyzw;
  r3.x = cmp(4 < asuint(cb0[1].y));
  if (r3.x != 0) {
    r3.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r4.xyzw = t0.Load(r3.x).xyzw;
    r5.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r6.xyzw = t0.Load(r5.x).xyzw;
    r7.xyzw = t0.Load(r5.y).xyzw;
    r4.xyzw = v6.xxxx * r4.xyzw + r0.xyzw;
    r6.xyzw = v6.xxxx * r6.xyzw + r1.xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r2.xyzw;
    r8.xyzw = t0.Load(r3.y).xyzw;
    r9.xyzw = t0.Load(r5.z).xyzw;
    r5.xyzw = t0.Load(r5.w).xyzw;
    r4.xyzw = v6.yyyy * r8.xyzw + r4.xyzw;
    r6.xyzw = v6.yyyy * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.yyyy * r5.xyzw + r7.xyzw;
    r7.xyzw = t0.Load(r3.z).xyzw;
    r8.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r9.xyzw = t0.Load(r8.x).xyzw;
    r10.xyzw = t0.Load(r8.y).xyzw;
    r4.xyzw = v6.zzzz * r7.xyzw + r4.xyzw;
    r6.xyzw = v6.zzzz * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.zzzz * r10.xyzw + r5.xyzw;
    r3.xyzw = t0.Load(r3.w).xyzw;
    r7.xyzw = t0.Load(r8.z).xyzw;
    r8.xyzw = t0.Load(r8.w).xyzw;
    r0.xyzw = v6.wwww * r3.xyzw + r4.xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r6.xyzw;
    r2.xyzw = v6.wwww * r8.xyzw + r5.xyzw;
  }
  r3.x = dot(r0.xyz, v2.xyz);
  r3.y = dot(r1.xyz, v2.xyz);
  r3.z = dot(r2.xyz, v2.xyz);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r4.xyz = v8.xyz + v0.xyz;
  r4.w = 1;
  r0.x = dot(r0.xyzw, r4.xyzw);
  r0.y = dot(r1.xyzw, r4.xyzw);
  r0.z = dot(r2.xyzw, r4.xyzw);
  r0.xyz = v9.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * r3.yyy;
  r1.xyz = r3.xxx * cb2[0].xyz + r1.xyz;
  r1.xyz = r3.zzz * cb2[2].xyz + r1.xyz;
  r2.xyz = -cb1[70].xyz + r0.xyz;
  r3.xyz = -cb3[35].xyz + r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb3[69].y;
  r0.w = r0.w * 2 + cb3[70].x;
  r0.w = saturate(-2 + r0.w);
  r3.xy = float2(3.14159274,6.28318548) * r0.ww;
  r3.xz = sin(r3.xy);
  r4.z = 50 * r3.x;
  r5.xyz = cb3[37].xyz + -r2.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r1.xyz = r1.xyz / r1.www;
  r6.xyz = cb1[67].xyz + -r2.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r2.w = 0.763943851 * cb1[128].x;
  r3.x = cb1[130].x / cb1[130].y;
  r3.x = 1.77777779 / r3.x;
  r3.x = max(1, r3.x);
  r2.w = r3.x * r2.w;
  r3.x = r1.w * r2.w + -cb3[70].w;
  r3.x = saturate(r3.x / cb3[71].y);
  r3.w = cb3[71].z + -cb3[71].w;
  r3.x = r3.x * r3.w + cb3[71].w;
  r2.w = r1.w * r2.w + -cb3[71].x;
  r2.w = saturate(r2.w / cb3[72].z);
  r2.w = cb3[72].w * r2.w + r3.x;
  r2.w = cb3[73].y * r2.w;
  r1.xyz = r2.www * -r1.xyz;
  r2.w = cb3[73].z * v10.x;
  r6.xyz = r6.xyz / r1.www;
  r1.w = 1 + -v10.y;
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = cb3[73].www * r6.xyz;
  r1.xyz = r1.xyz * r2.www + r6.xyz;
  r2.xyz = r2.xyz + r1.xyz;
  r6.xyz = -cb3[35].xyz + r2.xyz;
  r1.w = dot(cb3[39].xyz, r6.xyz);
  r6.xyz = cb3[39].xyz * r1.www + cb3[35].xyz;
  r7.xyz = -r6.xyz + r2.xyz;
  r8.xyz = cb3[39].zxy * r7.yzx;
  r8.xyz = cb3[39].yzx * r7.zxy + -r8.xyz;
  r1.w = cos(r3.y);
  r3.xyz = r8.xyz * r3.zzz;
  r3.xyz = r7.xyz * r1.www + r3.xyz;
  r3.xyz = r6.xyz + r3.xyz;
  r2.xyz = r3.xyz + -r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r5.xyz;
  r1.xyz = r0.www * r1.xyz + r5.xyz;
  r4.xy = float2(0,0);
  r1.xyz = r4.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
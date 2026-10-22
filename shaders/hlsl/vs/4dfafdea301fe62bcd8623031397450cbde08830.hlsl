// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[147];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[7].w + -cb0[5].w;
  r0.y = cmp(0 != cb0[4].w);
  r0.z = saturate(r0.x);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.y = r0.y ? r0.z : r0.x;
  r1.xyz = float3(3,3,3) * cb0[2].zxy;
  r1.xyz = cb0[1].zxy * float3(6,6,6) + r1.xyz;
  r1.xyz = cb0[5].zxy * float3(3,3,3) + r1.xyz;
  r1.xyz = -cb0[4].zxy * float3(6,6,6) + r1.xyz;
  r2.xyz = float3(4,4,4) * cb0[2].zxy;
  r2.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r2.xyz;
  r2.xyz = -cb0[5].zxy * float3(2,2,2) + r2.xyz;
  r2.xyz = cb0[4].zxy * float3(6,6,6) + r2.xyz;
  r0.z = r0.x * r0.x;
  r2.xyz = r2.xyz * r0.xxx;
  r1.xyz = r1.xyz * r0.zzz + r2.xyz;
  r1.xyz = cb0[2].zxy + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb0[7].zxy * r1.zxy;
  r2.xyz = cb0[7].yzx * r1.xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = r2.yzx * r1.xyz;
  r3.xyz = r1.zxy * r2.zxy + -r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = cb0[2].w + -cb0[1].w;
  r0.w = r0.y * r0.w + cb0[1].w;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = r4.xxx * r3.xyz;
  r4.yzw = r5.xxx * r2.xyz + -r4.yzw;
  r5.yzw = r4.xxx * r2.xyz;
  r5.xyz = r5.xxx * r3.xyz + r5.yzw;
  r6.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r6.xyzw = r0.yyyy * r6.xyzw + cb0[3].xyzw;
  r0.yw = cmp(float2(0,0) < r6.xy);
  r7.xy = cmp(r6.xy < float2(0,0));
  r0.yw = (int2)-r0.yw + (int2)r7.xy;
  r0.yw = (int2)r0.yw;
  r7.xyz = r4.yzw * r0.yyy;
  r8.xyz = r5.xyz * r0.www;
  r9.xyz = cb0[9].xyz * r7.xxx;
  r9.xyz = cb0[8].xyz * r1.yyy + r9.xyz;
  r9.xyz = cb0[10].xyz * r8.xxx + r9.xyz;
  r7.xyw = cb0[9].xyz * r7.yyy;
  r1.yzw = cb0[8].xyz * r1.zzz + r7.xyw;
  r1.yzw = cb0[10].xyz * r8.yyy + r1.yzw;
  r7.xyz = cb0[9].xyz * r7.zzz;
  r7.xyz = cb0[8].xyz * r1.xxx + r7.xyz;
  r7.xyz = cb0[10].xyz * r8.zzz + r7.xyz;
  r8.x = dot(v1.xyz, r9.xyz);
  r8.y = dot(v1.xyz, r1.yzw);
  r8.z = dot(v1.xyz, r7.xyz);
  r9.z = dot(v2.xyz, r9.xyz);
  r9.x = dot(v2.xyz, r1.yzw);
  r9.y = dot(v2.xyz, r7.xyz);
  r1.xyz = r9.xyz * r8.xyz;
  r1.xyz = r9.zxy * r8.yzx + -r1.xyz;
  r1.xyz = v2.www * r1.xyz;
  r7.xyz = r1.xyz * r9.xyz;
  r1.xyz = r1.zxy * r9.yzx + -r7.xyz;
  r1.xyz = v2.www * r1.xyz;
  r7.xyz = cb3[4].xxx * cb3[0].xyz;
  r8.xyz = cb3[4].yyy * cb3[1].xyz;
  r10.xyz = cb3[4].zzz * cb3[2].xyz;
  r11.xyz = r8.xyz * r1.yyy;
  r1.xyw = r1.xxx * r7.xyz + r11.xyz;
  o0.xyz = r1.zzz * r10.xyz + r1.xyw;
  r1.xyz = r9.xxx * r8.xyz;
  r1.xyz = r9.zzz * r7.xyz + r1.xyz;
  o1.xyz = r9.yyy * r10.xyz + r1.xyz;
  o1.w = cb3[4].w * v2.w;
  r0.y = r0.z * r0.x;
  r0.w = 3 * r0.z;
  r1.x = r0.y * 2 + -r0.w;
  r1.x = 1 + r1.x;
  r1.y = -r0.z * 2 + r0.y;
  r1.y = r1.y + r0.x;
  r1.yzw = cb0[2].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb0[1].xyz + r1.yzw;
  r0.x = r0.z * r0.x + -r0.z;
  r1.xyz = r0.xxx * cb0[5].xyz + r1.xyz;
  r0.x = r0.y * -2 + r0.w;
  r0.xyz = r0.xxx * cb0[4].xyz + r1.xyz;
  r0.xyz = r6.zzz * r2.xyz + r0.xyz;
  r0.xyz = r6.www * r3.xyz + r0.xyz;
  r1.xyz = r6.xxx * r4.yzw;
  r2.xyz = r6.yyy * r5.xyz;
  r3.xyz = cb0[10].xyz * r2.xxx;
  r3.xyz = cb0[9].xyz * r1.xxx + r3.xyz;
  r2.xyw = cb0[10].xyz * r2.yyy;
  r4.xyz = cb0[9].xyz * r1.yyy + r2.xyw;
  r1.xyw = cb0[10].xyz * r2.zzz;
  r1.xyz = cb0[9].xyz * r1.zzz + r1.xyw;
  r3.w = r0.x;
  r0.x = dot(v0.xyzw, r3.xyzw);
  r4.w = r0.y;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r1.w = r0.z;
  r0.z = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb3[1].xyz * r0.yyy;
  r0.xyw = cb3[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb3[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb3[3].xyz + cb2[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb2[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[2].xyzw + r1.xyzw;
  r1.xyzw = cb2[3].xyzw + r1.xyzw;
  r2.xyz = -cb2[68].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r3.x = dot(r2.xyz, cb2[60].xyz);
  r0.w = r0.w / r3.x;
  r0.w = cb2[210].z * r0.w;
  r0.w = max(0, r0.w);
  r3.x = min(cb2[67].z, cb1[143].z);
  r3.y = cb2[67].z + -r3.x;
  r2.w = r3.y + r2.z;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.y = rsqrt(r2.x);
  r2.x = r2.x * r2.y;
  r0.w = max(cb1[143].w, r0.w);
  r2.z = cmp(0 < r0.w);
  r3.y = r0.w * r2.y;
  r3.x = r3.y * r2.w + r3.x;
  r3.y = -r3.y * r2.w + r2.w;
  r0.w = -r0.w * r2.y + 1;
  r0.w = r0.w * r2.x;
  r2.y = -cb1[146].y + r3.x;
  r2.y = cb1[143].y * r2.y;
  r2.y = max(-127, r2.y);
  r2.y = exp2(-r2.y);
  r2.y = cb1[146].x * r2.y;
  r3.x = -cb1[144].w + r3.x;
  r3.x = cb1[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb1[144].z * r3.x;
  r2.y = r2.z ? r2.y : cb1[143].x;
  r3.x = r2.z ? r3.x : cb1[144].x;
  r0.w = r2.z ? r0.w : r2.x;
  r2.z = r2.z ? r3.y : r2.w;
  r2.w = cb1[143].y * r2.z;
  r2.w = max(-127, r2.w);
  r3.y = exp2(-r2.w);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r2.w;
  r3.z = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r3.y : r3.z;
  r2.z = cb1[144].y * r2.z;
  r2.z = max(-127, r2.z);
  r3.y = exp2(-r2.z);
  r3.y = 1 + -r3.y;
  r3.y = r3.y / r2.z;
  r3.z = -r2.z * 0.240226507 + 0.693147182;
  r2.z = cmp(0.00999999978 < abs(r2.z));
  r2.z = r2.z ? r3.y : r3.z;
  r2.z = r3.x * r2.z;
  r2.y = r2.y * r2.w + r2.z;
  r0.w = r2.y * r0.w;
  r0.w = exp2(-r0.w);
  r0.w = min(1, r0.w);
  r0.w = max(cb1[145].w, r0.w);
  r2.y = cmp(0 < cb1[146].w);
  r2.x = cmp(cb1[146].w < r2.x);
  r2.x = r2.x ? r2.y : 0;
  r0.w = r2.x ? 1 : r0.w;
  r2.x = cmp(0 < cb2[182].y);
  if (r2.x != 0) {
    r2.x = cmp(0 != cb2[184].x);
    r2.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r3.xy = r1.xy / r1.ww;
    r3.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r2.yzw;
    r2.y = dot(r0.xyz, r0.xyz);
    r2.z = sqrt(r2.y);
    r2.z = -cb2[181].x + r2.z;
    r2.z = max(0, r2.z);
    r2.z = cb2[182].x * r2.z;
    r2.z = cb2[181].z * r2.z;
    r4.z = sqrt(r2.z);
    r2.z = cb2[181].y * r4.z;
    r2.w = cmp(r2.z < 0.707106769);
    r2.z = dot(r2.zz, r2.zz);
    r2.z = min(1, r2.z);
    r2.z = r2.w ? r2.z : 1;
    r2.y = rsqrt(r2.y);
    r0.xyz = r2.yyy * r0.xyz;
    r2.y = -r0.z * r0.z + 1;
    r2.y = sqrt(r2.y);
    r5.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r2.yy;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r2.y = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r2.y = r2.y * abs(r0.x) + -0.212114394;
    r2.y = r2.y * abs(r0.x) + 1.57072878;
    r2.w = r2.y * r0.z;
    r2.w = r2.w * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r2.w : 0;
    r0.x = r2.y * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r5.x = 0.159154937 * r0.x;
    r0.xy = cb2[180].zw * float2(0.5,0.5) + r5.xy;
    r2.yw = float2(1,1) + cb2[180].xy;
    r2.yw = cb2[180].xy / r2.yw;
    r0.xy = r2.yw * r0.xy;
    r4.xy = r2.xx ? r0.xy : r3.xy;
    r3.xyzw = t0.SampleLevel(s0_s, r4.xyz, 0).xyzw;
    r0.xyz = r3.xyz * r2.zzz;
    r2.x = 1 + -r3.w;
    r2.x = -r2.z * r2.x + 1;
    r0.xyz = cb2[135].zzz * r0.xyz;
    o3.xyz = r0.xyz * r0.www;
    o3.w = r2.x * r0.w;
  } else {
    o3.xyz = float3(0,0,0);
    o3.w = r0.w;
  }
  o0.w = 0;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o4.xyzw = r1.xyzw;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[41];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR1,
  out float4 o2 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r1.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r2.xyz = t1.Load(r0.z).xyz;
  r3.xyz = t1.Load(r0.w).xyz;
  r4.xyzw = t0.Load(r0.y).xyzw;
  r0.y = 0.00390625 * r1.w;
  r0.y = trunc(r0.y);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o1.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r4.w + r0.z;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r4.w + r0.w;
  r5.xyz = cmp(cb0[1].xyz < r0.zzz);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r0.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r5.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r1.w = cmp(abs(r0.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.z = r1.w * r0.y;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r4.x;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r7.x = r1.z;
  r7.y = r2.z;
  r7.z = r3.z;
  r7.w = r4.z;
  r1.w = dot(v0.xyzw, r7.xyzw);
  r4.xyz = cb2[1].xyz * r1.xxx;
  r4.xyz = cb2[0].xyz * r0.yyy + r4.xyz;
  r4.xyz = cb2[2].xyz * r1.www + r4.xyz;
  r5.yzw = cb2[3].xyz + cb1[70].xyz;
  r4.xyz = r5.yzw + r4.xyz;
  r0.y = 1;
  r0.y = r0.y * r0.z;
  r1.x = (int)r0.x * asint(cb3[0].y);
  r1.xw = t2.Load(r1.x).xy;
  r2.y = asint(cb3[0].y) + -1;
  r2.w = min(1, (uint)r2.y);
  r2.w = mad(asint(cb3[0].y), (int)r0.x, (int)r2.w);
  r3.zw = t2.Load(r2.w).xy;
  r2.w = cmp(r0.z >= 1);
  if (r2.w != 0) {
    r2.w = (int)r0.x & asint(cb3[0].x);
    r2.w = t3.Load(r2.w).z;
    r5.yzw = cb2[1].xyz * r1.yyy;
    r5.xyz = r5.xxx * cb2[0].xyz + r5.yzw;
    r5.xyz = r1.zzz * cb2[2].xyz + r5.xyz;
    r6.xyz = cb2[1].xyz * r6.yyy;
    r6.xyz = r2.xxx * cb2[0].xyz + r6.xyz;
    r6.xyz = r2.zzz * cb2[2].xyz + r6.xyz;
    r7.xyw = cb2[1].xyz * r3.yyy;
    r7.xyw = r3.xxx * cb2[0].xyz + r7.xyw;
    r7.xyz = r7.zzz * cb2[2].xyz + r7.xyw;
    r1.y = min(2, (uint)r2.y);
    r0.x = mad(asint(cb3[0].y), (int)r0.x, (int)r1.y);
    r1.yz = t2.Load(r0.x).xy;
    r0.x = cb2[18].x + cb2[18].y;
    r0.x = cb2[18].z + r0.x;
    r0.x = frac(r0.x);
    r0.x = cb1[142].z + r0.x;
    r0.x = r4.w + r0.x;
    r0.x = cb4[2].x * r0.x;
    r0.x = cb5[26].z * r0.x;
    r1.yz = r1.yz + -r1.xw;
    r1.yz = cb5[27].ww * r1.yz + r1.xw;
    r1.yz = cb5[28].xx * r1.yz;
    r1.yz = r0.xx * cb5[27].yz + r1.yz;
    r1.yz = t4.SampleLevel(s0_s, r1.yz, -1).xy;
    r2.xy = r1.yz + r1.yz;
    r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
    r0.x = dot(r1.yz, r1.yz);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r2.z = sqrt(r0.x);
    r2.xyz = float3(-1,-1,-1) + r2.xyz;
    r2.xyz = r2.www * r2.xyz + float3(0,0,1);
    r8.xyz = float3(0,0,1) + -r2.xyz;
    r2.xyz = cb5[28].yyy * r8.xyz + r2.xyz;
    r2.xyz = cb5[39].xyz * r2.xyz;
    r0.x = dot(-r5.xyz, -r5.xyz);
    r0.x = sqrt(r0.x);
    r1.y = dot(-r6.xyz, -r6.xyz);
    r1.y = sqrt(r1.y);
    r0.x = r1.y + r0.x;
    r1.y = dot(-r7.xyz, -r7.xyz);
    r1.y = sqrt(r1.y);
    r0.x = r1.y + r0.x;
    r0.x = r0.x * 0.333333343 + -1;
    r0.x = cb5[39].w * r0.x + 1;
    r2.xyz = r2.xyz * r0.xxx;
    r2.xyz = cb5[40].xxx * r2.xyz;
    r2.xyz = r2.xyz * r2.www;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r4.xyz * r0.zzz + r2.xyz;
  r5.xyzw = cb1[1].xyzw * r2.yyyy;
  r5.xyzw = r2.xxxx * cb1[0].xyzw + r5.xyzw;
  r2.xyzw = r2.zzzz * cb1[2].xyzw + r5.xyzw;
  r2.xyzw = r0.yyyy * cb1[3].xyzw + r2.xyzw;
  o0.xy = cb1[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  o1.x = r4.w;
  o1.zw = r0.zw;
  o2.xy = r1.xw;
  o2.zw = r3.zw;
  return;
}
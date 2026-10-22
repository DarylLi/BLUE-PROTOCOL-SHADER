// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[32];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[6].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r1.w = 1 + -r0.x;
  r1.w = cb0[7].w * r1.w;
  r0.x = cb0[7].z * r0.x + r1.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r3.w + r1.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[1].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[3].xyz);
  r4.xyz = cmp(cb0[2].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[3].xyz);
  r2.w = cb0[5].w * r2.w;
  r1.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r1.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.x = r1.w * r0.x;
  r4.x = r1.x;
  r4.y = r2.x;
  r4.z = r0.y;
  r4.w = r3.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r0.z;
  r5.w = r3.y;
  r1.w = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.z;
  r6.y = r2.z;
  r6.z = r0.w;
  r6.w = r3.z;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r3.xyz = cb2[1].xyz * r1.www;
  r3.xyz = cb2[0].xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[2].xyz * r0.www + r3.xyz;
  r4.yzw = cb2[3].xyz + cb1[70].xyz;
  r3.xyz = r4.yzw + r3.xyz;
  r0.w = 1;
  r0.w = r0.w * r0.x;
  r1.x = cmp(r0.x >= 1);
  if (r1.x != 0) {
    r1.x = (int)v2.x + asint(cb3[0].w);
    r1.w = (int)r1.x & asint(cb3[0].x);
    r1.w = t3.Load(r1.w).z;
    r4.yzw = cb2[1].xyz * r1.yyy;
    r4.xyz = r4.xxx * cb2[0].xyz + r4.yzw;
    r4.xyz = r1.zzz * cb2[2].xyz + r4.xyz;
    r5.xyz = cb2[1].xyz * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r5.xyz;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r5.xyz = cb2[1].xyz * r0.zzz;
    r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
    r5.xyz = r6.zzz * cb2[2].xyz + r5.xyz;
    r0.y = (int)r1.x * asint(cb3[0].y);
    r0.yz = t2.Load(r0.y).xy;
    r1.y = asint(cb3[0].y) + -1;
    r1.y = min(2, (uint)r1.y);
    r1.x = mad(asint(cb3[0].y), (int)r1.x, (int)r1.y);
    r1.xy = t2.Load(r1.x).xy;
    r1.z = cb2[18].x + cb2[18].y;
    r1.z = cb2[18].z + r1.z;
    r1.z = frac(r1.z);
    r1.z = cb1[142].z + r1.z;
    r1.z = r3.w + r1.z;
    r1.z = cb4[2].x * r1.z;
    r1.z = cb5[21].w * r1.z;
    r1.xy = r1.xy + -r0.yz;
    r0.yz = cb5[23].xx * r1.xy + r0.yz;
    r0.yz = cb5[23].yy * r0.yz;
    r0.yz = r1.zz * cb5[22].zw + r0.yz;
    r0.yz = t4.SampleLevel(s0_s, r0.yz, -1).xy;
    r1.xy = r0.yz + r0.yz;
    r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
    r0.y = dot(r0.yz, r0.yz);
    r0.y = 1 + -r0.y;
    r0.y = max(0, r0.y);
    r1.z = sqrt(r0.y);
    r1.xyz = float3(-1,-1,-1) + r1.xyz;
    r1.xyz = r1.www * r1.xyz + float3(0,0,1);
    r6.xyz = float3(0,0,1) + -r1.xyz;
    r1.xyz = cb5[23].zzz * r6.xyz + r1.xyz;
    r6.x = cb5[30].w * r1.x;
    r6.yz = cb5[31].xy * r1.yz;
    r0.y = dot(-r4.xyz, -r4.xyz);
    r0.z = dot(-r2.xyz, -r2.xyz);
    r0.yz = sqrt(r0.yz);
    r0.y = r0.y + r0.z;
    r0.z = dot(-r5.xyz, -r5.xyz);
    r0.z = sqrt(r0.z);
    r0.y = r0.y + r0.z;
    r0.y = r0.y * 0.333333343 + -1;
    r0.y = cb5[31].z * r0.y + 1;
    r1.xyz = r6.xyz * r0.yyy;
    r1.xyz = cb5[31].www * r1.xyz;
    r1.xyz = r1.xyz * r1.www;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = r3.xyz * r0.xxx + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
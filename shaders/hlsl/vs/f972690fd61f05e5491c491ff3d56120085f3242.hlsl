// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
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
  out float4 o1 : COLOR0,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyz = t1.Load(r0.w).xyz;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r0.y = 0.00390625 * r2.w;
  r0.y = trunc(r0.y);
  r6.xyz = cb0[6].xyz + r5.xyz;
  r7.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r7.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r7.xyz = cb1[70].xyz + r6.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o2.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r7.xyz = -cb0[4].xyz + r6.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r5.w + r0.z;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r5.w + r0.w;
  r6.xyz = cmp(cb0[1].xyz < r0.zzz);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r0.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r6.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r2.w = cmp(abs(r0.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r0.z = r2.w * r0.y;
  r6.x = r2.x;
  r6.y = r3.x;
  r6.z = r4.x;
  r6.w = r5.x;
  r0.y = dot(v0.xyzw, r6.xyzw);
  r7.x = r2.y;
  r7.y = r3.y;
  r7.z = r4.y;
  r7.w = r5.y;
  r2.x = dot(v0.xyzw, r7.xyzw);
  r8.x = r2.z;
  r8.y = r3.z;
  r8.z = r4.z;
  r8.w = r5.z;
  r2.w = dot(v0.xyzw, r8.xyzw);
  r6.yzw = cb2[1].xyz * r2.xxx;
  r6.yzw = cb2[0].xyz * r0.yyy + r6.yzw;
  r6.yzw = cb2[2].xyz * r2.www + r6.yzw;
  r7.xzw = cb2[3].xyz + cb1[70].xyz;
  r6.yzw = r7.xzw + r6.yzw;
  r0.y = 1;
  r0.y = r0.y * r0.z;
  r2.x = (int)r0.x * asint(cb3[0].y);
  r2.xw = t2.Load(r2.x).xy;
  r3.y = cmp(r0.z >= 1);
  if (r3.y != 0) {
    r7.xzw = cb2[1].xyz * r2.yyy;
    r7.xzw = r6.xxx * cb2[0].xyz + r7.xzw;
    r7.xzw = r2.zzz * cb2[2].xyz + r7.xzw;
    r8.xyw = cb2[1].xyz * r7.yyy;
    r3.xyw = r3.xxx * cb2[0].xyz + r8.xyw;
    r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
    r4.yzw = cb2[1].xyz * r4.yyy;
    r4.xyz = r4.xxx * cb2[0].xyz + r4.yzw;
    r4.xyz = r8.zzz * cb2[2].xyz + r4.xyz;
    r8.xyz = cb2[1].xyz * r5.yyy;
    r8.xyz = r5.xxx * cb2[0].xyz + r8.xyz;
    r5.xyz = r5.zzz * cb2[2].xyz + r8.xyz;
    r5.xyz = cb2[3].xyz + r5.xyz;
    r2.y = asint(cb3[0].y) + -1;
    r2.yz = min(uint2(0,0), (uint2)r2.yy);
    r2.yz = mad(asint(cb3[0].yy), (int2)r0.xx, (int2)r2.yz);
    r8.xy = t2.Load(r2.y).xy;
    r2.yz = t2.Load(r2.z).xy;
    r0.x = -9.99999997e-007 + cb4[7].y;
    r0.x = cmp(9.99999975e-006 < abs(r0.x));
    r3.w = cmp(cb4[7].y >= 9.99999997e-007);
    r9.xyz = r3.www ? cb4[5].zxy : float3(0,1,0);
    r9.xyz = r0.xxx ? r9.xyz : float3(0,1,0);
    r8.zw = r6.yz * r0.zz + -cb1[70].xy;
    r8.zw = r8.zw + -r5.xy;
    r10.xyz = cb4[8].xxx * r5.xyz;
    r8.zw = cb4[7].ww * r8.zw + r10.xy;
    r0.x = cb4[8].z * r2.z;
    r0.x = cb1[142].z * cb4[8].y + -r0.x;
    r8.zw = r0.xx * float2(1,0) + r8.zw;
    r8.zw = t4.SampleLevel(s0_s, r8.zw, -1).xy;
    r8.zw = float2(-0.25,-0.5) + r8.zw;
    r0.x = cb4[9].x * r8.w;
    r3.w = dot(r8.zz, cb4[8].ww);
    r11.xyz = float3(0,0,2) * r0.xxx;
    r11.xyz = r9.yzx * r3.www + r11.xyz;
    r12.xyz = r6.yzw * r0.zzz + -cb1[70].xyz;
    r11.xyz = r11.xyz * r2.zzz + r12.xyz;
    r13.xyzw = float4(0.0625,1,16,256) * r8.yyyx;
    r8.yzw = frac(r13.xyz);
    r8.yzw = float3(-0.5,-0.5,-0.5) + r8.yzw;
    r8.yzw = r8.yzw + r8.yzw;
    r13.xyz = r8.zzz * r3.xyz;
    r13.xyz = r8.yyy * r7.xzw + r13.xyz;
    r8.yzw = r8.www * r4.xyz + r13.xyz;
    r0.x = cb4[9].y * r2.y;
    r13.xyz = -r8.yzw * r0.xxx + float3(1,1,1);
    r11.xyz = -r13.xyz + r11.xyz;
    r0.x = dot(r11.xyz, r11.xyz);
    r0.x = sqrt(r0.x);
    r2.z = dot(r8.yzw, r8.yzw);
    r2.z = sqrt(r2.z);
    r8.yzw = r8.yzw / r2.zzz;
    r2.z = dot(r9.yzx, r8.yzw);
    r2.z = r2.z * r2.z;
    r8.yzw = r2.zzz * float3(0,0,1) + r9.yzx;
    r2.z = dot(r8.yzw, r8.yzw);
    r2.z = sqrt(r2.z);
    r8.yzw = r8.yzw / r2.zzz;
    r2.z = 7.11111116 * r8.x;
    r2.z = floor(r2.z);
    r2.z = -r2.z * 36 + r13.w;
    r3.w = 0.166666672 * r2.z;
    r14.y = floor(r3.w);
    r14.x = -r14.y * 6 + r2.z;
    r14.xy = cb2[19].xy * r14.xy;
    r14.xy = cb4[9].zz * r14.xy;
    r14.xy = r14.xy * float2(0.200000003,0.200000003) + float2(1,1);
    r2.z = dot(r10.xyz, r10.xyz);
    r2.z = frac(r2.z);
    r2.z = cb1[142].z * cb4[9].w + r2.z;
    r2.z = -cb4[10].x * r2.y + r2.z;
    r10.zw = r2.zz * float2(-1,0) + r14.xy;
    r14.xyz = t4.SampleLevel(s0_s, r10.zw, -1).xyz;
    r14.xyz = float3(-0.5,-0.5,-0.5) + r14.xyz;
    r10.zw = r14.xy + r14.xy;
    r2.z = r14.z * 2 + 1;
    r2.z = cb4[10].y * r2.z;
    r14.xyz = cb4[6].xyz * r10.www;
    r14.xyz = r8.yzw * r10.zzz + r14.xyz;
    r14.xyz = cb4[10].www * r14.xyz;
    r8.xyz = r8.yzw * r2.zzz + r14.xyz;
    r8.xyz = r8.xyz * r2.yyy + r11.xyz;
    r2.y = dot(r8.xyz, r8.xyz);
    r2.z = sqrt(r2.y);
    r8.xyz = r8.xyz / r2.zzz;
    r2.z = -9.99999997e-007 + r2.y;
    r2.z = cmp(9.99999975e-006 < abs(r2.z));
    r2.y = cmp(r2.y >= 9.99999997e-007);
    r8.xyz = r2.yyy ? r8.xyz : 0;
    r8.xyz = r2.zzz ? r8.xyz : 0;
    r8.xyz = r0.xxx * r8.xyz + r13.xyz;
    r8.xyz = r8.xyz + -r5.xyz;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = sqrt(r0.x);
    r2.y = cb2[7].z * r12.y;
    r2.y = r12.x * cb2[6].z + r2.y;
    r2.y = r12.z * cb2[8].z + r2.y;
    r2.y = cb2[9].z + r2.y;
    r2.y = -cb2[23].z + r2.y;
    r2.z = cb2[24].z + -cb2[23].z;
    r2.y = r2.y / r2.z;
    r2.y = -cb4[11].y + r2.y;
    r2.y = saturate(r2.y / cb4[11].z);
    r2.y = r2.y * r2.y;
    r2.z = cb4[11].w * r2.y;
    r2.z = cb1[142].z * cb4[11].x + -r2.z;
    r10.xy = r2.zz * float2(-1,0) + r10.xy;
    r10.xyz = t4.SampleLevel(s0_s, r10.xy, -1).xyz;
    r10.xyz = float3(-0.5,-0.5,-0.5) + r10.xyz;
    r10.xy = r10.xy + r10.xy;
    r2.z = r10.z * 2 + 1;
    r2.z = cb4[12].x * r2.z;
    r11.xyz = float3(0,1,0) * r9.xyz;
    r11.xyz = r9.zxy * float3(1,0,0) + -r11.xyz;
    r11.xyz = cb4[12].yyy * r11.xyz;
    r10.yzw = r11.xyz * r10.yyy;
    r10.xyz = r9.yzx * r10.xxx + r10.yzw;
    r10.xyz = cb4[12].zzz * r10.xyz;
    r9.xyz = r9.yzx * r2.zzz + r10.xyz;
    r8.xyz = r9.xyz * r2.yyy + r8.xyz;
    r2.y = dot(r8.xyz, r8.xyz);
    r2.z = sqrt(r2.y);
    r8.xyz = r8.xyz / r2.zzz;
    r2.z = -9.99999997e-007 + r2.y;
    r2.z = cmp(9.99999975e-006 < abs(r2.z));
    r2.y = cmp(r2.y >= 9.99999997e-007);
    r8.xyz = r2.yyy ? r8.xyz : 0;
    r8.xyz = r2.zzz ? r8.xyz : 0;
    r5.xyz = r0.xxx * r8.xyz + r5.xyz;
    r5.xyz = r5.xyz + -r12.xyz;
    r0.x = dot(-r7.xzw, -r7.xzw);
    r7.x = sqrt(r0.x);
    r0.x = dot(-r3.xyz, -r3.xyz);
    r7.y = sqrt(r0.x);
    r0.x = dot(-r4.xyz, -r4.xyz);
    r7.z = sqrt(r0.x);
    r3.xyz = r7.xyz * r5.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.xyz = r6.yzw * r0.zzz + r3.xyz;
  r4.xyzw = cb1[1].xyzw * r3.yyyy;
  r4.xyzw = r3.xxxx * cb1[0].xyzw + r4.xyzw;
  r3.xyzw = r3.zzzz * cb1[2].xyzw + r4.xyzw;
  r3.xyzw = r0.yyyy * cb1[3].xyzw + r3.xyzw;
  o0.xy = cb1[364].xy * r3.zz + r3.xy;
  o0.zw = r3.zw;
  o1.xyzw = r1.zyxw;
  o2.x = r5.w;
  o2.zw = r0.zw;
  o3.xy = r2.xw;
  o3.zw = float2(0,0);
  return;
}
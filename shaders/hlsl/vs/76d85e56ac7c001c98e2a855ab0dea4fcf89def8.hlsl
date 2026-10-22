// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r4.yzw = cb2[1].xyz * r1.www;
  r4.yzw = cb2[0].xyz * r1.xxx + r4.yzw;
  r4.yzw = cb2[2].xyz * r0.www + r4.yzw;
  r5.xzw = cb2[3].xyz + cb1[70].xyz;
  r4.yzw = r5.xzw + r4.yzw;
  r0.w = 1;
  r0.w = r0.w * r0.x;
  r1.x = cmp(r0.x >= 1);
  if (r1.x != 0) {
    r1.xyw = cb2[1].xyz * r1.yyy;
    r1.xyw = r4.xxx * cb2[0].xyz + r1.xyw;
    r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
    r5.xyz = cb2[1].xyz * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r5.xyz;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r5.xyz = cb2[1].xyz * r0.zzz;
    r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
    r5.xyz = r6.zzz * cb2[2].xyz + r5.xyz;
    r6.xyz = cb2[1].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb2[0].xyz + r6.xyz;
    r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r0.y = asint(cb3[0].y) + -1;
    r0.yz = min(uint2(0,0), (uint2)r0.yy);
    r1.w = (int)v2.x + asint(cb3[0].w);
    r0.yz = mad(asint(cb3[0].yy), (int2)r1.ww, (int2)r0.yz);
    r6.xy = t2.Load(r0.y).xy;
    r0.yz = t2.Load(r0.z).xy;
    r1.w = -9.99999997e-007 + cb4[7].y;
    r1.w = cmp(9.99999975e-006 < abs(r1.w));
    r2.w = cmp(cb4[7].y >= 9.99999997e-007);
    r7.xyz = r2.www ? cb4[5].zxy : float3(0,1,0);
    r7.xyz = r1.www ? r7.xyz : float3(0,1,0);
    r6.zw = r4.yz * r0.xx + -cb1[70].xy;
    r6.zw = r6.zw + -r3.xy;
    r8.xyz = cb4[8].xxx * r3.xyz;
    r6.zw = cb4[7].ww * r6.zw + r8.xy;
    r1.w = cb4[8].z * r0.z;
    r1.w = cb1[142].z * cb4[8].y + -r1.w;
    r6.zw = r1.ww * float2(1,0) + r6.zw;
    r6.zw = t3.SampleLevel(s0_s, r6.zw, -1).xy;
    r6.zw = float2(-0.25,-0.5) + r6.zw;
    r1.w = cb4[9].x * r6.w;
    r2.w = dot(r6.zz, cb4[8].ww);
    r9.xyz = float3(0,0,2) * r1.www;
    r9.xyz = r7.yzx * r2.www + r9.xyz;
    r10.xyz = r4.yzw * r0.xxx + -cb1[70].xyz;
    r9.xyz = r9.xyz * r0.zzz + r10.xyz;
    r11.xyzw = float4(0.0625,1,16,256) * r6.yyyx;
    r6.yzw = frac(r11.xyz);
    r6.yzw = float3(-0.5,-0.5,-0.5) + r6.yzw;
    r6.yzw = r6.yzw + r6.yzw;
    r11.xyz = r6.zzz * r2.xyz;
    r11.xyz = r6.yyy * r1.xyz + r11.xyz;
    r6.yzw = r6.www * r5.xyz + r11.xyz;
    r0.z = cb4[9].y * r0.y;
    r11.xyz = -r6.yzw * r0.zzz + float3(1,1,1);
    r9.xyz = -r11.xyz + r9.xyz;
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r1.w = dot(r6.yzw, r6.yzw);
    r1.w = sqrt(r1.w);
    r6.yzw = r6.yzw / r1.www;
    r1.w = dot(r7.yzx, r6.yzw);
    r1.w = r1.w * r1.w;
    r6.yzw = r1.www * float3(0,0,1) + r7.yzx;
    r1.w = dot(r6.yzw, r6.yzw);
    r1.w = sqrt(r1.w);
    r6.yzw = r6.yzw / r1.www;
    r1.w = 7.11111116 * r6.x;
    r1.w = floor(r1.w);
    r1.w = -r1.w * 36 + r11.w;
    r2.w = 0.166666672 * r1.w;
    r12.y = floor(r2.w);
    r12.x = -r12.y * 6 + r1.w;
    r12.xy = cb2[19].xy * r12.xy;
    r12.xy = cb4[9].zz * r12.xy;
    r12.xy = r12.xy * float2(0.200000003,0.200000003) + float2(1,1);
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = frac(r1.w);
    r1.w = cb1[142].z * cb4[9].w + r1.w;
    r1.w = -cb4[10].x * r0.y + r1.w;
    r8.zw = r1.ww * float2(-1,0) + r12.xy;
    r12.xyz = t3.SampleLevel(s0_s, r8.zw, -1).xyz;
    r12.xyz = float3(-0.5,-0.5,-0.5) + r12.xyz;
    r8.zw = r12.xy + r12.xy;
    r1.w = r12.z * 2 + 1;
    r1.w = cb4[10].y * r1.w;
    r12.xyz = cb4[6].xyz * r8.www;
    r12.xyz = r6.yzw * r8.zzz + r12.xyz;
    r12.xyz = cb4[10].www * r12.xyz;
    r6.xyz = r6.yzw * r1.www + r12.xyz;
    r6.xyz = r6.xyz * r0.yyy + r9.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.y);
    r6.xyz = r6.xyz / r1.www;
    r1.w = -9.99999997e-007 + r0.y;
    r1.w = cmp(9.99999975e-006 < abs(r1.w));
    r0.y = cmp(r0.y >= 9.99999997e-007);
    r6.xyz = r0.yyy ? r6.xyz : 0;
    r6.xyz = r1.www ? r6.xyz : 0;
    r6.xyz = r0.zzz * r6.xyz + r11.xyz;
    r6.xyz = r6.xyz + -r3.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r0.y = sqrt(r0.y);
    r0.z = cb2[7].z * r10.y;
    r0.z = r10.x * cb2[6].z + r0.z;
    r0.z = r10.z * cb2[8].z + r0.z;
    r0.z = cb2[9].z + r0.z;
    r0.z = -cb2[23].z + r0.z;
    r1.w = cb2[24].z + -cb2[23].z;
    r0.z = r0.z / r1.w;
    r0.z = -cb4[11].y + r0.z;
    r0.z = saturate(r0.z / cb4[11].z);
    r0.z = r0.z * r0.z;
    r1.w = cb4[11].w * r0.z;
    r1.w = cb1[142].z * cb4[11].x + -r1.w;
    r8.xy = r1.ww * float2(-1,0) + r8.xy;
    r8.xyz = t3.SampleLevel(s0_s, r8.xy, -1).xyz;
    r8.xyz = float3(-0.5,-0.5,-0.5) + r8.xyz;
    r8.xy = r8.xy + r8.xy;
    r1.w = r8.z * 2 + 1;
    r1.w = cb4[12].x * r1.w;
    r9.xyz = float3(0,1,0) * r7.xyz;
    r9.xyz = r7.zxy * float3(1,0,0) + -r9.xyz;
    r9.xyz = cb4[12].yyy * r9.xyz;
    r8.yzw = r9.xyz * r8.yyy;
    r8.xyz = r7.yzx * r8.xxx + r8.yzw;
    r8.xyz = cb4[12].zzz * r8.xyz;
    r7.xyz = r7.yzx * r1.www + r8.xyz;
    r6.xyz = r7.xyz * r0.zzz + r6.xyz;
    r0.z = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.z);
    r6.xyz = r6.xyz / r1.www;
    r1.w = -9.99999997e-007 + r0.z;
    r1.w = cmp(9.99999975e-006 < abs(r1.w));
    r0.z = cmp(r0.z >= 9.99999997e-007);
    r6.xyz = r0.zzz ? r6.xyz : 0;
    r6.xyz = r1.www ? r6.xyz : 0;
    r3.xyz = r0.yyy * r6.xyz + r3.xyz;
    r3.xyz = r3.xyz + -r10.xyz;
    r0.y = dot(-r1.xyz, -r1.xyz);
    r1.x = sqrt(r0.y);
    r0.y = dot(-r2.xyz, -r2.xyz);
    r1.y = sqrt(r0.y);
    r0.y = dot(-r5.xyz, -r5.xyz);
    r1.z = sqrt(r0.y);
    r1.xyz = r3.xyz * r1.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = r4.yzw * r0.xxx + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}
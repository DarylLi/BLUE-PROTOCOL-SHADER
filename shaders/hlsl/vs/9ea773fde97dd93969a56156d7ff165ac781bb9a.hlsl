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
  float4 cb1[143];
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
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r0.y = t3.Load(r0.y).z;
  r0.z = (int)v1.x + asint(cb0[8].x);
  r0.w = (int)r0.z * 3;
  r1.xyzw = t1.Load(r0.w).xyzw;
  r2.xy = mad(int2(3,3), (int2)r0.zz, int2(1,2));
  r2.xzw = t1.Load(r2.x).xyz;
  r3.xyz = t1.Load(r2.y).xyz;
  r4.xyzw = t0.Load(r0.z).xyzw;
  r0.z = 0.00390625 * r1.w;
  r0.z = trunc(r0.z);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -cb0[7].x + r0.w;
  r0.w = saturate(cb0[7].y * r0.w);
  o3.y = 1 + -r0.w;
  r0.w = 1 + -r0.z;
  r0.w = cb0[7].w * r0.w;
  r0.z = cb0[7].z * r0.z + r0.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r4.w + r0.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r4.w + r1.w;
  r5.xyz = cmp(cb0[1].xyz < r0.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r1.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r5.xyz, cb0[3].xyz);
  r1.w = cb0[5].w * r1.w;
  r5.w = r0.w * cb0[4].w + r1.w;
  r0.w = cmp(abs(r5.w) < 0.999000013);
  r0.w = r0.w ? 1.000000 : 0;
  r5.z = r0.z * r0.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r7.x = dot(v0.xyzw, r6.xyzw);
  r8.x = r1.y;
  r8.y = r2.z;
  r8.z = r3.y;
  r8.w = r4.y;
  r7.y = dot(v0.xyzw, r8.xyzw);
  r9.x = r1.z;
  r9.y = r2.w;
  r9.z = r3.z;
  r9.w = r4.z;
  r7.z = dot(v0.xyzw, r9.xyzw);
  r6.yzw = cb2[1].xyz * r7.yyy;
  r6.yzw = cb2[0].xyz * r7.xxx + r6.yzw;
  r6.yzw = cb2[2].xyz * r7.zzz + r6.yzw;
  r8.xzw = cb2[3].xyz + cb1[70].xyz;
  r6.yzw = r8.xzw + r6.yzw;
  r0.z = (int)r0.x * asint(cb3[0].y);
  r0.zw = t2.Load(r0.z).xy;
  r1.x = asint(cb3[0].y) + -1;
  r1.xw = min(uint2(1,2), (uint2)r1.xx);
  r1.xw = mad(asint(cb3[0].yy), (int2)r0.xx, (int2)r1.xw);
  r2.yz = t2.Load(r1.x).xy;
  r1.xw = t2.Load(r1.w).xy;
  r0.x = cmp(r5.z >= 1);
  if (r0.x != 0) {
    r8.xzw = cb2[1].xyz * r1.yyy;
    r8.xzw = r6.xxx * cb2[0].xyz + r8.xzw;
    r8.xzw = r1.zzz * cb2[2].xyz + r8.xzw;
    r9.xyw = cb2[1].xyz * r8.yyy;
    r9.xyw = r2.xxx * cb2[0].xyz + r9.xyw;
    r9.xyw = r2.www * cb2[2].xyz + r9.xyw;
    r10.xyz = cb2[1].xyz * r3.yyy;
    r10.xyz = r3.xxx * cb2[0].xyz + r10.xyz;
    r10.xyz = r9.zzz * cb2[2].xyz + r10.xyz;
    r3.z = cb2[18].x + cb2[18].y;
    r3.z = cb2[18].z + r3.z;
    r3.z = frac(r3.z);
    r3.z = cb1[142].z + r3.z;
    r3.z = r4.w + r3.z;
    r3.z = cb4[2].x * r3.z;
    r3.z = cb5[26].z * r3.z;
    r5.xy = r1.xw + -r0.zw;
    r5.xy = cb5[27].ww * r5.xy + r0.zw;
    r5.xy = cb5[28].xx * r5.xy;
    r3.zw = r3.zz * cb5[27].yz + r5.xy;
    r3.zw = t4.SampleLevel(s0_s, r3.zw, -1).xy;
    r11.xy = r3.zw + r3.zw;
    r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
    r3.z = dot(r3.zw, r3.zw);
    r3.z = 1 + -r3.z;
    r3.z = max(0, r3.z);
    r11.z = sqrt(r3.z);
    r11.xyz = float3(-1,-1,-1) + r11.xyz;
    r11.xyz = r0.yyy * r11.xyz + float3(0,0,1);
    r12.xyz = float3(0,0,1) + -r11.xyz;
    r11.xyz = cb5[28].yyy * r12.xyz + r11.xyz;
    r11.xyz = cb5[39].xyz * r11.xyz;
    r3.z = dot(-r8.xzw, -r8.xzw);
    r3.w = dot(-r9.xyw, -r9.xyw);
    r3.zw = sqrt(r3.zw);
    r3.z = r3.z + r3.w;
    r3.w = dot(-r10.xyz, -r10.xyz);
    r3.w = sqrt(r3.w);
    r3.z = r3.z + r3.w;
    r3.z = r3.z * 0.333333343 + -1;
    r3.z = cb5[39].w * r3.z + 1;
    r8.xzw = r11.xyz * r3.zzz;
    r8.xzw = cb5[40].xxx * r8.xzw;
    r8.xzw = r8.xzw * r0.yyy;
  } else {
    r8.xzw = float3(0,0,0);
  }
  r6.yzw = r6.yzw * r5.zzz + r8.xzw;
  r10.xyw = cb2[13].xyz + cb1[113].xyz;
  r7.w = v0.w;
  r11.x = cb2[10].x;
  r11.y = cb2[11].x;
  r11.z = cb2[12].x;
  r11.w = r10.x;
  r11.x = dot(r7.xyzw, r11.xyzw);
  r12.x = cb2[10].y;
  r12.y = cb2[11].y;
  r12.z = cb2[12].y;
  r12.w = r10.y;
  r11.y = dot(r7.xyzw, r12.xyzw);
  r10.x = cb2[10].z;
  r10.y = cb2[11].z;
  r10.z = cb2[12].z;
  r11.z = dot(r7.xyzw, r10.xyzw);
  if (r0.x != 0) {
    r7.xyz = cb2[11].xyz * r1.yyy;
    r7.xyz = r6.xxx * cb2[10].xyz + r7.xyz;
    r7.xyz = r1.zzz * cb2[12].xyz + r7.xyz;
    r8.xyz = cb2[11].xyz * r8.yyy;
    r8.xyz = r2.xxx * cb2[10].xyz + r8.xyz;
    r8.xyz = r2.www * cb2[12].xyz + r8.xyz;
    r3.yzw = cb2[11].xyz * r3.yyy;
    r3.xyz = r3.xxx * cb2[10].xyz + r3.yzw;
    r3.xyz = r9.zzz * cb2[12].xyz + r3.xyz;
    r9.xyz = cb2[11].xyz * r4.yyy;
    r9.xyz = r4.xxx * cb2[10].xyz + r9.xyz;
    r4.xyz = r4.zzz * cb2[12].xyz + r9.xyz;
    r4.xyz = cb2[13].xyz + r4.xyz;
    r1.xy = r1.xw + -r0.zw;
    r1.xy = cb5[27].ww * r1.xy + r0.zw;
    r1.xy = cb5[28].xx * r1.xy;
    r9.xyzw = cb2[18].yyyy * cb2[7].xyzw;
    r9.xyzw = cb2[18].xxxx * cb2[6].xyzw + r9.xyzw;
    r9.xyzw = cb2[18].zzzz * cb2[8].xyzw + r9.xyzw;
    r9.xyzw = cb2[9].xyzw + r9.xyzw;
    r10.xyz = r9.yyy * r8.xyz;
    r10.xyz = r9.xxx * r7.xyz + r10.xyz;
    r9.xyz = r9.zzz * r3.xyz + r10.xyz;
    r4.xyz = r9.www * r4.xyz + r9.xyz;
    r0.x = r4.x + r4.y;
    r0.x = r0.x + r4.z;
    r0.x = frac(r0.x);
    r0.x = cb1[139].z + r0.x;
    r0.x = r4.w + r0.x;
    r0.x = cb4[2].x * r0.x;
    r0.x = cb5[26].z * r0.x;
    r1.xy = r0.xx * cb5[27].yz + r1.xy;
    r1.xy = t4.SampleLevel(s0_s, r1.xy, -1).xy;
    r4.xy = r1.xy + r1.xy;
    r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
    r0.x = dot(r1.xy, r1.xy);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r4.z = sqrt(r0.x);
    r1.xyz = float3(-1,-1,-1) + r4.xyz;
    r1.xyz = r0.yyy * r1.xyz + float3(0,0,1);
    r4.xyz = float3(0,0,1) + -r1.xyz;
    r1.xyz = cb5[28].yyy * r4.xyz + r1.xyz;
    r1.xyz = cb5[39].xyz * r1.xyz;
    r0.x = dot(-r7.xyz, -r7.xyz);
    r0.x = sqrt(r0.x);
    r1.w = dot(-r8.xyz, -r8.xyz);
    r1.w = sqrt(r1.w);
    r0.x = r1.w + r0.x;
    r1.w = dot(-r3.xyz, -r3.xyz);
    r1.w = sqrt(r1.w);
    r0.x = r1.w + r0.x;
    r0.x = r0.x * 0.333333343 + -1;
    r0.x = cb5[39].w * r0.x + 1;
    r1.xyz = r1.xyz * r0.xxx;
    r1.xyz = cb5[40].xxx * r1.xyz;
    r1.xyz = r1.xyz * r0.yyy;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r1.xyz = r11.xyz + r1.xyz;
  r3.xyzw = cb1[92].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[91].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r6.zzzz;
  r1.xyzw = r6.yyyy * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r6.wwww * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r1.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.x = r4.w;
  o3.zw = r5.zw;
  o4.xy = r0.zw;
  o4.zw = r2.yz;
  return;
}
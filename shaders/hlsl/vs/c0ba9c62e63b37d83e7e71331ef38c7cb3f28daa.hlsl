// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[35];
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
  out float4 o3 : COLOR1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r5.xyz = cb1[70].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[7].x + r1.w;
  r1.w = saturate(cb0[7].y * r1.w);
  o3.y = 1 + -r1.w;
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
  r4.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r4.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r4.z = r1.w * r0.x;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r6.x = dot(v0.xyzw, r5.xyzw);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r0.z;
  r7.w = r3.y;
  r6.y = dot(v0.xyzw, r7.xyzw);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r0.w;
  r8.w = r3.z;
  r6.z = dot(v0.xyzw, r8.xyzw);
  r5.yzw = cb2[1].xyz * r6.yyy;
  r5.yzw = cb2[0].xyz * r6.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r6.zzz + r5.yzw;
  r7.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r7.xzw + r5.yzw;
  r0.x = asint(cb3[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.w = (int)v2.x + asint(cb3[0].w);
  r0.x = mad(asint(cb3[0].y), (int)r0.w, (int)r0.x);
  r0.xw = t2.Load(r0.x).xy;
  r1.x = cmp(r4.z >= 1);
  if (r1.x != 0) {
    r7.xzw = cb2[1].xyz * r1.yyy;
    r7.xzw = r5.xxx * cb2[0].xyz + r7.xzw;
    r7.xzw = r1.zzz * cb2[2].xyz + r7.xzw;
    r8.xyw = cb2[1].xyz * r7.yyy;
    r8.xyw = r2.xxx * cb2[0].xyz + r8.xyw;
    r8.xyw = r2.zzz * cb2[2].xyz + r8.xyw;
    r9.xyz = cb2[1].xyz * r0.zzz;
    r9.xyz = r0.yyy * cb2[0].xyz + r9.xyz;
    r9.xyz = r8.zzz * cb2[2].xyz + r9.xyz;
    r10.xyz = cb2[1].xyz * r3.yyy;
    r10.xyz = r3.xxx * cb2[0].xyz + r10.xyz;
    r10.xyz = r3.zzz * cb2[2].xyz + r10.xyz;
    r10.xyz = cb2[3].xyz + r10.xyz;
    r1.w = cb2[18].x + cb2[18].y;
    r1.w = cb2[18].z + r1.w;
    r1.w = cb1[142].z + r1.w;
    r1.w = cb4[32].w * r1.w;
    r2.yw = cb4[33].xx * r0.xw;
    r2.yw = r1.ww * float2(0.100000001,0.100000001) + r2.yw;
    r1.w = t3.SampleLevel(s0_s, r2.yw, -1).x;
    r1.w = r1.w * 2 + -1;
    r11.xyz = cb4[33].yzw * r1.www;
    r11.xyz = cb4[34].xxx * r11.xyz;
    r8.xyw = r11.yyy * r8.xyw;
    r7.xzw = r11.xxx * r7.xzw + r8.xyw;
    r7.xzw = r11.zzz * r9.xyz + r7.xzw;
    r7.xzw = r7.xzw + r10.xyz;
    r7.xzw = -cb2[18].xyz + r7.xzw;
  } else {
    r7.xzw = float3(0,0,0);
  }
  r5.yzw = r5.yzw * r4.zzz + r7.xzw;
  r9.xyw = cb2[13].xyz + cb1[113].xyz;
  r6.w = v0.w;
  r10.x = cb2[10].x;
  r10.y = cb2[11].x;
  r10.z = cb2[12].x;
  r10.w = r9.x;
  r10.x = dot(r6.xyzw, r10.xyzw);
  r11.x = cb2[10].y;
  r11.y = cb2[11].y;
  r11.z = cb2[12].y;
  r11.w = r9.y;
  r10.y = dot(r6.xyzw, r11.xyzw);
  r9.x = cb2[10].z;
  r9.y = cb2[11].z;
  r9.z = cb2[12].z;
  r10.z = dot(r6.xyzw, r9.xyzw);
  if (r1.x != 0) {
    r1.xyw = cb2[11].xyz * r1.yyy;
    r1.xyw = r5.xxx * cb2[10].xyz + r1.xyw;
    r1.xyz = r1.zzz * cb2[12].xyz + r1.xyw;
    r6.xyz = cb2[11].xyz * r7.yyy;
    r2.xyw = r2.xxx * cb2[10].xyz + r6.xyz;
    r2.xyz = r2.zzz * cb2[12].xyz + r2.xyw;
    r6.xyz = cb2[11].xyz * r0.zzz;
    r6.xyz = r0.yyy * cb2[10].xyz + r6.xyz;
    r6.xyz = r8.zzz * cb2[12].xyz + r6.xyz;
    r7.xyz = cb2[11].xyz * r3.yyy;
    r7.xyz = r3.xxx * cb2[10].xyz + r7.xyz;
    r3.xyz = r3.zzz * cb2[12].xyz + r7.xyz;
    r3.xyz = cb2[13].xyz + r3.xyz;
    r0.xy = cb4[33].xx * r0.xw;
    r7.xyzw = cb2[18].yyyy * cb2[7].xyzw;
    r7.xyzw = cb2[18].xxxx * cb2[6].xyzw + r7.xyzw;
    r7.xyzw = cb2[18].zzzz * cb2[8].xyzw + r7.xyzw;
    r7.xyzw = cb2[9].xyzw + r7.xyzw;
    r8.xyz = r7.yyy * r2.xyz;
    r8.xyz = r7.xxx * r1.xyz + r8.xyz;
    r7.xyz = r7.zzz * r6.xyz + r8.xyz;
    r7.xyz = r7.www * r3.xyz + r7.xyz;
    r0.z = r7.x + r7.y;
    r0.z = r0.z + r7.z;
    r0.z = cb1[139].z + r0.z;
    r0.z = cb4[32].w * r0.z;
    r0.xy = r0.zz * float2(0.100000001,0.100000001) + r0.xy;
    r0.x = t3.SampleLevel(s0_s, r0.xy, -1).x;
    r0.x = r0.x * 2 + -1;
    r0.xyz = cb4[33].yzw * r0.xxx;
    r0.xyz = cb4[34].xxx * r0.xyz;
    r2.xyz = r0.yyy * r2.xyz;
    r0.xyw = r0.xxx * r1.xyz + r2.xyz;
    r0.xyz = r0.zzz * r6.xyz + r0.xyw;
    r0.xyz = r0.xyz + r3.xyz;
    r0.xyz = r0.xyz + -r7.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r10.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r5.zzzz;
  r0.xyzw = r5.yyyy * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r5.wwww * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.x = r3.w;
  o3.zw = r4.zw;
  return;
}
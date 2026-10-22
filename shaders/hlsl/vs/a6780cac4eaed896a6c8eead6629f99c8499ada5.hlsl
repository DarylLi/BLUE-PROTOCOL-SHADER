// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r0.yz = t3.Load(r0.y).zw;
  r0.w = (int)v1.x + asint(cb0[8].x);
  r1.x = (int)r0.w * 3;
  r1.xyzw = t1.Load(r1.x).xyzw;
  r2.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  r2.xzw = t1.Load(r2.x).xyz;
  r3.xyz = t1.Load(r2.y).xyz;
  r4.xyzw = t0.Load(r0.w).xyzw;
  r0.w = 0.00390625 * r1.w;
  r0.w = trunc(r0.w);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[7].x + r1.w;
  r1.w = saturate(cb0[7].y * r1.w);
  o3.y = 1 + -r1.w;
  r1.w = 1 + -r0.w;
  r1.w = cb0[7].w * r1.w;
  r0.w = cb0[7].z * r0.w + r1.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r4.w + r1.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r2.y = dot(r5.xyz, r5.xyz);
  r2.y = sqrt(r2.y);
  r2.y = cb0[1].w * r4.w + r2.y;
  r5.xyz = cmp(cb0[1].xyz < r1.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r2.yyy);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r2.y = dot(r5.xyz, cb0[3].xyz);
  r2.y = cb0[5].w * r2.y;
  r5.w = r1.w * cb0[4].w + r2.y;
  r1.w = cmp(abs(r5.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r5.z = r1.w * r0.w;
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
  r8.xzw = cb2[1].xyz * r4.yyy;
  r8.xzw = r4.xxx * cb2[0].xyz + r8.xzw;
  r8.xzw = r4.zzz * cb2[2].xyz + r8.xzw;
  r8.xzw = cb2[3].xyz + r8.xzw;
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xw = t2.Load(r0.x).xy;
  r1.x = cmp(r5.z >= 1);
  if (r1.x != 0) {
    r9.xyw = cb2[1].zxy * r1.yyy;
    r9.xyw = r6.xxx * cb2[0].zxy + r9.xyw;
    r9.xyw = r1.zzz * cb2[2].zxy + r9.xyw;
    r10.xyz = cb2[1].zxy * r8.yyy;
    r10.xyz = r2.xxx * cb2[0].zxy + r10.xyz;
    r10.xyz = r2.www * cb2[2].zxy + r10.xyz;
    r11.xyz = cb2[1].zxy * r3.yyy;
    r11.xyz = r3.xxx * cb2[0].zxy + r11.xyz;
    r11.xyz = r9.zzz * cb2[2].zxy + r11.xyz;
    r1.w = cb1[142].z * cb4[8].x + r0.z;
    r2.y = abs(r8.x) + abs(r8.z);
    r2.y = r2.y + abs(r8.w);
    r2.y = frac(r2.y);
    r1.w = r2.y * 0.5 + r1.w;
    r1.w = 6.28318548 * r1.w;
    r1.w = sin(r1.w);
    r2.y = cb4[8].z * r0.y;
    r1.w = r2.y * r1.w;
    r1.w = 6.28318548 * r1.w;
    r10.xyz = cb4[2].yyy * r10.xyz;
    r9.xyw = cb4[2].xxx * r9.xyw + r10.xyz;
    r9.xyw = cb4[2].zzz * r11.xyz + r9.xyw;
    r2.y = dot(r9.xyw, r9.xyw);
    r2.y = sqrt(r2.y);
    r9.xyw = r9.xyw / r2.yyy;
    r10.xyz = r6.yzw * r5.zzz + -cb1[70].xyz;
    r11.xyz = r10.xyz + -r8.xzw;
    r2.y = dot(r9.ywx, r11.xyz);
    r11.xyz = r9.ywx * r2.yyy + r8.xzw;
    r12.xyz = -r11.xyz + r10.xyz;
    r13.xyz = r12.yzx * r9.xyw;
    r9.xyw = r9.wxy * r12.zxy + -r13.xyz;
    sincos(r1.w, r5.x, r13.x);
    r9.xyw = r9.xyw * r5.xxx;
    r9.xyw = r12.xyz * r13.xxx + r9.xyw;
    r9.xyw = r11.xyz + r9.xyw;
    r9.xyw = r9.xyw + -r10.xyz;
  } else {
    r9.xyw = float3(0,0,0);
  }
  r6.yzw = r6.yzw * r5.zzz + r9.xyw;
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
  if (r1.x != 0) {
    r1.xyw = cb2[11].zxy * r1.yyy;
    r1.xyw = r6.xxx * cb2[10].zxy + r1.xyw;
    r1.xyz = r1.zzz * cb2[12].zxy + r1.xyw;
    r7.xyz = cb2[11].zxy * r8.yyy;
    r2.xyz = r2.xxx * cb2[10].zxy + r7.xyz;
    r2.xyz = r2.www * cb2[12].zxy + r2.xyz;
    r3.yzw = cb2[11].zxy * r3.yyy;
    r3.xyz = r3.xxx * cb2[10].zxy + r3.yzw;
    r3.xyz = r9.zzz * cb2[12].zxy + r3.xyz;
    r7.xyz = cb2[11].xyz * r4.yyy;
    r7.xyz = r4.xxx * cb2[10].xyz + r7.xyz;
    r4.xyz = r4.zzz * cb2[12].xyz + r7.xyz;
    r4.xyz = cb2[13].xyz + r4.xyz;
    r1.w = abs(r8.x) + abs(r8.z);
    r1.w = r1.w + abs(r8.w);
    r1.w = frac(r1.w);
    r0.y = cb4[8].z * r0.y;
    r0.z = cb1[139].z * cb4[8].x + r0.z;
    r0.z = r1.w * 0.5 + r0.z;
    r0.z = 6.28318548 * r0.z;
    r0.z = sin(r0.z);
    r0.y = r0.z * r0.y;
    r0.y = 6.28318548 * r0.y;
    r2.xyz = cb4[2].yyy * r2.xyz;
    r1.xyz = cb4[2].xxx * r1.xyz + r2.xyz;
    r1.xyz = cb4[2].zzz * r3.xyz + r1.xyz;
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = sqrt(r0.z);
    r1.xyz = r1.xyz / r0.zzz;
    r2.xyz = -cb1[113].xyz + r11.xyz;
    r3.xyz = r2.xyz + -r4.xyz;
    r0.z = dot(r1.yzx, r3.xyz);
    r3.xyz = r1.yzx * r0.zzz + r4.xyz;
    r4.xyz = -r3.xyz + r2.xyz;
    r7.xyz = r4.yzx * r1.xyz;
    r1.xyz = r1.zxy * r4.zxy + -r7.xyz;
    sincos(r0.y, r5.x, r6.x);
    r1.xyz = r5.xxx * r1.xyz;
    r1.xyz = r4.xyz * r6.xxx + r1.xyz;
    r1.xyz = r3.xyz + r1.xyz;
    r1.xyz = r1.xyz + -r2.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r1.xyz = r11.xyz + r1.xyz;
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r2.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r6.zzzz;
  r1.xyzw = r6.yyyy * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r6.wwww * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.y = cmp(1 < asint(cb1[135].x));
  r0.z = 0.00100000005 * r1.w;
  r0.y = r0.y ? r0.z : 0;
  o0.z = r1.z + r0.y;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.x = r4.w;
  o3.zw = r5.zw;
  o4.xy = r0.xw;
  o4.zw = float2(0,0);
  return;
}
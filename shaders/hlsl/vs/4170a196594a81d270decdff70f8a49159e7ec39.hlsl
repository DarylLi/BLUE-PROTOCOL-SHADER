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
  out float4 o3 : COLOR0,
  out float4 o4 : COLOR1,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  o4.y = 1 + -r0.z;
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
  r7.x = dot(v0.xyzw, r6.xyzw);
  r8.x = r2.y;
  r8.y = r3.y;
  r8.z = r4.y;
  r8.w = r5.y;
  r7.y = dot(v0.xyzw, r8.xyzw);
  r9.x = r2.z;
  r9.y = r3.z;
  r9.z = r4.z;
  r9.w = r5.z;
  r7.z = dot(v0.xyzw, r9.xyzw);
  r6.yzw = cb2[1].xyz * r7.yyy;
  r6.yzw = cb2[0].xyz * r7.xxx + r6.yzw;
  r6.yzw = cb2[2].xyz * r7.zzz + r6.yzw;
  r8.xzw = cb2[3].xyz + cb1[70].xyz;
  r6.yzw = r8.xzw + r6.yzw;
  r0.y = (int)r0.x * asint(cb3[0].y);
  r2.xw = t2.Load(r0.y).xy;
  r0.y = asint(cb3[0].y) + -1;
  r3.yw = min(uint2(0,0), (uint2)r0.yy);
  r0.xy = mad(asint(cb3[0].yy), (int2)r0.xx, (int2)r3.yw);
  r3.yw = t2.Load(r0.x).xy;
  r0.xy = t2.Load(r0.y).xy;
  r4.z = cmp(r0.z >= 1);
  if (r4.z != 0) {
    r8.xzw = cb2[1].xyz * r2.yyy;
    r8.xzw = r6.xxx * cb2[0].xyz + r8.xzw;
    r8.xzw = r2.zzz * cb2[2].xyz + r8.xzw;
    r9.xyw = cb2[1].xyz * r8.yyy;
    r9.xyw = r3.xxx * cb2[0].xyz + r9.xyw;
    r9.xyw = r3.zzz * cb2[2].xyz + r9.xyw;
    r10.xyz = cb2[1].xyz * r4.yyy;
    r10.xyz = r4.xxx * cb2[0].xyz + r10.xyz;
    r10.xyz = r9.zzz * cb2[2].xyz + r10.xyz;
    r11.xyz = cb2[1].xyz * r5.yyy;
    r11.xyz = r5.xxx * cb2[0].xyz + r11.xyz;
    r11.xyz = r5.zzz * cb2[2].xyz + r11.xyz;
    r11.xyz = cb2[3].xyz + r11.xyz;
    r4.w = -9.99999997e-007 + cb4[7].y;
    r4.w = cmp(9.99999975e-006 < abs(r4.w));
    r10.w = cmp(cb4[7].y >= 9.99999997e-007);
    r12.xyz = r10.www ? cb4[5].zxy : float3(0,1,0);
    r12.xyz = r4.www ? r12.xyz : float3(0,1,0);
    r13.xy = r6.yz * r0.zz + -cb1[70].xy;
    r13.xy = r13.xy + -r11.xy;
    r14.xyz = cb4[8].xxx * r11.xyz;
    r13.xy = cb4[7].ww * r13.xy + r14.xy;
    r4.w = cb4[8].z * r0.y;
    r4.w = cb1[142].z * cb4[8].y + -r4.w;
    r13.xy = r4.ww * float2(1,0) + r13.xy;
    r13.xy = t4.SampleLevel(s0_s, r13.xy, -1).xy;
    r13.xy = float2(-0.25,-0.5) + r13.xy;
    r15.x = cb4[8].w;
    r15.y = cb4[9].x;
    r13.xy = r15.xy * r13.xy;
    r4.w = r13.x + r13.x;
    r13.xyz = float3(0,0,2) * r13.yyy;
    r13.xyz = r12.yzx * r4.www + r13.xyz;
    r15.xyz = r6.yzw * r0.zzz + -cb1[70].xyz;
    r13.xyz = r13.xyz * r0.yyy + r15.xyz;
    r16.xyzw = float4(0.0625,1,16,256) * r3.wwwy;
    r16.xyz = frac(r16.xyz);
    r16.xyz = float3(-0.5,-0.5,-0.5) + r16.xyz;
    r16.xyz = r16.xyz + r16.xyz;
    r17.xyz = r16.yyy * r9.xyw;
    r17.xyz = r16.xxx * r8.xzw + r17.xyz;
    r16.xyz = r16.zzz * r10.xyz + r17.xyz;
    r4.w = cb4[9].y * r0.x;
    r17.xyz = -r16.xyz * r4.www + float3(1,1,1);
    r13.xyz = -r17.xyz + r13.xyz;
    r4.w = dot(r13.xyz, r13.xyz);
    r4.w = sqrt(r4.w);
    r10.w = dot(r16.xyz, r16.xyz);
    r10.w = sqrt(r10.w);
    r16.xyz = r16.xyz / r10.www;
    r10.w = dot(r12.yzx, r16.xyz);
    r10.w = r10.w * r10.w;
    r16.xyz = r10.www * float3(0,0,1) + r12.yzx;
    r10.w = dot(r16.xyz, r16.xyz);
    r10.w = sqrt(r10.w);
    r16.xyz = r16.xyz / r10.www;
    r10.w = 7.11111116 * r3.y;
    r10.w = floor(r10.w);
    r10.w = -r10.w * 36 + r16.w;
    r11.w = 0.166666672 * r10.w;
    r18.y = floor(r11.w);
    r18.x = -r18.y * 6 + r10.w;
    r18.xy = cb2[19].xy * r18.xy;
    r18.xy = cb4[9].zz * r18.xy;
    r18.xy = r18.xy * float2(0.200000003,0.200000003) + float2(1,1);
    r10.w = dot(r14.xyz, r14.xyz);
    r10.w = frac(r10.w);
    r10.w = cb1[142].z * cb4[9].w + r10.w;
    r10.w = -cb4[10].x * r0.x + r10.w;
    r14.zw = r10.ww * float2(-1,0) + r18.xy;
    r18.xyz = t4.SampleLevel(s0_s, r14.zw, -1).xyz;
    r18.xyz = float3(-0.5,-0.5,-0.5) + r18.xyz;
    r14.zw = r18.xy + r18.xy;
    r10.w = r18.z * 2 + 1;
    r10.w = cb4[10].y * r10.w;
    r18.xyz = cb4[6].xyz * r14.www;
    r18.xyz = r16.xyz * r14.zzz + r18.xyz;
    r18.xyz = cb4[10].www * r18.xyz;
    r16.xyz = r16.xyz * r10.www + r18.xyz;
    r13.xyz = r16.xyz * r0.xxx + r13.xyz;
    r10.w = dot(r13.xyz, r13.xyz);
    r11.w = sqrt(r10.w);
    r13.xyz = r13.xyz / r11.www;
    r11.w = -9.99999997e-007 + r10.w;
    r11.w = cmp(9.99999975e-006 < abs(r11.w));
    r10.w = cmp(r10.w >= 9.99999997e-007);
    r13.xyz = r10.www ? r13.xyz : 0;
    r13.xyz = r11.www ? r13.xyz : 0;
    r13.xyz = r4.www * r13.xyz + r17.xyz;
    r13.xyz = r13.xyz + -r11.xyz;
    r4.w = dot(r13.xyz, r13.xyz);
    r4.w = sqrt(r4.w);
    r10.w = cb2[7].z * r15.y;
    r10.w = r15.x * cb2[6].z + r10.w;
    r10.w = r15.z * cb2[8].z + r10.w;
    r10.w = cb2[9].z + r10.w;
    r10.w = -cb2[23].z + r10.w;
    r11.w = cb2[24].z + -cb2[23].z;
    r10.w = r10.w / r11.w;
    r10.w = -cb4[11].y + r10.w;
    r10.w = saturate(r10.w / cb4[11].z);
    r10.w = r10.w * r10.w;
    r11.w = cb4[11].w * r10.w;
    r11.w = cb1[142].z * cb4[11].x + -r11.w;
    r14.xy = r11.ww * float2(-1,0) + r14.xy;
    r14.xyz = t4.SampleLevel(s0_s, r14.xy, -1).xyz;
    r14.xyz = float3(-0.5,-0.5,-0.5) + r14.xyz;
    r14.xy = r14.xy + r14.xy;
    r11.w = r14.z * 2 + 1;
    r11.w = cb4[12].x * r11.w;
    r16.xyz = float3(0,1,0) * r12.xyz;
    r16.xyz = r12.zxy * float3(1,0,0) + -r16.xyz;
    r16.xyz = cb4[12].yyy * r16.xyz;
    r14.yzw = r16.xyz * r14.yyy;
    r14.xyz = r12.yzx * r14.xxx + r14.yzw;
    r14.xyz = cb4[12].zzz * r14.xyz;
    r12.xyz = r12.yzx * r11.www + r14.xyz;
    r12.xyz = r12.xyz * r10.www + r13.xyz;
    r10.w = dot(r12.xyz, r12.xyz);
    r11.w = sqrt(r10.w);
    r12.xyz = r12.xyz / r11.www;
    r11.w = -9.99999997e-007 + r10.w;
    r11.w = cmp(9.99999975e-006 < abs(r11.w));
    r10.w = cmp(r10.w >= 9.99999997e-007);
    r12.xyz = r10.www ? r12.xyz : 0;
    r12.xyz = r11.www ? r12.xyz : 0;
    r11.xyz = r4.www * r12.xyz + r11.xyz;
    r11.xyz = r11.xyz + -r15.xyz;
    r4.w = dot(-r8.xzw, -r8.xzw);
    r12.x = sqrt(r4.w);
    r4.w = dot(-r9.xyw, -r9.xyw);
    r12.y = sqrt(r4.w);
    r4.w = dot(-r10.xyz, -r10.xyz);
    r12.z = sqrt(r4.w);
    r8.xzw = r12.xyz * r11.xyz;
  } else {
    r8.xzw = float3(0,0,0);
  }
  r6.yzw = r6.yzw * r0.zzz + r8.xzw;
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
  if (r4.z != 0) {
    r7.xyz = cb2[11].xyz * r2.yyy;
    r7.xyz = r6.xxx * cb2[10].xyz + r7.xyz;
    r7.xyz = r2.zzz * cb2[12].xyz + r7.xyz;
    r8.xyz = cb2[11].xyz * r8.yyy;
    r8.xyz = r3.xxx * cb2[10].xyz + r8.xyz;
    r8.xyz = r3.zzz * cb2[12].xyz + r8.xyz;
    r4.yzw = cb2[11].xyz * r4.yyy;
    r4.xyz = r4.xxx * cb2[10].xyz + r4.yzw;
    r4.xyz = r9.zzz * cb2[12].xyz + r4.xyz;
    r9.xyz = cb2[11].xyz * r5.yyy;
    r9.xyz = r5.xxx * cb2[10].xyz + r9.xyz;
    r5.xyz = r5.zzz * cb2[12].xyz + r9.xyz;
    r5.xyz = cb2[13].xyz + r5.xyz;
    r2.y = -9.99999997e-007 + cb4[7].y;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r2.z = cmp(cb4[7].y >= 9.99999997e-007);
    r9.xyz = r2.zzz ? cb4[5].xyz : float3(1,0,0);
    r9.xyz = r2.yyy ? r9.xyz : float3(1,0,0);
    r2.y = cb4[8].z * r0.y;
    r10.xyzw = float4(0.0625,1,16,256) * r3.wwwy;
    r3.xzw = frac(r10.xyz);
    r3.xzw = float3(-0.5,-0.5,-0.5) + r3.xzw;
    r3.xzw = r3.xzw + r3.xzw;
    r2.z = cb4[9].y * r0.x;
    r3.y = 7.11111116 * r3.y;
    r3.y = floor(r3.y);
    r3.y = -r3.y * 36 + r10.w;
    r4.w = 0.166666672 * r3.y;
    r10.y = floor(r4.w);
    r10.x = -r10.y * 6 + r3.y;
    r10.xy = cb2[19].xy * r10.xy;
    r10.xy = cb4[9].zz * r10.xy;
    r10.xy = r10.xy * float2(0.200000003,0.200000003) + float2(1,1);
    r3.y = cb2[24].z + -cb2[23].z;
    r12.xyz = float3(0,1,0) * r9.zxy;
    r12.xyz = r9.yzx * float3(1,0,0) + -r12.xyz;
    r12.xyz = cb4[12].yyy * r12.xyz;
    r10.zw = -cb1[113].xy + r11.xy;
    r10.zw = r10.zw + -r5.xy;
    r13.xyz = cb4[8].xxx * r5.xyz;
    r10.zw = cb4[7].ww * r10.zw + r13.xy;
    r2.y = cb1[139].z * cb4[8].y + -r2.y;
    r10.zw = r2.yy * float2(1,0) + r10.zw;
    r10.zw = t4.SampleLevel(s0_s, r10.zw, -1).xy;
    r10.zw = float2(-0.25,-0.5) + r10.zw;
    r14.x = cb4[8].w;
    r14.y = cb4[9].x;
    r10.zw = r14.xy * r10.zw;
    r2.y = r10.z + r10.z;
    r14.xyz = float3(0,0,2) * r10.www;
    r14.xyz = r9.xyz * r2.yyy + r14.xyz;
    r15.xyz = -cb1[113].xyz + r11.xyz;
    r14.xyz = r14.xyz * r0.yyy + r15.xyz;
    r16.xyz = r3.zzz * r8.xyz;
    r16.xyz = r3.xxx * r7.xyz + r16.xyz;
    r3.xzw = r3.www * r4.xyz + r16.xyz;
    r16.xyz = -r3.xzw * r2.zzz + float3(1,1,1);
    r14.xyz = -r16.xyz + r14.xyz;
    r0.y = dot(r14.xyz, r14.xyz);
    r0.y = sqrt(r0.y);
    r2.y = dot(r3.xzw, r3.xzw);
    r2.y = sqrt(r2.y);
    r3.xzw = r3.xzw / r2.yyy;
    r2.y = dot(r9.xyz, r3.xzw);
    r2.y = r2.y * r2.y;
    r3.xzw = r2.yyy * float3(0,0,1) + r9.xyz;
    r2.y = dot(r3.xzw, r3.xzw);
    r2.y = sqrt(r2.y);
    r3.xzw = r3.xzw / r2.yyy;
    r2.y = dot(r13.xyz, r13.xyz);
    r2.y = frac(r2.y);
    r2.y = cb1[139].z * cb4[9].w + r2.y;
    r2.y = -cb4[10].x * r0.x + r2.y;
    r2.yz = r2.yy * float2(-1,0) + r10.xy;
    r10.xyz = t4.SampleLevel(s0_s, r2.yz, -1).xyz;
    r10.xyz = float3(-0.5,-0.5,-0.5) + r10.xyz;
    r2.yz = r10.xy + r10.xy;
    r4.w = r10.z * 2 + 1;
    r4.w = cb4[10].y * r4.w;
    r10.xyz = cb4[6].xyz * r2.zzz;
    r10.xyz = r3.xzw * r2.yyy + r10.xyz;
    r10.xyz = cb4[10].www * r10.xyz;
    r3.xzw = r3.xzw * r4.www + r10.xyz;
    r3.xzw = r3.xzw * r0.xxx + r14.xyz;
    r0.x = dot(r3.xzw, r3.xzw);
    r2.y = sqrt(r0.x);
    r3.xzw = r3.xzw / r2.yyy;
    r2.y = -9.99999997e-007 + r0.x;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r0.x = cmp(r0.x >= 9.99999997e-007);
    r3.xzw = r0.xxx ? r3.xzw : 0;
    r3.xzw = r2.yyy ? r3.xzw : 0;
    r3.xzw = r0.yyy * r3.xzw + r16.xyz;
    r3.xzw = r3.xzw + -r5.xyz;
    r0.x = dot(r3.xzw, r3.xzw);
    r0.x = sqrt(r0.x);
    r0.y = cb2[15].z * r15.y;
    r0.y = r15.x * cb2[14].z + r0.y;
    r0.y = r15.z * cb2[16].z + r0.y;
    r0.y = cb2[17].z + r0.y;
    r0.y = -cb2[23].z + r0.y;
    r0.y = r0.y / r3.y;
    r0.y = -cb4[11].y + r0.y;
    r0.y = saturate(r0.y / cb4[11].z);
    r0.y = r0.y * r0.y;
    r2.y = cb4[11].w * r0.y;
    r2.y = cb1[139].z * cb4[11].x + -r2.y;
    r2.yz = r2.yy * float2(-1,0) + r13.xy;
    r10.xyz = t4.SampleLevel(s0_s, r2.yz, -1).xyz;
    r10.xyz = float3(-0.5,-0.5,-0.5) + r10.xyz;
    r2.yz = r10.xy + r10.xy;
    r3.y = r10.z * 2 + 1;
    r3.y = cb4[12].x * r3.y;
    r10.xyz = r2.zzz * r12.xyz;
    r10.xyz = r9.xyz * r2.yyy + r10.xyz;
    r10.xyz = cb4[12].zzz * r10.xyz;
    r9.xyz = r9.xyz * r3.yyy + r10.xyz;
    r3.xyz = r9.xyz * r0.yyy + r3.xzw;
    r0.y = dot(r3.xyz, r3.xyz);
    r2.y = sqrt(r0.y);
    r3.xyz = r3.xyz / r2.yyy;
    r2.y = -9.99999997e-007 + r0.y;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r0.y = cmp(r0.y >= 9.99999997e-007);
    r3.xyz = r0.yyy ? r3.xyz : 0;
    r3.xyz = r2.yyy ? r3.xyz : 0;
    r3.xyz = r0.xxx * r3.xyz + r5.xyz;
    r3.xyz = r3.xyz + -r15.xyz;
    r0.x = dot(-r7.xyz, -r7.xyz);
    r5.x = sqrt(r0.x);
    r0.x = dot(-r8.xyz, -r8.xyz);
    r5.y = sqrt(r0.x);
    r0.x = dot(-r4.xyz, -r4.xyz);
    r5.z = sqrt(r0.x);
    r3.xyz = r5.xyz * r3.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.xyz = r11.xyz + r3.xyz;
  r4.xyzw = cb1[92].xyzw * r3.yyyy;
  r4.xyzw = r3.xxxx * cb1[91].xyzw + r4.xyzw;
  r3.xyzw = r3.zzzz * cb1[93].xyzw + r4.xyzw;
  o2.xyzw = cb1[94].xyzw + r3.xyzw;
  r3.xyzw = cb1[1].xyzw * r6.zzzz;
  r3.xyzw = r6.yyyy * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r6.wwww * cb1[2].xyzw + r3.xyzw;
  r3.xyzw = cb1[3].xyzw + r3.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r3.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r3.z + r0.x;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  o3.xyzw = r1.zyxw;
  o4.x = r5.w;
  o4.zw = r0.zw;
  o5.xy = r2.xw;
  o5.zw = float2(0,0);
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

TextureCube<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

TextureCubeArray<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[33];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[179];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR0,
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v6.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v6.ww * r1.zw;
  r2.zw = v6.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v6.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r0.w = cb5[11].x * cb0[142].z;
  r6.y = -0.100000001 * r0.w;
  r7.xyz = r4.xyz / cb5[11].zzz;
  r8.xy = cb5[11].ww * r7.yx;
  r8.z = -r7.z;
  r6.xw = float2(0,0);
  r7.xyzw = r8.xzyz + r6.xyxy;
  r1.zw = t17.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
  r8.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r1.zw = t17.SampleBias(s8_s, r7.zw, cb0[143].y).xy;
  r7.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r7.xyz = r8.xyz + r7.xyz;
  r8.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb5[12].x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[12].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = 1 + -cb5[12].z;
  r1.w = r1.z * r1.w + cb5[12].z;
  r9.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = r1.www * r9.xyz + r7.xyz;
  r9.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(18,4,6,5));
  r10.x = t0[r9.x].val[0/4];
  r10.y = t0[r9.x].val[0/4+1];
  r10.z = t0[r9.x].val[0/4+2];
  r1.w = r10.x + r10.y;
  r1.w = r1.w + r10.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb3[2].x * r1.w;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t9.SampleLevel(s4_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r5.w = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r5.w + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.y = saturate(r2.x / cb5[13].x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb5[13].y * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb5[13].z * r2.y;
  r2.z = r2.z * r1.w;
  r6.xy = r4.xy / cb5[15].yy;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r10.x = dot(r6.xy, cb5[2].xy);
  r10.y = dot(r6.xy, cb5[3].xy);
  r6.xy = float2(0.5,0.5) + r10.xy;
  r10.xy = r2.zz * cb5[14].zw + r6.xy;
  r5.w = cb5[16].w + cb0[143].y;
  r10.xy = t17.SampleBias(s8_s, r10.xy, r5.w).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r7.w = dot(r10.xy, r10.xy);
  r7.w = 1 + -r7.w;
  r7.w = max(0, r7.w);
  r10.z = sqrt(r7.w);
  r6.xy = r2.zz * cb5[18].xy + r6.xy;
  r6.xy = t17.SampleBias(s8_s, r6.xy, r5.w).xy;
  r11.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.z = dot(r11.xy, r11.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r11.z = sqrt(r2.z);
  r10.xyz = r11.xyz + r10.xyz;
  r11.xyz = float3(0,0,1) + -r10.xyz;
  r12.xyz = cb5[18].zzz * r11.xyz + r10.xyz;
  r2.z = 1 + r12.z;
  r2.y = cb5[18].w * r2.y;
  r1.w = r2.y * r1.w;
  r6.xy = r4.xy / cb5[19].yy;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r13.x = dot(r6.xy, cb5[2].xy);
  r13.y = dot(r6.xy, cb5[3].xy);
  r6.xy = float2(0.5,0.5) + r13.xy;
  r13.xy = r1.ww * cb5[14].zw + r6.xy;
  r13.xy = t17.SampleBias(s8_s, r13.xy, cb0[143].y).xy;
  r13.xy = r13.xy * float2(2,2) + float2(-1,-1);
  r2.y = dot(r13.xy, r13.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r13.z = sqrt(r2.y);
  r6.xy = r1.ww * cb5[18].xy + r6.xy;
  r6.xy = t17.SampleBias(s8_s, r6.xy, cb0[143].y).xy;
  r14.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r14.xy, r14.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r14.z = sqrt(r1.w);
  r13.xyz = r14.xyz + r13.xyz;
  r14.xyz = float3(0,0,1) + -r13.xyz;
  r15.xyz = cb5[19].zzz * r14.xyz + r13.xyz;
  r12.w = 1 + r12.z;
  r15.xyz = float3(-1,-1,1) * r15.xyz;
  r1.w = dot(r12.xyw, r15.xyz);
  r15.xyz = r15.xyz * r2.zzz;
  r12.xyz = r12.xyw * r1.www + -r15.xyz;
  r15.xyz = float3(0,0,1) + -r12.xyz;
  r12.xyz = cb5[19].www * r15.xyz + r12.xyz;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb5[20].x + cb5[20].w);
  r12.xyz = r12.xyz + -r7.xyz;
  r7.xyz = r1.www * r12.xyz + r7.xyz;
  r7.xyz = r7.xyz * cb0[138].www + cb0[138].xyz;
  r2.y = dot(r7.xyz, r7.xyz);
  r2.y = rsqrt(r2.y);
  r7.xyz = r7.xyz * r2.yyy;
  r0.xyz = r7.yyy * r0.xyz;
  r0.xyz = r7.xxx * v0.yzx + r0.xyz;
  r0.xyz = r7.zzz * v1.yzx + r0.xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r7.xyz = r2.yyy * r0.xyz;
  r12.xyz = cb4[2].yzw * r4.yyy;
  r12.xyz = r4.xxx * cb4[1].yzw + r12.xyz;
  r12.xyz = r4.zzz * cb4[3].yzw + r12.xyz;
  r12.xyz = cb4[4].yzw + r12.xyz;
  r0.xz = r12.xy / r12.zz;
  r0.xz = float2(1,-1) * r0.xz;
  r0.xz = r0.xz / cb4[0].xx;
  r6.xy = saturate(float2(0.5,0.5) + r0.xz);
  r12.xyzw = t18.SampleBias(s9_s, r6.xy, cb0[143].y).xyzw;
  r2.z = dot(r7.zxy, r5.xyz);
  r5.w = max(0, r2.z);
  r6.x = 1 + -r5.w;
  r6.x = max(9.99999975e-005, abs(r6.x));
  r6.x = log2(r6.x);
  r6.x = cb5[21].x * r6.x;
  r6.x = exp2(r6.x);
  r6.x = r6.x * cb5[21].z + cb5[21].y;
  r2.x = saturate(r2.x / cb5[22].x);
  r2.x = cb5[22].y * r2.x;
  r6.y = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb5[22].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r6.y ? 0 : r2.x;
  r2.x = saturate(r6.x * r2.x);
  r15.xyz = -cb5[8].xyz + cb5[7].xyz;
  r15.xyz = r2.xxx * r15.xyz + cb5[8].xyz;
  r6.xy = r4.xy / cb5[23].xx;
  r8.w = t19.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r9.x = 1 + -r8.w;
  r9.x = r9.x + r9.x;
  r10.w = cb5[23].y * cb0[142].z;
  r6.z = 0.100000001 * r10.w;
  r6.xy = r6.zw + r6.xy;
  r6.x = t19.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r6.y = 1 + -r6.x;
  r6.y = -r9.x * r6.y + 1;
  r6.x = dot(r8.ww, r6.xx);
  r6.z = cmp(r8.w >= 0.5);
  r6.x = r6.z ? r6.y : r6.x;
  r0.y = -r0.y * r2.y + 1;
  r0.y = cb5[23].z * r0.y;
  r2.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[23].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.y ? 0 : r0.y;
  r0.y = r6.x * r0.y + r0.y;
  r2.y = -cb5[24].x + r0.y;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r6.x = cmp(r0.y >= cb5[24].x);
  r6.x = r6.x ? r0.y : 0;
  r0.y = r2.y ? r6.x : r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(cb5[24].y, r0.y);
  r6.xyz = r1.www * r0.yyy + r15.xyz;
  r0.x = dot(r0.xz, r0.xz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * 10 + -4);
  r0.y = 1 + -r12.w;
  r0.x = r0.x * r0.y + r12.w;
  r6.xyz = r6.xyz + -r12.xyz;
  r0.xyz = r0.xxx * r6.xyz + r12.xyz;
  r6.xyz = -r0.xyz * cb5[24].zzz + r0.xyz;
  r6.xyz = cb4[6].xyz * r6.xyz;
  r6.xyz = float3(0.318309844,0.318309844,0.318309844) * r6.xyz;
  r2.y = dot(r7.zxy, cb4[7].xyz);
  r10.xyz = cb5[24].www * r11.xyz + r10.xyz;
  r6.w = 1 + r10.z;
  r11.xyz = cb5[25].xxx * r14.xyz + r13.xyz;
  r10.w = 1 + r10.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r8.w = dot(r10.xyw, r11.xyz);
  r11.xyz = r11.xyz * r6.www;
  r10.xyz = r10.xyw * r8.www + -r11.xyz;
  r6.w = dot(r10.xyz, r10.xyz);
  r6.w = sqrt(r6.w);
  r10.xyz = r10.xyz / r6.www;
  r6.w = saturate(dot(r10.xyz, cb4[7].xyz));
  r11.xyz = cb0[67].xyz + -r4.xyz;
  r8.w = dot(r11.xyz, r11.xyz);
  r8.w = sqrt(r8.w);
  r11.xyz = r11.xyz / r8.www;
  r11.xyz = cb4[7].xyz + r11.xyz;
  r8.w = dot(r11.xyz, r11.xyz);
  r8.w = sqrt(r8.w);
  r11.xyz = r11.xyz / r8.www;
  r8.w = saturate(dot(r11.xyz, r10.xyz));
  r9.x = 11 * cb5[25].z;
  r9.x = exp2(r9.x);
  r10.x = cmp(0 >= r8.w);
  r8.w = log2(r8.w);
  r8.w = r9.x * r8.w;
  r8.w = exp2(r8.w);
  r6.w = r8.w * r6.w;
  r6.w = cb5[25].w * r6.w;
  r10.yzw = cb4[5].xyz * r6.www;
  r10.xyz = r10.xxx ? float3(0,0,0) : r10.yzw;
  r6.xyz = r6.xyz * r2.yyy + r10.xyz;
  r10.xyz = cb5[9].xyz + -r6.xyz;
  r6.xyz = cb5[26].xxx * r10.xyz + r6.xyz;
  r2.y = cb5[26].z + -cb5[26].w;
  r1.z = saturate(r1.z * r2.y + cb5[26].w);
  r10.xy = float2(1,1) + -v3.wy;
  r2.y = cmp(0 >= r10.x);
  r6.w = log2(r10.x);
  r8.w = cb5[27].x * r6.w;
  r8.w = exp2(r8.w);
  r8.w = 1 + -r8.w;
  r8.w = r2.y ? 1 : r8.w;
  r9.x = cb5[27].y * cb0[142].z;
  r11.x = cb5[27].w * r9.x;
  r11.y = cb5[28].x * r9.x;
  r10.xzw = r4.xyz / cb5[28].zzz;
  r12.xy = cb5[28].ww * r10.xz;
  r13.xy = -r12.xy;
  r13.z = -r10.w;
  r11.xyzw = r13.xzyz + r11.xyxy;
  r10.xzw = r4.xyz / cb5[29].yyy;
  r13.xy = t17.SampleBias(s8_s, r10.xw, cb0[143].y).xy;
  r13.xy = r13.xy * float2(2,2) + float2(-1,-1);
  r13.xy = cb5[29].zz * -r13.xy + r13.xy;
  r10.xz = t17.SampleBias(s8_s, r10.zw, cb0[143].y).xy;
  r10.xz = r10.xz * float2(2,2) + float2(-1,-1);
  r10.xz = cb5[29].zz * -r10.xz + r10.xz;
  r10.w = cb5[30].x + -cb5[30].y;
  r10.w = saturate(abs(v1.x) * r10.w + cb5[30].y);
  r10.xz = r10.xz + -r13.xy;
  r10.xz = r10.ww * r10.xz + r13.xy;
  r11.xyzw = r11.xyzw + r10.xzxz;
  r12.w = -cb5[30].z + r4.z;
  r12.w = r12.w / cb5[30].w;
  r13.x = -1 + r12.w;
  r13.x = cmp(9.99999975e-006 < abs(r13.x));
  r13.y = cmp(r12.w >= 1);
  r12.w = r13.y ? 1 : r12.w;
  r12.w = r13.x ? r12.w : 1;
  r13.x = cmp(9.99999975e-006 < abs(r12.w));
  r13.y = cmp(r12.w >= 0);
  r12.w = r13.y ? r12.w : 1;
  r12.w = r13.x ? r12.w : 1;
  r13.x = cmp(0 >= r12.w);
  r12.w = log2(r12.w);
  r12.w = cb5[31].x * r12.w;
  r12.w = exp2(r12.w);
  r12.w = min(1, r12.w);
  r12.w = 1 + -r12.w;
  r12.w = r13.x ? 1 : r12.w;
  r12.w = cb5[31].y * r12.w;
  r11.x = t19.SampleLevel(s10_s, r11.xy, r12.w).y;
  r11.y = t19.SampleLevel(s10_s, r11.zw, r12.w).y;
  r11.y = r11.y + -r11.x;
  r11.x = r10.w * r11.y + r11.x;
  r12.z = r13.z;
  r13.xyzw = r9.xxxx * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r12.xzyz;
  r13.xyzw = r13.xyzw + r10.xzxz;
  r9.x = 0.75 * r12.w;
  r10.x = t19.SampleLevel(s10_s, r13.xy, r9.x).y;
  r9.x = t19.SampleLevel(s10_s, r13.zw, r9.x).y;
  r9.x = r9.x + -r10.x;
  r9.x = r10.w * r9.x + r10.x;
  r9.x = r11.x + r9.x;
  r10.x = cmp(0 >= r9.x);
  r9.x = log2(r9.x);
  r9.x = cb5[31].z * r9.x;
  r9.x = exp2(r9.x);
  r10.y = cb5[31].w * r10.y;
  r9.x = r10.y * r9.x;
  r9.x = r10.x ? 0 : r9.x;
  r9.x = -r8.w * r9.x + 1;
  r9.x = r9.x / r8.w;
  r9.x = cb5[32].x + -r9.x;
  r9.x = 1 + r9.x;
  r1.w = saturate(r9.x * cb5[32].y + r1.w);
  r6.w = cb5[32].z * r6.w;
  r6.w = exp2(r6.w);
  r6.w = 1 + -r6.w;
  r2.y = r2.y ? 1 : r6.w;
  r2.x = r2.y * r2.x;
  r2.x = r8.w * r2.x;
  r10.w = saturate(r2.x * r1.w);
  r0.xyz = saturate(r0.xyz);
  r1.w = saturate(cb5[24].z);
  r2.x = saturate(cb5[26].y);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r2.y = 0.0799999982 * r2.x;
  r11.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r11.xyz = r1.www * r11.xyz + r2.yyy;
  r12.xyz = ddx_coarse(v2.xyz);
  r13.xyz = ddy_coarse(v2.xyz);
  r2.x = dot(r12.xyz, r12.xyz);
  r2.y = dot(r13.xyz, r13.xyz);
  r2.x = max(r2.x, r2.y);
  r2.x = log2(r2.x);
  r2.x = cb0[183].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r2.x * cb0[183].x + cb0[183].y);
  r1.z = max(r2.x, r1.z);
  r12.xyz = -r0.xyz * r1.www + r0.xyz;
  r12.xyz = r12.xyz * cb0[136].www + cb0[136].xyz;
  r11.xyz = r11.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r13.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r12.xyz = r1.www ? r13.xyz : r12.xyz;
  r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
  r2.xy = float2(1,0.5) * v4.xy;
  r13.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r14.xyzw = t16.Sample(s7_s, r2.xy).xyzw;
  r13.xyzw = t16.Sample(s7_s, r13.xy).xyzw;
  r1.w = r13.w * 0.00392156886 + r14.w;
  r1.w = -0.00196078443 + r1.w;
  r15.x = t1[r9.y].val[0/4];
  r15.y = t1[r9.y].val[0/4+1];
  r15.z = t1[r9.y].val[0/4+2];
  r15.w = t1[r9.y].val[0/4+3];
  r16.x = t1[r9.z].val[0/4];
  r16.y = t1[r9.z].val[0/4+1];
  r16.z = t1[r9.z].val[0/4+2];
  r16.w = t1[r9.z].val[0/4+3];
  r1.w = r1.w * r15.w + r16.w;
  r9.xyz = r14.xyz * r14.xyz;
  r9.xyz = r9.xyz * r15.xyz + r16.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r14.x = t1[r9.w].val[0/4];
  r14.y = t1[r9.w].val[0/4+1];
  r14.z = t1[r9.w].val[0/4+2];
  r14.w = t1[r9.w].val[0/4+3];
  r2.x = mad((int)w5.x, 15, 7);
  r15.x = t1[r2.x].val[0/4];
  r15.y = t1[r2.x].val[0/4+1];
  r15.z = t1[r2.x].val[0/4+2];
  r15.w = t1[r2.x].val[0/4+3];
  r13.xyzw = r13.xyzw * r14.xyzw + r15.xyzw;
  r7.w = 1;
  r2.x = dot(r13.xyzw, r7.xyzw);
  r2.x = max(0, r2.x);
  r1.w = r2.x * r1.w;
  r9.xyz = r1.www * r9.xyz;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r12.xyz;
  r13.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r13.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r13.xyz;
  r0.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r13.xyz;
  r0.xyz = float3(1.33200002,1.33200002,1.33200002) + r0.xyz;
  r0.xyz = max(float3(1,1,1), r0.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r2.x = v6.w * cb1[3].x + cb1[3].y;
  r2.x = log2(r2.x);
  r2.x = cb1[3].z * r2.x;
  r2.x = max(0, r2.x);
  r2.x = (uint)r2.x;
  r2.y = asint(cb1[1].z) + -1;
  r2.x = min((uint)r2.x, (uint)r2.y);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r2.x, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r1.y = r2.z + r2.z;
  r13.yzw = r1.yyy * r7.zxy + -r5.xyz;
  r1.y = min(1, r5.w);
  r1.x = (int)r1.x + asint(cb1[0].w);
  r2.x = (uint)r1.x << 1;
  r2.x = t3.Load(r2.x).x;
  r2.x = min(asuint(cb1[0].y), (uint)r2.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t3.Load(r1.x).x;
  r2.y = max(0.00100000005, r1.z);
  r2.y = log2(r2.y);
  r2.y = -r2.y * 1.20000005 + 1;
  r2.z = -1 + cb0[195].z;
  r2.y = r2.z + -r2.y;
  r13.x = 0;
  r2.z = 1;
  r5.xyzw = float4(0,0,0,0);
  r6.w = 1;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= (uint)r2.x);
    if (r8.w != 0) break;
    r8.w = cmp(r2.z < 0.00100000005);
    if (r8.w != 0) {
      break;
    }
    r8.w = (int)r1.x + (int)r7.w;
    r8.w = t4.Load(r8.w).x;
    r14.xyz = -cb2[r8.w+0].xyz + r4.xyz;
    r9.w = dot(r14.xyz, r14.xyz);
    r11.w = sqrt(r9.w);
    r12.w = cmp(r11.w < cb2[r8.w+0].w);
    if (r12.w != 0) {
      r12.w = cmp(0 < cb2[r8.w+341].z);
      if (r12.w != 0) {
        r12.w = (uint)r8.w << 2;
        r15.xyz = cb2[r12.w+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb2[r12.w+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb2[r12.w+1025].xyz + r15.xyz;
        r15.xyz = cb2[r12.w+1026].xyz + r15.xyz;
        r16.xyz = cb2[r12.w+1024].xyz * r13.zzz;
        r16.xyz = r13.yyy * cb2[r12.w+1023].xyz + r16.xyz;
        r16.xyz = r13.www * cb2[r12.w+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r12.w = min(r16.y, r16.z);
        r12.w = min(r16.x, r12.w);
        r16.xyz = r12.www * r13.yzw + r4.xyz;
        r17.xyz = cb2[r8.w+682].xyz + cb2[r8.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r12.w = cb2[r8.w+2387].w * 0.699999988;
        r17.xyz = -cb2[r8.w+2387].www * float3(0.5,0.5,0.5) + cb2[r8.w+2387].xyz;
        r18.xyz = cb2[r8.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb2[r8.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb2[r8.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r14.w = r15.x + r14.w;
        r12.w = 1 / r12.w;
        r12.w = saturate(r14.w * r12.w);
        r14.w = r12.w * -2 + 3;
        r12.w = r12.w * r12.w;
        r15.x = -r14.w * r12.w + 1;
      } else {
        r11.w = saturate(r11.w / cb2[r8.w+0].w);
        r12.w = dot(r13.yzw, r14.xyz);
        r9.w = -cb2[r8.w+0].w * cb2[r8.w+0].w + r9.w;
        r9.w = r12.w * r12.w + -r9.w;
        r14.w = cmp(r9.w >= 0);
        r9.w = sqrt(r9.w);
        r9.w = r9.w + -r12.w;
        r14.xyz = r9.www * r13.yzw + r14.xyz;
        r17.yzw = -cb2[r8.w+682].xyz + r14.xyz;
        r9.w = r11.w * 2.5 + -1.5;
        r9.w = max(0, r9.w);
        r11.w = r9.w * r9.w;
        r9.w = -r9.w * 2 + 3;
        r17.x = -r11.w * r9.w + 1;
        r15.xyzw = r14.wwww ? r17.xyzw : r13.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb2[r8.w+341].y;
      r14.xyzw = t5.SampleLevel(s2_s, r16.xyzw, r2.y).xyzw;
      r14.xyz = cb2[r8.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r15.xxx;
      r5.xyz = r14.xyz * r2.zzz + r5.xyz;
      r9.w = -r14.w * r15.x + 1;
      r2.z = r9.w * r2.z;
      r8.w = cb2[r8.w+682].w * r15.x;
      r5.w = r8.w * r6.w + r5.w;
      r8.w = 1 + -r15.x;
      r6.w = r8.w * r6.w;
    }
    r7.w = (int)r7.w + 1;
  }
  r2.xyz = cb0[157].xyz * r5.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r5.w * r1.x;
  r5.x = saturate(r1.z * cb0[197].x + cb0[197].y);
  r5.y = r5.x * -2 + 3;
  r5.x = r5.x * r5.x;
  r5.x = r5.y * r5.x;
  r1.x = max(9.99999975e-005, r1.x);
  r1.x = r1.w / r1.x;
  r1.x = min(cb0[197].z, r1.x);
  r1.x = -1 + r1.x;
  r1.x = r5.x * r1.x + 1;
  r2.xyz = r2.xyz * r1.xxx;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v6.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r5.xyzw = cb0[1].xyzw * r3.yyyy;
    r5.xyzw = r3.xxxx * cb0[0].xyzw + r5.xyzw;
    r5.xyzw = r3.zzzz * cb0[2].xyzw + r5.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r13.xyz = r13.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r13.yyyy;
    r14.xyzw = r13.xxxx * cb0[0].xyzw + r14.xyzw;
    r13.xyzw = r13.zzzz * cb0[2].xyzw + r14.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r1.w = rcp(r5.w);
    r14.xyz = r5.xyz * r1.www;
    r1.w = rcp(r13.w);
    r5.xy = r2.ww * cb0[30].zw + r5.zw;
    r2.w = rcp(r5.y);
    r5.yzw = r13.xyz * r1.www + -r14.xyz;
    r1.w = dot(r5.yz, r5.yz);
    r1.w = sqrt(r1.w);
    r6.w = 0.5 * r1.w;
    r13.xy = r14.xy * r6.ww + r5.yz;
    r13.xy = -r1.ww * float2(0.5,0.5) + abs(r13.xy);
    r13.xy = max(float2(0,0), r13.xy);
    r13.xy = r13.xy / abs(r5.yz);
    r13.xy = float2(1,1) + -r13.xy;
    r1.w = min(r13.x, r13.y);
    r1.w = r1.w / r6.w;
    r5.yzw = r5.yzw * r1.www;
    r1.w = -r5.x * r2.w + r14.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.w), r1.w);
    r13.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb1[176].xy * r13.xy;
    r5.yz = cb1[176].xy * r5.yz;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.yzw;
    r13.xyz = r5.xyz * r1.xxx + r14.xyz;
    r1.x = 1;
    r15.x = 0;
    r16.x = 0;
    r14.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r7.w = 0;
    r8.w = 0;
    r9.w = 0;
    while (true) {
      r11.w = cmp((uint)r9.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r9.w;
      r17.xyzw = float4(1,2,3,4) + r11.wwww;
      r18.xyzw = r17.xxxy * r5.xyzz + r13.xyzz;
      r19.xyzw = r17.yyzz * r5.xyxy + r13.xyxy;
      r17.xyzw = r17.wwzw * r5.xyzz + r13.xyzz;
      r11.w = r1.z * 0.666666687 + r1.x;
      r12.w = r1.z * 0.666666687 + r11.w;
      r20.x = t10.SampleLevel(s5_s, r18.xy, r1.x).x;
      r20.y = t10.SampleLevel(s5_s, r19.xy, r1.x).x;
      r20.z = t10.SampleLevel(s5_s, r19.zw, r11.w).x;
      r20.w = t10.SampleLevel(s5_s, r17.xy, r11.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r1.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r2.wwww);
      r19.xy = (int2)r18.zw | (int2)r18.xy;
      r11.w = (int)r19.y | (int)r19.x;
      if (r11.w != 0) {
        r16.x = r17.x;
        r14.xyz = r17.yzw;
        r5.w = r18.x;
        r6.w = r18.y;
        r7.w = r18.z;
        r8.w = -1;
        break;
      }
      r15.x = r17.w;
      r9.w = (int)r9.w + 4;
      r1.x = r12.w;
      r16.x = r17.x;
      r14.xyz = r17.yzw;
      r5.w = r18.x;
      r6.w = r18.y;
      r7.w = r18.z;
      r8.w = r11.w;
    }
    if (r8.w != 0) {
      r14.w = 2;
      r17.xy = r14.yz;
      r17.z = 3;
      r14.yzw = r7.www ? r14.xyw : r17.xyz;
      r16.y = r14.x;
      r16.z = 1;
      r14.xyz = r6.www ? r16.xyz : r14.yzw;
      r15.y = r16.x;
      r15.z = 0;
      r14.xyz = r5.www ? r15.xyz : r14.xyz;
      r1.x = (uint)r9.w;
      r1.x = r14.z + r1.x;
      r1.w = r14.x + -r14.y;
      r1.w = saturate(r14.x / r1.w);
      r1.x = r1.x + r1.w;
      r5.xyz = r5.xyz * r1.xxx + r13.xyz;
      r1.xw = cb1[176].zw * r5.xy;
      r1.xw = r1.xw * float2(2,-2) + float2(-1,1);
      r1.xw = cb0[66].xy * r1.xw;
      r1.xw = r1.xw / cb0[66].xy;
      r5.xyw = cb0[123].xyw * r1.www;
      r5.xyw = r1.xxx * cb0[122].xyw + r5.xyw;
      r5.xyz = r5.zzz * cb0[124].xyw + r5.xyw;
      r5.xyz = cb0[125].xyw + r5.xyz;
      r5.xy = r5.xy / r5.zz;
      r5.zw = r5.xy * cb1[177].xy + cb1[177].zw;
      r1.xw = saturate(abs(r1.xw) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xw, r1.xw);
      r1.x = 1 + -r1.x;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r1.w = dot(r5.xy, r5.xy);
      r1.w = 1 + -r1.w;
      r1.xw = max(float2(0,0), r1.xw);
      r1.x = min(r1.x, r1.w);
      r5.xyz = t11.SampleLevel(s6_s, r5.zw, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r1.z * 6.5999999 + 2);
      r1.x = r1.x * r1.w;
      r1.w = 1;
      r5.xyz = -r5.xyz * r1.xxx;
      r5.xyz = cb1[178].xxx * r5.xyz;
      r1.x = -r1.w * r1.x + 1;
      r2.xyz = r2.xyz * r1.xxx + r5.xyz;
    }
  }
  r5.xyzw = r1.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.x = r5.x * r5.x;
  r1.y = -9.27999973 * r1.y;
  r1.y = exp2(r1.y);
  r1.x = min(r1.x, r1.y);
  r1.x = r1.x * r5.x + r5.y;
  r1.xy = r1.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r11.y;
  r1.w = saturate(r1.w);
  r1.y = r1.w * r1.y;
  r1.xyw = r11.xyz * r1.xxx + r1.yyy;
  r2.w = dot(cb1[122].xyz, float3(1,1,1));
  r2.w = cmp(9.99999975e-005 < abs(r2.w));
  if (r2.w != 0) {
    r4.w = -1;
    r2.w = dot(cb1[122].xyzw, r4.xyzw);
    r2.w = saturate(abs(r2.w) * cb1[129].x + cb1[129].y);
    r2.w = 1 + -r2.w;
    r5.xyz = -cb1[123].xyz + r4.xyz;
    r4.w = dot(r5.xyz, cb1[124].xyz);
    r4.w = cb1[124].w + -abs(r4.w);
    r4.w = saturate(cb1[129].x * r4.w);
    r5.x = dot(r5.xyz, cb1[125].xyz);
    r5.x = cb1[125].w + -abs(r5.x);
    r5.x = saturate(cb1[129].x * r5.x);
    r4.w = r5.x * r4.w;
    r2.w = r4.w * r2.w;
    r4.w = dot(cb1[122].yzx, r7.xyz);
    r4.w = saturate(r4.w * cb1[130].x + cb1[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r2.w = r4.w * r2.w;
    r1.z = r2.w * r1.z;
    r2.w = cmp(0 < r1.z);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r8.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb1[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb1[122].xyz * r0.www + r5.xyz;
      r8.xyz = cb1[127].xyz * r7.xxx;
      r8.xyz = r7.zzz * cb1[126].xyz + r8.xyz;
      r8.xyz = r7.yyy * cb1[128].xyz + r8.xyz;
      r0.w = dot(r5.xyz, r8.xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = r8.xyz * -r0.www + r5.xyz;
      r5.xyz = r5.xyz * cb1[129].zzz + r4.xyz;
      r5.xyz = cb0[70].xyz + r5.xyz;
      r8.xyz = cb0[13].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[12].xyz + r8.xyz;
      r5.xyz = r5.zzz * cb0[14].xyz + r5.xyw;
      r5.xyz = cb0[15].xyz + r5.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r8.xyz = cb1[r0.w+132].xyw * r5.yyy;
      r5.xyw = r5.xxx * cb1[r0.w+131].xyw + r8.xyz;
      r5.xyz = r5.zzz * cb1[r0.w+133].xyw + r5.xyw;
      r5.xyz = cb1[r0.w+134].xyw + r5.xyz;
      r0.w = cb1[141].z ? cb0[197].w : 0;
      r5.xy = r5.xy / r5.zz;
      r5.xy = max(-cb1[141].xy, r5.xy);
      r5.xy = min(cb1[141].xy, r5.xy);
      r5.xy = r5.xy * cb1[r0.w+139].xy + cb1[r0.w+139].zw;
      r5.xyzw = t6.SampleLevel(s2_s, r5.xy, 0).xyzw;
      r0.w = r5.w * r1.z;
    } else {
      r5.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r2.xyz = r0.www * r2.xyz + r5.xyz;
  }
  r1.xyz = r2.xyz * r1.xyw;
  r2.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  r2.w = dot(r3.xyz, cb0[60].xyz);
  r1.w = r1.w / r2.w;
  r1.w = cb0[210].z * r1.w;
  r1.w = max(0, r1.w);
  r2.w = min(cb1[143].z, cb0[67].z);
  r4.w = cb0[67].z + -r2.w;
  r3.w = r4.w + r3.z;
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = rsqrt(r4.w);
  r4.w = r5.x * r4.w;
  r1.w = max(cb1[143].w, r1.w);
  r5.y = cmp(0 < r1.w);
  r5.z = r1.w * r5.x;
  r2.w = r5.z * r3.w + r2.w;
  r5.z = -r5.z * r3.w + r3.w;
  r1.w = -r1.w * r5.x + 1;
  r1.w = r1.w * r4.w;
  r5.w = -cb1[146].y + r2.w;
  r5.w = cb1[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb1[146].x * r5.w;
  r2.w = -cb1[144].w + r2.w;
  r2.w = cb1[144].y * r2.w;
  r2.xyzw = max(float4(1,1,1,-127), r2.xyzw);
  r2.w = exp2(-r2.w);
  r2.w = cb1[144].z * r2.w;
  r5.w = r5.y ? r5.w : cb1[143].x;
  r2.w = r5.y ? r2.w : cb1[144].x;
  r1.w = r5.y ? r1.w : r4.w;
  r5.y = r5.y ? r5.z : r3.w;
  r5.z = cb1[143].y * r5.y;
  r5.z = max(-127, r5.z);
  r6.w = exp2(-r5.z);
  r6.w = 1 + -r6.w;
  r6.w = r6.w / r5.z;
  r7.w = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.w : r7.w;
  r5.y = cb1[144].y * r5.y;
  r5.y = max(-127, r5.y);
  r6.w = exp2(-r5.y);
  r6.w = 1 + -r6.w;
  r6.w = r6.w / r5.y;
  r7.w = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r6.w : r7.w;
  r2.w = r5.y * r2.w;
  r2.w = r5.w * r5.z + r2.w;
  r5.y = r2.w * r1.w;
  r5.zw = cmp(float2(0,0) < cb1[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r4.w * cb1[150].x + cb1[150].y);
    r8.xy = float2(1,-1) * cb1[149].yx;
    r8.x = dot(r3.xy, r8.xy);
    r8.y = dot(r3.xy, cb1[149].xy);
    r8.z = r3.w;
    r13.xyz = t7.SampleLevel(s3_s, r8.xyz, 0).xyz;
    r8.xyz = t7.SampleLevel(s3_s, r8.xyz, cb1[150].z).xyz;
    r13.xyz = r13.xyz + -r8.xyz;
    r8.xyz = r5.zzz * r13.xyz + r8.xyz;
    r8.xyz = cb1[145].xyz * r8.xyz;
  } else {
    r8.xyz = cb1[145].xyz;
  }
  r5.z = cmp(cb1[147].w >= 0);
  r6.w = cmp(cb1[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r13.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r13.xyz, cb1[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb1[148].w * r3.w;
    r3.w = exp2(r3.w);
    r13.xyz = cb1[148].xyz * r3.www;
    r1.w = -cb1[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r13.xyz = r13.xyz * r1.www;
  } else {
    r13.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.y);
  r1.w = min(1, r1.w);
  r13.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r13.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r8.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r8.xyz = cb0[5].xyw * r4.yyy;
    r8.xyz = r4.xxx * cb0[4].xyw + r8.xyz;
    r8.xyz = r4.zzz * cb0[6].xyw + r8.xyz;
    r8.xyz = cb0[7].xyw + r8.xyz;
    r8.xy = r8.xy / r8.zz;
    r13.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r8.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r13.z = cb0[208].z * r1.w;
    r8.xyzw = t8.SampleLevel(s0_s, r13.xyz, 0).xyzw;
    r5.yzw = r5.yzw * r8.www + r8.xyz;
    r5.x = r8.w * r5.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r8.xyz = cb0[5].xyw * r4.yyy;
    r8.xyz = r4.xxx * cb0[4].xyw + r8.xyz;
    r8.xyz = r4.zzz * cb0[6].xyw + r8.xyz;
    r8.xyz = cb0[7].xyw + r8.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r13.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r8.xy = r8.xy / r8.zz;
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r13.xyz;
    r2.w = dot(r13.xyz, r13.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r14.z = sqrt(r3.w);
    r3.w = cb0[181].y * r14.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r13.xyz = r13.xyz * r2.www;
    r2.w = -r13.z * r13.z + 1;
    r2.w = sqrt(r2.w);
    r15.y = r13.z * 0.5 + 0.5;
    r8.zw = r13.xy / r2.ww;
    r2.w = 1 + -abs(r8.z);
    r2.w = sqrt(r2.w);
    r4.w = abs(r8.z) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r8.z) + -0.212114394;
    r4.w = r4.w * abs(r8.z) + 1.57072878;
    r6.w = r4.w * r2.w;
    r6.w = r6.w * -2 + 3.14159274;
    r7.w = cmp(r8.z < -r8.z);
    r6.w = r7.w ? r6.w : 0;
    r2.w = r4.w * r2.w + r6.w;
    r4.w = cmp(r8.w < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.w : r2.w;
    r15.x = 0.159154937 * r2.w;
    r8.zw = cb0[180].zw * float2(0.5,0.5) + r15.xy;
    r13.xy = float2(1,1) + cb0[180].xy;
    r13.xy = cb0[180].xy / r13.xy;
    r8.zw = r13.xy * r8.zw;
    r14.xy = r1.ww ? r8.zw : r8.xy;
    r8.xyzw = t2.SampleLevel(s1_s, r14.xyz, 0).xyzw;
    r8.xyz = r8.xyz * r3.www;
    r1.w = 1 + -r8.w;
    r1.w = -r3.w * r1.w + 1;
    r8.xyz = cb0[135].zzz * r8.xyz;
    r5.yzw = r8.xyz * r5.xxx + r5.yzw;
    r5.x = r5.x * r1.w;
  }
  r8.xyz = -cb0[148].xyz + r4.xyz;
  r13.xyz = cb0[150].xyz * r8.xyz;
  r14.xyz = -cb0[149].xyz + r4.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r8.xyz = r8.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.xyz = float3(0.5,0.5,0.5) + -abs(r8.xyz);
  r8.xyz = saturate(float3(6,6,6) * r8.xyz);
  r1.w = r8.x * r8.y;
  r1.w = r1.w * r8.z;
  r8.xyz = t12.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r15.xyz = t13.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r8.xyz = -r15.xyz + r8.xyz;
  r8.xyz = r1.www * r8.xyz + r15.xyz;
  r13.xyz = t14.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r14.xyz = t15.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r13.xyz = -r14.xyz + r13.xyz;
  r13.xyz = r1.www * r13.xyz + r14.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r14.xyz = r8.xyz / r1.www;
  r15.yzw = r14.xxx * r13.xyz;
  r16.yzw = r14.yyy * r13.xyz;
  r13.yzw = r14.zzz * r13.xyz;
  r7.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.xyz;
  r15.x = r8.x;
  r7.x = 0.886227548;
  r14.x = dot(r15.xyzw, r7.xyzw);
  r16.x = r8.y;
  r14.y = dot(r16.xyzw, r7.xyzw);
  r13.x = r8.z;
  r14.z = dot(r13.xyzw, r7.xyzw);
  r7.xyz = max(float3(0,0,0), r14.xyz);
  r7.xyz = r12.xyz * r7.xyz;
  r1.xyz = r1.xyz * r2.xyz + r7.xyz;
  r2.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r10.xyz = max(float3(0,0,0), r6.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r2.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = r4.xyz + -r2.xzw;
    r6.x = t0[r2.y].val[0/4];
    r6.y = t0[r2.y].val[0/4+1];
    r6.z = t0[r2.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r2.xyz = cmp(r6.xyz < abs(r2.xzw));
    r1.w = (int)r2.y | (int)r2.x;
    r1.w = (int)r2.z | (int)r1.w;
    r2.x = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r10.xyzw = r1.wwww ? r2.yzwx : r10.xyzw;
    o0.w = r10.w;
  } else {
    o0.w = r10.w;
  }
  r0.xyz = r9.xyz * r0.xyz + r1.xyz;
  r0.xyz = r0.xyz + r10.xyz;
  r0.xyz = r0.xyz * r5.xxx + r5.yzw;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}
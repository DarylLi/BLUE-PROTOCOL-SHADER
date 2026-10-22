// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

TextureCube<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

TextureCubeArray<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

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

cbuffer cb6 : register(b6)
{
  float4 cb6[39];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[8];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r1.zw;
  r2.zw = v5.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v5.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r0.w = cb6[11].x * cb0[142].z;
  r6.y = -0.100000001 * r0.w;
  r7.xyz = r4.xyz / cb6[11].zzz;
  r8.xy = cb6[11].ww * r7.yx;
  r8.z = -r7.z;
  r6.x = 0;
  r6.xyzw = r8.xzyz + r6.xyxy;
  r1.zw = t19.SampleBias(s8_s, r6.xy, cb0[143].y).xy;
  r7.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r1.zw = t19.SampleBias(s8_s, r6.zw, cb0[143].y).xy;
  r6.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r6.xyz = r7.xyz + r6.xyz;
  r7.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb6[12].x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb6[12].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = 1 + -cb6[12].z;
  r1.w = r1.z * r1.w + cb6[12].z;
  r8.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r1.w = mad((int)v4.x, 36, 18);
  r8.x = t0[r1.w].val[0/4];
  r8.y = t0[r1.w].val[0/4+1];
  r8.z = t0[r1.w].val[0/4+2];
  r1.w = r8.x + r8.y;
  r1.w = r1.w + r8.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb4[2].x * r1.w;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t10.SampleLevel(s5_s, r2.xy, 0).x;
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
  r2.y = saturate(r2.x / cb6[13].x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb6[13].y * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb6[13].z * r2.y;
  r2.z = r2.z * r1.w;
  r8.xy = r4.xy / cb6[15].yy;
  r8.xy = float2(-0.5,-0.5) + r8.xy;
  r9.x = dot(r8.xy, cb6[2].xy);
  r9.y = dot(r8.xy, cb6[3].xy);
  r8.xy = float2(0.5,0.5) + r9.xy;
  r8.zw = r2.zz * cb6[14].zw + r8.xy;
  r5.w = cb6[16].w + cb0[143].y;
  r8.zw = t19.SampleBias(s8_s, r8.zw, r5.w).xy;
  r9.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r6.w = dot(r9.xy, r9.xy);
  r6.w = 1 + -r6.w;
  r6.w = max(0, r6.w);
  r9.z = sqrt(r6.w);
  r8.xy = r2.zz * cb6[18].xy + r8.xy;
  r8.xy = t19.SampleBias(s8_s, r8.xy, r5.w).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.z = dot(r8.xy, r8.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r8.z = sqrt(r2.z);
  r8.xyz = r9.xyz + r8.xyz;
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r10.xyz = cb6[18].zzz * r9.xyz + r8.xyz;
  r2.z = 1 + r10.z;
  r2.y = cb6[18].w * r2.y;
  r1.w = r2.y * r1.w;
  r11.xy = r4.xy / cb6[19].yy;
  r11.xy = float2(-0.5,-0.5) + r11.xy;
  r12.x = dot(r11.xy, cb6[2].xy);
  r12.y = dot(r11.xy, cb6[3].xy);
  r11.xy = float2(0.5,0.5) + r12.xy;
  r11.zw = r1.ww * cb6[14].zw + r11.xy;
  r11.zw = t19.SampleBias(s8_s, r11.zw, cb0[143].y).xy;
  r12.xy = r11.zw * float2(2,2) + float2(-1,-1);
  r2.y = dot(r12.xy, r12.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r12.z = sqrt(r2.y);
  r11.xy = r1.ww * cb6[18].xy + r11.xy;
  r11.xy = t19.SampleBias(s8_s, r11.xy, cb0[143].y).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r11.xy, r11.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r11.z = sqrt(r1.w);
  r11.xyz = r12.xyz + r11.xyz;
  r12.xyz = float3(0,0,1) + -r11.xyz;
  r13.xyz = cb6[19].zzz * r12.xyz + r11.xyz;
  r10.w = 1 + r10.z;
  r13.xyz = float3(-1,-1,1) * r13.xyz;
  r1.w = dot(r10.xyw, r13.xyz);
  r13.xyz = r13.xyz * r2.zzz;
  r10.xyz = r10.xyw * r1.www + -r13.xyz;
  r13.xyz = float3(0,0,1) + -r10.xyz;
  r10.xyz = cb6[19].www * r13.xyz + r10.xyz;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb6[20].x + cb6[20].w);
  r10.xyz = r10.xyz + -r6.xyz;
  r6.xyz = r1.www * r10.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r2.y = dot(r6.xyz, r6.xyz);
  r2.y = rsqrt(r2.y);
  r6.xyz = r6.xyz * r2.yyy;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r6.xyz = r2.yyy * r0.xyz;
  r0.xy = float2(1,1) + -v3.yw;
  r2.z = dot(r6.xyz, r5.xyz);
  r5.w = max(0, r2.z);
  r7.w = 1 + -r5.w;
  r7.w = max(9.99999975e-005, abs(r7.w));
  r7.w = log2(r7.w);
  r8.w = cb6[21].x * r7.w;
  r8.w = exp2(r8.w);
  r8.w = r8.w * 0.959999979 + 0.0399999991;
  r8.w = cb6[21].y * r8.w;
  r8.w = max(9.99999975e-006, r8.w);
  r8.w = saturate(r2.x / r8.w);
  r8.w = 1 + -r8.w;
  r8.w = -r8.w * cb6[21].z + 1;
  r10.xy = r4.xy / cb6[22].zz;
  r10.zw = cb0[142].zz * cb6[22].xx + r10.xy;
  r9.w = t20.SampleBias(s9_s, r10.zw, cb0[143].y).x;
  r10.xy = cb0[142].zz * cb6[23].xx + r10.xy;
  r10.x = t20.SampleBias(s9_s, r10.xy, cb0[143].y).y;
  r9.w = r10.x * r9.w;
  r9.w = cb6[23].y * r9.w;
  r10.x = cmp(0 >= r9.w);
  r9.w = log2(r9.w);
  r9.w = cb6[23].z * r9.w;
  r9.w = exp2(r9.w);
  r9.w = r10.x ? 0 : r9.w;
  r8.w = r8.w / r9.w;
  r8.w = cb6[23].w + -r8.w;
  r8.w = 1 + r8.w;
  r8.w = 1 + -r8.w;
  r10.xy = r4.xy / cb6[24].yy;
  r9.w = t20.SampleBias(s9_s, r10.xy, cb0[143].y).x;
  r10.z = 1 + -r9.w;
  r10.z = r10.z + r10.z;
  r10.w = cb6[24].z * cb0[142].z;
  r13.xy = float2(0.100000001,6.28318548) * r10.ww;
  r13.z = 0;
  r10.xy = r13.xz + r10.xy;
  r10.x = t20.SampleBias(s9_s, r10.xy, cb0[143].y).x;
  r10.y = 1 + -r10.x;
  r10.y = -r10.z * r10.y + 1;
  r10.x = dot(r9.ww, r10.xx);
  r9.w = cmp(r9.w >= 0.5);
  r9.w = r9.w ? r10.y : r10.x;
  r10.x = sin(r13.y);
  r10.x = r10.x * 0.5 + 0.5;
  r10.x = r10.x * cb6[24].w + cb6[25].x;
  r10.y = -r10.x + r9.w;
  r10.y = cmp(9.99999975e-006 < abs(r10.y));
  r10.z = cmp(r9.w >= r10.x);
  r10.z = r10.z ? 1.000000 : 0;
  r10.y = r10.y ? r10.z : 1;
  r10.x = cb6[25].y + r10.x;
  r10.z = -r10.x + r9.w;
  r10.z = cmp(9.99999975e-006 < abs(r10.z));
  r10.x = cmp(r9.w >= r10.x);
  r10.y = cb6[25].z * r10.y;
  r10.x = r10.x ? 0 : r10.y;
  r10.x = r10.z ? r10.x : 0;
  r8.w = r8.w / r10.x;
  r8.w = 1 + -r8.w;
  r10.x = saturate(r2.x / cb6[26].x);
  r10.y = cmp(0 >= r10.x);
  r10.x = log2(r10.x);
  r10.x = cb6[26].y * r10.x;
  r10.x = exp2(r10.x);
  r10.x = r10.y ? 0 : r10.x;
  r8.w = saturate(r10.x * r8.w);
  r10.y = cmp(0 >= r10.x);
  r10.x = rsqrt(r10.x);
  r10.x = 1 / r10.x;
  r10.x = cb6[26].z * r10.x;
  r8.w = r10.x * r8.w;
  r8.w = r8.w * r0.x;
  r8.w = r10.y ? 0 : r8.w;
  r10.x = cb6[26].w * r7.w;
  r10.x = exp2(r10.x);
  r10.x = r10.x * cb6[27].y + cb6[27].x;
  r10.y = saturate(r2.x / cb6[27].w);
  r10.y = cb6[28].x * r10.y;
  r10.z = cmp(0 >= abs(r10.y));
  r10.y = log2(abs(r10.y));
  r10.y = cb6[28].y * r10.y;
  r10.y = exp2(r10.y);
  r10.y = r10.z ? 0 : r10.y;
  r10.x = saturate(r10.x * r10.y);
  r10.yzw = -cb6[8].xyz + cb6[7].xyz;
  r10.yzw = r10.xxx * r10.yzw + cb6[8].xyz;
  r7.w = cb6[28].z * r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * 0.959999979 + 0.0399999991;
  r7.w = cb6[28].w * r7.w;
  r7.w = max(9.99999975e-006, r7.w);
  r2.x = saturate(r2.x / r7.w);
  r2.x = 1 + -r2.x;
  r2.x = cb6[29].x * r2.x;
  r10.yzw = r0.xxx * r2.xxx + r10.yzw;
  r10.yzw = r10.yzw + r8.www;
  r0.z = -r0.z * r2.y + 1;
  r0.z = cb6[29].y * r0.z;
  r2.x = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb6[29].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r2.x ? 0 : r0.z;
  r0.z = r9.w * r0.z + r0.z;
  r2.x = -cb6[29].w + r0.z;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.y = cmp(r0.z >= cb6[29].w);
  r2.y = r2.y ? r0.z : 0;
  r0.z = r2.x ? r2.y : r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(cb6[30].x, r0.z);
  r10.yzw = r1.www * r0.zzz + r10.yzw;
  r13.xyz = -r10.yzw * cb6[30].yyy + r10.yzw;
  r13.xyz = cb5[6].xyz * r13.xyz;
  r13.xyz = float3(0.318309844,0.318309844,0.318309844) * r13.xyz;
  r0.z = dot(r6.xyz, cb5[7].xyz);
  r9.xyz = cb6[30].zzz * r9.xyz + r8.xyz;
  r2.x = 1 + r9.z;
  r8.xyz = cb6[30].www * r12.xyz + r11.xyz;
  r9.w = 1 + r9.z;
  r8.xyz = float3(-1,-1,1) * r8.xyz;
  r2.y = dot(r9.xyw, r8.xyz);
  r8.xyz = r8.xyz * r2.xxx;
  r8.xyz = r9.xyw * r2.yyy + -r8.xyz;
  r2.x = dot(r8.xyz, r8.xyz);
  r2.x = sqrt(r2.x);
  r8.xyz = r8.xyz / r2.xxx;
  r2.x = saturate(dot(r8.xyz, cb5[7].xyz));
  r9.xyz = cb0[67].xyz + -r4.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r9.xyz = cb5[7].xyz + r9.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r2.y = saturate(dot(r9.xyz, r8.xyz));
  r7.w = 11 * cb6[31].y;
  r7.w = exp2(r7.w);
  r8.x = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = r7.w * r2.y;
  r2.y = exp2(r2.y);
  r2.x = r2.x * r2.y;
  r2.x = cb6[31].z * r2.x;
  r9.xyz = cb5[5].xyz * r2.xxx;
  r8.xyz = r8.xxx ? float3(0,0,0) : r9.xyz;
  r8.xyz = r13.xyz * r0.zzz + r8.xyz;
  r9.xyz = cb6[9].xyz + -r8.xyz;
  r8.xyz = cb6[31].www * r9.xyz + r8.xyz;
  r0.z = cb6[32].y + -cb6[32].z;
  r0.z = saturate(r1.z * r0.z + cb6[32].z);
  r1.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r2.x = cb6[32].w * r0.y;
  r2.x = exp2(r2.x);
  r2.x = 1 + -r2.x;
  r2.x = r1.z ? 1 : r2.x;
  r2.y = cb6[33].x * cb0[142].z;
  r9.xyz = r4.xyz / cb6[34].yyy;
  r11.xy = cb6[34].zz * r9.xy;
  r12.xy = -r11.xy;
  r12.z = -r9.z;
  r9.xyzw = r2.yyyy * cb6[33].zwzw + r12.xzyz;
  r12.xyw = r4.xyz / cb6[35].xxx;
  r13.xy = t19.SampleBias(s8_s, r12.xw, cb0[143].y).xy;
  r13.xy = r13.xy * float2(2,2) + float2(-1,-1);
  r13.xy = cb6[35].yy * -r13.xy + r13.xy;
  r12.xy = t19.SampleBias(s8_s, r12.yw, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r12.xy = cb6[35].yy * -r12.xy + r12.xy;
  r7.w = -cb6[36].x + cb6[35].w;
  r7.w = saturate(abs(v1.x) * r7.w + cb6[36].x);
  r12.xy = r12.xy + -r13.xy;
  r12.xy = r7.ww * r12.xy + r13.xy;
  r9.xyzw = r12.xyxy + r9.xyzw;
  r11.w = -cb6[36].y + r4.z;
  r11.w = r11.w / cb6[36].z;
  r12.w = -1 + r11.w;
  r12.w = cmp(9.99999975e-006 < abs(r12.w));
  r13.x = cmp(r11.w >= 1);
  r11.w = r13.x ? 1 : r11.w;
  r11.w = r12.w ? r11.w : 1;
  r12.w = cmp(9.99999975e-006 < abs(r11.w));
  r13.x = cmp(r11.w >= 0);
  r11.w = r13.x ? r11.w : 1;
  r11.w = r12.w ? r11.w : 1;
  r12.w = cmp(0 >= r11.w);
  r11.w = log2(r11.w);
  r11.w = cb6[36].w * r11.w;
  r11.w = exp2(r11.w);
  r11.w = min(1, r11.w);
  r11.w = 1 + -r11.w;
  r11.w = r12.w ? 1 : r11.w;
  r11.w = cb6[37].x * r11.w;
  r9.x = t20.SampleLevel(s9_s, r9.xy, r11.w).y;
  r9.y = t20.SampleLevel(s9_s, r9.zw, r11.w).y;
  r9.y = r9.y + -r9.x;
  r9.x = r7.w * r9.y + r9.x;
  r11.z = r12.z;
  r13.xyzw = r2.yyyy * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r11.xzyz;
  r12.xyzw = r13.xyzw + r12.xyxy;
  r2.y = 0.75 * r11.w;
  r9.y = t20.SampleLevel(s9_s, r12.xy, r2.y).y;
  r2.y = t20.SampleLevel(s9_s, r12.zw, r2.y).y;
  r2.y = r2.y + -r9.y;
  r2.y = r7.w * r2.y + r9.y;
  r2.y = r9.x + r2.y;
  r7.w = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb6[37].y * r2.y;
  r2.y = exp2(r2.y);
  r0.x = cb6[37].z * r0.x;
  r0.x = r2.y * r0.x;
  r0.x = r7.w ? 0 : r0.x;
  r0.x = -r2.x * r0.x + 1;
  r0.x = r0.x / r2.x;
  r0.x = cb6[37].w + -r0.x;
  r0.x = 1 + r0.x;
  r0.x = saturate(r0.x * cb6[38].x + r1.w);
  r0.y = cb6[38].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = r1.z ? 1 : r0.y;
  r1.z = saturate(r10.x + r8.w);
  r0.y = r1.z * r0.y;
  r0.y = r2.x * r0.y;
  r9.w = saturate(r0.x * r0.y);
  r10.yzw = saturate(r10.yzw);
  r0.x = saturate(cb6[30].y);
  r0.y = saturate(cb6[32].x);
  r0.z = r0.z * cb0[139].y + cb0[139].x;
  r1.z = 0.0799999982 * r0.y;
  r11.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r10.yzw;
  r11.xyz = r0.xxx * r11.xyz + r1.zzz;
  r12.xyz = ddx_coarse(v2.xyz);
  r13.xyz = ddy_coarse(v2.xyz);
  r0.y = dot(r12.xyz, r12.xyz);
  r1.z = dot(r13.xyz, r13.xyz);
  r0.y = max(r1.z, r0.y);
  r0.y = log2(r0.y);
  r0.y = cb0[183].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(r0.y * cb0[183].x + cb0[183].y);
  r0.y = max(r0.z, r0.y);
  r12.xyz = -r10.yzw * r0.xxx + r10.yzw;
  r12.xyz = r12.xyz * cb0[136].www + cb0[136].xyz;
  r11.xyz = r11.xyz * cb0[137].www + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r13.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r12.xyz = r0.xxx ? r13.xyz : r12.xyz;
  r11.xyz = r0.xxx ? float3(0,0,0) : r11.xyz;
  r13.x = t1[0].val[0/4];
  r13.y = t1[0].val[0/4+1];
  r13.z = t1[0].val[0/4+2];
  r13.w = t1[0].val[0/4+3];
  r6.w = 1;
  r13.x = dot(r13.xyzw, r6.xyzw);
  r14.x = t1[1].val[0/4];
  r14.y = t1[1].val[0/4+1];
  r14.z = t1[1].val[0/4+2];
  r14.w = t1[1].val[0/4+3];
  r13.y = dot(r14.xyzw, r6.xyzw);
  r14.x = t1[2].val[0/4];
  r14.y = t1[2].val[0/4+1];
  r14.z = t1[2].val[0/4+2];
  r14.w = t1[2].val[0/4+3];
  r13.z = dot(r14.xyzw, r6.xyzw);
  r14.xyzw = r6.xyzz * r6.yzzx;
  r15.x = t1[3].val[0/4];
  r15.y = t1[3].val[0/4+1];
  r15.z = t1[3].val[0/4+2];
  r15.w = t1[3].val[0/4+3];
  r15.x = dot(r15.xyzw, r14.xyzw);
  r16.x = t1[4].val[0/4];
  r16.y = t1[4].val[0/4+1];
  r16.z = t1[4].val[0/4+2];
  r16.w = t1[4].val[0/4+3];
  r15.y = dot(r16.xyzw, r14.xyzw);
  r16.x = t1[5].val[0/4];
  r16.y = t1[5].val[0/4+1];
  r16.z = t1[5].val[0/4+2];
  r16.w = t1[5].val[0/4+3];
  r15.z = dot(r16.xyzw, r14.xyzw);
  r0.x = r6.y * r6.y;
  r0.x = r6.x * r6.x + -r0.x;
  r14.x = t1[6].val[0/4];
  r14.y = t1[6].val[0/4+1];
  r14.z = t1[6].val[0/4+2];
  r13.xyz = r15.xyz + r13.xyz;
  r13.xyz = r14.xyz * r0.xxx + r13.xyz;
  r13.xyz = max(float3(0,0,0), r13.xyz);
  r13.xyz = cb0[187].xyz * r13.xyz;
  r13.xyz = r13.xyz * r12.xyz;
  r14.xyz = r10.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r14.xyz = r10.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r14.xyz;
  r10.xyz = r10.yzw * float3(2.75519991,2.75519991,2.75519991) + r14.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
  r0.xz = cb0[131].zw * r1.xy;
  r0.xz = (uint2)r0.xz;
  r1.x = v5.w * cb1[3].x + cb1[3].y;
  r1.x = log2(r1.x);
  r1.x = cb1[3].z * r1.x;
  r1.x = max(0, r1.x);
  r1.x = (uint)r1.x;
  r1.y = asint(cb1[1].z) + -1;
  r1.x = min((uint)r1.x, (uint)r1.y);
  r0.xz = (uint2)r0.xz >> asuint(cb1[2].xx);
  r0.z = mad((int)r1.x, asint(cb1[1].y), (int)r0.z);
  r0.x = mad((int)r0.z, asint(cb1[1].x), (int)r0.x);
  r0.z = r2.z + r2.z;
  r1.yzw = r0.zzz * r6.xyz + -r5.xyz;
  r0.z = min(1, r5.w);
  r0.x = (int)r0.x + asint(cb1[0].w);
  r2.x = (uint)r0.x << 1;
  r2.x = t3.Load(r2.x).x;
  r2.x = min(asuint(cb1[0].y), (uint)r2.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t3.Load(r0.x).x;
  r2.y = max(0.00100000005, r0.y);
  r2.y = log2(r2.y);
  r2.y = -r2.y * 1.20000005 + 1;
  r2.z = -1 + cb0[195].z;
  r2.z = r2.z + -r2.y;
  r1.x = 0;
  r5.xyzw = float4(0,0,0,1);
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= (uint)r2.x);
    if (r7.w != 0) break;
    r7.w = cmp(r5.w < 0.00100000005);
    if (r7.w != 0) {
      break;
    }
    r7.w = (int)r0.x + (int)r6.w;
    r7.w = t4.Load(r7.w).x;
    r14.xyz = -cb3[r7.w+0].xyz + r4.xyz;
    r8.w = dot(r14.xyz, r14.xyz);
    r10.w = sqrt(r8.w);
    r11.w = cmp(r10.w < cb3[r7.w+0].w);
    if (r11.w != 0) {
      r11.w = cmp(0 < cb3[r7.w+341].z);
      if (r11.w != 0) {
        r11.w = (uint)r7.w << 2;
        r15.xyz = cb3[r11.w+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb3[r11.w+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb3[r11.w+1025].xyz + r15.xyz;
        r15.xyz = cb3[r11.w+1026].xyz + r15.xyz;
        r16.xyz = cb3[r11.w+1024].xyz * r1.zzz;
        r16.xyz = r1.yyy * cb3[r11.w+1023].xyz + r16.xyz;
        r16.xyz = r1.www * cb3[r11.w+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r11.w = min(r16.y, r16.z);
        r11.w = min(r16.x, r11.w);
        r16.xyz = r11.www * r1.yzw + r4.xyz;
        r17.xyz = cb3[r7.w+682].xyz + cb3[r7.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r11.w = cb3[r7.w+2387].w * 0.699999988;
        r17.xyz = -cb3[r7.w+2387].www * float3(0.5,0.5,0.5) + cb3[r7.w+2387].xyz;
        r18.xyz = cb3[r7.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb3[r7.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb3[r7.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r12.w = dot(r19.xyz, float3(1,1,1));
        r13.w = dot(r15.xyz, float3(1,1,1));
        r12.w = r13.w + r12.w;
        r11.w = 1 / r11.w;
        r11.w = saturate(r12.w * r11.w);
        r12.w = r11.w * -2 + 3;
        r11.w = r11.w * r11.w;
        r15.x = -r12.w * r11.w + 1;
      } else {
        r10.w = saturate(r10.w / cb3[r7.w+0].w);
        r11.w = dot(r1.yzw, r14.xyz);
        r8.w = -cb3[r7.w+0].w * cb3[r7.w+0].w + r8.w;
        r8.w = r11.w * r11.w + -r8.w;
        r12.w = cmp(r8.w >= 0);
        r8.w = sqrt(r8.w);
        r8.w = r8.w + -r11.w;
        r14.xyz = r8.www * r1.yzw + r14.xyz;
        r14.yzw = -cb3[r7.w+682].xyz + r14.xyz;
        r8.w = r10.w * 2.5 + -1.5;
        r8.w = max(0, r8.w);
        r10.w = r8.w * r8.w;
        r8.w = -r8.w * 2 + 3;
        r14.x = -r10.w * r8.w + 1;
        r15.xyzw = r12.wwww ? r14.xyzw : r1.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb3[r7.w+341].y;
      r14.xyzw = t6.SampleLevel(s3_s, r16.xyzw, r2.z).xyzw;
      r14.xyz = cb3[r7.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r15.xxx;
      r5.xyz = r14.xyz * r5.www + r5.xyz;
      r7.w = -r14.w * r15.x + 1;
      r5.w = r7.w * r5.w;
    }
    r6.w = (int)r6.w + 1;
  }
  r5.xyz = cb0[157].xyz * r5.xyz;
  r0.x = cmp(0 < cb1[116].y);
  if (r0.x != 0) {
    r0.x = cb1[116].x + -r2.y;
    r0.x = -1 + r0.x;
    r2.xyz = t5.SampleLevel(s2_s, r1.yzw, r0.x).xyz;
    r2.xyz = cb0[187].xyz * r2.xyz;
    r0.x = cmp(cb1[116].z < 1);
    r14.xyz = r5.www * r2.xyz + r5.xyz;
    r2.xyz = r0.xxx ? float3(0,0,0) : r2.xyz;
    r5.xyz = r0.xxx ? r14.xyz : r5.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r0.x = saturate(r0.y * cb0[197].x + cb0[197].y);
  r1.x = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r1.x * r0.x;
  r1.x = min(0, cb0[197].z);
  r1.x = -1 + r1.x;
  r0.x = r0.x * r1.x + 1;
  r2.xyz = r5.www * r2.xyz;
  r2.xyz = r5.xyz * r0.xxx + r2.xyz;
  r0.x = cmp(cb0[145].x == 0.000000);
  if (r0.x != 0) {
    r0.x = asuint(cb0[144].y);
    r5.xy = r0.xx * float2(32.6650009,11.8149996) + v5.xy;
    r0.x = dot(r5.xy, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r0.x = frac(r0.x);
    r0.x = -0.5 + r0.x;
    r5.xyzw = cb0[1].xyzw * r3.yyyy;
    r5.xyzw = r3.xxxx * cb0[0].xyzw + r5.xyzw;
    r5.xyzw = r3.zzzz * cb0[2].xyzw + r5.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.xyz = r1.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r1.yyyy;
    r14.xyzw = r1.xxxx * cb0[0].xyzw + r14.xyzw;
    r1.xyzw = r1.zzzz * cb0[2].xyzw + r14.xyzw;
    r1.xyzw = cb0[3].xyzw + r1.xyzw;
    r6.w = rcp(r5.w);
    r14.xyz = r6.www * r5.xyz;
    r1.w = rcp(r1.w);
    r5.xy = r2.ww * cb0[30].zw + r5.zw;
    r2.w = rcp(r5.y);
    r1.xyz = r1.xyz * r1.www + -r14.xyz;
    r1.w = dot(r1.xy, r1.xy);
    r1.w = sqrt(r1.w);
    r5.y = 0.5 * r1.w;
    r5.zw = r14.xy * r5.yy + r1.xy;
    r5.zw = -r1.ww * float2(0.5,0.5) + abs(r5.zw);
    r5.zw = max(float2(0,0), r5.zw);
    r5.zw = r5.zw / abs(r1.xy);
    r5.zw = float2(1,1) + -r5.zw;
    r1.w = min(r5.z, r5.w);
    r1.w = r1.w / r5.y;
    r1.xyz = r1.xyz * r1.www;
    r1.w = -r5.x * r2.w + r14.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r1.z), r1.w);
    r5.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb1[176].xy * r5.xy;
    r1.xy = cb1[176].xy * r1.xy;
    r2.w = 0.0833333358 * r1.w;
    r1.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r1.xyz;
    r5.xyz = r1.xyz * r0.xxx + r14.xyz;
    r0.x = 1;
    r15.x = 0;
    r16.x = 0;
    r14.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r7.w = 0;
    r8.w = 0;
    r10.w = 0;
    while (true) {
      r11.w = cmp((uint)r10.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r10.w;
      r17.xyzw = float4(1,2,3,4) + r11.wwww;
      r18.xyzw = r17.xxxy * r1.xyzz + r5.xyzz;
      r19.xyzw = r17.yyzz * r1.xyxy + r5.xyxy;
      r17.xyzw = r17.wwzw * r1.xyzz + r5.xyzz;
      r11.w = r0.y * 0.666666687 + r0.x;
      r12.w = r0.y * 0.666666687 + r11.w;
      r20.x = t11.SampleLevel(s6_s, r18.xy, r0.x).x;
      r20.y = t11.SampleLevel(s6_s, r19.xy, r0.x).x;
      r20.z = t11.SampleLevel(s6_s, r19.zw, r11.w).x;
      r20.w = t11.SampleLevel(s6_s, r17.xy, r11.w).x;
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
      r10.w = (int)r10.w + 4;
      r0.x = r12.w;
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
      r0.x = (uint)r10.w;
      r0.x = r14.z + r0.x;
      r1.w = r14.x + -r14.y;
      r1.w = saturate(r14.x / r1.w);
      r0.x = r1.w + r0.x;
      r1.xyz = r1.xyz * r0.xxx + r5.xyz;
      r1.xy = cb1[176].zw * r1.xy;
      r1.xy = r1.xy * float2(2,-2) + float2(-1,1);
      r1.xy = cb0[66].xy * r1.xy;
      r1.xy = r1.xy / cb0[66].xy;
      r5.xyz = cb0[123].xyw * r1.yyy;
      r5.xyz = r1.xxx * cb0[122].xyw + r5.xyz;
      r5.xyz = r1.zzz * cb0[124].xyw + r5.xyz;
      r5.xyz = cb0[125].xyw + r5.xyz;
      r1.zw = r5.xy / r5.zz;
      r5.xy = r1.zw * cb1[177].xy + cb1[177].zw;
      r1.xy = saturate(abs(r1.xy) * float2(5,5) + float2(-4,-4));
      r0.x = dot(r1.xy, r1.xy);
      r0.x = 1 + -r0.x;
      r0.x = max(0, r0.x);
      r1.xy = saturate(abs(r1.zw) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xy, r1.xy);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r0.x = min(r1.x, r0.x);
      r1.xyz = t12.SampleLevel(s7_s, r5.xy, 0).xyz;
      r1.xyz = min(float3(0,0,0), -r1.xyz);
      r1.w = saturate(-r0.y * 6.5999999 + 2);
      r0.x = r1.w * r0.x;
      r1.w = 1;
      r1.xyz = -r1.xyz * r0.xxx;
      r1.xyz = cb1[178].xxx * r1.xyz;
      r0.x = -r1.w * r0.x + 1;
      r2.xyz = r2.xyz * r0.xxx + r1.xyz;
    }
  }
  r1.xyzw = r0.yyyy * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.x = r1.x * r1.x;
  r0.z = -9.27999973 * r0.z;
  r0.z = exp2(r0.z);
  r0.x = min(r0.x, r0.z);
  r0.x = r0.x * r1.x + r1.y;
  r0.xz = r0.xx * float2(-1.03999996,1.03999996) + r1.zw;
  r1.x = 50 * r11.y;
  r1.x = saturate(r1.x);
  r0.z = r1.x * r0.z;
  r1.xyz = r11.xyz * r0.xxx + r0.zzz;
  r0.x = dot(cb1[122].xyz, float3(1,1,1));
  r0.x = cmp(9.99999975e-005 < abs(r0.x));
  if (r0.x != 0) {
    r4.w = -1;
    r0.x = dot(cb1[122].xyzw, r4.xyzw);
    r0.x = saturate(abs(r0.x) * cb1[129].x + cb1[129].y);
    r0.x = 1 + -r0.x;
    r5.xyz = -cb1[123].xyz + r4.xyz;
    r0.z = dot(r5.xyz, cb1[124].xyz);
    r0.z = cb1[124].w + -abs(r0.z);
    r0.z = saturate(cb1[129].x * r0.z);
    r1.w = dot(r5.xyz, cb1[125].xyz);
    r1.w = cb1[125].w + -abs(r1.w);
    r1.w = saturate(cb1[129].x * r1.w);
    r0.z = r1.w * r0.z;
    r0.x = r0.x * r0.z;
    r0.z = dot(cb1[122].xyz, r6.xyz);
    r0.z = saturate(r0.z * cb1[130].x + cb1[130].y);
    r0.y = -0.200000003 + r0.y;
    r0.y = saturate(10 * r0.y);
    r0.y = 1 + -r0.y;
    r0.x = r0.x * r0.z;
    r0.x = r0.x * r0.y;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r0.y = rsqrt(r0.w);
      r0.yzw = r7.xyz * r0.yyy;
      r1.w = dot(r0.yzw, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = cb1[122].xyz * r1.www + r0.yzw;
      r5.xyz = cb1[127].xyz * r6.yyy;
      r5.xyz = r6.xxx * cb1[126].xyz + r5.xyz;
      r5.xyz = r6.zzz * cb1[128].xyz + r5.xyz;
      r1.w = dot(r0.yzw, r5.xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = r5.xyz * -r1.www + r0.yzw;
      r0.yzw = r0.yzw * cb1[129].zzz + r4.xyz;
      r0.yzw = cb0[70].xyz + r0.yzw;
      r5.xyz = cb0[13].xyz * r0.zzz;
      r5.xyz = r0.yyy * cb0[12].xyz + r5.xyz;
      r0.yzw = r0.www * cb0[14].xyz + r5.xyz;
      r0.yzw = cb0[15].xyz + r0.yzw;
      r1.w = asuint(cb0[197].w) << 2;
      r5.xyz = cb1[r1.w+132].xyw * r0.zzz;
      r5.xyz = r0.yyy * cb1[r1.w+131].xyw + r5.xyz;
      r0.yzw = r0.www * cb1[r1.w+133].xyw + r5.xyz;
      r0.yzw = cb1[r1.w+134].xyw + r0.yzw;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.yz = r0.yz / r0.ww;
      r0.yz = max(-cb1[141].xy, r0.yz);
      r0.yz = min(cb1[141].xy, r0.yz);
      r0.yz = r0.yz * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r5.xyzw = t7.SampleLevel(s3_s, r0.yz, 0).xyzw;
      r0.x = r5.w * r0.x;
    } else {
      r5.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r2.xyz = r0.xxx * r2.xyz + r5.xyz;
  }
  r0.xyz = r2.xyz * r1.xyz;
  r1.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  r2.x = dot(r3.xyz, cb0[60].xyz);
  r1.w = r1.w / r2.x;
  r1.w = cb0[210].z * r1.w;
  r1.w = max(0, r1.w);
  r2.x = min(cb1[143].z, cb0[67].z);
  r2.y = cb0[67].z + -r2.x;
  r3.w = r3.z + r2.y;
  r2.y = dot(r3.xyw, r3.xyw);
  r2.z = rsqrt(r2.y);
  r2.y = r2.y * r2.z;
  r1.w = max(cb1[143].w, r1.w);
  r2.w = cmp(0 < r1.w);
  r4.w = r1.w * r2.z;
  r2.x = r4.w * r3.w + r2.x;
  r4.w = -r4.w * r3.w + r3.w;
  r1.w = -r1.w * r2.z + 1;
  r1.w = r1.w * r2.y;
  r5.x = -cb1[146].y + r2.x;
  r5.x = cb1[143].y * r5.x;
  r5.x = max(-127, r5.x);
  r5.x = exp2(-r5.x);
  r5.x = cb1[146].x * r5.x;
  r2.x = -cb1[144].w + r2.x;
  r2.x = cb1[144].y * r2.x;
  r2.x = max(-127, r2.x);
  r2.x = exp2(-r2.x);
  r2.x = cb1[144].z * r2.x;
  r5.x = r2.w ? r5.x : cb1[143].x;
  r2.x = r2.w ? r2.x : cb1[144].x;
  r1.w = r2.w ? r1.w : r2.y;
  r2.w = r2.w ? r4.w : r3.w;
  r4.w = cb1[143].y * r2.w;
  r4.w = max(-127, r4.w);
  r5.y = exp2(-r4.w);
  r5.y = 1 + -r5.y;
  r5.y = r5.y / r4.w;
  r5.z = -r4.w * 0.240226507 + 0.693147182;
  r4.w = cmp(0.00999999978 < abs(r4.w));
  r4.w = r4.w ? r5.y : r5.z;
  r2.w = cb1[144].y * r2.w;
  r2.w = max(-127, r2.w);
  r5.y = exp2(-r2.w);
  r5.y = 1 + -r5.y;
  r5.y = r5.y / r2.w;
  r5.z = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r5.y : r5.z;
  r2.x = r2.x * r2.w;
  r2.x = r5.x * r4.w + r2.x;
  r2.w = r2.x * r1.w;
  r5.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r5.x != 0) {
    r4.w = saturate(r2.y * cb1[150].x + cb1[150].y);
    r5.xz = float2(1,-1) * cb1[149].yx;
    r7.x = dot(r3.xy, r5.xz);
    r7.y = dot(r3.xy, cb1[149].xy);
    r7.z = r3.w;
    r5.xzw = t8.SampleLevel(s4_s, r7.xyz, 0).xyz;
    r7.xyz = t8.SampleLevel(s4_s, r7.xyz, cb1[150].z).xyz;
    r5.xzw = -r7.xyz + r5.xzw;
    r5.xzw = r4.www * r5.xzw + r7.xyz;
    r5.xzw = cb1[145].xyz * r5.xzw;
  } else {
    r5.xzw = cb1[145].xyz;
  }
  r4.w = cmp(cb1[147].w >= 0);
  r6.w = cmp(cb1[146].z == 0.000000);
  r4.w = r4.w ? r6.w : 0;
  if (r4.w != 0) {
    r7.xyz = r3.xyw * r2.zzz;
    r2.z = saturate(dot(r7.xyz, cb1[147].xyz));
    r2.z = log2(r2.z);
    r2.z = cb1[148].w * r2.z;
    r2.z = exp2(r2.z);
    r7.xyz = cb1[148].xyz * r2.zzz;
    r1.w = -cb1[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r7.xyz = r7.xyz * r1.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r2.w);
  r1.w = min(1, r1.w);
  r7.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r2.y);
  r1.w = r1.w ? r5.y : 0;
  r2.xyzw = r1.wwww ? float4(1,0,0,0) : r7.wxyz;
  r1.w = 1 + -r2.x;
  r2.yzw = r5.xzw * r1.www + r2.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r4.yyy;
    r5.xyz = r4.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r4.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r7.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r7.z = cb0[208].z * r1.w;
    r5.xyzw = t9.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r2.yzw = r2.yzw * r5.www + r5.xyz;
    r2.x = r5.w * r2.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r4.yyy;
    r5.xyz = r4.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r4.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r7.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r5.xy = r5.xy / r5.zz;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r7.xyz;
    r3.w = dot(r7.xyz, r7.xyz);
    r4.w = sqrt(r3.w);
    r4.w = -cb0[181].x + r4.w;
    r4.w = max(0, r4.w);
    r4.w = cb0[182].x * r4.w;
    r4.w = cb0[181].z * r4.w;
    r14.z = sqrt(r4.w);
    r4.w = cb0[181].y * r14.z;
    r5.z = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.z ? r4.w : 1;
    r3.w = rsqrt(r3.w);
    r7.xyz = r7.xyz * r3.www;
    r3.w = -r7.z * r7.z + 1;
    r3.w = sqrt(r3.w);
    r15.y = r7.z * 0.5 + 0.5;
    r5.zw = r7.xy / r3.ww;
    r3.w = 1 + -abs(r5.z);
    r3.w = sqrt(r3.w);
    r6.w = abs(r5.z) * -0.0187292993 + 0.0742610022;
    r6.w = r6.w * abs(r5.z) + -0.212114394;
    r6.w = r6.w * abs(r5.z) + 1.57072878;
    r7.x = r6.w * r3.w;
    r7.x = r7.x * -2 + 3.14159274;
    r5.z = cmp(r5.z < -r5.z);
    r5.z = r5.z ? r7.x : 0;
    r3.w = r6.w * r3.w + r5.z;
    r5.z = cmp(r5.w < 0);
    r5.w = 6.28318548 + -r3.w;
    r3.w = r5.z ? r5.w : r3.w;
    r15.x = 0.159154937 * r3.w;
    r5.zw = cb0[180].zw * float2(0.5,0.5) + r15.xy;
    r7.xy = float2(1,1) + cb0[180].xy;
    r7.xy = cb0[180].xy / r7.xy;
    r5.zw = r7.xy * r5.zw;
    r14.xy = r1.ww ? r5.zw : r5.xy;
    r5.xyzw = t2.SampleLevel(s1_s, r14.xyz, 0).xyzw;
    r5.xyz = r5.xyz * r4.www;
    r1.w = 1 + -r5.w;
    r1.w = -r4.w * r1.w + 1;
    r5.xyz = cb0[135].zzz * r5.xyz;
    r2.yzw = r5.xyz * r2.xxx + r2.yzw;
    r2.x = r2.x * r1.w;
  }
  r5.xyz = -cb0[148].xyz + r4.xyz;
  r7.xyz = cb0[150].xyz * r5.xyz;
  r14.xyz = -cb0[149].xyz + r4.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r5.xyz = r5.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r5.xyz = float3(0.5,0.5,0.5) + -abs(r5.xyz);
  r5.xyz = saturate(float3(6,6,6) * r5.xyz);
  r1.w = r5.x * r5.y;
  r1.w = r1.w * r5.z;
  r5.xyzw = t13.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r15.xyzw = t14.SampleLevel(s0_s, r14.xyz, 0).xyzw;
  r5.xyzw = -r15.xyzw + r5.xyzw;
  r5.xyzw = r1.wwww * r5.xyzw + r15.xyzw;
  r7.xyz = t15.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r14.xyz = t16.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r7.xyz = -r14.xyz + r7.xyz;
  r7.xyz = r1.www * r7.xyz + r14.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r14.xyz = r5.xyz / r1.www;
  r15.yzw = r14.xxx * r7.xyz;
  r16.yzw = r14.yyy * r7.xyz;
  r7.yzw = r14.zzz * r7.xyz;
  r6.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.yzx;
  r15.x = r5.x;
  r6.x = 0.886227548;
  r14.x = dot(r15.xyzw, r6.xyzw);
  r16.x = r5.y;
  r14.y = dot(r16.xyzw, r6.xyzw);
  r7.x = r5.z;
  r14.z = dot(r7.xyzw, r6.xyzw);
  r5.xyz = max(float3(0,0,0), r14.xyz);
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r6.xyzw = cb2[1].xyzw * r4.yyyy;
    r6.xyzw = r4.xxxx * cb2[0].xyzw + r6.xyzw;
    r6.xyzw = r4.zzzz * cb2[2].xyzw + r6.xyzw;
    r6.xyzw = cb2[3].xyzw + r6.xyzw;
    r6.xy = r6.xy / r6.ww;
    r7.xyzw = t17.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r14.xyz = t18.SampleLevel(s0_s, r6.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r6.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r7.x * r6.z;
    r7.xyz = r15.xyz * r7.yzw;
    r7.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r7.xyz;
    r3.w = dot(r7.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r3.w;
    r7.xyz = r16.xyz * r14.xyz;
    r7.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r7.xyz;
    r3.w = dot(r7.xyz, float3(1,1,1));
    r1.w = r3.w + r1.w;
    r7.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = min(float3(1,1,1), r7.xyz);
    r6.zw = cmp(r6.xy < cb2[4].xy);
    r6.xy = cmp(cb2[4].zw < r6.xy);
    r6.xy = (int2)r6.xy | (int2)r6.zw;
    r1.w = (int)r6.y | (int)r6.x;
    r6.xyz = cb2[6].xyz * r5.www;
    r7.xyz = float3(1,1,1) + -r7.xyz;
    r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
    r6.xyz = -r6.xyz * r7.xyz + r5.xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = r12.xyz * r6.xyz;
  } else {
    r6.xyz = r12.xyz * r5.xyz;
  }
  r0.xyz = r0.xyz * r1.xyz + r6.xyz;
  r1.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r9.xyz = max(float3(0,0,0), r8.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r1.x = t0[r1.x].val[0/4];
    r1.z = t0[r1.x].val[0/4+1];
    r1.w = t0[r1.x].val[0/4+2];
    r1.xzw = r4.xyz + -r1.xzw;
    r5.x = t0[r1.y].val[0/4];
    r5.y = t0[r1.y].val[0/4+1];
    r5.z = t0[r1.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r1.xyz = cmp(r5.xyz < abs(r1.xzw));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r4.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r9.xyzw = r1.xxxx ? r4.yzwx : r9.xyzw;
    o0.w = r9.w;
  } else {
    o0.w = r9.w;
  }
  r0.xyz = r13.xyz * r10.xyz + r0.xyz;
  r0.xyz = r0.xyz + r9.xyz;
  r0.xyz = r0.xyz * r2.xxx + r2.yzw;
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
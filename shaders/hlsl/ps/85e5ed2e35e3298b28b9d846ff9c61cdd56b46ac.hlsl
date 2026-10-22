// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCubeArray<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

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

cbuffer cb7 : register(b7)
{
  float4 cb7[33];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[8];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2728];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[179];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v4.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v4.ww * r1.zw;
  r2.zw = v4.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v4.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v4.yyyy;
  r3.xyzw = v4.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v4.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r0.w = cb7[11].x * cb0[142].z;
  r6.y = -0.100000001 * r0.w;
  r7.xyz = r4.xyz / cb7[11].zzz;
  r8.xy = cb7[11].ww * r7.yx;
  r8.z = -r7.z;
  r6.xw = float2(0,0);
  r7.xyzw = r8.xzyz + r6.xyxy;
  r1.zw = t16.SampleBias(s7_s, r7.xy, cb0[143].y).xy;
  r8.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r1.zw = t16.SampleBias(s7_s, r7.zw, cb0[143].y).xy;
  r7.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r7.xyz = r8.xyz + r7.xyz;
  r8.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb7[12].x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb7[12].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = 1 + -cb7[12].z;
  r1.w = r1.z * r1.w + cb7[12].z;
  r9.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = r1.www * r9.xyz + r7.xyz;
  r1.w = cb1[18].x + cb1[18].y;
  r1.w = cb1[18].z + r1.w;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb5[2].x * r1.w;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t7.SampleLevel(s4_s, r2.xy, 0).x;
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
  r2.y = saturate(r2.x / cb7[13].x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb7[13].y * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb7[13].z * r2.y;
  r2.z = r2.z * r1.w;
  r6.xy = r4.xy / cb7[15].yy;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r9.x = dot(r6.xy, cb7[2].xy);
  r9.y = dot(r6.xy, cb7[3].xy);
  r6.xy = float2(0.5,0.5) + r9.xy;
  r9.xy = r2.zz * cb7[14].zw + r6.xy;
  r5.w = cb7[16].w + cb0[143].y;
  r9.xy = t16.SampleBias(s7_s, r9.xy, r5.w).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r7.w = dot(r9.xy, r9.xy);
  r7.w = 1 + -r7.w;
  r7.w = max(0, r7.w);
  r9.z = sqrt(r7.w);
  r6.xy = r2.zz * cb7[18].xy + r6.xy;
  r6.xy = t16.SampleBias(s7_s, r6.xy, r5.w).xy;
  r10.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.z = dot(r10.xy, r10.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r10.z = sqrt(r2.z);
  r9.xyz = r10.xyz + r9.xyz;
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r11.xyz = cb7[18].zzz * r10.xyz + r9.xyz;
  r2.z = 1 + r11.z;
  r2.y = cb7[18].w * r2.y;
  r1.w = r2.y * r1.w;
  r6.xy = r4.xy / cb7[19].yy;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r12.x = dot(r6.xy, cb7[2].xy);
  r12.y = dot(r6.xy, cb7[3].xy);
  r6.xy = float2(0.5,0.5) + r12.xy;
  r12.xy = r1.ww * cb7[14].zw + r6.xy;
  r12.xy = t16.SampleBias(s7_s, r12.xy, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r2.y = dot(r12.xy, r12.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r12.z = sqrt(r2.y);
  r6.xy = r1.ww * cb7[18].xy + r6.xy;
  r6.xy = t16.SampleBias(s7_s, r6.xy, cb0[143].y).xy;
  r13.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r13.xy, r13.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r13.z = sqrt(r1.w);
  r12.xyz = r13.xyz + r12.xyz;
  r13.xyz = float3(0,0,1) + -r12.xyz;
  r14.xyz = cb7[19].zzz * r13.xyz + r12.xyz;
  r11.w = 1 + r11.z;
  r14.xyz = float3(-1,-1,1) * r14.xyz;
  r1.w = dot(r11.xyw, r14.xyz);
  r14.xyz = r14.xyz * r2.zzz;
  r11.xyz = r11.xyw * r1.www + -r14.xyz;
  r14.xyz = float3(0,0,1) + -r11.xyz;
  r11.xyz = cb7[19].www * r14.xyz + r11.xyz;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb7[20].x + cb7[20].w);
  r11.xyz = r11.xyz + -r7.xyz;
  r7.xyz = r1.www * r11.xyz + r7.xyz;
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
  r11.xyz = cb6[2].yzw * r4.yyy;
  r11.xyz = r4.xxx * cb6[1].yzw + r11.xyz;
  r11.xyz = r4.zzz * cb6[3].yzw + r11.xyz;
  r11.xyz = cb6[4].yzw + r11.xyz;
  r0.xz = r11.xy / r11.zz;
  r0.xz = float2(1,-1) * r0.xz;
  r0.xz = r0.xz / cb6[0].xx;
  r6.xy = saturate(float2(0.5,0.5) + r0.xz);
  r11.xyzw = t17.SampleBias(s8_s, r6.xy, cb0[143].y).xyzw;
  r2.z = dot(r7.zxy, r5.xyz);
  r5.w = max(0, r2.z);
  r6.x = 1 + -r5.w;
  r6.x = max(9.99999975e-005, abs(r6.x));
  r6.x = log2(r6.x);
  r6.x = cb7[21].x * r6.x;
  r6.x = exp2(r6.x);
  r6.x = r6.x * cb7[21].z + cb7[21].y;
  r2.x = saturate(r2.x / cb7[22].x);
  r2.x = cb7[22].y * r2.x;
  r6.y = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[22].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r6.y ? 0 : r2.x;
  r2.x = saturate(r6.x * r2.x);
  r14.xyz = -cb7[8].xyz + cb7[7].xyz;
  r14.xyz = r2.xxx * r14.xyz + cb7[8].xyz;
  r6.xy = r4.xy / cb7[23].xx;
  r7.w = t18.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r8.w = 1 + -r7.w;
  r8.w = r8.w + r8.w;
  r9.w = cb7[23].y * cb0[142].z;
  r6.z = 0.100000001 * r9.w;
  r6.xy = r6.zw + r6.xy;
  r6.x = t18.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r6.y = 1 + -r6.x;
  r6.y = -r8.w * r6.y + 1;
  r6.x = dot(r7.ww, r6.xx);
  r6.z = cmp(r7.w >= 0.5);
  r6.x = r6.z ? r6.y : r6.x;
  r0.y = -r0.y * r2.y + 1;
  r0.y = cb7[23].z * r0.y;
  r2.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb7[23].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.y ? 0 : r0.y;
  r0.y = r6.x * r0.y + r0.y;
  r2.y = -cb7[24].x + r0.y;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r6.x = cmp(r0.y >= cb7[24].x);
  r6.x = r6.x ? r0.y : 0;
  r0.y = r2.y ? r6.x : r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(cb7[24].y, r0.y);
  r6.xyz = r1.www * r0.yyy + r14.xyz;
  r0.x = dot(r0.xz, r0.xz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * 10 + -4);
  r0.y = 1 + -r11.w;
  r0.x = r0.x * r0.y + r11.w;
  r6.xyz = r6.xyz + -r11.xyz;
  r0.xyz = r0.xxx * r6.xyz + r11.xyz;
  r6.xyz = -r0.xyz * cb7[24].zzz + r0.xyz;
  r6.xyz = cb6[6].xyz * r6.xyz;
  r6.xyz = float3(0.318309844,0.318309844,0.318309844) * r6.xyz;
  r2.y = dot(r7.zxy, cb6[7].xyz);
  r9.xyz = cb7[24].www * r10.xyz + r9.xyz;
  r6.w = 1 + r9.z;
  r10.xyz = cb7[25].xxx * r13.xyz + r12.xyz;
  r9.w = 1 + r9.z;
  r10.xyz = float3(-1,-1,1) * r10.xyz;
  r7.w = dot(r9.xyw, r10.xyz);
  r10.xyz = r10.xyz * r6.www;
  r9.xyz = r9.xyw * r7.www + -r10.xyz;
  r6.w = dot(r9.xyz, r9.xyz);
  r6.w = sqrt(r6.w);
  r9.xyz = r9.xyz / r6.www;
  r6.w = saturate(dot(r9.xyz, cb6[7].xyz));
  r10.xyz = cb0[67].xyz + -r4.xyz;
  r7.w = dot(r10.xyz, r10.xyz);
  r7.w = sqrt(r7.w);
  r10.xyz = r10.xyz / r7.www;
  r10.xyz = cb6[7].xyz + r10.xyz;
  r7.w = dot(r10.xyz, r10.xyz);
  r7.w = sqrt(r7.w);
  r10.xyz = r10.xyz / r7.www;
  r7.w = saturate(dot(r10.xyz, r9.xyz));
  r8.w = 11 * cb7[25].z;
  r8.w = exp2(r8.w);
  r9.x = cmp(0 >= r7.w);
  r7.w = log2(r7.w);
  r7.w = r8.w * r7.w;
  r7.w = exp2(r7.w);
  r6.w = r7.w * r6.w;
  r6.w = cb7[25].w * r6.w;
  r9.yzw = cb6[5].xyz * r6.www;
  r9.xyz = r9.xxx ? float3(0,0,0) : r9.yzw;
  r6.xyz = r6.xyz * r2.yyy + r9.xyz;
  r9.xyz = cb7[9].xyz + -r6.xyz;
  r6.xyz = cb7[26].xxx * r9.xyz + r6.xyz;
  r2.y = cb7[26].z + -cb7[26].w;
  r1.z = saturate(r1.z * r2.y + cb7[26].w);
  r9.xy = float2(1,1) + -v3.wy;
  r2.y = cmp(0 >= r9.x);
  r6.w = log2(r9.x);
  r7.w = cb7[27].x * r6.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r7.w = r2.y ? 1 : r7.w;
  r8.w = cb7[27].y * cb0[142].z;
  r10.x = cb7[27].w * r8.w;
  r10.y = cb7[28].x * r8.w;
  r9.xzw = r4.xyz / cb7[28].zzz;
  r11.xy = cb7[28].ww * r9.xz;
  r12.xy = -r11.xy;
  r12.z = -r9.w;
  r10.xyzw = r12.xzyz + r10.xyxy;
  r9.xzw = r4.xyz / cb7[29].yyy;
  r12.xy = t16.SampleBias(s7_s, r9.xw, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r12.xy = cb7[29].zz * -r12.xy + r12.xy;
  r9.xz = t16.SampleBias(s7_s, r9.zw, cb0[143].y).xy;
  r9.xz = r9.xz * float2(2,2) + float2(-1,-1);
  r9.xz = cb7[29].zz * -r9.xz + r9.xz;
  r9.w = cb7[30].x + -cb7[30].y;
  r9.w = saturate(abs(v1.x) * r9.w + cb7[30].y);
  r9.xz = r9.xz + -r12.xy;
  r9.xz = r9.ww * r9.xz + r12.xy;
  r10.xyzw = r10.xyzw + r9.xzxz;
  r11.w = -cb7[30].z + r4.z;
  r11.w = r11.w / cb7[30].w;
  r12.x = -1 + r11.w;
  r12.x = cmp(9.99999975e-006 < abs(r12.x));
  r12.y = cmp(r11.w >= 1);
  r11.w = r12.y ? 1 : r11.w;
  r11.w = r12.x ? r11.w : 1;
  r12.x = cmp(9.99999975e-006 < abs(r11.w));
  r12.y = cmp(r11.w >= 0);
  r11.w = r12.y ? r11.w : 1;
  r11.w = r12.x ? r11.w : 1;
  r12.x = cmp(0 >= r11.w);
  r11.w = log2(r11.w);
  r11.w = cb7[31].x * r11.w;
  r11.w = exp2(r11.w);
  r11.w = min(1, r11.w);
  r11.w = 1 + -r11.w;
  r11.w = r12.x ? 1 : r11.w;
  r11.w = cb7[31].y * r11.w;
  r10.x = t18.SampleLevel(s9_s, r10.xy, r11.w).y;
  r10.y = t18.SampleLevel(s9_s, r10.zw, r11.w).y;
  r10.y = r10.y + -r10.x;
  r10.x = r9.w * r10.y + r10.x;
  r11.z = r12.z;
  r12.xyzw = r8.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r11.xzyz;
  r12.xyzw = r12.xyzw + r9.xzxz;
  r8.w = 0.75 * r11.w;
  r9.x = t18.SampleLevel(s9_s, r12.xy, r8.w).y;
  r8.w = t18.SampleLevel(s9_s, r12.zw, r8.w).y;
  r8.w = r8.w + -r9.x;
  r8.w = r9.w * r8.w + r9.x;
  r8.w = r10.x + r8.w;
  r9.x = cmp(0 >= r8.w);
  r8.w = log2(r8.w);
  r8.w = cb7[31].z * r8.w;
  r8.w = exp2(r8.w);
  r9.y = cb7[31].w * r9.y;
  r8.w = r9.y * r8.w;
  r8.w = r9.x ? 0 : r8.w;
  r8.w = -r7.w * r8.w + 1;
  r8.w = r8.w / r7.w;
  r8.w = cb7[32].x + -r8.w;
  r8.w = 1 + r8.w;
  r1.w = saturate(r8.w * cb7[32].y + r1.w);
  r6.w = cb7[32].z * r6.w;
  r6.w = exp2(r6.w);
  r6.w = 1 + -r6.w;
  r2.y = r2.y ? 1 : r6.w;
  r2.x = r2.y * r2.x;
  r2.x = r7.w * r2.x;
  r9.w = saturate(r2.x * r1.w);
  r0.xyz = saturate(r0.xyz);
  r1.w = saturate(cb7[24].z);
  r2.x = saturate(cb7[26].y);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r2.y = 0.0799999982 * r2.x;
  r10.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r10.xyz = r1.www * r10.xyz + r2.yyy;
  r11.xyz = ddx_coarse(v2.xyz);
  r12.xyz = ddy_coarse(v2.xyz);
  r2.x = dot(r11.xyz, r11.xyz);
  r2.y = dot(r12.xyz, r12.xyz);
  r2.x = max(r2.x, r2.y);
  r2.x = log2(r2.x);
  r2.x = cb0[183].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r2.x * cb0[183].x + cb0[183].y);
  r1.z = max(r2.x, r1.z);
  r0.xyz = -r0.xyz * r1.www + r0.xyz;
  r0.xyz = r0.xyz * cb0[136].www + cb0[136].xyz;
  r10.xyz = r10.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r11.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r0.xyz;
  r0.xyz = r1.www ? r11.xyz : r0.xyz;
  r10.xyz = r1.www ? float3(0,0,0) : r10.xyz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v4.w * cb2[3].x + cb2[3].y;
  r1.w = log2(r1.w);
  r1.w = cb2[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r2.x = asint(cb2[1].z) + -1;
  r1.w = min((uint)r2.x, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.w, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r2.z + r2.z;
  r11.yzw = r1.yyy * r7.zxy + -r5.xyz;
  r1.y = min(1, r5.w);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.w = (uint)r1.x << 1;
  r1.w = t1.Load(r1.w).x;
  r1.w = min(asuint(cb2[0].y), (uint)r1.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t1.Load(r1.x).x;
  r2.x = max(0.00100000005, r1.z);
  r2.x = log2(r2.x);
  r2.x = -r2.x * 1.20000005 + 1;
  r2.y = -1 + cb0[195].z;
  r2.x = r2.y + -r2.x;
  r11.x = 0;
  r5.xyz = float3(0,0,0);
  r2.yz = float2(1,0);
  while (true) {
    r5.w = cmp((uint)r2.z >= (uint)r1.w);
    if (r5.w != 0) break;
    r5.w = cmp(r2.y < 0.00100000005);
    if (r5.w != 0) {
      break;
    }
    r5.w = (int)r1.x + (int)r2.z;
    r5.w = t2.Load(r5.w).x;
    r12.xyz = -cb4[r5.w+0].xyz + r4.xyz;
    r6.w = dot(r12.xyz, r12.xyz);
    r7.w = sqrt(r6.w);
    r8.w = cmp(r7.w < cb4[r5.w+0].w);
    if (r8.w != 0) {
      r8.w = cmp(0 < cb4[r5.w+341].z);
      if (r8.w != 0) {
        r8.w = (uint)r5.w << 2;
        r13.xyz = cb4[r8.w+1024].xyz * r4.yyy;
        r13.xyz = r4.xxx * cb4[r8.w+1023].xyz + r13.xyz;
        r13.xyz = r4.zzz * cb4[r8.w+1025].xyz + r13.xyz;
        r13.xyz = cb4[r8.w+1026].xyz + r13.xyz;
        r14.xyz = cb4[r8.w+1024].xyz * r11.zzz;
        r14.xyz = r11.yyy * cb4[r8.w+1023].xyz + r14.xyz;
        r14.xyz = r11.www * cb4[r8.w+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r13.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r8.w = min(r14.y, r14.z);
        r8.w = min(r14.x, r8.w);
        r14.xyz = r8.www * r11.yzw + r4.xyz;
        r15.xyz = cb4[r5.w+682].xyz + cb4[r5.w+0].xyz;
        r14.xyz = -r15.xyz + r14.xyz;
        r8.w = cb4[r5.w+2387].w * 0.699999988;
        r15.xyz = -cb4[r5.w+2387].www * float3(0.5,0.5,0.5) + cb4[r5.w+2387].xyz;
        r16.xyz = cb4[r5.w+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r18.xyz = r13.xyz * cb4[r5.w+2387].xyz + r15.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb4[r5.w+2387].xyz + -r15.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r10.w = dot(r17.xyz, float3(1,1,1));
        r12.w = dot(r13.xyz, float3(1,1,1));
        r10.w = r12.w + r10.w;
        r8.w = 1 / r8.w;
        r8.w = saturate(r10.w * r8.w);
        r10.w = r8.w * -2 + 3;
        r8.w = r8.w * r8.w;
        r13.x = -r10.w * r8.w + 1;
      } else {
        r7.w = saturate(r7.w / cb4[r5.w+0].w);
        r8.w = dot(r11.yzw, r12.xyz);
        r6.w = -cb4[r5.w+0].w * cb4[r5.w+0].w + r6.w;
        r6.w = r8.w * r8.w + -r6.w;
        r10.w = cmp(r6.w >= 0);
        r6.w = sqrt(r6.w);
        r6.w = r6.w + -r8.w;
        r12.xyz = r6.www * r11.yzw + r12.xyz;
        r12.yzw = -cb4[r5.w+682].xyz + r12.xyz;
        r6.w = r7.w * 2.5 + -1.5;
        r6.w = max(0, r6.w);
        r7.w = r6.w * r6.w;
        r6.w = -r6.w * 2 + 3;
        r12.x = -r7.w * r6.w + 1;
        r13.xyzw = r10.wwww ? r12.xyzw : r11.xyzw;
        r14.xyz = r13.yzw;
      }
      r14.w = cb4[r5.w+341].y;
      r12.xyzw = t3.SampleLevel(s2_s, r14.xyzw, r2.x).xyzw;
      r12.xyz = cb4[r5.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r13.xxx;
      r5.xyz = r12.xyz * r2.yyy + r5.xyz;
      r5.w = -r12.w * r13.x + 1;
      r2.y = r5.w * r2.y;
    }
    r2.z = (int)r2.z + 1;
  }
  r2.xyz = cb0[157].xyz * r5.xyz;
  r1.x = saturate(r1.z * cb0[197].x + cb0[197].y);
  r1.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.w * r1.x;
  r1.w = min(0, cb0[197].z);
  r1.w = -1 + r1.w;
  r1.x = r1.x * r1.w + 1;
  r2.xyz = r2.xyz * r1.xxx;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v4.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r5.xyzw = cb0[1].xyzw * r3.yyyy;
    r5.xyzw = r3.xxxx * cb0[0].xyzw + r5.xyzw;
    r5.xyzw = r3.zzzz * cb0[2].xyzw + r5.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r11.xyz = r11.yzw * r2.www + r3.xyz;
    r12.xyzw = cb0[1].xyzw * r11.yyyy;
    r12.xyzw = r11.xxxx * cb0[0].xyzw + r12.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r12.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r1.w = rcp(r5.w);
    r12.xyz = r5.xyz * r1.www;
    r1.w = rcp(r11.w);
    r5.xy = r2.ww * cb0[30].zw + r5.zw;
    r2.w = rcp(r5.y);
    r5.yzw = r11.xyz * r1.www + -r12.xyz;
    r1.w = dot(r5.yz, r5.yz);
    r1.w = sqrt(r1.w);
    r6.w = 0.5 * r1.w;
    r11.xy = r12.xy * r6.ww + r5.yz;
    r11.xy = -r1.ww * float2(0.5,0.5) + abs(r11.xy);
    r11.xy = max(float2(0,0), r11.xy);
    r11.xy = r11.xy / abs(r5.yz);
    r11.xy = float2(1,1) + -r11.xy;
    r1.w = min(r11.x, r11.y);
    r1.w = r1.w / r6.w;
    r5.yzw = r5.yzw * r1.www;
    r1.w = -r5.x * r2.w + r12.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.w), r1.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb2[176].xy * r11.xy;
    r5.yz = cb2[176].xy * r5.yz;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.yzw;
    r11.xyz = r5.xyz * r1.xxx + r12.xyz;
    r1.x = 1;
    r13.x = 0;
    r14.x = 0;
    r12.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r7.w = 0;
    r8.w = 0;
    r10.w = 0;
    while (true) {
      r11.w = cmp((uint)r10.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r10.w;
      r15.xyzw = float4(1,2,3,4) + r11.wwww;
      r16.xyzw = r15.xxxy * r5.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r5.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r5.xyzz + r11.xyzz;
      r11.w = r1.z * 0.666666687 + r1.x;
      r13.w = r1.z * 0.666666687 + r11.w;
      r18.x = t8.SampleLevel(s5_s, r16.xy, r1.x).x;
      r18.y = t8.SampleLevel(s5_s, r17.xy, r1.x).x;
      r18.z = t8.SampleLevel(s5_s, r17.zw, r11.w).x;
      r18.w = t8.SampleLevel(s5_s, r15.xy, r11.w).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r1.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r2.wwww);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r11.w = (int)r17.y | (int)r17.x;
      if (r11.w != 0) {
        r14.x = r15.x;
        r12.xyz = r15.yzw;
        r5.w = r16.x;
        r6.w = r16.y;
        r7.w = r16.z;
        r8.w = -1;
        break;
      }
      r13.x = r15.w;
      r10.w = (int)r10.w + 4;
      r1.x = r13.w;
      r14.x = r15.x;
      r12.xyz = r15.yzw;
      r5.w = r16.x;
      r6.w = r16.y;
      r7.w = r16.z;
      r8.w = r11.w;
    }
    if (r8.w != 0) {
      r12.w = 2;
      r15.xy = r12.yz;
      r15.z = 3;
      r12.yzw = r7.www ? r12.xyw : r15.xyz;
      r14.y = r12.x;
      r14.z = 1;
      r12.xyz = r6.www ? r14.xyz : r12.yzw;
      r13.y = r14.x;
      r13.z = 0;
      r12.xyz = r5.www ? r13.xyz : r12.xyz;
      r1.x = (uint)r10.w;
      r1.x = r12.z + r1.x;
      r1.w = r12.x + -r12.y;
      r1.w = saturate(r12.x / r1.w);
      r1.x = r1.x + r1.w;
      r5.xyz = r5.xyz * r1.xxx + r11.xyz;
      r1.xw = cb2[176].zw * r5.xy;
      r1.xw = r1.xw * float2(2,-2) + float2(-1,1);
      r1.xw = cb0[66].xy * r1.xw;
      r1.xw = r1.xw / cb0[66].xy;
      r5.xyw = cb0[123].xyw * r1.www;
      r5.xyw = r1.xxx * cb0[122].xyw + r5.xyw;
      r5.xyz = r5.zzz * cb0[124].xyw + r5.xyw;
      r5.xyz = cb0[125].xyw + r5.xyz;
      r5.xy = r5.xy / r5.zz;
      r5.zw = r5.xy * cb2[177].xy + cb2[177].zw;
      r1.xw = saturate(abs(r1.xw) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xw, r1.xw);
      r1.x = 1 + -r1.x;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r1.w = dot(r5.xy, r5.xy);
      r1.w = 1 + -r1.w;
      r1.xw = max(float2(0,0), r1.xw);
      r1.x = min(r1.x, r1.w);
      r5.xyz = t9.SampleLevel(s6_s, r5.zw, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r1.z * 6.5999999 + 2);
      r1.x = r1.x * r1.w;
      r1.w = 1;
      r5.xyz = -r5.xyz * r1.xxx;
      r5.xyz = cb2[178].xxx * r5.xyz;
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
  r1.w = 50 * r10.y;
  r1.w = saturate(r1.w);
  r1.y = r1.w * r1.y;
  r1.xyw = r10.xyz * r1.xxx + r1.yyy;
  r2.w = dot(cb2[122].xyz, float3(1,1,1));
  r2.w = cmp(9.99999975e-005 < abs(r2.w));
  if (r2.w != 0) {
    r4.w = -1;
    r2.w = dot(cb2[122].xyzw, r4.xyzw);
    r2.w = saturate(abs(r2.w) * cb2[129].x + cb2[129].y);
    r2.w = 1 + -r2.w;
    r5.xyz = -cb2[123].xyz + r4.xyz;
    r4.w = dot(r5.xyz, cb2[124].xyz);
    r4.w = cb2[124].w + -abs(r4.w);
    r4.w = saturate(cb2[129].x * r4.w);
    r5.x = dot(r5.xyz, cb2[125].xyz);
    r5.x = cb2[125].w + -abs(r5.x);
    r5.x = saturate(cb2[129].x * r5.x);
    r4.w = r5.x * r4.w;
    r2.w = r4.w * r2.w;
    r4.w = dot(cb2[122].yzx, r7.xyz);
    r4.w = saturate(r4.w * cb2[130].x + cb2[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r2.w = r4.w * r2.w;
    r1.z = r2.w * r1.z;
    r2.w = cmp(0 < r1.z);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r8.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb2[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb2[122].xyz * r0.www + r5.xyz;
      r8.xyz = cb2[127].xyz * r7.xxx;
      r8.xyz = r7.zzz * cb2[126].xyz + r8.xyz;
      r8.xyz = r7.yyy * cb2[128].xyz + r8.xyz;
      r0.w = dot(r5.xyz, r8.xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = r8.xyz * -r0.www + r5.xyz;
      r5.xyz = r5.xyz * cb2[129].zzz + r4.xyz;
      r5.xyz = cb0[70].xyz + r5.xyz;
      r8.xyz = cb0[13].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[12].xyz + r8.xyz;
      r5.xyz = r5.zzz * cb0[14].xyz + r5.xyw;
      r5.xyz = cb0[15].xyz + r5.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r8.xyz = cb2[r0.w+132].xyw * r5.yyy;
      r5.xyw = r5.xxx * cb2[r0.w+131].xyw + r8.xyz;
      r5.xyz = r5.zzz * cb2[r0.w+133].xyw + r5.xyw;
      r5.xyz = cb2[r0.w+134].xyw + r5.xyz;
      r0.w = cb2[141].z ? cb0[197].w : 0;
      r5.xy = r5.xy / r5.zz;
      r5.xy = max(-cb2[141].xy, r5.xy);
      r5.xy = min(cb2[141].xy, r5.xy);
      r5.xy = r5.xy * cb2[r0.w+139].xy + cb2[r0.w+139].zw;
      r5.xyzw = t4.SampleLevel(s2_s, r5.xy, 0).xyzw;
      r0.w = r5.w * r1.z;
    } else {
      r5.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r2.xyz = r0.www * r2.xyz + r5.xyz;
  }
  r1.xyz = r2.xyz * r1.xyw;
  r2.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  r2.w = dot(r3.xyz, cb0[60].xyz);
  r1.w = r1.w / r2.w;
  r1.w = cb0[210].z * r1.w;
  r1.w = max(0, r1.w);
  r2.w = min(cb2[143].z, cb0[67].z);
  r4.w = cb0[67].z + -r2.w;
  r3.w = r4.w + r3.z;
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = rsqrt(r4.w);
  r4.w = r5.x * r4.w;
  r1.w = max(cb2[143].w, r1.w);
  r5.y = cmp(0 < r1.w);
  r5.z = r1.w * r5.x;
  r2.w = r5.z * r3.w + r2.w;
  r5.z = -r5.z * r3.w + r3.w;
  r1.w = -r1.w * r5.x + 1;
  r1.w = r1.w * r4.w;
  r5.w = -cb2[146].y + r2.w;
  r5.w = cb2[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb2[146].x * r5.w;
  r2.w = -cb2[144].w + r2.w;
  r2.w = cb2[144].y * r2.w;
  r2.xyzw = max(float4(1,1,1,-127), r2.xyzw);
  r2.w = exp2(-r2.w);
  r2.w = cb2[144].z * r2.w;
  r5.w = r5.y ? r5.w : cb2[143].x;
  r2.w = r5.y ? r2.w : cb2[144].x;
  r1.w = r5.y ? r1.w : r4.w;
  r5.y = r5.y ? r5.z : r3.w;
  r5.z = cb2[143].y * r5.y;
  r5.z = max(-127, r5.z);
  r6.w = exp2(-r5.z);
  r6.w = 1 + -r6.w;
  r6.w = r6.w / r5.z;
  r7.w = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.w : r7.w;
  r5.y = cb2[144].y * r5.y;
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
  r5.zw = cmp(float2(0,0) < cb2[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r4.w * cb2[150].x + cb2[150].y);
    r8.xy = float2(1,-1) * cb2[149].yx;
    r8.x = dot(r3.xy, r8.xy);
    r8.y = dot(r3.xy, cb2[149].xy);
    r8.z = r3.w;
    r11.xyz = t5.SampleLevel(s3_s, r8.xyz, 0).xyz;
    r8.xyz = t5.SampleLevel(s3_s, r8.xyz, cb2[150].z).xyz;
    r11.xyz = r11.xyz + -r8.xyz;
    r8.xyz = r5.zzz * r11.xyz + r8.xyz;
    r8.xyz = cb2[145].xyz * r8.xyz;
  } else {
    r8.xyz = cb2[145].xyz;
  }
  r5.z = cmp(cb2[147].w >= 0);
  r6.w = cmp(cb2[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r11.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r11.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r11.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r11.xyz = r11.xyz * r1.www;
  } else {
    r11.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.y);
  r1.w = min(1, r1.w);
  r11.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r8.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r8.xyz = cb0[5].xyw * r4.yyy;
    r8.xyz = r4.xxx * cb0[4].xyw + r8.xyz;
    r8.xyz = r4.zzz * cb0[6].xyw + r8.xyz;
    r8.xyz = cb0[7].xyw + r8.xyz;
    r8.xy = r8.xy / r8.zz;
    r11.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r8.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r11.z = cb0[208].z * r1.w;
    r8.xyzw = t6.SampleLevel(s0_s, r11.xyz, 0).xyzw;
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
    r11.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r8.xy = r8.xy / r8.zz;
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r11.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r12.z = sqrt(r3.w);
    r3.w = cb0[181].y * r12.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.z * r11.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r11.z * 0.5 + 0.5;
    r8.zw = r11.xy / r2.ww;
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
    r13.x = 0.159154937 * r2.w;
    r8.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r11.xy = float2(1,1) + cb0[180].xy;
    r11.xy = cb0[180].xy / r11.xy;
    r8.zw = r11.xy * r8.zw;
    r12.xy = r1.ww ? r8.zw : r8.xy;
    r8.xyzw = t0.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r8.xyz = r8.xyz * r3.www;
    r1.w = 1 + -r8.w;
    r1.w = -r3.w * r1.w + 1;
    r8.xyz = cb0[135].zzz * r8.xyz;
    r5.yzw = r8.xyz * r5.xxx + r5.yzw;
    r5.x = r5.x * r1.w;
  }
  r8.xyz = -cb0[148].xyz + r4.xyz;
  r11.xyz = cb0[150].xyz * r8.xyz;
  r12.xyz = -cb0[149].xyz + r4.xyz;
  r12.xyz = cb0[151].xyz * r12.xyz;
  r8.xyz = r8.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.xyz = float3(0.5,0.5,0.5) + -abs(r8.xyz);
  r8.xyz = saturate(float3(6,6,6) * r8.xyz);
  r1.w = r8.x * r8.y;
  r1.w = r1.w * r8.z;
  r8.xyzw = t10.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r13.xyzw = t11.SampleLevel(s0_s, r12.xyz, 0).xyzw;
  r8.xyzw = -r13.xyzw + r8.xyzw;
  r8.xyzw = r1.wwww * r8.xyzw + r13.xyzw;
  r11.xyz = t12.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r12.xyz = t13.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r11.xyz = -r12.xyz + r11.xyz;
  r11.xyz = r1.www * r11.xyz + r12.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r12.xyz = r8.xyz / r1.www;
  r13.yzw = r12.xxx * r11.xyz;
  r14.yzw = r12.yyy * r11.xyz;
  r11.yzw = r12.zzz * r11.xyz;
  r7.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.xyz;
  r13.x = r8.x;
  r7.x = 0.886227548;
  r12.x = dot(r13.xyzw, r7.xyzw);
  r14.x = r8.y;
  r12.y = dot(r14.xyzw, r7.xyzw);
  r11.x = r8.z;
  r12.z = dot(r11.xyzw, r7.xyzw);
  r7.xyz = max(float3(0,0,0), r12.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r11.xyzw = cb3[1].xyzw * r4.yyyy;
    r11.xyzw = r4.xxxx * cb3[0].xyzw + r11.xyzw;
    r11.xyzw = r4.zzzz * cb3[2].xyzw + r11.xyzw;
    r11.xyzw = cb3[3].xyzw + r11.xyzw;
    r8.xy = r11.xy / r11.ww;
    r12.xyzw = t14.SampleLevel(s0_s, r8.xy, 0).xyzw;
    r11.xyw = t15.SampleLevel(s0_s, r8.xy, 0).yzw;
    r13.xyz = float3(6.28318548,12.566371,18.849556) * r11.zzz;
    sincos(r13.xyz, r13.xyz, r14.xyz);
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r1.w = r12.x * r11.z;
    r12.xyz = r13.xyz * r12.yzw;
    r12.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r12.xyz;
    r2.w = dot(r12.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r11.xyz = r14.xyz * r11.xyw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r8.xy < cb3[4].xy);
    r8.xy = cmp(cb3[4].zw < r8.xy);
    r8.xy = (int2)r8.xy | (int2)r12.xy;
    r1.w = (int)r8.y | (int)r8.x;
    r8.xyz = cb3[6].xyz * r8.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
    r8.xyz = -r8.xyz * r11.xyz + r7.xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = r8.xyz * r0.xyz;
  } else {
    r8.xyz = r7.xyz * r0.xyz;
  }
  r1.xyz = r1.xyz * r2.xyz + r8.xyz;
  r0.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r0.xyz;
  r0.xyz = r0.xyz + -r1.xyz;
  r0.xyz = cb0[145].yyy * r0.xyz + r1.xyz;
  r9.xyz = max(float3(0,0,0), r6.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xyz = -cb1[5].xyz + r4.xyz;
    r2.xyz = float3(1,1,1) + cb1[19].xyz;
    r1.xyz = cmp(r2.xyz < abs(r1.xyz));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r9.xyzw = r1.xxxx ? r2.yzwx : r9.xyzw;
    o0.w = r9.w;
  } else {
    o0.w = r9.w;
  }
  r0.xyz = r9.xyz + r0.xyz;
  r0.xyz = r0.xyz * r5.xxx + r5.yzw;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb2[166].xyz + -cb2[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb2[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}
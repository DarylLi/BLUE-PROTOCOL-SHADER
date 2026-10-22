// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t25 : register(t25);

Texture2D<float4> t24 : register(t24);

Texture2D<float4> t23 : register(t23);

Texture2D<float4> t22 : register(t22);

Texture3D<float4> t21 : register(t21);

Texture3D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

TextureCube<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

TextureCubeArray<float4> t11 : register(t11);

Buffer<uint4> t10 : register(t10);

Buffer<uint4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
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
  r1.zw = t24.SampleBias(s7_s, r7.xy, cb0[143].y).xy;
  r8.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r1.zw = t24.SampleBias(s7_s, r7.zw, cb0[143].y).xy;
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
  r2.x = t15.SampleLevel(s4_s, r2.xy, 0).x;
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
  r9.xy = t24.SampleBias(s7_s, r9.xy, r5.w).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r7.w = dot(r9.xy, r9.xy);
  r7.w = 1 + -r7.w;
  r7.w = max(0, r7.w);
  r9.z = sqrt(r7.w);
  r6.xy = r2.zz * cb7[18].xy + r6.xy;
  r6.xy = t24.SampleBias(s7_s, r6.xy, r5.w).xy;
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
  r12.xy = t24.SampleBias(s7_s, r12.xy, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r2.y = dot(r12.xy, r12.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r12.z = sqrt(r2.y);
  r6.xy = r1.ww * cb7[18].xy + r6.xy;
  r6.xy = t24.SampleBias(s7_s, r6.xy, cb0[143].y).xy;
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
  r0.xyz = r7.xxx * v0.xyz + r0.xyz;
  r0.xyz = r7.zzz * v1.xyz + r0.xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r7.xyz = r2.yyy * r0.xyz;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.y = max(0, r0.x);
  r2.z = 1 + -r0.y;
  r2.z = max(9.99999975e-005, abs(r2.z));
  r2.z = log2(r2.z);
  r2.z = cb7[21].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z * cb7[21].z + cb7[21].y;
  r2.x = saturate(r2.x / cb7[22].x);
  r2.x = cb7[22].y * r2.x;
  r5.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[22].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r5.w ? 0 : r2.x;
  r2.x = saturate(r2.z * r2.x);
  r11.xyz = -cb7[8].xyz + cb7[7].xyz;
  r11.xyz = r2.xxx * r11.xyz + cb7[8].xyz;
  r6.xy = r4.xy / cb7[23].xx;
  r2.z = t25.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r5.w = 1 + -r2.z;
  r5.w = r5.w + r5.w;
  r7.w = cb7[23].y * cb0[142].z;
  r6.z = 0.100000001 * r7.w;
  r6.xy = r6.zw + r6.xy;
  r6.x = t25.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r6.y = 1 + -r6.x;
  r5.w = -r5.w * r6.y + 1;
  r6.x = dot(r2.zz, r6.xx);
  r2.z = cmp(r2.z >= 0.5);
  r2.z = r2.z ? r5.w : r6.x;
  r0.z = -r0.z * r2.y + 1;
  r0.z = cb7[23].z * r0.z;
  r2.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb7[23].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r2.y ? 0 : r0.z;
  r0.z = r2.z * r0.z + r0.z;
  r2.y = -cb7[24].x + r0.z;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r2.z = cmp(r0.z >= cb7[24].x);
  r2.z = r2.z ? r0.z : 0;
  r0.z = r2.y ? r2.z : r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(cb7[24].y, r0.z);
  r6.xyz = r1.www * r0.zzz + r11.xyz;
  r11.xyz = -r6.xyz * cb7[24].zzz + r6.xyz;
  r11.xyz = cb6[6].xyz * r11.xyz;
  r11.xyz = float3(0.318309844,0.318309844,0.318309844) * r11.xyz;
  r0.z = dot(r7.xyz, cb6[7].xyz);
  r9.xyz = cb7[24].www * r10.xyz + r9.xyz;
  r2.y = 1 + r9.z;
  r10.xyz = cb7[25].xxx * r13.xyz + r12.xyz;
  r9.w = 1 + r9.z;
  r10.xyz = float3(-1,-1,1) * r10.xyz;
  r2.z = dot(r9.xyw, r10.xyz);
  r10.xyz = r10.xyz * r2.yyy;
  r9.xyz = r9.xyw * r2.zzz + -r10.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r2.y = saturate(dot(r9.xyz, cb6[7].xyz));
  r10.xyz = cb0[67].xyz + -r4.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r10.xyz = cb6[7].xyz + r10.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r2.z = saturate(dot(r10.xyz, r9.xyz));
  r5.w = 11 * cb7[25].z;
  r5.w = exp2(r5.w);
  r6.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = r5.w * r2.z;
  r2.z = exp2(r2.z);
  r2.y = r2.y * r2.z;
  r2.y = cb7[25].w * r2.y;
  r9.xyz = cb6[5].xyz * r2.yyy;
  r9.xyz = r6.www ? float3(0,0,0) : r9.xyz;
  r9.xyz = r11.xyz * r0.zzz + r9.xyz;
  r10.xyz = cb7[9].xyz + -r9.xyz;
  r9.xyz = cb7[26].xxx * r10.xyz + r9.xyz;
  r0.z = cb7[26].z + -cb7[26].w;
  r0.z = saturate(r1.z * r0.z + cb7[26].w);
  r2.yz = float2(1,1) + -v3.wy;
  r1.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r5.w = cb7[27].x * r2.y;
  r5.w = exp2(r5.w);
  r5.w = 1 + -r5.w;
  r5.w = r1.z ? 1 : r5.w;
  r6.w = cb7[27].y * cb0[142].z;
  r10.x = cb7[27].w * r6.w;
  r10.y = cb7[28].x * r6.w;
  r11.xyz = r4.xyz / cb7[28].zzz;
  r12.xy = cb7[28].ww * r11.xy;
  r13.xy = -r12.xy;
  r13.z = -r11.z;
  r10.xyzw = r13.xzyz + r10.xyxy;
  r11.xyz = r4.xyz / cb7[29].yyy;
  r11.xw = t24.SampleBias(s7_s, r11.xz, cb0[143].y).xy;
  r11.xw = r11.xw * float2(2,2) + float2(-1,-1);
  r11.xw = cb7[29].zz * -r11.xw + r11.xw;
  r11.yz = t24.SampleBias(s7_s, r11.yz, cb0[143].y).xy;
  r11.yz = r11.yz * float2(2,2) + float2(-1,-1);
  r11.yz = cb7[29].zz * -r11.yz + r11.yz;
  r7.w = cb7[30].x + -cb7[30].y;
  r7.w = saturate(abs(v1.x) * r7.w + cb7[30].y);
  r11.yz = r11.yz + -r11.xw;
  r11.xy = r7.ww * r11.yz + r11.xw;
  r10.xyzw = r11.xyxy + r10.xyzw;
  r8.w = -cb7[30].z + r4.z;
  r8.w = r8.w / cb7[30].w;
  r9.w = -1 + r8.w;
  r9.w = cmp(9.99999975e-006 < abs(r9.w));
  r11.z = cmp(r8.w >= 1);
  r8.w = r11.z ? 1 : r8.w;
  r8.w = r9.w ? r8.w : 1;
  r9.w = cmp(9.99999975e-006 < abs(r8.w));
  r11.z = cmp(r8.w >= 0);
  r8.w = r11.z ? r8.w : 1;
  r8.w = r9.w ? r8.w : 1;
  r9.w = cmp(0 >= r8.w);
  r8.w = log2(r8.w);
  r8.w = cb7[31].x * r8.w;
  r8.w = exp2(r8.w);
  r8.w = min(1, r8.w);
  r8.w = 1 + -r8.w;
  r8.w = r9.w ? 1 : r8.w;
  r8.w = cb7[31].y * r8.w;
  r9.w = t25.SampleLevel(s8_s, r10.xy, r8.w).y;
  r10.x = t25.SampleLevel(s8_s, r10.zw, r8.w).y;
  r10.x = r10.x + -r9.w;
  r9.w = r7.w * r10.x + r9.w;
  r12.z = r13.z;
  r10.xyzw = r6.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r12.xzyz;
  r10.xyzw = r10.xyzw + r11.xyxy;
  r6.w = 0.75 * r8.w;
  r8.w = t25.SampleLevel(s8_s, r10.xy, r6.w).y;
  r6.w = t25.SampleLevel(s8_s, r10.zw, r6.w).y;
  r6.w = r6.w + -r8.w;
  r6.w = r7.w * r6.w + r8.w;
  r6.w = r9.w + r6.w;
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb7[31].z * r6.w;
  r6.w = exp2(r6.w);
  r2.z = cb7[31].w * r2.z;
  r2.z = r6.w * r2.z;
  r2.z = r7.w ? 0 : r2.z;
  r2.z = -r5.w * r2.z + 1;
  r2.z = r2.z / r5.w;
  r2.z = cb7[32].x + -r2.z;
  r2.z = 1 + r2.z;
  r1.w = saturate(r2.z * cb7[32].y + r1.w);
  r2.y = cb7[32].z * r2.y;
  r2.y = exp2(r2.y);
  r2.y = 1 + -r2.y;
  r1.z = r1.z ? 1 : r2.y;
  r1.z = r1.z * r2.x;
  r1.z = r5.w * r1.z;
  r10.w = saturate(r1.w * r1.z);
  r6.xyz = saturate(r6.xyz);
  r1.z = saturate(cb7[24].z);
  r1.w = saturate(cb7[26].y);
  r0.z = r0.z * cb0[139].y + cb0[139].x;
  r2.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r11.xyz = (int3)r2.xyz;
  r11.w = 0;
  r11.xyzw = t0.Load(r11.xyzw).xyzw;
  r11.xyzw = (uint4)r11.xyzw;
  r5.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r11.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r11.xyz * r5.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r5.w = 0.0799999982 * r1.w;
  r11.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r11.xyz = r1.zzz * r11.xyz + r5.www;
  r12.xyz = ddx_coarse(v2.xyz);
  r13.xyz = ddy_coarse(v2.xyz);
  r1.w = dot(r12.xyz, r12.xyz);
  r5.w = dot(r13.xyz, r13.xyz);
  r1.w = max(r5.w, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[183].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(r1.w * cb0[183].x + cb0[183].y);
  r0.z = max(r1.w, r0.z);
  r12.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r12.xyz = r12.xyz * cb0[136].www + cb0[136].xyz;
  r11.xyz = r11.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r13.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r12.xyz = r1.zzz ? r13.xyz : r12.xyz;
  r11.xyz = r1.zzz ? float3(0,0,0) : r11.xyz;
  r13.xyz = t1.SampleLevel(s0_s, r2.xyz, 0).zxy;
  r14.xyzw = t2.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t4.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t6.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r13.yyyy;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = r15.xyzw * r13.zzzz;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = r16.xyzw * r13.xxxx;
  r16.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r16.wxyz;
  r17.xyzw = t3.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = t5.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r19.xyzw = t7.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r19.xyzw = r19.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = r17.xyzw * r13.yyyy;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyzw = r18.xyzw * r13.zzzz;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r19.xyzw = r19.xyzw * r13.xxxx;
  r19.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r19.xyzw;
  r2.xyz = r7.yzy * r7.yzx;
  r20.yw = r7.zz * r7.yx;
  r1.z = r7.x * r7.x + -r2.x;
  r21.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.yzx;
  r20.xz = r2.zy * float2(1,3) + float2(0,-1);
  r20.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r20.xyzw;
  r1.z = 0.429042608 * r1.z;
  r22.x = r13.y;
  r22.yzw = r14.yzw;
  r21.x = 0.886227548;
  r1.w = dot(r22.xyzw, r21.xyzw);
  r14.yzw = r17.xyz;
  r2.x = dot(r14.xyzw, r20.xyzw);
  r1.w = r2.x + r1.w;
  r2.x = r17.w * r1.z + r1.w;
  r14.x = r13.z;
  r14.yzw = r15.yzw;
  r1.w = dot(r14.xyzw, r21.xyzw);
  r15.yzw = r18.xyz;
  r5.w = dot(r15.xyzw, r20.xyzw);
  r1.w = r5.w + r1.w;
  r2.y = r18.w * r1.z + r1.w;
  r13.yzw = r16.yzw;
  r1.w = dot(r13.xyzw, r21.xyzw);
  r16.yzw = r19.xyz;
  r5.w = dot(r16.xyzw, r20.xyzw);
  r1.w = r5.w + r1.w;
  r2.z = r19.w * r1.z + r1.w;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb0[157].xyz * r2.xyz;
  r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = r2.xyz * r12.xyz;
  r13.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r13.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r13.xyz;
  r6.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r13.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v4.w * cb2[3].x + cb2[3].y;
  r1.w = log2(r1.w);
  r1.w = cb2[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r5.w = asint(cb2[1].z) + -1;
  r1.w = min((uint)r5.w, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.w, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r0.x = r0.x + r0.x;
  r5.yzw = r0.xxx * r7.xyz + -r5.xyz;
  r0.x = min(1, r0.y);
  r0.y = (int)r1.x + asint(cb2[0].w);
  r1.x = (uint)r0.y << 1;
  r1.x = t9.Load(r1.x).x;
  r1.x = min(asuint(cb2[0].y), (uint)r1.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.y = t9.Load(r0.y).x;
  r1.y = max(0.00100000005, r0.z);
  r1.y = log2(r1.y);
  r1.y = -r1.y * 1.20000005 + 1;
  r1.w = -1 + cb0[195].z;
  r1.y = r1.w + -r1.y;
  r5.x = 0;
  r13.xyz = float3(0,0,0);
  r1.w = 1;
  r6.w = 0;
  r7.w = 1;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= (uint)r1.x);
    if (r9.w != 0) break;
    r9.w = cmp(r1.w < 0.00100000005);
    if (r9.w != 0) {
      break;
    }
    r9.w = (int)r0.y + (int)r8.w;
    r9.w = t10.Load(r9.w).x;
    r14.xyz = -cb4[r9.w+0].xyz + r4.xyz;
    r11.w = dot(r14.xyz, r14.xyz);
    r12.w = sqrt(r11.w);
    r13.w = cmp(r12.w < cb4[r9.w+0].w);
    if (r13.w != 0) {
      r13.w = cmp(0 < cb4[r9.w+341].z);
      if (r13.w != 0) {
        r13.w = (uint)r9.w << 2;
        r15.xyz = cb4[r13.w+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb4[r13.w+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb4[r13.w+1025].xyz + r15.xyz;
        r15.xyz = cb4[r13.w+1026].xyz + r15.xyz;
        r16.xyz = cb4[r13.w+1024].xyz * r5.zzz;
        r16.xyz = r5.yyy * cb4[r13.w+1023].xyz + r16.xyz;
        r16.xyz = r5.www * cb4[r13.w+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r13.w = min(r16.y, r16.z);
        r13.w = min(r16.x, r13.w);
        r16.xyz = r13.www * r5.yzw + r4.xyz;
        r17.xyz = cb4[r9.w+682].xyz + cb4[r9.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r13.w = cb4[r9.w+2387].w * 0.699999988;
        r17.xyz = -cb4[r9.w+2387].www * float3(0.5,0.5,0.5) + cb4[r9.w+2387].xyz;
        r18.xyz = cb4[r9.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb4[r9.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb4[r9.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r14.w = r15.x + r14.w;
        r13.w = 1 / r13.w;
        r13.w = saturate(r14.w * r13.w);
        r14.w = r13.w * -2 + 3;
        r13.w = r13.w * r13.w;
        r15.x = -r14.w * r13.w + 1;
      } else {
        r12.w = saturate(r12.w / cb4[r9.w+0].w);
        r13.w = dot(r5.yzw, r14.xyz);
        r11.w = -cb4[r9.w+0].w * cb4[r9.w+0].w + r11.w;
        r11.w = r13.w * r13.w + -r11.w;
        r14.w = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r13.w;
        r14.xyz = r11.www * r5.yzw + r14.xyz;
        r17.yzw = -cb4[r9.w+682].xyz + r14.xyz;
        r11.w = r12.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r12.w = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r17.x = -r12.w * r11.w + 1;
        r15.xyzw = r14.wwww ? r17.xyzw : r5.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb4[r9.w+341].y;
      r14.xyzw = t11.SampleLevel(s2_s, r16.xyzw, r1.y).xyzw;
      r14.xyz = cb4[r9.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r15.xxx;
      r13.xyz = r14.xyz * r1.www + r13.xyz;
      r11.w = -r14.w * r15.x + 1;
      r1.w = r11.w * r1.w;
      r9.w = cb4[r9.w+682].w * r15.x;
      r6.w = r9.w * r7.w + r6.w;
      r9.w = 1 + -r15.x;
      r7.w = r9.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r1.xyw = cb0[157].xyz * r13.xyz;
  r0.y = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.y = r6.w * r0.y;
  r5.x = saturate(r0.z * cb0[197].x + cb0[197].y);
  r6.w = r5.x * -2 + 3;
  r5.x = r5.x * r5.x;
  r5.x = r6.w * r5.x;
  r0.y = max(9.99999975e-005, r0.y);
  r0.y = r1.z / r0.y;
  r0.y = min(cb0[197].z, r0.y);
  r0.y = -1 + r0.y;
  r0.y = r5.x * r0.y + 1;
  r1.xyz = r1.xyw * r0.yyy;
  r0.y = cmp(cb0[145].x == 0.000000);
  if (r0.y != 0) {
    r0.y = asuint(cb0[144].y);
    r13.xy = r0.yy * float2(32.6650009,11.8149996) + v4.xy;
    r0.y = dot(r13.xy, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.y = frac(r0.y);
    r0.y = -0.5 + r0.y;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r5.yyyy;
    r14.xyzw = r5.xxxx * cb0[0].xyzw + r14.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r14.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.w = rcp(r13.w);
    r14.xyz = r13.xyz * r1.www;
    r1.w = rcp(r5.w);
    r13.xy = r2.ww * cb0[30].zw + r13.zw;
    r2.w = rcp(r13.y);
    r5.xyz = r5.xyz * r1.www + -r14.xyz;
    r1.w = dot(r5.xy, r5.xy);
    r1.w = sqrt(r1.w);
    r5.w = 0.5 * r1.w;
    r13.yz = r14.xy * r5.ww + r5.xy;
    r13.yz = -r1.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r5.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r1.w = min(r13.y, r13.z);
    r1.w = r1.w / r5.w;
    r5.xyz = r5.xyz * r1.www;
    r1.w = -r13.x * r2.w + r14.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.z), r1.w);
    r13.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb2[176].xy * r13.xy;
    r5.xy = cb2[176].xy * r5.xy;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r13.xyz = r5.xyz * r0.yyy + r14.xyz;
    r0.y = 1;
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
      r11.w = r0.z * 0.666666687 + r0.y;
      r12.w = r0.z * 0.666666687 + r11.w;
      r20.x = t16.SampleLevel(s5_s, r18.xy, r0.y).x;
      r20.y = t16.SampleLevel(s5_s, r19.xy, r0.y).x;
      r20.z = t16.SampleLevel(s5_s, r19.zw, r11.w).x;
      r20.w = t16.SampleLevel(s5_s, r17.xy, r11.w).x;
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
      r0.y = r12.w;
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
      r0.y = (uint)r9.w;
      r0.y = r14.z + r0.y;
      r1.w = r14.x + -r14.y;
      r1.w = saturate(r14.x / r1.w);
      r0.y = r1.w + r0.y;
      r5.xyz = r5.xyz * r0.yyy + r13.xyz;
      r5.xy = cb2[176].zw * r5.xy;
      r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
      r5.xy = cb0[66].xy * r5.xy;
      r5.xy = r5.xy / cb0[66].xy;
      r13.xyz = cb0[123].xyw * r5.yyy;
      r13.xyz = r5.xxx * cb0[122].xyw + r13.xyz;
      r13.xyz = r5.zzz * cb0[124].xyw + r13.xyz;
      r13.xyz = cb0[125].xyw + r13.xyz;
      r5.zw = r13.xy / r13.zz;
      r13.xy = r5.zw * cb2[177].xy + cb2[177].zw;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r0.y = dot(r5.xy, r5.xy);
      r0.y = 1 + -r0.y;
      r0.y = max(0, r0.y);
      r5.xy = saturate(abs(r5.zw) * float2(5,5) + float2(-4,-4));
      r1.w = dot(r5.xy, r5.xy);
      r1.w = 1 + -r1.w;
      r1.w = max(0, r1.w);
      r0.y = min(r1.w, r0.y);
      r5.xyz = t17.SampleLevel(s6_s, r13.xy, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r0.z * 6.5999999 + 2);
      r0.y = r1.w * r0.y;
      r1.w = 1;
      r5.xyz = -r5.xyz * r0.yyy;
      r5.xyz = cb2[178].xxx * r5.xyz;
      r0.y = -r1.w * r0.y + 1;
      r1.xyz = r1.xyz * r0.yyy + r5.xyz;
    }
  }
  r5.xyzw = r0.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.y = r5.x * r5.x;
  r0.x = -9.27999973 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(r0.y, r0.x);
  r0.x = r0.x * r5.x + r5.y;
  r0.xy = r0.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r11.y;
  r1.w = saturate(r1.w);
  r0.y = r1.w * r0.y;
  r5.xyz = r11.xyz * r0.xxx + r0.yyy;
  r0.x = dot(cb2[122].xyz, float3(1,1,1));
  r0.x = cmp(9.99999975e-005 < abs(r0.x));
  if (r0.x != 0) {
    r4.w = -1;
    r0.x = dot(cb2[122].xyzw, r4.xyzw);
    r0.x = saturate(abs(r0.x) * cb2[129].x + cb2[129].y);
    r0.x = 1 + -r0.x;
    r13.xyz = -cb2[123].xyz + r4.xyz;
    r0.y = dot(r13.xyz, cb2[124].xyz);
    r0.y = cb2[124].w + -abs(r0.y);
    r0.y = saturate(cb2[129].x * r0.y);
    r1.w = dot(r13.xyz, cb2[125].xyz);
    r1.w = cb2[125].w + -abs(r1.w);
    r1.w = saturate(cb2[129].x * r1.w);
    r0.y = r1.w * r0.y;
    r0.x = r0.x * r0.y;
    r0.y = dot(cb2[122].xyz, r7.xyz);
    r0.y = saturate(r0.y * cb2[130].x + cb2[130].y);
    r0.z = -0.200000003 + r0.z;
    r0.z = saturate(10 * r0.z);
    r0.z = 1 + -r0.z;
    r0.x = r0.x * r0.y;
    r0.x = r0.x * r0.z;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r0.y = rsqrt(r0.w);
      r0.yzw = r8.xyz * r0.yyy;
      r1.w = dot(r0.yzw, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = cb2[122].xyz * r1.www + r0.yzw;
      r8.xyz = cb2[127].xyz * r7.yyy;
      r7.xyw = r7.xxx * cb2[126].xyz + r8.xyz;
      r7.xyz = r7.zzz * cb2[128].xyz + r7.xyw;
      r1.w = dot(r0.yzw, r7.xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = r7.xyz * -r1.www + r0.yzw;
      r0.yzw = r0.yzw * cb2[129].zzz + r4.xyz;
      r0.yzw = cb0[70].xyz + r0.yzw;
      r7.xyz = cb0[13].xyz * r0.zzz;
      r7.xyz = r0.yyy * cb0[12].xyz + r7.xyz;
      r0.yzw = r0.www * cb0[14].xyz + r7.xyz;
      r0.yzw = cb0[15].xyz + r0.yzw;
      r1.w = asuint(cb0[197].w) << 2;
      r7.xyz = cb2[r1.w+132].xyw * r0.zzz;
      r7.xyz = r0.yyy * cb2[r1.w+131].xyw + r7.xyz;
      r0.yzw = r0.www * cb2[r1.w+133].xyw + r7.xyz;
      r0.yzw = cb2[r1.w+134].xyw + r0.yzw;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r0.yz = r0.yz / r0.ww;
      r0.yz = max(-cb2[141].xy, r0.yz);
      r0.yz = min(cb2[141].xy, r0.yz);
      r0.yz = r0.yz * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r7.xyzw = t12.SampleLevel(s2_s, r0.yz, 0).xyzw;
      r0.x = r7.w * r0.x;
    } else {
      r7.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r1.xyz = r0.xxx * r1.xyz + r7.xyz;
  }
  r0.xyz = r1.xyz * r5.xyz;
  r1.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
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
  r2.w = max(-127, r2.w);
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
  r7.x = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.w : r7.x;
  r5.y = cb2[144].y * r5.y;
  r5.y = max(-127, r5.y);
  r6.w = exp2(-r5.y);
  r6.w = 1 + -r6.w;
  r6.w = r6.w / r5.y;
  r7.x = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r6.w : r7.x;
  r2.w = r5.y * r2.w;
  r2.w = r5.w * r5.z + r2.w;
  r5.y = r2.w * r1.w;
  r5.zw = cmp(float2(0,0) < cb2[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r4.w * cb2[150].x + cb2[150].y);
    r7.xy = float2(1,-1) * cb2[149].yx;
    r7.x = dot(r3.xy, r7.xy);
    r7.y = dot(r3.xy, cb2[149].xy);
    r7.z = r3.w;
    r8.xyz = t13.SampleLevel(s3_s, r7.xyz, 0).xyz;
    r7.xyz = t13.SampleLevel(s3_s, r7.xyz, cb2[150].z).xyz;
    r8.xyz = r8.xyz + -r7.xyz;
    r7.xyz = r5.zzz * r8.xyz + r7.xyz;
    r7.xyz = cb2[145].xyz * r7.xyz;
  } else {
    r7.xyz = cb2[145].xyz;
  }
  r5.z = cmp(cb2[147].w >= 0);
  r6.w = cmp(cb2[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r8.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r8.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r8.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r8.xyz = r8.xyz * r1.www;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.y);
  r1.w = min(1, r1.w);
  r8.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r8.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r7.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r4.yyy;
    r7.xyz = r4.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r4.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r8.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r7.xyzw = t14.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r5.yzw = r5.yzw * r7.www + r7.xyz;
    r5.x = r7.w * r5.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r4.yyy;
    r7.xyz = r4.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r4.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r8.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r7.xy = r7.xy / r7.zz;
    r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r13.z = sqrt(r3.w);
    r3.w = cb0[181].y * r13.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r8.xyz = r8.xyz * r2.www;
    r2.w = -r8.z * r8.z + 1;
    r2.w = sqrt(r2.w);
    r14.y = r8.z * 0.5 + 0.5;
    r7.zw = r8.xy / r2.ww;
    r2.w = 1 + -abs(r7.z);
    r2.w = sqrt(r2.w);
    r4.w = abs(r7.z) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r7.z) + -0.212114394;
    r4.w = r4.w * abs(r7.z) + 1.57072878;
    r6.w = r4.w * r2.w;
    r6.w = r6.w * -2 + 3.14159274;
    r7.z = cmp(r7.z < -r7.z);
    r6.w = r7.z ? r6.w : 0;
    r2.w = r4.w * r2.w + r6.w;
    r4.w = cmp(r7.w < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.w : r2.w;
    r14.x = 0.159154937 * r2.w;
    r7.zw = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r8.xy = float2(1,1) + cb0[180].xy;
    r8.xy = cb0[180].xy / r8.xy;
    r7.zw = r8.xy * r7.zw;
    r13.xy = r1.ww ? r7.zw : r7.xy;
    r7.xyzw = t8.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r7.xyz = r7.xyz * r3.www;
    r1.w = 1 + -r7.w;
    r1.w = -r3.w * r1.w + 1;
    r7.xyz = cb0[135].zzz * r7.xyz;
    r5.yzw = r7.xyz * r5.xxx + r5.yzw;
    r5.x = r5.x * r1.w;
  }
  r7.xyz = -cb0[148].xyz + r4.xyz;
  r8.xyz = cb0[150].xyz * r7.xyz;
  r13.xyz = -cb0[149].xyz + r4.xyz;
  r13.xyz = cb0[151].xyz * r13.xyz;
  r7.xyz = r7.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r7.xyz = float3(0.5,0.5,0.5) + -abs(r7.xyz);
  r7.xyz = saturate(float3(6,6,6) * r7.xyz);
  r1.w = r7.x * r7.y;
  r1.w = r1.w * r7.z;
  r7.xyzw = t18.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r14.xyzw = t19.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r7.xyzw = -r14.xyzw + r7.xyzw;
  r7.xyzw = r1.wwww * r7.xyzw + r14.xyzw;
  r8.xyz = t20.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r13.xyz = t21.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r8.xyz = -r13.xyz + r8.xyz;
  r8.xyz = r1.www * r8.xyz + r13.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r7.xyz / r1.www;
  r14.yzw = r13.xxx * r8.xyz;
  r15.yzw = r13.yyy * r8.xyz;
  r8.yzw = r13.zzz * r8.xyz;
  r14.x = r7.x;
  r13.x = dot(r14.xyzw, r21.xyzw);
  r15.x = r7.y;
  r13.y = dot(r15.xyzw, r21.xyzw);
  r8.x = r7.z;
  r13.z = dot(r8.xyzw, r21.xyzw);
  r7.xyz = max(float3(0,0,0), r13.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r8.xyzw = cb3[1].xyzw * r4.yyyy;
    r8.xyzw = r4.xxxx * cb3[0].xyzw + r8.xyzw;
    r8.xyzw = r4.zzzz * cb3[2].xyzw + r8.xyzw;
    r8.xyzw = cb3[3].xyzw + r8.xyzw;
    r8.xy = r8.xy / r8.ww;
    r13.xyzw = t22.SampleLevel(s0_s, r8.xy, 0).xyzw;
    r14.xyz = t23.SampleLevel(s0_s, r8.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r8.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r13.x * r8.z;
    r13.xyz = r15.xyz * r13.yzw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r13.xyz = r16.xyz * r14.xyz;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r8.zw = cmp(r8.xy < cb3[4].xy);
    r8.xy = cmp(cb3[4].zw < r8.xy);
    r8.xy = (int2)r8.xy | (int2)r8.zw;
    r1.w = (int)r8.y | (int)r8.x;
    r8.xyz = cb3[6].xyz * r7.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r8.xyz = -r8.xyz * r13.xyz + r7.xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = r12.xyz * r8.xyz;
  } else {
    r8.xyz = r12.xyz * r7.xyz;
  }
  r0.xyz = r0.xyz * r1.xyz + r8.xyz;
  r1.xyz = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r12.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r10.xyz = max(float3(0,0,0), r9.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xyz = -cb1[5].xyz + r4.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r1.xyz = cmp(r7.xyz < abs(r1.xyz));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r4.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r10.xyzw = r1.xxxx ? r4.yzwx : r10.xyzw;
    o0.w = r10.w;
  } else {
    o0.w = r10.w;
  }
  r0.xyz = r2.xyz * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r10.xyz;
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
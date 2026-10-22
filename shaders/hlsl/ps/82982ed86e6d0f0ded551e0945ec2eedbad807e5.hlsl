// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

TextureCube<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

TextureCubeArray<float4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r0.w = cb5[11].x * cb0[142].z;
  r6.y = -0.100000001 * r0.w;
  r7.xyz = r4.xyz / cb5[11].zzz;
  r8.xy = cb5[11].ww * r7.yx;
  r8.z = -r7.z;
  r6.xw = float2(0,0);
  r7.xyzw = r8.xzyz + r6.xyxy;
  r1.zw = t15.SampleBias(s7_s, r7.xy, cb0[143].y).xy;
  r8.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r1.zw = t15.SampleBias(s7_s, r7.zw, cb0[143].y).xy;
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
  r1.w = mad((int)v4.x, 36, 18);
  r9.x = t0[r1.w].val[0/4];
  r9.y = t0[r1.w].val[0/4+1];
  r9.z = t0[r1.w].val[0/4+2];
  r1.w = r9.x + r9.y;
  r1.w = r1.w + r9.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb3[2].x * r1.w;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t8.SampleLevel(s4_s, r2.xy, 0).x;
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
  r9.x = dot(r6.xy, cb5[2].xy);
  r9.y = dot(r6.xy, cb5[3].xy);
  r6.xy = float2(0.5,0.5) + r9.xy;
  r9.xy = r2.zz * cb5[14].zw + r6.xy;
  r5.w = cb5[16].w + cb0[143].y;
  r9.xy = t15.SampleBias(s7_s, r9.xy, r5.w).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r7.w = dot(r9.xy, r9.xy);
  r7.w = 1 + -r7.w;
  r7.w = max(0, r7.w);
  r9.z = sqrt(r7.w);
  r6.xy = r2.zz * cb5[18].xy + r6.xy;
  r6.xy = t15.SampleBias(s7_s, r6.xy, r5.w).xy;
  r10.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.z = dot(r10.xy, r10.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r10.z = sqrt(r2.z);
  r9.xyz = r10.xyz + r9.xyz;
  r10.xyz = float3(0,0,1) + -r9.xyz;
  r11.xyz = cb5[18].zzz * r10.xyz + r9.xyz;
  r2.z = 1 + r11.z;
  r2.y = cb5[18].w * r2.y;
  r1.w = r2.y * r1.w;
  r6.xy = r4.xy / cb5[19].yy;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r12.x = dot(r6.xy, cb5[2].xy);
  r12.y = dot(r6.xy, cb5[3].xy);
  r6.xy = float2(0.5,0.5) + r12.xy;
  r12.xy = r1.ww * cb5[14].zw + r6.xy;
  r12.xy = t15.SampleBias(s7_s, r12.xy, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r2.y = dot(r12.xy, r12.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r12.z = sqrt(r2.y);
  r6.xy = r1.ww * cb5[18].xy + r6.xy;
  r6.xy = t15.SampleBias(s7_s, r6.xy, cb0[143].y).xy;
  r13.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r13.xy, r13.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r13.z = sqrt(r1.w);
  r12.xyz = r13.xyz + r12.xyz;
  r13.xyz = float3(0,0,1) + -r12.xyz;
  r14.xyz = cb5[19].zzz * r13.xyz + r12.xyz;
  r11.w = 1 + r11.z;
  r14.xyz = float3(-1,-1,1) * r14.xyz;
  r1.w = dot(r11.xyw, r14.xyz);
  r14.xyz = r14.xyz * r2.zzz;
  r11.xyz = r11.xyw * r1.www + -r14.xyz;
  r14.xyz = float3(0,0,1) + -r11.xyz;
  r11.xyz = cb5[19].www * r14.xyz + r11.xyz;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb5[20].x + cb5[20].w);
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
  r0.x = dot(r7.zxy, r5.xyz);
  r0.z = max(0, r0.x);
  r2.z = 1 + -r0.z;
  r2.z = max(9.99999975e-005, abs(r2.z));
  r2.z = log2(r2.z);
  r2.z = cb5[21].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z * cb5[21].z + cb5[21].y;
  r2.x = saturate(r2.x / cb5[22].x);
  r2.x = cb5[22].y * r2.x;
  r5.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb5[22].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r5.w ? 0 : r2.x;
  r2.x = saturate(r2.z * r2.x);
  r11.xyz = -cb5[8].xyz + cb5[7].xyz;
  r11.xyz = r2.xxx * r11.xyz + cb5[8].xyz;
  r6.xy = r4.xy / cb5[23].xx;
  r2.z = t16.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r5.w = 1 + -r2.z;
  r5.w = r5.w + r5.w;
  r7.w = cb5[23].y * cb0[142].z;
  r6.z = 0.100000001 * r7.w;
  r6.xy = r6.zw + r6.xy;
  r6.x = t16.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r6.y = 1 + -r6.x;
  r5.w = -r5.w * r6.y + 1;
  r6.x = dot(r2.zz, r6.xx);
  r2.z = cmp(r2.z >= 0.5);
  r2.z = r2.z ? r5.w : r6.x;
  r0.y = -r0.y * r2.y + 1;
  r0.y = cb5[23].z * r0.y;
  r2.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[23].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.y ? 0 : r0.y;
  r0.y = r2.z * r0.y + r0.y;
  r2.y = -cb5[24].x + r0.y;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r2.z = cmp(r0.y >= cb5[24].x);
  r2.z = r2.z ? r0.y : 0;
  r0.y = r2.y ? r2.z : r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(cb5[24].y, r0.y);
  r6.xyz = r1.www * r0.yyy + r11.xyz;
  r11.xyz = -r6.xyz * cb5[24].zzz + r6.xyz;
  r11.xyz = cb4[6].xyz * r11.xyz;
  r11.xyz = float3(0.318309844,0.318309844,0.318309844) * r11.xyz;
  r0.y = dot(r7.zxy, cb4[7].xyz);
  r9.xyz = cb5[24].www * r10.xyz + r9.xyz;
  r2.y = 1 + r9.z;
  r10.xyz = cb5[25].xxx * r13.xyz + r12.xyz;
  r9.w = 1 + r9.z;
  r10.xyz = float3(-1,-1,1) * r10.xyz;
  r2.z = dot(r9.xyw, r10.xyz);
  r10.xyz = r10.xyz * r2.yyy;
  r9.xyz = r9.xyw * r2.zzz + -r10.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r2.y = saturate(dot(r9.xyz, cb4[7].xyz));
  r10.xyz = cb0[67].xyz + -r4.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r10.xyz = cb4[7].xyz + r10.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r2.z = saturate(dot(r10.xyz, r9.xyz));
  r5.w = 11 * cb5[25].z;
  r5.w = exp2(r5.w);
  r6.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = r5.w * r2.z;
  r2.z = exp2(r2.z);
  r2.y = r2.y * r2.z;
  r2.y = cb5[25].w * r2.y;
  r9.xyz = cb4[5].xyz * r2.yyy;
  r9.xyz = r6.www ? float3(0,0,0) : r9.xyz;
  r9.xyz = r11.xyz * r0.yyy + r9.xyz;
  r10.xyz = cb5[9].xyz + -r9.xyz;
  r9.xyz = cb5[26].xxx * r10.xyz + r9.xyz;
  r0.y = cb5[26].z + -cb5[26].w;
  r0.y = saturate(r1.z * r0.y + cb5[26].w);
  r2.yz = float2(1,1) + -v3.wy;
  r1.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r5.w = cb5[27].x * r2.y;
  r5.w = exp2(r5.w);
  r5.w = 1 + -r5.w;
  r5.w = r1.z ? 1 : r5.w;
  r6.w = cb5[27].y * cb0[142].z;
  r10.x = cb5[27].w * r6.w;
  r10.y = cb5[28].x * r6.w;
  r11.xyz = r4.xyz / cb5[28].zzz;
  r12.xy = cb5[28].ww * r11.xy;
  r13.xy = -r12.xy;
  r13.z = -r11.z;
  r10.xyzw = r13.xzyz + r10.xyxy;
  r11.xyz = r4.xyz / cb5[29].yyy;
  r11.xw = t15.SampleBias(s7_s, r11.xz, cb0[143].y).xy;
  r11.xw = r11.xw * float2(2,2) + float2(-1,-1);
  r11.xw = cb5[29].zz * -r11.xw + r11.xw;
  r11.yz = t15.SampleBias(s7_s, r11.yz, cb0[143].y).xy;
  r11.yz = r11.yz * float2(2,2) + float2(-1,-1);
  r11.yz = cb5[29].zz * -r11.yz + r11.yz;
  r7.w = cb5[30].x + -cb5[30].y;
  r7.w = saturate(abs(v1.x) * r7.w + cb5[30].y);
  r11.yz = r11.yz + -r11.xw;
  r11.xy = r7.ww * r11.yz + r11.xw;
  r10.xyzw = r11.xyxy + r10.xyzw;
  r8.w = -cb5[30].z + r4.z;
  r8.w = r8.w / cb5[30].w;
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
  r8.w = cb5[31].x * r8.w;
  r8.w = exp2(r8.w);
  r8.w = min(1, r8.w);
  r8.w = 1 + -r8.w;
  r8.w = r9.w ? 1 : r8.w;
  r8.w = cb5[31].y * r8.w;
  r9.w = t16.SampleLevel(s8_s, r10.xy, r8.w).y;
  r10.x = t16.SampleLevel(s8_s, r10.zw, r8.w).y;
  r10.x = r10.x + -r9.w;
  r9.w = r7.w * r10.x + r9.w;
  r12.z = r13.z;
  r10.xyzw = r6.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r12.xzyz;
  r10.xyzw = r10.xyzw + r11.xyxy;
  r6.w = 0.75 * r8.w;
  r8.w = t16.SampleLevel(s8_s, r10.xy, r6.w).y;
  r6.w = t16.SampleLevel(s8_s, r10.zw, r6.w).y;
  r6.w = r6.w + -r8.w;
  r6.w = r7.w * r6.w + r8.w;
  r6.w = r9.w + r6.w;
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb5[31].z * r6.w;
  r6.w = exp2(r6.w);
  r2.z = cb5[31].w * r2.z;
  r2.z = r6.w * r2.z;
  r2.z = r7.w ? 0 : r2.z;
  r2.z = -r5.w * r2.z + 1;
  r2.z = r2.z / r5.w;
  r2.z = cb5[32].x + -r2.z;
  r2.z = 1 + r2.z;
  r1.w = saturate(r2.z * cb5[32].y + r1.w);
  r2.y = cb5[32].z * r2.y;
  r2.y = exp2(r2.y);
  r2.y = 1 + -r2.y;
  r1.z = r1.z ? 1 : r2.y;
  r1.z = r1.z * r2.x;
  r1.z = r5.w * r1.z;
  r10.w = saturate(r1.w * r1.z);
  r6.xyz = saturate(r6.xyz);
  r1.z = saturate(cb5[24].z);
  r1.w = saturate(cb5[26].y);
  r0.y = r0.y * cb0[139].y + cb0[139].x;
  r2.x = 0.0799999982 * r1.w;
  r11.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r2.xyz = r1.zzz * r11.xyz + r2.xxx;
  r11.xyz = ddx_coarse(v2.xyz);
  r12.xyz = ddy_coarse(v2.xyz);
  r1.w = dot(r11.xyz, r11.xyz);
  r5.w = dot(r12.xyz, r12.xyz);
  r1.w = max(r5.w, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[183].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(r1.w * cb0[183].x + cb0[183].y);
  r0.y = max(r1.w, r0.y);
  r6.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r11.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.zzz ? r11.xyz : r6.xyz;
  r2.xyz = r1.zzz ? float3(0,0,0) : r2.xyz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.z = v5.w * cb1[3].x + cb1[3].y;
  r1.z = log2(r1.z);
  r1.z = cb1[3].z * r1.z;
  r1.z = max(0, r1.z);
  r1.xyz = (uint3)r1.xyz;
  r1.w = asint(cb1[1].z) + -1;
  r1.z = min((uint)r1.z, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r1.z, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r0.x = r0.x + r0.x;
  r5.yzw = r0.xxx * r7.zxy + -r5.xyz;
  r0.x = min(1, r0.z);
  r0.z = (int)r1.x + asint(cb1[0].w);
  r1.x = (uint)r0.z << 1;
  r1.x = t2.Load(r1.x).x;
  r1.x = min(asuint(cb1[0].y), (uint)r1.x);
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.z = (((uint)r0.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r0.z = t2.Load(r0.z).x;
  r1.y = max(0.00100000005, r0.y);
  r1.y = log2(r1.y);
  r1.y = -r1.y * 1.20000005 + 1;
  r1.z = -1 + cb0[195].z;
  r1.y = r1.z + -r1.y;
  r5.x = 0;
  r11.xyz = float3(0,0,0);
  r1.zw = float2(1,0);
  while (true) {
    r6.w = cmp((uint)r1.w >= (uint)r1.x);
    if (r6.w != 0) break;
    r6.w = cmp(r1.z < 0.00100000005);
    if (r6.w != 0) {
      break;
    }
    r6.w = (int)r0.z + (int)r1.w;
    r6.w = t3.Load(r6.w).x;
    r12.xyz = -cb2[r6.w+0].xyz + r4.xyz;
    r7.w = dot(r12.xyz, r12.xyz);
    r8.w = sqrt(r7.w);
    r9.w = cmp(r8.w < cb2[r6.w+0].w);
    if (r9.w != 0) {
      r9.w = cmp(0 < cb2[r6.w+341].z);
      if (r9.w != 0) {
        r9.w = (uint)r6.w << 2;
        r13.xyz = cb2[r9.w+1024].xyz * r4.yyy;
        r13.xyz = r4.xxx * cb2[r9.w+1023].xyz + r13.xyz;
        r13.xyz = r4.zzz * cb2[r9.w+1025].xyz + r13.xyz;
        r13.xyz = cb2[r9.w+1026].xyz + r13.xyz;
        r14.xyz = cb2[r9.w+1024].xyz * r5.zzz;
        r14.xyz = r5.yyy * cb2[r9.w+1023].xyz + r14.xyz;
        r14.xyz = r5.www * cb2[r9.w+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r13.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r9.w = min(r14.y, r14.z);
        r9.w = min(r14.x, r9.w);
        r14.xyz = r9.www * r5.yzw + r4.xyz;
        r15.xyz = cb2[r6.w+682].xyz + cb2[r6.w+0].xyz;
        r14.xyz = -r15.xyz + r14.xyz;
        r9.w = cb2[r6.w+2387].w * 0.699999988;
        r15.xyz = -cb2[r6.w+2387].www * float3(0.5,0.5,0.5) + cb2[r6.w+2387].xyz;
        r16.xyz = cb2[r6.w+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r18.xyz = r13.xyz * cb2[r6.w+2387].xyz + r15.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb2[r6.w+2387].xyz + -r15.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r11.w = dot(r17.xyz, float3(1,1,1));
        r12.w = dot(r13.xyz, float3(1,1,1));
        r11.w = r12.w + r11.w;
        r9.w = 1 / r9.w;
        r9.w = saturate(r11.w * r9.w);
        r11.w = r9.w * -2 + 3;
        r9.w = r9.w * r9.w;
        r13.x = -r11.w * r9.w + 1;
      } else {
        r8.w = saturate(r8.w / cb2[r6.w+0].w);
        r9.w = dot(r5.yzw, r12.xyz);
        r7.w = -cb2[r6.w+0].w * cb2[r6.w+0].w + r7.w;
        r7.w = r9.w * r9.w + -r7.w;
        r11.w = cmp(r7.w >= 0);
        r7.w = sqrt(r7.w);
        r7.w = r7.w + -r9.w;
        r12.xyz = r7.www * r5.yzw + r12.xyz;
        r12.yzw = -cb2[r6.w+682].xyz + r12.xyz;
        r7.w = r8.w * 2.5 + -1.5;
        r7.w = max(0, r7.w);
        r8.w = r7.w * r7.w;
        r7.w = -r7.w * 2 + 3;
        r12.x = -r8.w * r7.w + 1;
        r13.xyzw = r11.wwww ? r12.xyzw : r5.xyzw;
        r14.xyz = r13.yzw;
      }
      r14.w = cb2[r6.w+341].y;
      r12.xyzw = t4.SampleLevel(s2_s, r14.xyzw, r1.y).xyzw;
      r12.xyz = cb2[r6.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r13.xxx;
      r11.xyz = r12.xyz * r1.zzz + r11.xyz;
      r6.w = -r12.w * r13.x + 1;
      r1.z = r6.w * r1.z;
    }
    r1.w = (int)r1.w + 1;
  }
  r1.xyz = cb0[157].xyz * r11.xyz;
  r0.z = saturate(r0.y * cb0[197].x + cb0[197].y);
  r1.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r1.w * r0.z;
  r1.w = min(0, cb0[197].z);
  r1.w = -1 + r1.w;
  r0.z = r0.z * r1.w + 1;
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(cb0[145].x == 0.000000);
  if (r0.z != 0) {
    r0.z = asuint(cb0[144].y);
    r11.xy = r0.zz * float2(32.6650009,11.8149996) + v5.xy;
    r0.z = dot(r11.xy, float2(0.0671105608,0.00583714992));
    r0.z = frac(r0.z);
    r0.z = 52.9829178 * r0.z;
    r0.z = frac(r0.z);
    r0.z = -0.5 + r0.z;
    r11.xyzw = cb0[1].xyzw * r3.yyyy;
    r11.xyzw = r3.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r3.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r12.xyzw = cb0[1].xyzw * r5.yyyy;
    r12.xyzw = r5.xxxx * cb0[0].xyzw + r12.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r12.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.w = rcp(r11.w);
    r12.xyz = r11.xyz * r1.www;
    r1.w = rcp(r5.w);
    r11.xy = r2.ww * cb0[30].zw + r11.zw;
    r2.w = rcp(r11.y);
    r5.xyz = r5.xyz * r1.www + -r12.xyz;
    r1.w = dot(r5.xy, r5.xy);
    r1.w = sqrt(r1.w);
    r5.w = 0.5 * r1.w;
    r11.yz = r12.xy * r5.ww + r5.xy;
    r11.yz = -r1.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r5.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r1.w = min(r11.y, r11.z);
    r1.w = r1.w / r5.w;
    r5.xyz = r5.xyz * r1.www;
    r1.w = -r11.x * r2.w + r12.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.z), r1.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb1[176].xy * r11.xy;
    r5.xy = cb1[176].xy * r5.xy;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r11.xyz = r5.xyz * r0.zzz + r12.xyz;
    r0.z = 1;
    r13.x = 0;
    r14.x = 0;
    r12.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r7.w = 0;
    r8.w = 0;
    r9.w = 0;
    while (true) {
      r11.w = cmp((uint)r9.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r9.w;
      r15.xyzw = float4(1,2,3,4) + r11.wwww;
      r16.xyzw = r15.xxxy * r5.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r5.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r5.xyzz + r11.xyzz;
      r11.w = r0.y * 0.666666687 + r0.z;
      r13.w = r0.y * 0.666666687 + r11.w;
      r18.x = t9.SampleLevel(s5_s, r16.xy, r0.z).x;
      r18.y = t9.SampleLevel(s5_s, r17.xy, r0.z).x;
      r18.z = t9.SampleLevel(s5_s, r17.zw, r11.w).x;
      r18.w = t9.SampleLevel(s5_s, r15.xy, r11.w).x;
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
      r9.w = (int)r9.w + 4;
      r0.z = r13.w;
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
      r0.z = (uint)r9.w;
      r0.z = r12.z + r0.z;
      r1.w = r12.x + -r12.y;
      r1.w = saturate(r12.x / r1.w);
      r0.z = r1.w + r0.z;
      r5.xyz = r5.xyz * r0.zzz + r11.xyz;
      r5.xy = cb1[176].zw * r5.xy;
      r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
      r5.xy = cb0[66].xy * r5.xy;
      r5.xy = r5.xy / cb0[66].xy;
      r11.xyz = cb0[123].xyw * r5.yyy;
      r11.xyz = r5.xxx * cb0[122].xyw + r11.xyz;
      r11.xyz = r5.zzz * cb0[124].xyw + r11.xyz;
      r11.xyz = cb0[125].xyw + r11.xyz;
      r5.zw = r11.xy / r11.zz;
      r11.xy = r5.zw * cb1[177].xy + cb1[177].zw;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r0.z = dot(r5.xy, r5.xy);
      r0.z = 1 + -r0.z;
      r0.z = max(0, r0.z);
      r5.xy = saturate(abs(r5.zw) * float2(5,5) + float2(-4,-4));
      r1.w = dot(r5.xy, r5.xy);
      r1.w = 1 + -r1.w;
      r1.w = max(0, r1.w);
      r0.z = min(r1.w, r0.z);
      r5.xyz = t10.SampleLevel(s6_s, r11.xy, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r0.y * 6.5999999 + 2);
      r0.z = r1.w * r0.z;
      r1.w = 1;
      r5.xyz = -r5.xyz * r0.zzz;
      r5.xyz = cb1[178].xxx * r5.xyz;
      r0.z = -r1.w * r0.z + 1;
      r1.xyz = r1.xyz * r0.zzz + r5.xyz;
    }
  }
  r5.xyzw = r0.yyyy * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.z = r5.x * r5.x;
  r0.x = -9.27999973 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(r0.z, r0.x);
  r0.x = r0.x * r5.x + r5.y;
  r0.xz = r0.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r2.y;
  r1.w = saturate(r1.w);
  r0.z = r1.w * r0.z;
  r5.xyz = r2.xyz * r0.xxx + r0.zzz;
  r0.x = dot(cb1[122].xyz, float3(1,1,1));
  r0.x = cmp(9.99999975e-005 < abs(r0.x));
  if (r0.x != 0) {
    r4.w = -1;
    r0.x = dot(cb1[122].xyzw, r4.xyzw);
    r0.x = saturate(abs(r0.x) * cb1[129].x + cb1[129].y);
    r0.x = 1 + -r0.x;
    r11.xyz = -cb1[123].xyz + r4.xyz;
    r0.z = dot(r11.xyz, cb1[124].xyz);
    r0.z = cb1[124].w + -abs(r0.z);
    r0.z = saturate(cb1[129].x * r0.z);
    r1.w = dot(r11.xyz, cb1[125].xyz);
    r1.w = cb1[125].w + -abs(r1.w);
    r1.w = saturate(cb1[129].x * r1.w);
    r0.z = r1.w * r0.z;
    r0.x = r0.x * r0.z;
    r0.z = dot(cb1[122].yzx, r7.xyz);
    r0.z = saturate(r0.z * cb1[130].x + cb1[130].y);
    r0.y = -0.200000003 + r0.y;
    r0.y = saturate(10 * r0.y);
    r0.y = 1 + -r0.y;
    r0.x = r0.x * r0.z;
    r0.x = r0.x * r0.y;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r0.y = rsqrt(r0.w);
      r0.yzw = r8.xyz * r0.yyy;
      r1.w = dot(r0.yzw, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = cb1[122].xyz * r1.www + r0.yzw;
      r8.xyz = cb1[127].xyz * r7.xxx;
      r8.xyz = r7.zzz * cb1[126].xyz + r8.xyz;
      r8.xyz = r7.yyy * cb1[128].xyz + r8.xyz;
      r1.w = dot(r0.yzw, r8.xyz);
      r1.w = r1.w + r1.w;
      r0.yzw = r8.xyz * -r1.www + r0.yzw;
      r0.yzw = r0.yzw * cb1[129].zzz + r4.xyz;
      r0.yzw = cb0[70].xyz + r0.yzw;
      r8.xyz = cb0[13].xyz * r0.zzz;
      r8.xyz = r0.yyy * cb0[12].xyz + r8.xyz;
      r0.yzw = r0.www * cb0[14].xyz + r8.xyz;
      r0.yzw = cb0[15].xyz + r0.yzw;
      r1.w = asuint(cb0[197].w) << 2;
      r8.xyz = cb1[r1.w+132].xyw * r0.zzz;
      r8.xyz = r0.yyy * cb1[r1.w+131].xyw + r8.xyz;
      r0.yzw = r0.www * cb1[r1.w+133].xyw + r8.xyz;
      r0.yzw = cb1[r1.w+134].xyw + r0.yzw;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.yz = r0.yz / r0.ww;
      r0.yz = max(-cb1[141].xy, r0.yz);
      r0.yz = min(cb1[141].xy, r0.yz);
      r0.yz = r0.yz * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r8.xyzw = t5.SampleLevel(s2_s, r0.yz, 0).xyzw;
      r0.x = r8.w * r0.x;
    } else {
      r8.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r1.xyz = r0.xxx * r1.xyz + r8.xyz;
  }
  r0.xyz = r1.xyz * r5.xyz;
  r1.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
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
  r2.w = max(-127, r2.w);
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
    r11.xyz = t6.SampleLevel(s3_s, r8.xyz, 0).xyz;
    r8.xyz = t6.SampleLevel(s3_s, r8.xyz, cb1[150].z).xyz;
    r11.xyz = r11.xyz + -r8.xyz;
    r8.xyz = r5.zzz * r11.xyz + r8.xyz;
    r8.xyz = cb1[145].xyz * r8.xyz;
  } else {
    r8.xyz = cb1[145].xyz;
  }
  r5.z = cmp(cb1[147].w >= 0);
  r6.w = cmp(cb1[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r11.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r11.xyz, cb1[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb1[148].w * r3.w;
    r3.w = exp2(r3.w);
    r11.xyz = cb1[148].xyz * r3.www;
    r1.w = -cb1[147].w + r1.w;
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
  r11.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r8.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb1[150].w);
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
    r8.xyzw = t7.SampleLevel(s0_s, r11.xyz, 0).xyzw;
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
    r8.xyzw = t1.SampleLevel(s1_s, r12.xyz, 0).xyzw;
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
  r8.xyz = t11.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r13.xyz = t12.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r8.xyz = -r13.xyz + r8.xyz;
  r8.xyz = r1.www * r8.xyz + r13.xyz;
  r11.xyz = t13.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r12.xyz = t14.SampleLevel(s0_s, r12.xyz, 0).xyz;
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
  r7.xyz = r7.xyz * r6.xyz;
  r0.xyz = r0.xyz * r1.xyz + r7.xyz;
  r1.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r10.xyz = max(float3(0,0,0), r9.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r1.x = t0[r1.x].val[0/4];
    r1.z = t0[r1.x].val[0/4+1];
    r1.w = t0[r1.x].val[0/4+2];
    r1.xzw = r4.xyz + -r1.xzw;
    r2.x = t0[r1.y].val[0/4];
    r2.y = t0[r1.y].val[0/4+1];
    r2.z = t0[r1.y].val[0/4+2];
    r2.xyz = float3(1,1,1) + r2.xyz;
    r1.xyz = cmp(r2.xyz < abs(r1.xzw));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r10.xyzw = r1.xxxx ? r2.yzwx : r10.xyzw;
    o0.w = r10.w;
  } else {
    o0.w = r10.w;
  }
  r0.xyz = r10.xyz + r0.xyz;
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
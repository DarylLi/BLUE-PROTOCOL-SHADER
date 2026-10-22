// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[111];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xz = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r1.w = cmp(0 >= v2.y);
  r2.w = log2(v2.y);
  r3.w = cb2[65].z * r2.w;
  r3.w = exp2(r3.w);
  r3.w = cb2[65].w * r3.w;
  r3.w = cb2[66].x * r3.w;
  r3.w = r1.w ? -0 : -r3.w;
  r3.w = cb2[66].x + r3.w;
  r4.x = dot(v0.xyz, cb2[3].xyz);
  r4.y = dot(r0.xyz, cb2[3].xyz);
  r4.xy = r4.xy * r3.ww;
  r3.w = cb2[67].z * cb0[142].z;
  r3.w = frac(r3.w);
  r4.xy = r4.xy * r3.ww;
  r4.z = 1 + -v2.y;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = 100 * r4.z;
  r4.z = exp2(r4.z);
  r4.z = 20 * r4.z;
  r4.z = min(1, r4.z);
  r4.z = 1 + -r4.z;
  r4.z = r4.w ? 1 : r4.z;
  r5.x = cb2[67].w * v2.x;
  r5.y = v2.y;
  r4.xy = r4.xy * r4.zz + r5.xy;
  r5.x = cb2[68].x + r4.x;
  r4.x = 1 + -r4.y;
  r4.z = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb2[68].y * r4.x;
  r4.x = exp2(r4.x);
  r4.x = r4.z ? 0 : r4.x;
  r4.x = r4.y * r4.x;
  r5.y = -r4.x * cb2[68].z + r4.y;
  r4.x = t1.SampleBias(s0_s, r5.xy, cb0[143].y).x;
  r4.x = saturate(r4.x);
  r4.y = cb2[68].w * r4.x;
  r4.z = saturate(r4.y);
  r4.z = 1 + -r4.z;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r5.z = cb2[69].z * r4.z;
  r5.z = exp2(r5.z);
  r5.w = dot(r3.xyz, cb2[8].xyz);
  r6.x = -1 + r5.w;
  r6.y = -abs(r6.x) * cb2[71].x + 1;
  r6.y = saturate(cb2[72].x * r6.y);
  r6.yzw = cb2[9].xyz * r6.yyy;
  r6.yzw = r6.yzw * r5.zzz;
  r6.yzw = r4.www ? float3(0,0,0) : r6.yzw;
  r5.z = -1 + -r5.w;
  r5.z = -abs(r5.z) * cb2[72].w + 1;
  r5.z = saturate(cb2[73].w * r5.z);
  r7.xyz = float3(-1,-1,-1) + cb2[11].xyz;
  r7.xyz = r5.zzz * r7.xyz + float3(1,1,1);
  r5.w = -abs(r6.x) * cb2[74].z + 1;
  r5.w = saturate(cb2[75].z * r5.w);
  r7.w = saturate(cb2[75].w + r5.w);
  r8.xyz = -cb2[15].xyz + cb2[14].xyz;
  r8.xyz = r7.www * r8.xyz + cb2[15].xyz;
  r8.xyz = r8.xyz * r5.www;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.w = -r2.z * r0.w + 1;
  r8.w = cmp(0 >= r7.w);
  r7.w = log2(r7.w);
  r9.x = cb2[76].z * r7.w;
  r9.x = exp2(r9.x);
  r9.x = r8.w ? 0 : r9.x;
  r5.w = r5.w * cb2[76].y + r9.x;
  r9.x = 1 + -r5.w;
  r9.y = cb2[76].w + v2.y;
  r9.z = cmp(0 >= r9.y);
  r9.y = log2(r9.y);
  r9.y = cb2[77].x * r9.y;
  r9.y = exp2(r9.y);
  r9.y = min(1, r9.y);
  r9.y = r9.z ? 0 : r9.y;
  r9.x = saturate(r9.x * r9.y + cb2[77].y);
  r10.xyzw = float4(12,12,12,12) * v2.zwzw;
  r10.xyzw = cb2[78].xxww * r10.xyzw;
  r9.zw = cb0[142].zz * cb2[77].ww + r10.xy;
  r11.xyz = t2.SampleBias(s1_s, r9.zw, cb0[143].y).xyz;
  r12.xyz = float3(1,1,1) + -r11.xyz;
  r12.xyz = r12.xyz + r12.xyz;
  r9.zw = cb0[142].zz * cb2[78].zz + r10.zw;
  r9.z = t3.SampleBias(s2_s, r9.zw, cb0[143].y).x;
  r9.w = 0.600000024 * r9.z;
  r9.z = cmp(0 >= r9.z);
  r9.w = r9.w * r9.w;
  r9.z = r9.z ? 0 : r9.w;
  r9.w = 1 + -r9.z;
  r10.xyz = -r12.xyz * r9.www + float3(1,1,1);
  r12.xyz = r11.xyz * r9.zzz;
  r12.xyz = r12.xyz + r12.xyz;
  r11.xyz = cmp(r11.xyz >= float3(0.5,0.5,0.5));
  r10.xyz = r11.xyz ? r10.xyz : r12.xyz;
  r10.xyz = cb2[79].xxx * r10.xyz;
  r9.xzw = r10.xyz * r9.xxx;
  r5.z = 1 + -r5.z;
  r10.x = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r10.y = cb2[79].y * r5.z;
  r10.y = exp2(r10.y);
  r10.y = r10.x ? 0 : r10.y;
  r10.z = r10.y * r5.w;
  r5.w = saturate(r10.y * r5.w + cb2[80].x);
  r10.y = r5.w + r5.w;
  r10.y = min(1, r10.y);
  r11.xyz = -cb2[20].xyz + cb2[19].xyz;
  r11.xyz = r10.yyy * r11.xyz + cb2[20].xyz;
  r10.y = -0.5 + r5.w;
  r10.y = r10.y + r10.y;
  r10.y = max(0, r10.y);
  r12.xyz = cb2[22].xyz + -cb2[19].xyz;
  r12.xyz = r10.yyy * r12.xyz + cb2[19].xyz;
  r12.xyz = r12.xyz + -r11.xyz;
  r11.xyz = r5.www * r12.xyz + r11.xyz;
  r11.xyz = r11.xyz * cb2[80].yyy + -cb2[23].xyz;
  r10.yzw = r10.zzz * r11.xyz + cb2[23].xyz;
  r11.xyz = float3(1,1,1) + -cb2[25].xyz;
  r11.xyz = r9.yyy * r11.xyz + cb2[25].xyz;
  r12.xyz = r11.xyz * r10.yzw;
  r5.z = cb2[80].z * r5.z;
  r5.z = exp2(r5.z);
  r5.z = r10.x ? 0 : r5.z;
  r5.w = cb2[80].w * r7.w;
  r5.w = exp2(r5.w);
  r5.w = r8.w ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.z = min(1, r5.z);
  r10.xyz = -r10.yzw * r11.xyz + cb2[27].xyz;
  r10.xyz = r5.zzz * r10.xyz + r12.xyz;
  r9.xyz = r9.xzw * cb1[0].yyy + r10.xyz;
  r8.xyz = r8.xyz * cb2[76].xxx + r9.xyz;
  r6.yzw = r7.xyz * r8.xyz + r6.yzw;
  r4.z = cb2[81].z * r4.z;
  r4.z = exp2(r4.z);
  r4.z = r4.w ? 0 : r4.z;
  r5.zw = float2(-9.99999997e-007,-9.99999997e-007) + cb2[83].yw;
  r5.zw = cmp(float2(9.99999975e-006,9.99999975e-006) < abs(r5.zw));
  r9.xy = cmp(cb2[83].yw >= float2(9.99999997e-007,9.99999997e-007));
  r9.xzw = r9.xxx ? cb2[36].xyz : 0;
  r9.xzw = r5.zzz ? r9.xzw : 0;
  r10.x = dot(r9.xzw, r3.xyz);
  r9.xyz = r9.yyy ? cb2[38].xyz : 0;
  r9.xyz = r5.www ? r9.xyz : 0;
  r10.y = dot(r9.xyz, r3.xyz);
  r5.zw = float2(1,1) + r10.xy;
  r5.zw = float2(0.5,0.5) * r5.zw;
  r9.xy = r5.zw / cb2[85].xx;
  r9.xy = float2(0.5,0.5) + r9.xy;
  r9.xy = -cb2[85].yy + r9.xy;
  r9.xyzw = t4.SampleBias(s3_s, r9.xy, cb0[143].y).xyzw;
  r10.xyz = float3(1,1,1) + -r9.xyz;
  r10.xyz = cb2[41].xyz * r10.xyz;
  r10.xyz = -r10.xyz * float3(2,2,2) + float3(1,1,1);
  r11.xyz = cb2[40].xyz * r9.xyz;
  r11.xyz = r11.xyz + r11.xyz;
  r9.xyz = cmp(r9.xyz >= float3(0.5,0.5,0.5));
  r9.xyz = r9.xyz ? r10.xyz : r11.xyz;
  r4.w = cb2[85].z * r9.w;
  r9.xyz = r9.xyz * r4.www;
  r4.w = dot(r3.xyz, cb2[30].xyz);
  r4.w = -1 + r4.w;
  r7.w = -abs(r4.w) * cb2[86].x + 1;
  r7.w = saturate(cb2[87].x * r7.w);
  r7.w = cb2[87].y * r7.w;
  r9.xyz = r4.zzz * r9.xyz + -r6.yzw;
  r6.yzw = r7.www * r9.xyz + r6.yzw;
  r6.yzw = float3(1,1,1) + -r6.yzw;
  r9.xy = r5.zw / cb2[88].yy;
  r9.xy = float2(0.5,0.5) + r9.xy;
  r9.xy = -cb2[88].zz + r9.xy;
  r9.zw = t5.SampleBias(s4_s, r9.xy, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r9.xy = r9.zw * cb2[42].xy + -r9.xy;
  r9.xy = saturate(float2(1,1) + r9.xy);
  r9.xy = float2(-0.5,-0.5) + r9.xy;
  r4.z = dot(r9.xy, r9.xy);
  r4.z = sqrt(r4.z);
  r4.z = -r4.z * 2 + 1;
  r7.w = r4.z * r4.z;
  r7.w = 1.44269514 * r7.w;
  r7.w = exp2(r7.w);
  r7.w = 1 / r7.w;
  r8.w = cmp(9.99999975e-006 < abs(r4.z));
  r4.z = cmp(r4.z >= 0);
  r7.w = 1 + -r7.w;
  r9.xyz = cb2[45].xyz * r7.www;
  r9.xyz = -r9.xyz * cb2[87].yyy + float3(1,1,1);
  r9.xyz = r4.zzz ? r9.xyz : float3(1,1,1);
  r9.xyz = r8.www ? r9.xyz : float3(1,1,1);
  r6.yzw = -r6.yzw * r9.xyz + float3(1,1,1);
  r4.z = -abs(r6.x) * 0.5 + 1;
  r4.z = max(0, r4.z);
  r7.w = 1 + -r4.z;
  r8.w = -r7.w + r4.z;
  r8.w = cb2[89].y * r8.w + r7.w;
  r9.x = -1 + cb2[89].z;
  r8.w = r8.w * r9.x + 1;
  r9.x = -abs(r6.x) * cb2[90].y + 1;
  r9.x = saturate(cb2[91].y * r9.x);
  r9.y = -1 + cb2[91].z;
  r9.x = r9.x * r9.y + 1;
  r9.yz = t6.SampleBias(s5_s, r5.xy, cb0[143].y).xy;
  r10.xy = r9.yz * float2(2,2) + float2(-1,-1);
  r9.y = dot(r10.xy, r10.xy);
  r9.y = 1 + -r9.y;
  r9.y = max(0, r9.y);
  r10.z = sqrt(r9.y);
  r9.yzw = cb2[89].yyy * r10.xyz;
  r10.w = -r10.y;
  r9.yzw = r9.yzw * float3(0,2,0) + r10.xwz;
  r9.yzw = r9.yzw + -r10.xyz;
  r9.yzw = cb2[91].www * r9.yzw + r10.xyz;
  r10.xyz = float3(0,0,1) + -r9.yzw;
  r11.xyz = cb2[92].xxx * r10.xyz + r9.yzw;
  r9.yzw = cb2[92].yyy * r10.xyz + r9.yzw;
  r7.w = r7.w + -r4.z;
  r4.z = cb2[89].y * r7.w + r4.z;
  r9.yzw = r9.yzw + -r11.xyz;
  r9.yzw = r4.zzz * r9.yzw + r11.xyz;
  r0.xyz = r9.zzz * r0.xyz;
  r0.xyz = r9.yyy * v0.xyz + r0.xyz;
  r0.xyz = r9.www * v1.xyz + r0.xyz;
  r9.yzw = float3(1,1,1) + -v1.xyz;
  r0.xyz = cb2[89].yyy * r9.yzw + r0.xyz;
  r7.w = dot(r0.xyz, r0.xyz);
  r7.w = sqrt(r7.w);
  r0.xyz = r0.xyz / r7.www;
  r0.x = dot(r0.xyz, cb2[48].xyz);
  r0.x = 1 + -r0.x;
  r0.y = 0.5 * r0.x;
  r0.z = cb2[93].x * r0.y;
  r0.z = floor(r0.z);
  r0.z = r0.z / cb2[93].y;
  r0.x = -r0.x * 0.5 + r0.z;
  r0.x = cb2[93].z * r0.x + r0.y;
  r0.x = r4.z * cb2[93].w + r0.x;
  r0.y = 1 + -r4.z;
  r0.x = r0.y * cb2[94].x + r0.x;
  r0.z = cb2[94].z + -cb2[94].w;
  r0.z = saturate(r0.x * r0.z + cb2[94].w);
  r0.z = r0.z + -r0.x;
  r0.x = r4.z * r0.z + r0.x;
  r0.z = cb2[95].y + -cb2[95].z;
  r0.z = saturate(r0.x * r0.z + cb2[95].z);
  r0.z = r0.z + -r0.x;
  r0.x = saturate(r0.y * r0.z + r0.x);
  r0.y = r0.x + r0.x;
  r0.y = min(1, r0.y);
  r9.yzw = -cb2[50].xyz + cb2[49].xyz;
  r9.yzw = r0.yyy * r9.yzw + cb2[50].xyz;
  r0.y = -0.5 + r0.x;
  r0.y = r0.y + r0.y;
  r0.y = max(0, r0.y);
  r10.xyz = cb2[52].xyz + -cb2[49].xyz;
  r10.xyz = r0.yyy * r10.xyz + cb2[49].xyz;
  r10.xyz = r10.xyz + -r9.yzw;
  r0.xyz = r0.xxx * r10.xyz + r9.yzw;
  r0.xyz = cb2[95].www * r0.xyz;
  r9.yzw = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb2[96].xxx * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r9.yzw ? float3(0,0,0) : r0.xyz;
  r9.yzw = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb2[96].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r9.yzw ? float3(0,0,0) : r0.xyz;
  r9.yzw = cb1[9].xyz + -cb1[4].xyz;
  r9.yzw = cb2[89].yyy * r9.yzw + cb1[4].xyz;
  r10.xyz = r0.xyz * r9.yzw + -r0.xyz;
  r0.xyz = cb2[96].zzz * r10.xyz + r0.xyz;
  r0.xyz = r9.xxx * r0.xyz;
  r4.z = 1 + -r3.w;
  r3.w = r4.z * r3.w;
  r3.w = cb2[96].w * r3.w;
  r3.w = saturate(4 * r3.w);
  r4.z = dot(r9.yzw, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r4.zzz + -r9.yzw;
  r9.xyz = cb2[97].yyy * r10.xyz + r9.yzw;
  r4.z = 1 + -r4.x;
  r4.z = r4.x * r4.z;
  r4.z = 4 * r4.z;
  r9.xyz = r9.xyz * r4.zzz;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb2[97].www * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r4.x = r4.x * r3.w;
  r4.z = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb2[98].x * r4.x;
  r4.x = exp2(r4.x);
  r4.x = cb2[98].y * r4.x;
  r4.x = 100 * r4.x;
  r4.x = r4.z ? 0 : r4.x;
  r9.xyz = r9.xyz * r4.xxx;
  r4.xz = float2(-9.99999997e-007,-9.99999997e-007) + cb2[99].xz;
  r4.xz = cmp(float2(9.99999975e-006,9.99999975e-006) < abs(r4.xz));
  r10.xy = cmp(cb2[99].xz >= float2(9.99999997e-007,9.99999997e-007));
  r10.xzw = r10.xxx ? cb2[57].xyz : 0;
  r10.xzw = r4.xxx ? r10.xzw : 0;
  r11.x = dot(r10.xzw, r3.xyz);
  r10.xyz = r10.yyy ? cb2[59].xyz : 0;
  r10.xyz = r4.zzz ? r10.xyz : 0;
  r11.y = dot(r10.xyz, r3.xyz);
  r4.xz = float2(1,1) + r11.xy;
  r4.xz = float2(0.5,0.5) * r4.xz;
  r4.xz = r4.xz / cb2[100].ww;
  r4.xz = float2(0.5,0.5) + r4.xz;
  r4.xz = -cb2[101].xx + r4.xz;
  r4.xz = t5.SampleBias(s4_s, r4.xz, cb0[143].y).xy;
  r4.xz = r4.xz * float2(2,2) + float2(-1,-1);
  r4.xz = cb2[61].xy * r4.xz;
  r6.x = -abs(r6.x) * cb2[102].y + 1;
  r6.x = saturate(cb2[103].y * r6.x);
  r4.xz = r4.xz * r6.xx + r5.xy;
  r5.xy = r5.zw / cb2[104].yy;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r5.xy = -cb2[104].zz + r5.xy;
  r5.xy = t5.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.xy = cb2[63].xy * r5.xy;
  r4.w = -abs(r4.w) * cb2[106].y + 1;
  r4.w = saturate(cb2[107].y * r4.w);
  r4.xz = r5.xy * r4.ww + r4.xz;
  r4.x = t1.SampleBias(s0_s, r4.xz, cb0[143].y).z;
  r4.x = saturate(r4.x);
  r4.x = 1 + -r4.x;
  r4.z = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb2[107].z * r4.x;
  r4.x = exp2(r4.x);
  r4.x = min(1, r4.x);
  r4.x = r4.z ? 0 : r4.x;
  r5.xyz = r9.xyz * r4.xxx;
  r9.xyz = r5.xyz * r6.xxx;
  r4.xzw = r5.xyz * r4.www + r9.xyz;
  r4.xzw = r4.xzw * r3.www;
  r0.xyz = r8.www * r0.xyz + r4.xzw;
  r4.xzw = cb2[107].www * r0.xyz;
  r3.w = dot(r4.xzw, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = -r0.xyz * cb2[107].www + r3.www;
  r0.xyz = cb2[108].yyy * r0.xyz + r4.xzw;
  r2.w = cb2[108].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = cb2[108].w * r2.w;
  r1.w = r1.w ? 0 : r2.w;
  r4.xzw = r7.xyz * r8.xyz + -r0.xyz;
  r0.xyz = r1.www * r4.xzw + r0.xyz;
  r0.xyz = r0.xyz + -r6.yzw;
  r0.xyz = r4.yyy * r0.xyz + r6.yzw;
  r4.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb2[109].xxx * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r4.xyz ? float3(0,0,0) : r0.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb2[109].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r4.xyz ? float3(0,0,0) : r0.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r4.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb2[65].y, r5.x, r6.x);
  r4.xyz = r5.xxx * r4.xyz;
  r0.xyz = r0.xyz * r6.xxx + r4.xyz;
  r0.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.www + -r0.xyz;
  r0.xyz = cb2[109].www * r4.xyz + r0.xyz;
  r0.xyz = cb2[110].xxx * r0.xyz;
  r0.w = r2.z * r0.w + -cb2[110].y;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.w = cmp(-r3.z >= cb2[110].y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r0.w ? r1.w : 1;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb1[1].zzz * r0.xyz;
  r0.xyz = -r0.xyz * cb1[1].zzz + cb2[64].xyz;
  r0.xyz = cb2[110].zzz * r0.xyz + r4.xyz;
  r0.w = r1.y * v4.w + cb2[110].w;
  r0.w = r1.x / r0.w;
  r0.w = min(v4.z, r0.w);
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r1.x = -r0.w * r1.z + r1.x;
    r1.x = r1.x / r0.w;
    r1.xyz = r3.xyz * r1.xxx + r2.xyz;
    r2.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r1.xyz;
    r3.x = t0[r2.y].val[0/4];
    r3.y = t0[r2.y].val[0/4+1];
    r3.z = t0[r2.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xzw));
    r1.w = (int)r2.y | (int)r2.x;
    r1.w = (int)r2.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.www ? r1.xyz : r0.xyz;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.w;
  return;
}
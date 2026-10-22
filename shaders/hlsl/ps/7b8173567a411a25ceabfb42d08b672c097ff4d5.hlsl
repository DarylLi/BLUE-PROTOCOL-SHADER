// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[51];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 + cb0[142].z;
  r0.x = frac(r0.x);
  r0.y = r0.x + r0.x;
  r0.z = max(1, r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.y + r0.y;
  r0.z = -1 + r0.z;
  r0.z = r0.z + r0.z;
  r0.yz = min(float2(1,1), r0.yz);
  r0.z = 1 + -r0.z;
  r0.y = r0.z * r0.y;
  r0.zw = cb0[45].zw * v5.yy;
  r0.zw = v5.xx * cb0[44].zw + r0.zw;
  r0.zw = v5.zz * cb0[46].zw + r0.zw;
  r0.zw = cb0[47].zw + r0.zw;
  r0.z = r0.z / r0.w;
  r0.z = -cb0[70].z + r0.z;
  r0.z = -cb4[37].w + r0.z;
  r0.z = abs(r0.z) / cb4[38].x;
  r0.z = -r0.z * cb4[38].y + 1;
  r0.w = cb4[19].z * v0.y + cb4[19].w;
  r1.x = -cb4[20].x * r0.w + 1;
  r1.w = -r1.x * r0.z + 1;
  r0.z = cb3[2].x * cb0[142].z;
  r0.z = cb4[39].x * r0.z;
  r2.xy = cb4[14].xy * r0.zz;
  r1.xz = v0.xx;
  r2.zw = r1.zw * cb4[12].xy + r2.xy;
  r1.zw = r1.zw * cb4[13].xy + float2(0.200000003,0.200000003);
  r1.zw = r2.xy * float2(0.699999988,0.699999988) + r1.zw;
  r0.z = t2.SampleBias(s2_s, r1.zw, cb0[143].y).x;
  r2.y = r0.z * 2 + -1;
  r2.x = 0;
  r2.xy = cb4[40].xx * r2.xy;
  r3.xy = r2.xy * r0.xx + r2.zw;
  r0.xz = r2.xy * r0.xx + r1.zw;
  r0.x = t2.SampleBias(s2_s, r0.xz, cb0[143].y).y;
  r0.x = r0.x * 2 + -1;
  r0.z = t2.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r0.z = r0.z * 2 + -1;
  r3.x = frac(cb0[142].z);
  r2.zw = r2.xy * r3.xx + r2.zw;
  r1.zw = r2.xy * r3.xx + r1.zw;
  r1.z = t2.SampleBias(s2_s, r1.zw, cb0[143].y).y;
  r1.z = r1.z * 2 + -1;
  r1.w = t2.SampleBias(s2_s, r2.zw, cb0[143].y).x;
  r1.w = r1.w * 2 + -1;
  r0.xz = -r1.zw + r0.xz;
  r0.z = r0.y * r0.z + r1.w;
  r0.x = r0.y * r0.x + r1.z;
  r0.x = r0.z + -r0.x;
  r0.x = r0.x * cb4[41].w + v0.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb4[49].y + -cb4[49].y;
  r0.x = saturate(cb4[49].w + r0.x);
  r0.y = 1 + -r0.w;
  r0.y = saturate(cb4[48].x * r0.y);
  r0.z = saturate(cb4[47].y * r0.w);
  r1.y = cb4[20].x * r0.w;
  r1.xy = cb4[2].xy * r1.xy;
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r0.y;
  r0.y = -1 + cb4[16].x;
  r0.x = r0.x * r0.y;
  r0.yz = r1.xy / cb4[21].yy;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb3[2].x * r0.w;
  r1.z = cb4[17].x * r0.w;
  r0.w = cb4[20].z * r0.w;
  r2.xy = r0.ww * cb4[19].xy + r1.xy;
  r1.xy = r1.xy / cb4[20].yy;
  r1.xy = r1.zz * cb4[19].xy + r1.xy;
  r0.yz = r1.zz * cb4[19].xy + r0.yz;
  r1.zw = t1.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r1.zw = float2(0.200000003,0.200000003) * r1.zw;
  r0.w = cb0[142].z / cb4[21].z;
  r2.x = 0.5 + r0.w;
  r0.w = frac(r0.w);
  r2.yz = r1.zw * r0.ww + r0.yz;
  r2.yz = t1.SampleBias(s1_s, r2.yz, cb0[143].y).xy;
  r3.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r0.w = frac(r2.x);
  r0.yz = r1.zw * r0.ww + r0.yz;
  r0.w = r0.w + r0.w;
  r0.yz = t1.SampleBias(s1_s, r0.yz, cb0[143].y).xy;
  r2.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r0.y = dot(r2.xy, r2.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r3.z = sqrt(r0.y);
  r2.xyz = -r3.xyz + r2.xyz;
  r0.y = max(1, r0.w);
  r0.z = min(1, r0.w);
  r0.z = r0.z + r0.z;
  r0.y = -1 + r0.y;
  r0.y = r0.y + r0.y;
  r0.yz = min(float2(1,1), r0.yz);
  r0.y = 1 + -r0.y;
  r0.y = r0.y * r0.z;
  r0.yzw = r0.yyy * r2.xyz + r3.xyz;
  r2.xyz = r0.yzw + r0.yzw;
  r0.yzw = -r0.yzw * float3(2,2,2) + float3(0,0,1);
  r0.yzw = cb4[21].www * r0.yzw + r2.xyz;
  r0.yzw = float3(-1,-1,1) * r0.yzw;
  r2.x = cb0[142].z / cb4[20].w;
  r2.y = 0.5 + r2.x;
  r2.x = frac(r2.x);
  r2.xz = r1.zw * r2.xx + r1.xy;
  r2.xz = t1.SampleBias(s1_s, r2.xz, cb0[143].y).xy;
  r3.xy = r2.xz * float2(2,2) + float2(-1,-1);
  r2.x = frac(r2.y);
  r1.xy = r1.zw * r2.xx + r1.xy;
  r1.z = r2.x + r2.x;
  r1.xy = t1.SampleBias(s1_s, r1.xy, cb0[143].y).xy;
  r2.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r2.xy, r2.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r2.z = sqrt(r1.x);
  r1.x = dot(r3.xy, r3.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r1.xyw = -r3.xyz + r2.xyz;
  r2.x = max(1, r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.z + r1.z;
  r1.z = min(1, r1.z);
  r2.x = -1 + r2.x;
  r2.x = r2.x + r2.x;
  r2.x = min(1, r2.x);
  r2.x = 1 + -r2.x;
  r1.z = r2.x * r1.z;
  r1.xyz = r1.zzz * r1.xyw + r3.xyz;
  r2.xyz = r1.xyz + r1.xyz;
  r1.xyz = -r1.xyz * float3(2,2,2) + float3(0,0,1);
  r1.xyz = cb4[21].xxx * r1.xyz + r2.xyz;
  r1.w = 1 + r1.z;
  r2.x = dot(r1.xyw, r0.yzw);
  r1.z = 1 + r1.z;
  r0.yzw = r1.zzz * r0.yzw;
  r0.yzw = r1.xyw * r2.xxx + -r0.yzw;
  r1.xyz = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb4[22].xxx * r1.xyz + r0.yzw;
  r0.yzw = r0.yzw * cb0[138].www + cb0[138].xyz;
  r1.xyz = v3.zxy * v2.yzx;
  r1.xyz = v3.yzx * v2.zxy + -r1.xyz;
  r1.xyz = v3.www * r1.xyz;
  r1.xyz = r1.xyz * r0.zzz;
  r1.xyz = r0.yyy * v2.xyz + r1.xyz;
  r0.yzw = r0.www * v3.xyz + r1.xyz;
  r1.xyz = cb0[13].xyz * r0.zzz;
  r1.xyz = r0.yyy * cb0[12].xyz + r1.xyz;
  r0.yzw = r0.www * cb0[14].xyz + r1.xyz;
  r0.w = dot(r0.yzw, r0.yzw);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  r0.xy = r0.yz * r0.xx;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = -9.99999975e-006 + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.w = cb2[7].y * cb2[7].x;
  r0.z = cb2[7].x;
  r0.zw = cb2[7].zw * r0.zw;
  r0.xy = r0.zw * r0.xy;
  r0.zw = -cb0[129].xy + v5.xy;
  r0.zw = r0.zw * cb0[130].zw + float2(-0.5,-0.5);
  r1.xy = v5.ww * r0.zw;
  r1.z = v5.w;
  r1.xyw = float3(2,-2,1) * r1.xyz;
  r0.zw = r1.xy / r1.ww;
  r0.zw = r0.zw * cb0[66].xy + cb0[66].wz;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r0.zw;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r1.z * 1 + r0.z;
  r0.w = -0.5 * cb4[50].x;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb4[50].x);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  r0.zw = min(float2(0,0), r0.xy);
  o0.xy = max(float2(0,0), r0.xy);
  o0.zw = -r0.zw;
  return;
}
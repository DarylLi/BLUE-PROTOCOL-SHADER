// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[40];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v0.xy);
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0,0);
  r0.xyz = t2.Load(r0.xyz).yzw;
  r0.x = f16tof32(r0.x);
  r0.x = cmp(0 < r0.x);
  r0.w = ~(int)r0.x;
  if (r0.w != 0) discard;
  r1.xy = cb1[132].zw * v0.xy;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r1.x + r0.w;
  bitmask.y = ((~(-1 << 16)) << 16) & 0xffffffff;  r0.y = (((uint)r0.z << 16) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.z = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y * cb1[65].z + -cb1[65].w;
  r0.y = 1 / r0.y;
  r0.y = r0.z + r0.y;
  r0.x = r0.x ? r0.y : r0.w;
  r0.yz = v0.xy * cb1[132].zw + -cb1[66].wz;
  r0.yz = r0.yz / cb1[66].xy;
  r0.yz = r0.yz * r0.xx;
  r1.xyz = cb1[49].xyz * r0.zzz;
  r0.yzw = r0.yyy * cb1[48].xyz + r1.xyz;
  r0.xyz = r0.xxx * cb1[50].xyz + r0.yzw;
  r0.xyz = cb1[51].xyz + r0.xyz;
  r0.xyz = cb0[27].xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r1.x = cb0[27].w * r0.w;
  r1.x = cmp(r1.x < 1);
  if (r1.x != 0) {
    r1.xyz = r0.xyz / r0.www;
    r2.xyz = float3(0,0,1) * r1.yzx;
    r2.xyz = r1.xyz * float3(0,1,0) + -r2.xyz;
    r0.w = dot(r2.yz, r2.yz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xyz * r0.www;
    r3.xyz = r2.xyz * r1.yzx;
    r3.xyz = r2.zxy * r1.zxy + -r3.xyz;
    r2.xy = cb0[26].xx * r2.yz;
    r3.xyz = cb0[26].xxx * r3.xyz;
    r0.w = max(abs(r0.y), abs(r0.z));
    r0.w = max(abs(r0.x), r0.w);
    r4.xyz = cmp(r0.xyz == abs(r0.xyz));
    r2.zw = cmp(abs(r0.xy) == r0.ww);
    r4.xyz = r4.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
    r0.w = r2.w ? r4.y : r4.z;
    r0.w = r2.z ? r4.x : r0.w;
    r0.w = (uint)r0.w << 2;
    r2.zw = cb0[r0.w+3].zw * -r0.yy;
    r0.xy = -r0.xx * cb0[r0.w+2].zw + r2.zw;
    r0.xy = -r0.zz * cb0[r0.w+4].zw + r0.xy;
    r0.xy = cb0[r0.w+5].zw + r0.xy;
    r0.x = r0.x / r0.y;
    r0.y = -cb0[39].x / r0.y;
    r4.xyz = r3.xyz * float3(2.5,2.5,2.5) + r1.xyz;
    r5.xyzw = r0.yyyy * float4(2.5,1.08132124,1.08749497,1.08946109) + r0.xxxx;
    r0.z = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r4.xy = float2(1.76776695,1.76776695) * r2.xy;
    r4.z = 0;
    r4.xyz = r4.xyz + r1.xyz;
    r6.xyz = r3.xyz * float3(1.76776695,1.76776695,1.76776695) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r6.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r6.xy = float2(2.5,2.5) * r2.xy;
    r6.z = 0;
    r6.xyz = r6.xyz + r1.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r6.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xyz = r3.xyz * float3(-1.76776695,-1.76776695,-1.76776695) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xyz = r3.xyz * float3(-2.5,-2.5,-2.5) + r1.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(-1.76776695,-1.76776695) * r2.xy;
    r4.z = -0;
    r4.xyz = r4.xyz + r1.xyz;
    r4.xyz = r3.xyz * float3(-1.76776695,-1.76776695,-1.76776695) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(-2.5,-2.5) * r2.xy;
    r4.z = -0;
    r4.xyz = r4.xyz + r1.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(-1.767766,-1.767766) * r2.xy;
    r4.z = -0;
    r4.xyz = r4.xyz + r1.xyz;
    r4.xyz = r3.xyz * float3(1.76776803,1.76776803,1.76776803) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.x).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(-1.00611901,-1.00611901) * r2.xy;
    r4.z = -0;
    r4.xyz = r4.xyz + r1.xyz;
    r4.xyz = r3.xyz * float3(-0.396207005,-0.396207005,-0.396207005) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.y).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(1.00001502,1.00001502) * r2.xy;
    r4.z = 0;
    r4.xyz = r4.xyz + r1.xyz;
    r4.xyz = r3.xyz * float3(0.427334994,0.427334994,0.427334994) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.z).x;
    r0.z = r0.z + r0.w;
    r4.xy = float2(0.416806996,0.416806996) * r2.xy;
    r4.z = 0;
    r4.xyz = r4.xyz + r1.xyz;
    r4.xyz = r3.xyz * float3(-1.00657701,-1.00657701,-1.00657701) + r4.xyz;
    r0.w = t1.SampleCmpLevelZero(s1_s, r4.xyz, r5.w).x;
    r0.z = r0.z + r0.w;
    r2.xy = float2(-0.408872008,-0.408872008) * r2.xy;
    r2.z = -0;
    r1.xyz = r2.xyz + r1.xyz;
    r1.xyz = r3.xyz * float3(1.02443004,1.02443004,1.02443004) + r1.xyz;
    r0.x = r0.y * 1.10301101 + r0.x;
    r0.x = t1.SampleCmpLevelZero(s1_s, r1.xyz, r0.x).x;
    r0.x = r0.z + r0.x;
    r0.x = 0.0833333358 * r0.x;
  } else {
    r0.x = 1;
  }
  r0.x = -0.5 + r0.x;
  r0.x = saturate(r0.x * cb0[26].z + 0.5);
  r0.x = r0.x * r0.x + -1;
  r0.x = cb0[26].y * r0.x + 1;
  o0.zw = sqrt(r0.xx);
  o0.xy = float2(1,1);
  return;
}
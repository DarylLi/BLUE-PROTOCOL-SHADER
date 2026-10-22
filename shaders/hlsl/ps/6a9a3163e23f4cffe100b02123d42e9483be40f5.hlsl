// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r1.xy = v0.xy * cb1[132].zw + -cb1[66].wz;
  r1.xy = r1.xy / cb1[66].xy;
  r1.xy = r1.xy * r0.zz;
  r1.yzw = cb1[49].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
  r1.xyz = r0.zzz * cb1[50].xyz + r1.xyz;
  r1.xyz = cb1[51].xyz + r1.xyz;
  r1.xyz = cb0[27].xyz + -r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.z);
  r1.w = cb0[27].w * r0.w;
  r1.w = cmp(r1.w < 1);
  if (r1.w != 0) {
    r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r0.x = rsqrt(r0.z);
    r0.xyz = r1.xyz * r0.xxx;
    r0.x = saturate(dot(r2.xyz, r0.xyz));
    r0.x = 1 + -r0.x;
    r0.yzw = r1.xyz / r0.www;
    r2.xyz = float3(0,0,1) * r0.zwy;
    r2.xyz = r0.yzw * float3(0,1,0) + -r2.xyz;
    r1.w = dot(r2.yz, r2.yz);
    r1.w = rsqrt(r1.w);
    r2.xyz = r2.xyz * r1.www;
    r3.xyz = r2.xyz * r0.zwy;
    r3.xyz = r2.zxy * r0.wyz + -r3.xyz;
    r2.xy = cb0[26].xx * r2.yz;
    r3.xyz = cb0[26].xxx * r3.xyz;
    r1.w = max(abs(r1.y), abs(r1.z));
    r1.w = max(abs(r1.x), r1.w);
    r4.xyz = cmp(r1.xyz == abs(r1.xyz));
    r2.zw = cmp(abs(r1.xy) == r1.ww);
    r4.xyz = r4.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
    r1.w = r2.w ? r4.y : r4.z;
    r1.w = r2.z ? r4.x : r1.w;
    r1.w = (uint)r1.w << 2;
    r2.zw = cb0[r1.w+3].zw * -r1.yy;
    r1.xy = -r1.xx * cb0[r1.w+2].zw + r2.zw;
    r1.xy = -r1.zz * cb0[r1.w+4].zw + r1.xy;
    r1.xy = cb0[r1.w+5].zw + r1.xy;
    r1.x = r1.x / r1.y;
    r0.x = r0.x * cb0[38].y + cb0[38].x;
    r0.x = -r0.x / r1.y;
    r1.yzw = r3.xyz * float3(2.5,2.5,2.5) + r0.yzw;
    r4.xyzw = r0.xxxx * float4(2.5,2.49999952,2.50000024,2.49999976) + r1.xxxx;
    r0.x = t2.SampleCmpLevelZero(s1_s, r1.yzw, r4.x).x;
    r1.xy = float2(2.37764096,2.37764096) * r2.xy;
    r1.z = 0;
    r1.xyz = r1.xyz + r0.yzw;
    r1.xyz = r3.xyz * float3(0.772542,0.772542,0.772542) + r1.xyz;
    r1.x = t2.SampleCmpLevelZero(s1_s, r1.xyz, r4.y).x;
    r0.x = r1.x + r0.x;
    r1.xy = float2(1.46946299,1.46946299) * r2.xy;
    r1.z = 0;
    r1.xyz = r1.xyz + r0.yzw;
    r1.xyz = r3.xyz * float3(-2.02254295,-2.02254295,-2.02254295) + r1.xyz;
    r1.x = t2.SampleCmpLevelZero(s1_s, r1.xyz, r4.z).x;
    r0.x = r1.x + r0.x;
    r1.xy = float2(-1.46946299,-1.46946299) * r2.xy;
    r1.z = -0;
    r1.xyz = r1.xyz + r0.yzw;
    r1.xyz = r3.xyz * float3(-2.022542,-2.022542,-2.022542) + r1.xyz;
    r1.x = t2.SampleCmpLevelZero(s1_s, r1.xyz, r4.y).x;
    r0.x = r1.x + r0.x;
    r1.xy = float2(-2.37764096,-2.37764096) * r2.xy;
    r1.z = -0;
    r0.yzw = r1.xyz + r0.yzw;
    r0.yzw = r3.xyz * float3(0.772543013,0.772543013,0.772543013) + r0.yzw;
    r0.y = t2.SampleCmpLevelZero(s1_s, r0.yzw, r4.w).x;
    r0.x = r0.x + r0.y;
    r0.x = 0.200000003 * r0.x;
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
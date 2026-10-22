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
  float4 r0,r1,r2;
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
  r0.w = cb0[27].w * r0.w;
  r0.w = cmp(r0.w < 1);
  if (r0.w != 0) {
    r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xyw = r0.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r0.xyw, r0.xyw);
    r1.w = rsqrt(r1.w);
    r0.xyw = r1.www * r0.xyw;
    r0.z = rsqrt(r0.z);
    r2.xyz = r1.xyz * r0.zzz;
    r0.x = saturate(dot(r0.xyw, r2.xyz));
    r0.x = 1 + -r0.x;
    r0.y = max(abs(r1.y), abs(r1.z));
    r0.y = max(abs(r1.x), r0.y);
    r2.xyz = cmp(r1.xyz == abs(r1.xyz));
    r0.yz = cmp(abs(r1.xy) == r0.yy);
    r2.xyz = r2.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
    r0.z = r0.z ? r2.y : r2.z;
    r0.y = r0.y ? r2.x : r0.z;
    r0.y = (uint)r0.y << 2;
    r0.zw = cb0[r0.y+3].zw * -r1.yy;
    r0.zw = -r1.xx * cb0[r0.y+2].zw + r0.zw;
    r0.zw = -r1.zz * cb0[r0.y+4].zw + r0.zw;
    r0.yz = cb0[r0.y+5].zw + r0.zw;
    r0.y = r0.y / r0.z;
    r0.x = r0.x * cb0[38].y + cb0[38].x;
    r0.x = -r0.x / r0.z;
    r0.x = r0.y + r0.x;
    r0.x = t2.SampleCmpLevelZero(s1_s, r1.xyz, r0.x).x;
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
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
  float4 r0,r1,r2;
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
  r0.w = cb0[27].w * r0.w;
  r0.w = cmp(r0.w < 1);
  if (r0.w != 0) {
    r0.w = max(abs(r0.y), abs(r0.z));
    r0.w = max(abs(r0.x), r0.w);
    r1.xyz = cmp(r0.xyz == abs(r0.xyz));
    r2.xy = cmp(abs(r0.xy) == r0.ww);
    r1.xyz = r1.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
    r0.w = r2.y ? r1.y : r1.z;
    r0.w = r2.x ? r1.x : r0.w;
    r0.w = (uint)r0.w << 2;
    r1.xy = cb0[r0.w+3].zw * -r0.yy;
    r1.xy = -r0.xx * cb0[r0.w+2].zw + r1.xy;
    r1.xy = -r0.zz * cb0[r0.w+4].zw + r1.xy;
    r1.xy = cb0[r0.w+5].zw + r1.xy;
    r0.w = r1.x / r1.y;
    r1.x = -cb0[39].x / r1.y;
    r0.w = r1.x + r0.w;
    r0.x = t1.SampleCmpLevelZero(s1_s, r0.xyz, r0.w).x;
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
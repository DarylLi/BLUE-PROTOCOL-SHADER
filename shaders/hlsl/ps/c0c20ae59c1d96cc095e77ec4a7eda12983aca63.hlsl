// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.xyzw = cmp(cb0[0].xyzw != float4(0,0,0,0));
  r1.xy = (int2)r1.zw | (int2)r1.xy;
  r1.x = (int)r1.y | (int)r1.x;
  r1.y = dot(r0.xyzw, cb0[0].xyzw);
  r0.xyzw = r1.xxxx ? r1.yyyy : r0.xyzw;
  r0.x = dot(r0.xyzw, cb0[1].xyzw);
  r0.y = ddx_coarse(v0.x);
  r0.z = -cb0[2].z * r0.y + 0.5;
  r0.y = cb0[2].z * r0.y + 0.5;
  r0.y = r0.y + -r0.z;
  r0.z = r0.x + -r0.z;
  r0.y = 1 / r0.y;
  r0.y = saturate(r0.z * r0.y);
  r0.z = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r2.w = r0.z * r0.y;
  if (cb0[2].w != 0) {
    r0.yz = cb0[3].xy + v0.xy;
    r3.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
    r0.y = dot(r3.xyzw, cb0[0].xyzw);
    r1.xyzw = r1.xxxx ? r0.yyyy : r3.xyzw;
    r0.y = dot(r1.xyzw, cb0[1].xyzw);
    r0.z = 0.5 + -cb0[5].x;
    r0.w = 0.5 + cb0[5].x;
    r0.yw = r0.yw + -r0.zz;
    r0.z = 1 / r0.w;
    r0.y = saturate(r0.y * r0.z);
    r0.z = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r0.y = r0.z * r0.y;
    r1.xyzw = cb0[4].xyzw * r0.yyyy;
    r2.xyz = v1.xyz;
    r3.xyzw = -cb0[4].xyzw * r0.yyyy + r2.xyzw;
    r2.xyzw = r2.wwww * r3.xyzw + r1.xyzw;
  } else {
    r2.xyz = v1.xyz;
  }
  r0.y = cmp(r0.x >= cb0[7].x);
  r0.zw = cmp(cb0[7].wy >= r0.xx);
  r0.y = r0.z ? r0.y : 0;
  r1.xy = cb0[7].yz + -cb0[7].xw;
  r0.xz = -cb0[7].xw + r0.xx;
  r1.xy = float2(1,1) / r1.xy;
  r0.xz = saturate(r1.xy * r0.xz);
  r1.xy = r0.xz * float2(-2,-2) + float2(3,3);
  r0.xz = r0.xz * r0.xz;
  r0.xz = r1.xy * r0.xz;
  r1.xyz = cb0[6].xyz;
  r1.w = 0;
  r3.xyzw = cb0[6].xyzw + -r1.xyzw;
  r1.xyzw = r0.xxxx * r3.xyzw + r1.xyzw;
  r3.xyzw = cb0[6].xyzw + -r2.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + r2.xyzw;
  r1.xyzw = r0.wwww ? r1.xyzw : r3.xyzw;
  r0.xyzw = r0.yyyy ? r1.xyzw : r2.xyzw;
  r0.xyzw = cb0[5].yyyy ? r0.xyzw : r2.xyzw;
  r1.x = -cb0[2].y + r0.w;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  o0.w = v1.w * r0.w;
  r0.w = cmp(cb0[2].x != 1.000000);
  if (r0.w != 0) {
    r0.xyz = saturate(r0.xyz);
    r0.w = 2.20000005 * cb0[2].x;
    r1.xyz = log2(r0.xyz);
    r1.xyz = r1.xyz * r0.www;
    r2.xyz = exp2(r1.xyz);
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    o0.xyz = r2.xyz ? r1.xyz : r3.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
  return;
}
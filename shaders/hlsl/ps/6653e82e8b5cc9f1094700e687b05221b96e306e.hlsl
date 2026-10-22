// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[152];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[52];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v2.x;
  r0.x = 0.5 + r0.x;
  r0.y = cb0[41].x;
  r1.z = r0.x * cb1[r0.y+150].w + cb1[r0.y+148].z;
  r0.zw = v0.yx / cb1[r0.y+150].yx;
  r0.zw = cb1[r0.y+148].yx + r0.zw;
  r1.w = cb1[r0.y+150].w * 0.5;
  r1.xy = -cb1[r0.y+150].ww * float2(0.5,0.5) + r0.zw;
  r0.z = cb1[r0.y+148].w * r0.x;
  r2.xyz = cb2[6].yzx + -r1.xzy;
  r0.w = cb2[6].w * cb2[6].w;
  r0.w = 1 / r0.w;
  r2.w = dot(r2.xyz, r2.xyz);
  r0.w = -r2.w + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = r2.zxy * r1.www;
  r0.w = dot(abs(r3.xyz), float3(1,1,1));
  r1.xyz = r1.xyz + r0.www;
  r3.xyz = cb2[6].xyz + -r1.yxz;
  r4.xyz = cb2[6].www * r3.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = log2(r0.w);
  r0.w = cb2[7].w * r0.w;
  r0.w = exp2(r0.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = dot(r3.xyz, cb2[8].xyz);
  r1.w = -cb2[10].x + r1.w;
  r1.w = saturate(cb2[10].y * r1.w);
  r1.w = r1.w * r1.w;
  r3.x = r1.w * r0.w;
  if (cb0[35].x != 0) {
    r0.w = cmp(cb0[51].x < 1);
    if (r0.w != 0) {
      r4.xyz = -cb2[6].yxz + r1.xyz;
      r0.w = dot(r4.xyz, r4.xyz);
      r0.w = sqrt(r0.w);
      r4.xyz = r4.xyz / r0.www;
      r1.w = min(abs(r4.x), abs(r4.y));
      r2.w = max(abs(r4.x), abs(r4.y));
      r2.w = 1 / r2.w;
      r1.w = r2.w * r1.w;
      r2.w = r1.w * r1.w;
      r3.z = r2.w * 0.0208350997 + -0.0851330012;
      r3.z = r2.w * r3.z + 0.180141002;
      r3.z = r2.w * r3.z + -0.330299497;
      r2.w = r2.w * r3.z + 0.999866009;
      r3.z = r2.w * r1.w;
      r3.w = cmp(abs(r4.y) < abs(r4.x));
      r3.z = r3.z * -2 + 1.57079637;
      r3.z = r3.w ? r3.z : 0;
      r1.w = r1.w * r2.w + r3.z;
      r3.zw = cmp(r4.yz < -r4.yz);
      r2.w = r3.z ? -3.141593 : 0;
      r1.w = r2.w + r1.w;
      r2.w = min(r4.x, r4.y);
      r3.z = max(r4.x, r4.y);
      r2.w = cmp(r2.w < -r2.w);
      r3.z = cmp(r3.z >= -r3.z);
      r2.w = r2.w ? r3.z : 0;
      r1.w = r2.w ? -r1.w : r1.w;
      r2.w = 0.159154937 * r1.w;
      r3.z = cmp(0 < r1.w);
      r1.w = r1.w * 0.159154937 + 1;
      r4.x = r3.z ? r2.w : r1.w;
      r1.w = 1 + -abs(r4.z);
      r1.w = sqrt(r1.w);
      r2.w = abs(r4.z) * -0.0187292993 + 0.0742610022;
      r2.w = r2.w * abs(r4.z) + -0.212114394;
      r2.w = r2.w * abs(r4.z) + 1.57072878;
      r3.z = r2.w * r1.w;
      r3.z = r3.z * -2 + 3.14159274;
      r3.z = r3.w ? r3.z : 0;
      r1.w = r2.w * r1.w + r3.z;
      r4.y = 0.318309873 * r1.w;
      r1.w = t0.SampleLevel(s0_s, r4.xy, 0).x;
      r0.w = cb2[6].w * r0.w;
      r0.w = cmp(r0.w < r1.w);
      r0.w = r0.w ? 1.000000 : 0;
    } else {
      r4.xyzw = cb0[37].xyzw * r1.xxxx;
      r4.xyzw = r1.yyyy * cb0[36].xyzw + r4.xyzw;
      r1.xyzw = r1.zzzz * cb0[38].xyzw + r4.xyzw;
      r1.xyzw = cb0[39].xyzw + r1.xyzw;
      r4.xyzw = r1.xyxy / r1.wwww;
      r1.xy = cmp(r4.zw >= float2(0,0));
      r3.zw = cmp(float2(1,1) >= r4.zw);
      r1.xy = r1.xy ? r3.zw : 0;
      r1.x = r1.y ? r1.x : 0;
      if (r1.x != 0) {
        r4.xyzw = r4.xyzw * cb0[40].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r1.xy = frac(r4.zw);
        r4.xyzw = floor(r4.xyzw);
        r5.xyzw = float4(0.5,1.5,0.5,0.5) + r4.zwzw;
        r5.xyzw = cb0[40].zwzw * r5.xyzw;
        r6.x = t0.SampleLevel(s0_s, r5.xy, 0).x;
        r4.xyzw = float4(1.5,1.5,1.5,0.5) + r4.xyzw;
        r4.xyzw = cb0[40].zwzw * r4.xyzw;
        r6.y = t0.SampleLevel(s0_s, r4.xy, 0).x;
        r6.z = t0.SampleLevel(s0_s, r4.zw, 0).x;
        r6.w = t0.SampleLevel(s0_s, r5.zw, 0).x;
        r1.z = r1.z * 40 + -1;
        r4.xyzw = saturate(r6.xyzw * float4(40,40,40,40) + -r1.zzzz);
        r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r6.xyzw);
        r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
        r4.xyzw = r5.xyzw + r4.xyzw;
        r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
        r1.zw = r4.zy + -r4.wx;
        r1.xz = r1.xx * r1.zw + r4.wx;
        r1.z = r1.z + -r1.x;
        r0.w = r1.y * r1.z + r1.x;
      } else {
        r0.w = 1;
      }
    }
  } else {
    r0.w = 1;
  }
  r1.x = cb3[2].z + cb1[142].z;
  r1.y = cb3[2].w * r1.x;
  r1.xyz = cb3[3].yxz * r1.xyx;
  r1.xz = cb3[3].xx * r1.xz;
  r1.xyz = float3(6.28318548,6.28318548,6.28318548) * r1.xyz;
  r1.xyz = sin(r1.xyz);
  r1.x = r1.y + r1.x;
  r1.x = r1.x + r1.z;
  r1.x = saturate(cb3[3].w + r1.x);
  r1.y = cb3[4].z + cb1[142].z;
  r1.z = cb3[4].w * r1.y;
  r1.z = cb3[5].x * r1.z;
  r1.w = 6.28318548 * r1.z;
  r1.w = sin(r1.w);
  r3.zw = cb3[5].yz * r1.yy;
  r3.zw = cb3[5].xx * r3.zw;
  r4.xy = float2(6.28318548,6.28318548) * r3.zw;
  r4.xy = sin(r4.xy);
  r1.y = r4.x + r1.w;
  r1.y = r1.y + r4.y;
  r1.y = saturate(cb3[5].w + r1.y);
  r1.xy = round(r1.xy);
  r1.z = cb3[6].x * r1.z;
  r1.yz = float2(0.100000001,6.28318548) * r1.yz;
  r1.z = sin(r1.z);
  r3.zw = cb3[6].xx * r3.zw;
  r3.zw = float2(6.28318548,6.28318548) * r3.zw;
  r3.zw = sin(r3.zw);
  r1.z = r3.z + r1.z;
  r1.z = r1.z + r3.w;
  r1.z = saturate(cb3[3].w + r1.z);
  r1.z = 0.100000001 * r1.z;
  r1.z = max(0.0599999987, r1.z);
  r1.y = min(r1.y, r1.z);
  r1.x = r1.x + r1.y;
  r1.x = min(1, r1.x);
  r1.y = cb3[6].y * r1.x;
  r1.xzw = -r1.xxx * cb3[6].yyy + cb3[1].xyz;
  r1.xyz = cb3[6].zzz * r1.xzw + r1.yyy;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.x = dot(r1.xyz, float3(0.333299994,0.333299994,0.333299994));
  r3.y = r1.x * r0.w;
  r0.w = cmp(asint(cb0[41].x) == 1);
  r1.x = cb1[149].w * 4 + 1;
  r0.xy = v0.xy;
  r1.y = cb1[149].w + cb1[149].w;
  r0.xyz = r0.xyz * r1.xxx + -r1.yyy;
  r0.xyz = float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + -abs(r0.xyz);
  r0.xyz = saturate(float3(10,10,10) * r0.xyz);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xx * r3.xy;
  r0.xy = r0.ww ? r0.xy : r3.xy;
  r0.xzw = cb2[7].xyz * r0.xxx;
  r0.xyz = r0.xzw * r0.yyy;
  r1.yzw = float3(-0.488602996,0.488602996,-0.488602996) * r2.xyz;
  r1.x = 0.0897936225;
  r0.w = 0.318309873 * r0.x;
  r2.xyzw = r1.xyzw * r0.xwww;
  r3.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r0.yyyy;
  r3.xyzw = r3.xyzw * r1.xyzw;
  r0.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r0.zzzz;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = r2.y;
  r1.y = r3.y;
  r1.z = r0.y;
  o1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r2.z;
  r1.y = r3.z;
  r1.z = r0.z;
  o1.y = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r2.w;
  r1.y = r3.w;
  r1.z = r0.w;
  o1.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  o0.x = r2.x;
  o0.y = r3.x;
  o0.z = r0.x;
  o0.w = 0;
  o1.w = 0;
  return;
}
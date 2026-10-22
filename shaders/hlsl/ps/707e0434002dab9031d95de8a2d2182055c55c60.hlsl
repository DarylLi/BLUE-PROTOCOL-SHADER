// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[180];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[56];
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
  r0.zw = v0.xy / cb1[r0.y+150].xy;
  r0.zw = cb1[r0.y+148].xy + r0.zw;
  r2.x = cb1[r0.y+150].w * 0.5;
  r1.xy = -cb1[r0.y+150].ww * float2(0.5,0.5) + r0.zw;
  r0.z = cb1[r0.y+148].w * r0.x;
  r1.w = 1;
  r0.w = dot(cb0[54].xyzw, r1.xyzw);
  r1.w = dot(cb0[55].xyzw, r1.xyzw);
  r2.y = cmp(-r0.w < 0);
  if (r2.y != 0) discard;
  r2.y = cmp(-r1.w < 0);
  if (r2.y != 0) discard;
  r0.w = saturate(cb0[33].x * -r0.w);
  r1.w = saturate(cb0[33].y * -r1.w);
  r3.w = r1.w * r0.w;
  r2.xyz = cb2[8].xyz * r2.xxx;
  r0.w = dot(abs(r2.xyz), float3(1,1,1));
  r1.xyz = r1.xyz + r0.www;
  if (cb0[35].x != 0) {
    r2.xyzw = cb0[37].xyzw * r1.yyyy;
    r2.xyzw = r1.xxxx * cb0[36].xyzw + r2.xyzw;
    r2.xyzw = r1.zzzz * cb0[38].xyzw + r2.xyzw;
    r2.xyzw = cb0[39].xyzw + r2.xyzw;
    r4.xyzw = r2.xyxy / r2.wwww;
    r2.xy = cmp(r4.zw >= float2(0,0));
    r5.xy = cmp(float2(1,1) >= r4.zw);
    r2.xy = r2.xy ? r5.xy : 0;
    r0.w = r2.y ? r2.x : 0;
    if (r0.w != 0) {
      r4.xyzw = r4.xyzw * cb0[40].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
      r2.xy = frac(r4.zw);
      r4.xyzw = floor(r4.xyzw);
      r5.xyzw = float4(0.5,1.5,0.5,0.5) + r4.zwzw;
      r5.xyzw = cb0[40].zwzw * r5.xyzw;
      r6.x = t3.SampleLevel(s3_s, r5.xy, 0).x;
      r4.xyzw = float4(1.5,1.5,1.5,0.5) + r4.xyzw;
      r4.xyzw = cb0[40].zwzw * r4.xyzw;
      r6.y = t3.SampleLevel(s3_s, r4.xy, 0).x;
      r6.z = t3.SampleLevel(s3_s, r4.zw, 0).x;
      r6.w = t3.SampleLevel(s3_s, r5.zw, 0).x;
      r0.w = r2.z * 40 + -1;
      r4.xyzw = saturate(r6.xyzw * float4(40,40,40,40) + -r0.wwww);
      r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r6.xyzw);
      r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
      r4.xyzw = r5.xyzw + r4.xyzw;
      r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
      r2.zw = r4.zy + -r4.wx;
      r2.xz = r2.xx * r2.zw + r4.wx;
      r0.w = r2.z + -r2.x;
      r0.w = r2.y * r0.w + r2.x;
    } else {
      r0.w = 1;
    }
  } else {
    r0.w = 1;
  }
  r2.xyzw = cb0[51].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[50].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb0[52].xyzw + r2.xyzw;
  r2.xyzw = cb0[53].xyzw + r2.xyzw;
  r2.xyz = r2.yzx / r2.www;
  r1.w = cb0[49].x * r2.z;
  r4.xy = r2.yx / r1.ww;
  r4.xy = r4.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r4.zw = cmp(float2(0,0) < cb0[49].zw);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r2.xyz * r1.www;
  r1.w = min(abs(r5.x), abs(r5.y));
  r2.z = max(abs(r5.x), abs(r5.y));
  r2.z = 1 / r2.z;
  r1.w = r2.z * r1.w;
  r2.z = r1.w * r1.w;
  r2.w = r2.z * 0.0208350997 + -0.0851330012;
  r2.w = r2.z * r2.w + 0.180141002;
  r2.w = r2.z * r2.w + -0.330299497;
  r2.z = r2.z * r2.w + 0.999866009;
  r2.w = r2.z * r1.w;
  r5.w = cmp(abs(r5.y) < abs(r5.x));
  r2.w = r2.w * -2 + 1.57079637;
  r2.w = r5.w ? r2.w : 0;
  r1.w = r1.w * r2.z + r2.w;
  r2.zw = cmp(r5.yz < -r5.yz);
  r2.z = r2.z ? -3.141593 : 0;
  r1.w = r2.z + r1.w;
  r2.z = min(r5.x, r5.y);
  r5.x = max(r5.x, r5.y);
  r2.z = cmp(r2.z < -r2.z);
  r5.x = cmp(r5.x >= -r5.x);
  r2.z = r2.z ? r5.x : 0;
  r1.w = r2.z ? -r1.w : r1.w;
  r1.w = 3.14159274 + r1.w;
  r5.x = 0.159154937 * r1.w;
  r1.w = 1 + -abs(r5.z);
  r1.w = sqrt(r1.w);
  r2.z = abs(r5.z) * -0.0187292993 + 0.0742610022;
  r2.z = r2.z * abs(r5.z) + -0.212114394;
  r2.z = r2.z * abs(r5.z) + 1.57072878;
  r5.z = r2.z * r1.w;
  r5.z = r5.z * -2 + 3.14159274;
  r2.w = r2.w ? r5.z : 0;
  r1.w = r2.z * r1.w + r2.w;
  r5.y = 0.318309873 * r1.w;
  r2.xy = r4.ww ? r5.xy : r2.yx;
  r2.xy = r4.zz ? r4.xy : r2.xy;
  r1.w = cb3[5].x * cb1[142].z;
  r4.x = cb3[5].w * r1.w;
  r4.y = cb3[6].x * r1.w;
  r2.zw = cb3[6].yz * r2.xy + r4.xy;
  r1.w = cb3[6].w * cb1[142].z;
  r4.xy = cb3[8].xx * r2.xy;
  r4.xy = r1.ww * cb3[7].zw + r4.xy;
  r1.w = t1.Sample(s1_s, r4.xy).x;
  r1.w = cb3[8].y * r1.w;
  r4.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[8].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r4.x ? 0 : r1.w;
  r2.zw = r2.zw + r1.ww;
  r2.z = t2.Sample(s2_s, r2.zw).x;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[8].w * r2.z;
  r2.z = exp2(r2.z);
  r2.z = cb3[9].x * r2.z;
  r2.z = r2.w ? 0 : r2.z;
  r2.w = cb3[9].y * cb1[142].z;
  r2.xy = cb3[10].zw * r2.xy;
  r2.xy = r2.ww * cb3[10].xy + r2.xy;
  r2.xy = r2.xy + r1.ww;
  r1.w = t2.Sample(s2_s, r2.xy).x;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[8].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb3[11].x * r1.w;
  r1.w = r2.x ? 0 : r1.w;
  r1.w = r2.z + r1.w;
  r2.x = cb3[11].y * r1.w;
  r2.yzw = -r1.www * cb3[11].yyy + cb3[4].xyz;
  r2.xyz = cb3[11].zzz * r2.yzw + r2.xxx;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = dot(r2.xyz, float3(0.333299994,0.333299994,0.333299994));
  r0.w = r1.w * r0.w;
  if (cb0[48].y != 0) {
    r2.xyzw = cb0[45].xyzw * r1.yyyy;
    r2.xyzw = r1.xxxx * cb0[44].xyzw + r2.xyzw;
    r2.xyzw = r1.zzzz * cb0[46].xyzw + r2.xyzw;
    r2.xyzw = cb0[47].xyzw + r2.xyzw;
    r2.xyz = r2.xyz / r2.www;
    r2.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.xyw = t4.SampleLevel(s4_s, r2.xy, 0).xyz;
    r1.w = saturate(1 + -r2.z);
    r1.w = r1.w * cb0[48].x + -r2.x;
    r1.w = max(0, r1.w);
    r1.w = r1.w * r2.y;
    r1.w = 1000 * r1.w;
    r1.w = min(r2.w, r1.w);
    r1.w = -1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = -1 + r1.w;
    r1.w = cb0[48].z * r1.w + 1;
    r0.w = r1.w * r0.w;
  }
  r1.w = cmp(asint(cb0[41].x) == 1);
  r2.x = cb1[149].w * 4 + 1;
  r0.xy = v0.xy;
  r2.y = cb1[149].w + cb1[149].w;
  r0.xyz = r0.xyz * r2.xxx + -r2.yyy;
  r0.xyz = float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + -abs(r0.xyz);
  r0.xyz = saturate(float3(10,10,10) * r0.xyz);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * r0.z;
  r0.y = -1 + r0.w;
  r0.x = r0.x * r0.y + 1;
  r0.w = r1.w ? r0.x : r0.w;
  r2.xyz = cb2[7].xyz * r0.www;
  r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  if (cb0[48].w != 0) {
    r1.xyz = -cb1[173].xyz + r1.xyz;
    r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r2.w = dot(cb2[8].xyz, cb2[8].xyz);
    r4.x = dot(cb2[8].xyz, r1.xyz);
    r4.x = r4.x + r4.x;
    r4.y = cb1[179].z * cb1[179].z;
    r4.z = -cb1[179].z * cb1[179].z + r1.w;
    r4.w = r4.z * r2.w;
    r4.w = 4 * r4.w;
    r4.w = r4.x * r4.x + -r4.w;
    r5.x = cmp(r4.w >= 0);
    r4.w = sqrt(r4.w);
    r4.xw = r4.ww * float2(-1,1) + -r4.xx;
    r2.w = r2.w + r2.w;
    r4.xw = r4.xw / r2.ww;
    r4.xw = r5.xx ? r4.xw : float2(-1,-1);
    r4.xw = cmp(float2(0,0) < r4.xw);
    r2.w = (int)r4.w | (int)r4.x;
    if (r2.w == 0) {
      r2.w = sqrt(r1.w);
      r1.xyz = r1.xyz / r2.www;
      r1.x = dot(cb2[8].xyz, r1.xyz);
      r1.y = cb1[179].w * cb1[179].w;
      r1.z = cb1[179].w * cb1[179].w + -r4.y;
      r1.z = max(0, r1.z);
      r4.x = max(0, r4.z);
      r4.x = sqrt(r4.x);
      r4.y = r1.x * r1.x + -1;
      r1.y = r1.w * r4.y + r1.y;
      r1.yz = sqrt(r1.yz);
      r1.x = -r2.w * r1.x + r1.y;
      r1.x = max(0, r1.x);
      r1.y = cb1[179].w + -r2.w;
      r1.w = r4.x + r1.z;
      r1.x = r1.x + -r1.y;
      r1.y = r1.w + -r1.y;
      r1.x = r1.x / r1.y;
      r1.y = r4.x / r1.z;
      r1.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
    } else {
      r1.xyz = float3(0,0,0);
    }
    r2.xyz = r2.xyz * r1.xyz;
  }
  r3.xyz = float3(-0.488602996,0.488602996,-0.488602996) * cb2[8].yzx;
  r1.xyzw = r3.wxyz * r2.xxxx;
  r4.xyzw = r3.wxyz * r2.yyyy;
  r2.xyzw = r3.wxyz * r2.zzzz;
  r5.x = r1.y;
  r5.y = r4.y;
  r5.z = r2.y;
  r5.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.x = r1.z;
  r6.y = r4.z;
  r6.z = r2.z;
  r5.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.x = r1.w;
  r6.y = r4.w;
  r6.z = r2.w;
  r5.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r1.x;
  r0.y = r4.x;
  r0.z = r2.x;
  r3.x = 0.282094985;
  o0.xyzw = r3.xxxw * r0.xyzw;
  r5.w = 0;
  o1.xyzw = r5.xyzw * r3.wwww;
  return;
}
// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[41];
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
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.z);
  r3.xyz = r1.xyz * r0.www;
  r0.z = sqrt(r0.z);
  r0.w = cb0[27].w * r0.z;
  r0.w = cmp(r0.w < 1);
  if (r0.w != 0) {
    r1.w = saturate(dot(r2.xyz, r3.xyz));
    r1.w = 1 + -r1.w;
    r2.w = max(abs(r1.y), abs(r1.z));
    r2.w = max(r2.w, abs(r1.x));
    r4.xyz = cmp(r1.xyz == abs(r1.xyz));
    r5.xy = cmp(abs(r1.xy) == r2.ww);
    r4.xyz = r4.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
    r2.w = r5.y ? r4.y : r4.z;
    r2.w = r5.x ? r4.x : r2.w;
    r2.w = (uint)r2.w << 2;
    r4.xy = cb0[r2.w+3].zw * -r1.yy;
    r4.xy = -r1.xx * cb0[r2.w+2].zw + r4.xy;
    r4.xy = -r1.zz * cb0[r2.w+4].zw + r4.xy;
    r4.xy = cb0[r2.w+5].zw + r4.xy;
    r2.w = r4.x / r4.y;
    r1.w = r1.w * cb0[39].y + cb0[39].x;
    r1.w = -r1.w / r4.y;
    r1.w = r2.w + r1.w;
    r1.w = t4.SampleCmpLevelZero(s2_s, r1.xyz, r1.w).x;
  } else {
    r1.w = 1;
  }
  r1.w = -0.5 + r1.w;
  r1.w = saturate(r1.w * cb0[26].z + 0.5);
  r1.w = r1.w * r1.w + -1;
  r1.w = cb0[26].y * r1.w + 1;
  r1.w = sqrt(r1.w);
  r2.w = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r2.w = 255 * r2.w;
  r2.w = round(r2.w);
  r2.w = (uint)r2.w;
  r2.w = (int)r2.w & 15;
  r2.w = cmp((int)r2.w == 5);
  if (r2.w != 0) {
    if (r0.w != 0) {
      r0.x = t3.SampleLevel(s0_s, r0.xy, 0).x;
      r0.x = r0.x * 255 + 0.5;
      r4.y = (uint)r0.x;
      r4.xzw = float3(3,0,0);
      r0.xy = t5.Load(r4.xyz).xy;
      r0.y = 0.5 * r0.y;
      r4.xyz = -r2.xyz * r0.yyy + -r1.xyz;
      r0.w = saturate(dot(-r3.xyz, r2.xyz));
      r1.xyz = r1.xyz / r0.zzz;
      r2.xyz = float3(0,0,1) * r1.yzx;
      r2.xyz = r1.xyz * float3(0,1,0) + -r2.xyz;
      r0.z = dot(r2.yz, r2.yz);
      r0.z = rsqrt(r0.z);
      r2.xyz = r2.xyz * r0.zzz;
      r3.xyz = r2.xyz * r1.yzx;
      r3.xyz = r2.zxy * r1.zxy + -r3.xyz;
      r2.xy = cb0[26].xx * r2.yz;
      r3.xyz = cb0[26].xxx * r3.xyz;
      r0.z = max(abs(r1.y), abs(r1.z));
      r0.z = max(abs(r1.x), r0.z);
      r5.xyz = cmp(r1.xyz == abs(r1.xyz));
      r6.xy = cmp(abs(r1.xy) == r0.zz);
      r5.xyz = r5.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
      r0.z = r6.y ? r5.y : r5.z;
      r0.z = r6.x ? r5.x : r0.z;
      r0.z = (uint)r0.z << 2;
      r4.yw = cb0[r0.z+3].zw * r4.yy;
      r4.xy = r4.xx * cb0[r0.z+2].zw + r4.yw;
      r4.xy = r4.zz * cb0[r0.z+4].zw + r4.xy;
      r4.xy = cb0[r0.z+5].zw + r4.xy;
      r0.z = r4.x / r4.y;
      r2.z = 10 / cb0[27].w;
      r0.x = r2.z * r0.x;
      r0.z = r0.z * cb0[40].x + -cb0[40].y;
      r0.z = 1 / r0.z;
      r0.z = cb0[27].w * r0.z;
      r4.xyz = r3.xyz * float3(2.5,2.5,2.5) + r1.xyz;
      r2.z = t4.SampleLevel(s1_s, r4.xyz, 0).x;
      r2.z = r2.z * cb0[40].x + -cb0[40].y;
      r2.z = 1 / r2.z;
      r2.z = -r2.z * cb0[27].w + r0.z;
      r3.w = r2.z * r0.x;
      r4.x = cmp(0 < r3.w);
      r2.z = r2.z * r0.x + r0.y;
      r3.w = r3.w * r0.w + r0.y;
      r3.w = max(0, r3.w);
      r2.z = r4.x ? r2.z : r3.w;
      r2.z = max(0.150000006, abs(r2.z));
      r2.z = min(5, r2.z);
      r2.z = 0.25 + r2.z;
      r4.xy = float2(2.37764096,2.37764096) * r2.xy;
      r4.z = 0;
      r4.xyz = r4.xyz + r1.xyz;
      r4.xyz = r3.xyz * float3(0.772542,0.772542,0.772542) + r4.xyz;
      r3.w = t4.SampleLevel(s1_s, r4.xyz, 0).x;
      r3.w = r3.w * cb0[40].x + -cb0[40].y;
      r3.w = 1 / r3.w;
      r3.w = -r3.w * cb0[27].w + r0.z;
      r4.x = r3.w * r0.x;
      r4.y = cmp(0 < r4.x);
      r3.w = r3.w * r0.x + r0.y;
      r4.x = r4.x * r0.w + r0.y;
      r4.x = max(0, r4.x);
      r3.w = r4.y ? r3.w : r4.x;
      r3.w = max(0.150000006, abs(r3.w));
      r3.w = min(5, r3.w);
      r2.z = r3.w + r2.z;
      r2.z = 0.25 + r2.z;
      r4.xy = float2(1.46946299,1.46946299) * r2.xy;
      r4.z = 0;
      r4.xyz = r4.xyz + r1.xyz;
      r4.xyz = r3.xyz * float3(-2.02254295,-2.02254295,-2.02254295) + r4.xyz;
      r3.w = t4.SampleLevel(s1_s, r4.xyz, 0).x;
      r3.w = r3.w * cb0[40].x + -cb0[40].y;
      r3.w = 1 / r3.w;
      r3.w = -r3.w * cb0[27].w + r0.z;
      r4.x = r3.w * r0.x;
      r4.y = cmp(0 < r4.x);
      r3.w = r3.w * r0.x + r0.y;
      r4.x = r4.x * r0.w + r0.y;
      r4.x = max(0, r4.x);
      r3.w = r4.y ? r3.w : r4.x;
      r3.w = max(0.150000006, abs(r3.w));
      r3.w = min(5, r3.w);
      r2.z = r3.w + r2.z;
      r2.z = 0.25 + r2.z;
      r4.xy = float2(-1.46946299,-1.46946299) * r2.xy;
      r4.z = -0;
      r4.xyz = r4.xyz + r1.xyz;
      r4.xyz = r3.xyz * float3(-2.022542,-2.022542,-2.022542) + r4.xyz;
      r3.w = t4.SampleLevel(s1_s, r4.xyz, 0).x;
      r3.w = r3.w * cb0[40].x + -cb0[40].y;
      r3.w = 1 / r3.w;
      r3.w = -r3.w * cb0[27].w + r0.z;
      r4.x = r3.w * r0.x;
      r4.y = cmp(0 < r4.x);
      r3.w = r3.w * r0.x + r0.y;
      r4.x = r4.x * r0.w + r0.y;
      r4.x = max(0, r4.x);
      r3.w = r4.y ? r3.w : r4.x;
      r3.w = max(0.150000006, abs(r3.w));
      r3.w = min(5, r3.w);
      r2.z = r3.w + r2.z;
      r2.z = 0.25 + r2.z;
      r4.xy = float2(-2.37764096,-2.37764096) * r2.xy;
      r4.z = -0;
      r1.xyz = r4.xyz + r1.xyz;
      r1.xyz = r3.xyz * float3(0.772543013,0.772543013,0.772543013) + r1.xyz;
      r1.x = t4.SampleLevel(s1_s, r1.xyz, 0).x;
      r1.x = r1.x * cb0[40].x + -cb0[40].y;
      r1.x = 1 / r1.x;
      r0.z = -r1.x * cb0[27].w + r0.z;
      r1.x = r0.z * r0.x;
      r1.y = cmp(0 < r1.x);
      r0.x = r0.z * r0.x + r0.y;
      r0.y = r1.x * r0.w + r0.y;
      r0.y = max(0, r0.y);
      r0.x = r1.y ? r0.x : r0.y;
      r0.x = max(0.150000006, abs(r0.x));
      r0.x = min(5, r0.x);
      r0.x = r0.x + r2.z;
      r0.x = 0.25 + r0.x;
      r0.x = 0.200000003 * r0.x;
    } else {
      r0.x = 1;
    }
    r0.x = -r0.x * 0.200000003 + 1;
  } else {
    r0.x = 1;
  }
  r0.x = sqrt(r0.x);
  o0.w = r2.w ? r0.x : r1.w;
  o0.xy = float2(1,1);
  o0.z = r1.w;
  return;
}
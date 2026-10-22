// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[61];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r1.w = 10 * r0.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.99000001 + 0.00999999978;
  r3.xy = -cb0[129].xy + v4.xy;
  r3.zw = cb0[130].zw * r3.xy;
  r4.xyz = cb4[2].yyy * cb0[5].xyw;
  r4.xyz = cb4[2].xxx * cb0[4].xyw + r4.xyz;
  r4.xyz = cb4[2].zzz * cb0[6].xyw + r4.xyz;
  r4.xyz = cb0[7].xyw + r4.xyz;
  r4.xy = r4.xy / r4.zz;
  r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r3.xy = r3.xy * cb0[130].zw + -r4.xy;
  r4.xyz = -cb4[2].xyz + cb0[67].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb4[34].y;
  r2.w = max(cb4[34].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb4[34].z + r2.w;
  r2.w = saturate(cb4[35].x * r2.w);
  r4.x = cb4[35].y + -cb4[35].z;
  r4.x = r2.w * r4.x + cb4[35].z;
  r4.y = 0.00100000005 * r4.x;
  r3.x = r4.x * 0.000500000024 + r3.x;
  r4.x = 1 / r4.y;
  r5.x = r4.x * r3.x;
  r3.x = cb0[130].x / cb0[130].y;
  r3.x = r4.y * r3.x;
  r3.y = r3.x * 0.5 + r3.y;
  r3.x = 1 / r3.x;
  r5.y = r3.y * r3.x;
  r3.xy = float2(-0.5,-0.5) + r5.xy;
  r3.x = dot(r3.xy, r3.xy);
  r3.x = sqrt(r3.x);
  r3.x = -r3.x * 2 + 1;
  r3.y = 2.33299994 * r3.x;
  r3.y = r3.y * r3.y;
  r3.y = 1.44269514 * r3.y;
  r3.y = exp2(r3.y);
  r3.y = 1 / r3.y;
  r4.x = cmp(9.99999975e-006 < abs(r3.x));
  r3.x = cmp(r3.x >= 0);
  r3.y = 1 + -r3.y;
  r3.x = r3.x ? r3.y : 0;
  r3.x = r3.x ? r4.x : 0;
  r3.y = r3.x * 5 + -5;
  r4.xy = saturate(cb4[38].yw + r3.yy);
  r3.y = 1 + -r4.x;
  r3.y = r3.y * r4.y + -r3.x;
  r3.x = r2.w * r3.y + r3.x;
  r4.xyz = -cb4[6].xyz + cb4[5].xyz;
  r4.xyz = r2.www * r4.xyz + cb4[6].xyz;
  r4.xyz = r4.xyz * r3.xxx;
  r4.xyz = r4.xyz * r1.www;
  r0.w = cb4[39].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb4[39].z + cb4[39].y;
  r3.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v2.yy;
  r5.xy = r3.xy + r3.xy;
  r5.z = 2 * v2.x;
  r1.w = t1.SampleBias(s1_s, r5.zx, cb0[143].y).x;
  r3.xy = v2.xy * float2(2,2) + float2(-1,-1);
  r2.w = min(abs(r3.y), abs(r3.x));
  r4.w = max(abs(r3.y), abs(r3.x));
  r4.w = 1 / r4.w;
  r2.w = r4.w * r2.w;
  r4.w = r2.w * r2.w;
  r5.x = r4.w * 0.0208350997 + -0.0851330012;
  r5.x = r4.w * r5.x + 0.180141002;
  r5.x = r4.w * r5.x + -0.330299497;
  r4.w = r4.w * r5.x + 0.999866009;
  r5.x = r4.w * r2.w;
  r5.w = cmp(abs(r3.x) < abs(r3.y));
  r5.x = r5.x * -2 + 1.57079637;
  r5.x = r5.w ? r5.x : 0;
  r2.w = r2.w * r4.w + r5.x;
  r4.w = cmp(r3.x < -r3.x);
  r4.w = r4.w ? -3.141593 : 0;
  r2.w = r4.w + r2.w;
  r4.w = min(r3.y, r3.x);
  r5.x = max(r3.y, r3.x);
  r4.w = cmp(r4.w < -r4.w);
  r5.x = cmp(r5.x >= -r5.x);
  r4.w = r4.w ? r5.x : 0;
  r2.w = r4.w ? -r2.w : r2.w;
  r2.w = 0.159154952 * r2.w;
  r6.x = frac(r2.w);
  r3.xy = r3.xy * r3.xy;
  r2.w = r3.x + r3.y;
  r2.w = sqrt(r2.w);
  r6.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r2.ww;
  r3.xy = t2.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r3.xy = cb4[40].xx * r3.xy;
  r3.xy = r3.xy * float2(2,2) + v2.xy;
  r3.x = t1.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r7.xy = float2(0.5,0.5) * r6.xz;
  r5.xw = t2.SampleBias(s2_s, r7.xy, cb0[143].y).xy;
  r5.xw = float2(-0.5,-0.5) + r5.xw;
  r5.xw = cb4[40].xx * r5.xw;
  r5.xw = r5.xw * float2(2,2) + v2.xy;
  r3.y = t1.SampleBias(s1_s, r5.xw, cb0[143].y).x;
  r3.x = r3.x * r3.y;
  r3.y = r3.x * r1.w;
  r3.y = saturate(r3.y + r3.y);
  r4.w = cmp(0 >= r3.y);
  r3.y = log2(r3.y);
  r5.x = cb4[40].y * r3.y;
  r5.x = exp2(r5.x);
  r5.x = 0.5 * r5.x;
  r5.x = r4.w ? 0 : r5.x;
  r1.w = r1.w * r3.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r3.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r5.w = cb4[40].y * r1.w;
  r5.w = exp2(r5.w);
  r5.w = 1 + -r5.w;
  r5.w = r3.x ? 1 : r5.w;
  r8.x = 500 * r5.w;
  r5.w = r5.w * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r5.w = r5.w + -r5.x;
  r5.x = r8.x * r5.w + r5.x;
  r0.x = dot(-cb0[18].xyz, r0.xyz);
  r0.x = 1 + -r0.x;
  r0.y = r5.x * r0.x;
  r0.y = r0.y * cb4[40].w + -cb4[40].w;
  r0.y = saturate(cb4[41].z + r0.y);
  r0.z = t2.SampleBias(s2_s, r3.zw, cb0[143].y).x;
  r0.z = -r0.z * 0.5 + 1;
  r0.z = r0.z * r0.x + cb4[50].x;
  r0.z = -1 + r0.z;
  r0.z = saturate(ceil(r0.z));
  r8.xyz = cb4[9].xyz * r0.zzz;
  r9.xyz = r0.yyy * cb4[8].xyz + r8.xyz;
  r9.xyz = cb4[42].xxx * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb4[41].www * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r9.xyz = t3.SampleBias(s3_s, v2.xy, cb0[143].y).xyz;
  r9.xyz = cb4[11].xyz * r9.xyz;
  r10.xyz = cb3[6].xyz * r9.xyz;
  r0.y = t2.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r0.y = -1 + r0.y;
  r3.zw = cb4[51].xy + r0.yy;
  r3.zw = saturate(ceil(r3.zw));
  r3.z = 1 + -r3.z;
  r3.z = r3.z * r3.w;
  r9.xyz = -r9.xyz * cb3[6].xyz + cb4[13].xyz;
  r9.xyz = r3.zzz * r9.xyz + r10.xyz;
  r3.zw = cb4[52].yz + r0.yy;
  r3.zw = saturate(ceil(r3.zw));
  r0.y = 1 + -r3.z;
  r0.y = r0.y * r3.w;
  r9.xyz = r0.yyy * -r9.xyz + r9.xyz;
  r8.xyz = r9.xyz + r8.xyz;
  r0.y = t1.SampleBias(s1_s, r5.zy, cb0[143].y).x;
  r3.zw = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r6.w = r3.z;
  r5.xy = t2.SampleBias(s2_s, r6.xw, cb0[143].y).xy;
  r5.xy = float2(-0.5,-0.5) + r5.xy;
  r5.xy = cb4[40].xx * r5.xy;
  r5.xy = r5.xy * float2(2,2) + v2.xy;
  r2.w = t1.SampleBias(s1_s, r5.xy, cb0[143].y).x;
  r7.z = 0.5 * r3.w;
  r3.zw = t2.SampleBias(s2_s, r7.xz, cb0[143].y).xy;
  r3.zw = float2(-0.5,-0.5) + r3.zw;
  r3.zw = cb4[40].xx * r3.zw;
  r3.zw = r3.zw * float2(2,2) + v2.xy;
  r3.z = t1.SampleBias(s1_s, r3.zw, cb0[143].y).x;
  r2.w = r3.z * r2.w;
  r3.z = r2.w * r0.y;
  r3.z = saturate(r3.z + r3.z);
  r3.w = cmp(0 >= r3.z);
  r3.z = log2(r3.z);
  r5.x = cb4[52].w * r3.z;
  r5.x = exp2(r5.x);
  r5.x = 0.5 * r5.x;
  r5.x = r3.w ? 0 : r5.x;
  r0.y = r0.y * r2.w + -0.5;
  r0.y = saturate(r0.y + r0.y);
  r0.y = 1 + -r0.y;
  r2.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r5.y = cb4[52].w * r0.y;
  r5.y = exp2(r5.y);
  r5.y = 1 + -r5.y;
  r5.y = r2.w ? 1 : r5.y;
  r6.x = 500 * r5.y;
  r5.y = r5.y * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r5.y = r5.y + -r5.x;
  r5.x = r6.x * r5.y + r5.x;
  r5.x = r5.x * r0.x;
  r5.x = r5.x * cb4[53].y + -cb4[53].y;
  r5.x = saturate(cb4[54].x + r5.x);
  r5.yzw = cb4[18].xyz * r0.zzz;
  r6.xyz = r5.xxx * cb4[15].xyz + r5.yzw;
  r6.xyz = cb4[42].zzz * r6.xyz;
  r5.xyz = cb4[42].yyy * r5.yzw;
  r5.xyz = max(r6.xyz, r5.xyz);
  r5.xyz = r8.xyz + r5.xyz;
  r5.w = cb4[54].y * r3.y;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r4.w ? 0 : r5.w;
  r6.x = cb4[54].y * r1.w;
  r6.x = exp2(r6.x);
  r6.x = 1 + -r6.x;
  r6.x = r3.x ? 1 : r6.x;
  r7.x = 500 * r6.x;
  r6.x = r6.x * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r6.x = r6.x + -r5.w;
  r5.w = r7.x * r6.x + r5.w;
  r5.w = r5.w * r0.x;
  r5.w = r5.w * cb4[54].w + -cb4[54].w;
  r5.w = saturate(cb4[55].z + r5.w);
  r6.xyz = cb4[21].xyz * r0.zzz;
  r7.xyz = r5.www * cb4[20].xyz + r6.xyz;
  r7.xyz = cb4[43].zzz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r6.xyz = cb4[43].yyy * r6.xyz;
  r6.xyz = max(r7.xyz, r6.xyz);
  r5.xyz = r6.xyz + r5.xyz;
  r5.w = cb4[55].w * r3.y;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r4.w ? 0 : r5.w;
  r6.x = cb4[55].w * r1.w;
  r6.x = exp2(r6.x);
  r6.x = 1 + -r6.x;
  r6.x = r3.x ? 1 : r6.x;
  r7.x = 500 * r6.x;
  r6.x = r6.x * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r6.x = r6.x + -r5.w;
  r5.w = r7.x * r6.x + r5.w;
  r5.w = r5.w * r0.x;
  r5.w = r5.w * cb4[56].y + -cb4[56].y;
  r5.w = saturate(cb4[57].x + r5.w);
  r6.xyz = cb4[24].xyz * r0.zzz;
  r7.xyz = r5.www * cb4[23].xyz + r6.xyz;
  r7.xyz = cb4[44].zzz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r6.xyz = cb4[44].yyy * r6.xyz;
  r6.xyz = max(r7.xyz, r6.xyz);
  r5.xyz = r6.xyz + r5.xyz;
  r3.y = cb4[57].y * r3.y;
  r3.y = exp2(r3.y);
  r3.y = 0.5 * r3.y;
  r3.y = r4.w ? 0 : r3.y;
  r1.w = cb4[57].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r3.x ? 1 : r1.w;
  r3.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r3.x = saturate(r3.x);
  r1.w = r1.w + -r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = r1.w * r0.x;
  r1.w = r1.w * cb4[57].w + -cb4[57].w;
  r1.w = saturate(cb4[58].z + r1.w);
  r6.xyz = cb4[27].xyz * r0.zzz;
  r7.xyz = r1.www * cb4[26].xyz + r6.xyz;
  r7.xyz = cb4[45].zzz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r6.xyz = cb4[45].yyy * r6.xyz;
  r6.xyz = max(r7.xyz, r6.xyz);
  r5.xyz = r6.xyz + r5.xyz;
  r0.w = cb4[58].w * r3.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r3.w ? 0 : r0.w;
  r0.y = cb4[58].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = r2.w ? 1 : r0.y;
  r3.x = 500 * r0.y;
  r0.y = r0.y * 0.5 + 0.5;
  r3.x = saturate(r3.x);
  r0.y = r0.y + -r0.w;
  r0.y = r3.x * r0.y + r0.w;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * cb4[59].y + -cb4[59].y;
  r0.x = saturate(cb4[60].x + r0.x);
  r3.xyz = cb4[32].xyz * r0.zzz;
  r0.xyw = r0.xxx * cb4[29].xyz + r3.xyz;
  r0.xyw = cb4[46].zzz * r0.xyw;
  r3.xyz = cb4[46].yyy * r3.xyz;
  r0.xyw = max(r3.xyz, r0.xyw);
  r0.xyw = r5.xyz + r0.xyw;
  r3.xyz = r0.zzz * float3(0,0.166666999,0) + -r0.xyw;
  r0.xyw = cb4[47].yyy * r3.xyz + r0.xyw;
  r0.xyw = cb4[47].www * -r0.xyw + r0.xyw;
  r3.xyz = r0.zzz * float3(3,3,3) + -r0.xyw;
  r0.xyw = cb4[48].yyy * r3.xyz + r0.xyw;
  r3.xyz = r0.zzz * float3(7,6.30000019,0) + -r0.xyw;
  r0.xyw = cb4[48].www * r3.xyz + r0.xyw;
  r3.xyz = r0.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r3.xyz = r3.xyz + -r0.xyw;
  r0.xyz = cb4[49].yyy * r3.xyz + r0.xyw;
  r0.xyz = r4.xyz * cb4[37].xxx + r0.xyz;
  r3.xyz = cb4[33].xyz + -r0.xyz;
  r0.xyz = cb4[60].yyy * r3.xyz + r0.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r4.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r4.z = cb0[208].z * r0.w;
    r3.xyzw = t0.SampleLevel(s0_s, r4.xyz, 0).xyzw;
    r4.x = v3.w * r3.w;
    r3.xyz = v3.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v3.xyz;
    r4.x = v3.w;
  }
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.yzw = -cb1[5].xyz + r2.xyz;
    r5.xyz = float3(1,1,1) + cb1[19].xyz;
    r4.yzw = cmp(r5.xyz < abs(r4.yzw));
    r0.w = (int)r4.z | (int)r4.y;
    r0.w = (int)r4.w | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r2.xyz : r0.xyz;
  }
  r0.xyz = r0.xyz * r4.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}
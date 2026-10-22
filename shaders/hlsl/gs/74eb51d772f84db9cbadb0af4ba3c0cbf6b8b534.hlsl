// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


[maxvertexcount(18)]
void main(
  inout TriangleStream<float> m0,
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0,
  out uint o2 : TEXCOORD1,
  out uint p2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_siv v[3][1].xyzw, position
// Needs manual fix for instruction:
// unknown dcl_: dcl_inputprimitive triangle 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction:
// unknown dcl_: dcl_outputtopology trianglestrip 
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 0;
  p2.x = 0;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 0;
  p2.x = 0;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 0;
  p2.x = 0;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 1;
  p2.x = 1;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 1;
  p2.x = 1;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 1;
  p2.x = 1;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 2;
  p2.x = 2;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 2;
  p2.x = 2;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 2;
  p2.x = 2;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 3;
  p2.x = 3;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 3;
  p2.x = 3;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 3;
  p2.x = 3;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 4;
  p2.x = 4;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 4;
  p2.x = 4;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 4;
  p2.x = 4;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  o0.xy = v[0][0].xy;
  o1.xyzw = v[0][1].xyzw;
  o2.x = 5;
  p2.x = 5;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[1][0].xy;
  o1.xyzw = v[1][1].xyzw;
  o2.x = 5;
  p2.x = 5;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
  o0.xy = v[2][0].xy;
  o1.xyzw = v[2][1].xyzw;
  o2.x = 5;
  p2.x = 5;
// Needs manual fix for instruction, maybe. 
//emit_stream m0
m0.Append(0);
// Needs manual fix for instruction, maybe. 
//cut_stream m0
m0.RestartStrip();
  return;
}
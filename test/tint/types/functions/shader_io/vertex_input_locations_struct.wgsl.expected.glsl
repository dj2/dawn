#version 310 es


struct VertexInputs {
  int loc0;
  uint loc1;
  float loc2;
  vec4 loc3;
};

layout(location = 0) in int main_loc0_Input;
layout(location = 1) in uint main_loc1_Input;
layout(location = 2) in float main_loc2_Input;
layout(location = 3) in vec4 main_loc3_Input;
vec4 main_inner(VertexInputs inputs) {
  int i = inputs.loc0;
  uint u = inputs.loc1;
  float f = inputs.loc2;
  vec4 v = inputs.loc3;
  return vec4(0.0f);
}
void main() {
  gl_Position = main_inner(VertexInputs(main_loc0_Input, main_loc1_Input, main_loc2_Input, main_loc3_Input));
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  gl_PointSize = 1.0f;
}

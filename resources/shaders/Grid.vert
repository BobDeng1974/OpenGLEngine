#version 400

uniform mat4 mvp;

uniform float time;

layout (location = 0) in vec3 vCoord;
layout (location = 1) in vec2 uvCoord;

out vec2 uv;

void main()
{
    gl_Position = mvp * vec4(vCoord, 1.0);
    uv = uvCoord;
}
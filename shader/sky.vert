#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;
out vec2 TexCoord;

uniform mat4 model_transform;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 camera_position;

void main()
{
	gl_Position = projection * view * model_transform * camera_position * vec4(aPos, 1.0);
    TexCoord = aTexCoord * 5;
}

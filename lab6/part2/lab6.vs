#version 330 core

uniform mat4 modelView;
uniform mat4 projection;
in vec4 vPosition;
in vec3 vNormal;
out vec3 texCoord;
out vec3 normal;
out vec3 position;

void main(){
	gl_Position = projection * modelView  * vPosition;
	texCoord = vPosition.xyz;
	normal = vNormal;
	position = vPosition.xyz;
}
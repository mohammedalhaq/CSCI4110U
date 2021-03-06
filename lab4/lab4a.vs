#version 330 core

uniform mat4 modelView;
uniform mat4 projection;
in vec3 vNormal;
in vec4 vPosition;
out vec3 normal;
out vec3 position;

void main(){
	
	gl_Position = projection * modelView  * vPosition;
	position = vPosition.xyz;
	normal = vNormal;

}
#version 120

#define CONDITION isAlive //[isAlive isBurning isChild isGlowing isHurt isInLava isInWater isInvisible isOnGround isRidden isRiding isSneaking isSprinting isWet isNightVision isBlindness]

varying vec2 texCoord;

uniform float isAlive;
uniform float isBurning;
uniform float isChild;
uniform float isGlowing;
uniform float isHurt;
uniform float isInLava;
uniform float isInWater;
uniform float isInvisible;
uniform float isOnGround;
uniform float isRidden;
uniform float isRiding;
uniform float isSneaking;
uniform float isSprinting;
uniform float isWet;
uniform float isNightVision;
uniform float isBlindness;

uniform sampler2D colortex0;

void main(){
	vec3 color = texture2D(colortex0, texCoord).rgb;
	
	if(CONDITION > 0.5 && texCoord.x > 0.4 && texCoord.x < 0.6 && texCoord.y > 0.95) color = vec3(1.0);
	
	gl_FragColor = vec4(color, 1.0);
}
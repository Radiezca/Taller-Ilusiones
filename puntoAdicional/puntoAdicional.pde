/*
 
 Ilusión opcional: cascada  
 Author: Michael Bach, October 2, 1997.
 Implementado desde cero, pero no me funciono.
 Ilusión psicológica, aftereffect, waterfall

 */

boolean active = true;
float grosorLineas= 20;
//float paso = 0.916666;
//float paso = -height/2+grosorLineas;
float radioExternoCoordenadaY;
float radioE;
int velocidad = 1;
float radioCentro;
color colorTemp;
color color3 = 0;
color color4 = 255;
PImage imagenBuda;


void setup() {
  size(600, 600);  
  background(125);  
  frameRate(3);
  imagenBuda = loadImage("BuddhaKamakura.jpg");
}

void draw() {  
  cascada();
}

void keyPressed() {
  if (key == 'a')
    active = !active;  
}

void cascada() {

  strokeWeight(grosorLineas);
  //radioExternoCoordenadaY = -height/2+grosorLineas;
  radioE = height/2-grosorLineas- radioCentro;
  float paso = 1;
  translate(width/2,height/2);

	for (int j = 0; j < 13; ++j) {		
		for (int i = 0; i < 6; ++i) {
			if(j%2==0){
				parLineas(j,paso,color3,color4);
			}			
			else {
				parLineas(j,paso,color4,color3);
			}
		}	
	}
  
  //Circulo y cruz media.
  radioCentro  = width/8.2; 
  fill(0,0,255);
  strokeWeight(1);
  ellipse(0, 0, radioCentro, radioCentro);
  
  stroke(255,0,0);
  strokeWeight(3);
  line(0, -height/25,0,height/25);
  line(-width/25, 0,width/25,0);

  velocidad +=1;
  if(velocidad== radioE){
  	velocidad=1;
  } 

  colorTemp = color3;
  color3 = color4;
  color4 = colorTemp; 

  if (!active) {
  	imageMode(CENTER);
  	image(imagenBuda,0,0,width,height);

  }
}

void parLineas(int j, float pasoPar, color color1, color color2){
  stroke(color1);
  //point(0,0);

  dibujarLinea(j);
  //line(0,-height/2+grosorLineas+grosorLineas*j,width/4.4*pow(pasoPar,j),-height/2+grosorLineas*4.4+grosorLineas*j);
  //line(width/2,grosorLineas,width/2+width/6,grosorLineas*3.5);  

  rotate(PI/6);
  stroke(color2);  
  dibujarLinea(j);
  //line(0,-height/2+grosorLineas+grosorLineas*j,width/4.4*pow(pasoPar,j),-height/2+grosorLineas*4.4+grosorLineas*j);
  //line(width/2,grosorLineas,width/2+width/6,grosorLineas*3.5);

  rotate(PI/6);
  //translate(-width/2,-height/2);
 
}

void dibujarLinea(int j){
	line(0,-height/2+grosorLineas+grosorLineas*j+velocidad%radioE,
		width/4.8-9.7*j,-height/2+grosorLineas*2.6+grosorLineas*j-2.6*j+velocidad%radioE);
	//line(0,radioExternoCoordenadaY+grosorLineas*j,width/4.8-9.7*j,radioExternoCoordenadaY*2.6+grosorLineas*j-2.6*j);
}
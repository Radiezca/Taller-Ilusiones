//Ilusión implementada desde cero usando como base una imagen de internet. Los bloques se ven de diferentes tamano pero son igual de grandes. 
public void PseudoPonzon(){
  background(255);
  smooth();
  strokeWeight(3);
  
  //piso con baldosas.
  // punto de interseccion 1.05*width,0.525*height
  line(0.45*width, height, width,0.6*height);
  line(0.38*width, height, width,0.6*height);
  line(0, 0.9*height, 1.05*width,0.525*height);
  
  float pedienteIzq= ((1-0.525)-(1-0.9))/1;
  float pedienteDer= (1-0.38)/(1-0.6);  
  float pasoAlto= 0.0625*height;
  float ajusteHorizontal= 7.5;
  
  //lineas divisorias baldosas
  for(int i=0;i<11;i++){
    line(0.075*width+i*pasoAlto*pedienteIzq*ajusteHorizontal, 0.875*height-i*pasoAlto, 
      0.57*width+i*pasoAlto*pedienteDer,0.875*height-i*pasoAlto);
    pasoAlto*=0.9375;
    //println(0.57*width+i*pasoAlto*pedienteDer);
  }
  
  //lineas cruzadas atras de bloques
  line(0,0.71*height,1.05*width,0.525*height);
  line(0,0.64*height,1.05*width,0.525*height);
  
  //lineas perspectiva superior.
  float pasoAltoPers= 0.25*height;
  
  for(int i=0; i<10;i++){
    line(0,0.34*height-i*pasoAltoPers,1.05*width,0.525*height);
    pasoAltoPers*=1.15;
  }
  
  //bloques
  float movXBloq=0.33*width;
  float movYBloq=0.115*height;
  
  for(int i =0; i<3;i++){
    rect(0.09*width+movXBloq*i,0.6*height-movYBloq*i,0.05*width,0.275*height);
    quad(0.14*width+movXBloq*i,0.6*height-movYBloq*i,0.16*width+movXBloq*i,0.58*height-movYBloq*i,0.16*width+movXBloq*i,
      0.855*height-movYBloq*i,0.14*width+movXBloq*i,0.875*height-movYBloq*i);
    quad(0.09*width+movXBloq*i,0.6*height-movYBloq*i, 0.14*width+movXBloq*i,0.6*height-movYBloq*i, 0.16*width+movXBloq*i,
      0.58*height-movYBloq*i, 0.11*width+movXBloq*i,0.58*height-movYBloq*i);
  }
  
  if(!active){
    
    background(255);
    for(int i =0; i<3;i++){
      rect(0.09*width+movXBloq*i,0.6*height-movYBloq*i,0.05*width,0.275*height);
      quad(0.14*width+movXBloq*i,0.6*height-movYBloq*i,0.16*width+movXBloq*i,0.58*height-movYBloq*i,0.16*width+movXBloq*i
        ,0.855*height-movYBloq*i,0.14*width+movXBloq*i,0.875*height-movYBloq*i);
      quad(0.09*width+movXBloq*i,0.6*height-movYBloq*i, 0.14*width+movXBloq*i,0.6*height-movYBloq*i, 0.16*width+movXBloq*i,
        0.58*height-movYBloq*i, 0.11*width+movXBloq*i,0.58*height-movYBloq*i);
    }
  }
}
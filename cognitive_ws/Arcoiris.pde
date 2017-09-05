//Ilusion implemetanda desde cero basada en imagen de internet. Un after effect, despues de ver los colores aparecen los del arcoiris sobre una superficie color6 cielo.


public void Arcoiris(){  
  float grosorColor=40;
  //color[] colores= {color(49,253,254),color(0,191,236),color(5,52,255),color(223,108,255),color(235,144,1),color(255,253,153),color(228,252,128)};
  color[] colores= new color[7];
  colores[0]= color(49,253,254);
  colores[1]= color(0,191,236);
  colores[2]= color(5,52,255);
  colores[3]= color(223,108,255);
  colores[4]= color(235,144,1);
  colores[5]= color(255,253,153);
  colores[6]= color(228,252,128);
  
  background(0);
  smooth();
  strokeWeight(grosorColor);
  
  for(int i=0;i<7;++i){
    stroke(colores[i]);
    ellipse(width/2,height,width-grosorColor*i,height-grosorColor*i);
    
  }
    
  fill(0);
  stroke(0);
  int longitudArregloColores= colores.length;
  ellipse(width/2,height,width-grosorColor*longitudArregloColores,height-grosorColor*longitudArregloColores);
  strokeWeight(grosorColor/2);
  point(width/2,height/2+grosorColor);
  
  fill(255);
  text("Mire la el punto negro durante 30 segundos,despues presione la tecla de activacion", width/5.5,height/4);
  
  if(!active){
    background(135,206,235);  
  }
}
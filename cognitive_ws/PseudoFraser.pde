//Ilusión implementada desde cero basada en imagen de internet. Arcos de circulos blancos y negros intercalados.
public void PseudoFraser(){
  float grosorLineas= 2;
  int cantidadEspaciosVerticales= 6;
  int cantidadEspaciosHorizontales= 10;
  int cantidadCirculos = cantidadEspaciosHorizontales;
  int cantidadFilas=cantidadEspaciosVerticales;
  
  background(125);
  smooth();
  strokeWeight(grosorLineas);
  
  float diametroCirculos= width/cantidadCirculos;
  float espacioVerticalFilas = height/cantidadEspaciosVerticales;

  
  for (int j=1; j<cantidadFilas;j++) {
    for(int i=1; i<cantidadCirculos; i++){
      fill(0);
      ellipse(diametroCirculos*i, espacioVerticalFilas*j, diametroCirculos, diametroCirculos);
      fill(255);
      if(i%2==0){        
        arc(diametroCirculos*i, espacioVerticalFilas*j,diametroCirculos, diametroCirculos,-0.01*PI,PI,CHORD);        
      }
      else{        
        //rotate(PI);
        arc(diametroCirculos*i, espacioVerticalFilas*j,diametroCirculos, diametroCirculos,PI,0.99*2*PI,CHORD);
      }
    }
  }

  if (!active) {
    background(125);
    noFill();
    for (int j=1; j<cantidadFilas;j++) {
      for(int i=1; i<cantidadCirculos; i++){
        if(i%2==0){        
          arc(diametroCirculos*i, espacioVerticalFilas*j,diametroCirculos, diametroCirculos,-0.01*PI,PI,CHORD);        
        }
        else{        
          //rotate(PI);
          arc(diametroCirculos*i, espacioVerticalFilas*j,diametroCirculos, diametroCirculos,PI,0.99*2*PI,CHORD);
        }
      }
    }
  }
}
// ilusion gemetrica implementada desde cero basada en imagen de internet. Diagonales paralelas que no lo parecen por verticales y horizontales.
//Las de la izquierda se encuentran a menor distancia para acentuar el efecto hacia la derecha. 
public void Zollner() {
  background(255);
  strokeWeight(10);
  smooth();
  float pasoAncho= height*0.15;
  float pasoAlto= width*0.15;
  
  //diagonales parallelas del lado izquierdo 
  for(int i=0; i<7;i++){
    line(0,0+pasoAlto*i,width*0.7,height+pasoAlto*i);
  }
  
  //diagonales parallelas del lado derecho 
  for(int i=1; i<7;i++){
    line(0+pasoAncho*i,0,width*0.7+pasoAncho*i,height);
  }

  // pequeños pedazos horizontales y verticales
  if (active) {    
    //pequeños pedazos horizontales...
    float mitadAnchoHorizontal= 0.1*width/2;
    float pasoAltoHorizontal= 0.1*height;
    float pendiente= 1*height/(0.7*width);
    float pasoAnchoHorizontal= pendiente*0.1*height/2;
    
    //de la izquierda
    for(int i=0; i<7;i+=2){
      for(int j=0; j<10;j++){
        line(0-mitadAnchoHorizontal+pasoAnchoHorizontal*j,0+pasoAlto*i+pasoAltoHorizontal*j,
          0+mitadAnchoHorizontal+pasoAnchoHorizontal*j,0+pasoAlto*i+pasoAltoHorizontal*j);
      }
    }
    
    //de la derecha
    for(int i=2; i<7;i+=2){
      for(int j=0; j<10;j++){
        line(0+pasoAncho*i-mitadAnchoHorizontal+pasoAnchoHorizontal*j,0+pasoAltoHorizontal*j,
          0+pasoAncho*i+mitadAnchoHorizontal+pasoAnchoHorizontal*j,0+pasoAltoHorizontal*j);
      }
    }
    
    //pequeños pedazos verticales...  
    float mitadAnchoVertical= 0.1*height/2;
    
    //del lado izquierdo 
    for(int i=1; i<7;i+=2){
      for(int j=0; j<10;j++){
        line(0+pasoAlto*i+pasoAnchoHorizontal*j,0-mitadAnchoVertical+pasoAltoHorizontal*j, 
          0+pasoAlto*i+pasoAnchoHorizontal*j, 0+mitadAnchoVertical+pasoAltoHorizontal*j);
      }
    }
    
    //del lado derecho 
    for(int i=1; i<7;i+=2){
      for(int j=0; j<10;j++){
        line(0+pasoAnchoHorizontal*j,0+pasoAncho*i-mitadAnchoVertical+pasoAltoHorizontal*j,
          0+pasoAnchoHorizontal*j, 0+pasoAncho*i+mitadAnchoVertical+pasoAltoHorizontal*j);
      }
    }
  }
  
}
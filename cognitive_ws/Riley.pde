//Ilusión implementada desde cero basada en el concepto de que el cambio de tamaño en cuadros blancos y negros producen el efecto de profundidad.
public void Riley(){
  float grosorLineas= 1;
  int numeroCuadrosHorizontal= 25;
  int numeroFilas= 25;
  double procentajeReduccion= -1.0/numeroCuadrosHorizontal+1;
  
  background(0);
  smooth();
  strokeWeight(grosorLineas);
  stroke(0);
  float ladoCuadro= width/numeroCuadrosHorizontal;
  float paso=ladoCuadro;
  float ancho=ladoCuadro;
  
  //mas angostos 
  for(int j=0; j<numeroCuadrosHorizontal;j++){
    ancho*= procentajeReduccion;
    //paso=ladoCuadro;
    
    for(int i=j%2-1; i<numeroFilas;i++){
      if((i+j)%2==0){
        fill(0);        
      }
      else{
        fill(255);      
      }
      rect(j*ancho,i*paso,ancho,ladoCuadro);      
    }
  }
  
  //mas grandes
  ancho=20;
  float pasoVertical=paso;
  paso*=0.1;  
  for(int j=0; j<numeroCuadrosHorizontal;j++){
    //ancho*=1.05;
    //ancho*= 1-procentajeReduccion+0.98;
    paso*=1.05;
    
    for(int i=j%2-1; i<numeroFilas;i++){
      if((i+j)%2==0){
        fill(0);        
      }
      else{
        fill(255);      
      }      
      rect(j*paso+width/3,i*pasoVertical,ancho,ladoCuadro);
      //println(procentajeReduccion*j*ancho+width/3);
    }
  }
  
  //mas angostos 
  ancho=width/numeroCuadrosHorizontal;
  pasoVertical= width/numeroCuadrosHorizontal;
  for(int j=0; j<numeroCuadrosHorizontal;j++){
    ancho*= procentajeReduccion;
    //paso=ladoCuadro;
    
    for(int i=j%2-1; i<numeroFilas;i++){
      if((i+j)%2==0){
        fill(0);        
      }
      else{
        fill(255);      
      }
      rect((width*2/3)+j*ancho-(width*0.0083),i*pasoVertical,ancho,ladoCuadro);      
    }
  }
  
  //stroke(125,0,0);
  //strokeWeight(20);
  //point(width/3,50);
  
  if(!active){
    fill(0);
    rect(width/6,0,width/2,height);
  }
}
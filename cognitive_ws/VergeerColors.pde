//Ilusión implementada desde cero basada en el concepto de que gradientes de diferentes tipo con movimiento producen ilusión de profundidad y movimiento.
public void VergeerColors(){

  color color1= colorAleatorio1;
  color color2= colorAleatorio2;
  color color3= colorAleatorio3;
  color color4= colorAleatorio4;

  color color5= colorAleatorio5;
  color color6= colorAleatorio6;
  color color7= colorAleatorio7;
  color color8= colorAleatorio8;

  int xIzquierdo=width/8;
  int xDerecho=7*width/8;
  float anchoTotal=xDerecho-xIzquierdo;
  float anchoGradiente = anchoTotal/cantidadGradientesRepetidos;
  float desfaceSegundoGradienteInterno = 0.0*anchoGradiente;

  background(0);
  strokeWeight(grosorLineas);


  if(active){
    //gradiente color5 color6. De izquierza a derecha
    for (int j = 0; j < cantidadGradientesRepetidos; ++j) {
      colorTemporal = color(0);
      for(int i=0;i<anchoGradiente;i++){

        //Hace el degrado el doble de rapido hasta la mita y vuelve a hacerlo para la otra mitad asi queda simetrico respecto al centro
        if(i<=anchoGradiente/2){
          colorInter= lerpColor(color5, color6, 2*i/anchoGradiente);
        }
        else{
          colorInter= lerpColor(color5, color6, 2*i/anchoGradiente-1);
        }

        stroke(colorInter);
        line((j*anchoGradiente+xIzquierdo+(i+velocidadExternos)%anchoGradiente), 1.5*height/cantidadEspaciosVerticales,
          (j*anchoGradiente+xIzquierdo+(i+velocidadExternos)%anchoGradiente), 2.5*height/cantidadEspaciosVerticales);
        line(j*anchoGradiente+xIzquierdo+(i+velocidadExternos)%anchoGradiente, 2.75*height/cantidadEspaciosVerticales,
         j*anchoGradiente+xIzquierdo+(i+velocidadExternos)%anchoGradiente, 3.75*height/cantidadEspaciosVerticales);

        //a partir de la mitad cambian el color desde y hacia el cual degrada.
        if(i==anchoGradiente/2 && colorTemporal!=color5){
          colorTemporal = color6;
          color6 = color5;
          color5 = colorTemporal;
        }
      }
    }

    //gradiente color7 color8 se dibuja de derecha a izquierda
    for (int j = 0; j < cantidadGradientesRepetidos; ++j) {
      colorTemporal = color(0);
      for(int i= 0; i< anchoGradiente; i++){
        if(i<=anchoGradiente/2){
          colorInter= lerpColor(color7, color8, 2*i/anchoGradiente);
        }
        else{
          colorInter= lerpColor(color7, color8, 2*i/anchoGradiente-1);
        }
        stroke(colorInter);
        line(-j*anchoGradiente+xDerecho-(i+velocidadExternos)%anchoGradiente,4.25*height/cantidadEspaciosVerticales,
          -j*anchoGradiente+xDerecho-(i+velocidadExternos)%anchoGradiente,5.25*height/cantidadEspaciosVerticales);
        line(-j*anchoGradiente+xDerecho-(i+velocidadExternos)%anchoGradiente,5.5*height/cantidadEspaciosVerticales,
          -j*anchoGradiente+xDerecho-(i+velocidadExternos)%anchoGradiente,6.5*height/cantidadEspaciosVerticales);

        if(i==anchoGradiente/2 && colorTemporal!=color7){
          colorTemporal = color8;
          color8 = color7;
          color7 = colorTemporal;
        }
      }
    }
  }

  //Gradiente cambiante se dibuja entre los gradientes anteriores, con velocidad 0 normalmente, no se mueve, solo titila entre dos gradientes
  for (int j = 0; j < cantidadGradientesRepetidos; ++j) {
    colorTemporal = color(0);
    for(int i=0;i<anchoGradiente;i++){
      if(i<=anchoGradiente/2){
        colorInter= lerpColor(color1, color2, 2*i/anchoGradiente);
      }
      else{
        colorInter= lerpColor(color1, color2, 2*i/anchoGradiente-1);
      }
      stroke(colorInter,opacidad);
      line(j*anchoGradiente+xIzquierdo+(i+velocidadInternos)%anchoGradiente,2.5*height/cantidadEspaciosVerticales,
        j*anchoGradiente+xIzquierdo+(i+velocidadInternos)%anchoGradiente,2.75*height/cantidadEspaciosVerticales);
      line(j*anchoGradiente+xIzquierdo+(i+velocidadInternos)%anchoGradiente,5.25*height/cantidadEspaciosVerticales,
        j*anchoGradiente+xIzquierdo+(i+velocidadInternos)%anchoGradiente,5.5*height/cantidadEspaciosVerticales);
      if(i==anchoGradiente/2 && colorTemporal!=color1){
        colorTemporal = color2;
        color2 = color1;
        color1 = colorTemporal;
      }
      colorTemporal = color(0);

      //el segundo gradiente interno se encuentra sobre la misma region del primero pero desfazado una medida del ancho del Gradiente de un color a otro
      //la opacidad determina la cantidad en la cual se ve cada uno siempre una opacidad complementaria ambas suman 255
      if(i<=anchoGradiente/2){
        colorInter= lerpColor(color3, color4, 2*i/anchoGradiente);
      }
      else{
        colorInter= lerpColor(color3, color4, 2*i/anchoGradiente-1);
      }
      stroke(colorInter, 255-opacidad);
      line(j*anchoGradiente+xIzquierdo+(desfaceSegundoGradienteInterno+i+velocidadInternos)%anchoGradiente,2.5*height/cantidadEspaciosVerticales,
        j*anchoGradiente+xIzquierdo+(desfaceSegundoGradienteInterno+i+velocidadInternos)%anchoGradiente,2.75*height/cantidadEspaciosVerticales);
      line(j*anchoGradiente+xIzquierdo+(desfaceSegundoGradienteInterno+i+velocidadInternos)%anchoGradiente,5.25*height/cantidadEspaciosVerticales,
        j*anchoGradiente+xIzquierdo+(desfaceSegundoGradienteInterno+i+velocidadInternos)%anchoGradiente,5.5*height/cantidadEspaciosVerticales);
      if(i==anchoGradiente/2 && colorTemporal!=color3){
        colorTemporal = color4;
        color4 = color3;
        color3 = colorTemporal;
      }
    }
  }

  velocidadInternos += 0;
  velocidadExternos += 15;

  //aumentan a medida que pasan los ciclos del draw y se resetea el numero al llegar al tamaño del anchoGradiente para no estar guardando numeros cada ves mas grandes
  if(velocidadInternos>anchoGradiente){
    velocidadInternos = 0;
  }

  if(velocidadExternos>anchoGradiente){
    velocidadExternos = 1;
  }

  if(opacidad<0){
    opacidadDisminuyendo=false;
  }
  if(opacidad>255){
    opacidadDisminuyendo=true;
  }

  if(opacidadDisminuyendo){
    opacidad -=6.25;//la opacidad del primer gradiente interno va disminuyendo mientras el segundo aumenta hasta que vuelve a aumentar
  }
  else{
    opacidad +=6.25;
  }
  //60 externos por cada 25 opa es una relacion me parece bien, encontrada empiricamente

  if(nuevoColorAleatorioActivado){
    colorAleatorio1= color(random(127,255),random(0,125),random(127,255));
    colorAleatorio2= color(random(127,255),random(0,125),random(127,255));
    colorAleatorio3= color(random(127,255),127,random(0,125));
    colorAleatorio4= color(random(0,125),127,random(127,255));

    colorAleatorio5= color(random(200,255),random(200,255),random(0,125));
    colorAleatorio6= color(random(0,125),random(0,125),random(200,255));
    colorAleatorio7= color(random(200,255),random(0,125),random(0,125));
    colorAleatorio8= color(random(0,125),random(200,255),random(200,255));
    nuevoColorAleatorioActivado =false;
  }
  text("Presione C si desea otros colores sobre todo en medio.", 2*width/8,1*height/10);
}
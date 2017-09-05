# Taller cognitive

## Propósito

Estudiar la naturaleza programática de varias ilusiones visuales.

## Tareas

1. Principales (80%) --Fecha límite Domingo 26/2/17, a las 24h--
  1. Implemente en Processing seis o más ilusiones ópticas de diferentes categorías, e.g., paradójicas, geométricas y ambiguas. Emplee el sketch adjunto (cognitive_ws).
  2. Haga una descripción de cada ilusión implementada en este mismo README (en la sección "ilusiones estudiadas"). Incluyendo al menos su autor, historia y una breve reseña.
2. Opcionales (20%) --Fecha límite, flexible--
  1. Implementar las ilusiones en p5.js, haciendo pull request sobre la [presentación](https://github.com/VisualComputing/Cognitive).
  2. Implementar algunas ilusiones adicionales que representen un desafío mayor, como algunas [afterimages](https://en.wikipedia.org/wiki/Afterimage), e.g., [lilac-chaser](http://www.michaelbach.de/ot/col-lilacChaser/index.html) o [waterfall](http://www.michaelbach.de/ot/mot-adapt/index.html), o aquellas cuya geometría es compleja, e.g., [la espiral de Fraser](http://www.michaelbach.de/ot/ang-fraser/index.html).
  3. Exposiciones de temas específicos discutidos en clase.
  
## Algunas ideas para proyecto final

1. Encontrar patrones en las ilusiones para crear/implementar una jerarquía de las mismas.
2. Crear una ilusión nueva, haciendo un estudio (inicial) similar al que Schtauf _et al._ realizaron con el _scintillating grid_ (ver sección ilusiones estudiadas).
  
## Observaciones

1. Los puntos principales son individuales; los opcionales, pueden ser en grupo pero requieren consentimiento previo.
2. Los pull request del punto 2.I. deben ser aprobados para completar el punto opcional. Los requests de estudiarán (y aceptarán/rechazarán) en orden de llegada. Cada request nuevo debe complementar el contenido del repo en su versión inmediatamente previa, incluida la correspondiente a los requests aceptados previamente.
3. Los puntos opcionales son válidos cuando se completan los principales. Si las ilusiones se van a desarrollar únicamente en p5.js, se considerará como completada la tarea principal.
4. Si bien es posible adaptar código de terceros, el esfuerzo de implementación _desde cero_ será mejor tenido en cuenta en la evaluación. A este respecto, favor atribuir siempre el código de terceros apropiadamente, de acuerdo a las indicaciones del sketch.

## Ilusiones estudiadas

### The scintillating grid illusion

* Autor: Schtauf, M., Lingelbach, B., Wrist, E.R. (1997) Vision Research, 37, 1033-1038. URL: [The scintillating grid illusion](http://www.sciencedirect.com/science/article/pii/S0042698996002556).
* Resumen (tomado del artículo): Se añadieron incrementos de luminancia en forma de disco a las intersecciones de una rejilla de Hermann consistente en barras grises medianas sobre un fondo negro. Las manchas ilusorias, más oscuras que el fondo, se percibían como parpadeando dentro de los discos blancos con cada movimiento del ojo. Este llamativo fenómeno puede ser referido como la ilusión de rejilla centelleante. Determinamos las condiciones necesarias para cancelar la ilusión de la rejilla de Hermann, así como los requisitos de luminancia y la relación de tamaño entre discos y barras que provoca el efecto de centelleo. El hecho de que los movimientos oculares sean necesarios producir el efecto del centelleo, lo diferencia de la ilusión de la rejilla de Hermann.

### Ilusión after effect arcoiris

* Autor: Richard Wiseman.Publicada en su blog en 2011. Mago empirico y doctor en psicología. 
* Implementada desde cero. Usando imagen de internet.
* Resumen sobre la ilusión: El psicologo publica en su blog la imagen del arcoiris haciendo referencia otra ilusión after effect vista en un video en donde un castillo en blanco y negro parece estar a color despues de ver un bosquejo de la imagen con otros colores. Él deseaba hacer lo mismo pero con un arcoiris.
* Resumen sobre implementación: Se abrió la imagen tomada de internet por medio del programa gratuito gimp, usando una de sus herramientas se extrajó los valores de color para reproducir el arcoiris sobre un fondo negro y la mitad de la pantalla. Despues de verlo durante 30 segundos, al presionar la tecla de activación se cambia a una pantalla de color azul cielo (valores buscados en internet). En la parte superior aparece un arcoiris con los colores habituales.


### Ilusión (derivada de la ilusión de Fraser) arcos blanqui negros diagonales.

* Author: Akiyoshi Kitaoka. Publicada en la página de su universidad en el 2010. Doctor en psicología.
* Implementada desde cero. Usando imagen de internet.
* Resumen sobre la ilusión: Akiyoshi publica en el 2007 un articulo actualizando la información sobre los estudios realizados por el profesor Oyama en 1960 en donde estudiaba las ilusiones de Fraser, el muro del cafe y Zollner. En el articulo plantean combinación de las ilusiones de Frase, el muro del cafe y Zollner, ya que se rigen por el mismo principio aunque no dibuja ninguna ilusión nueva en dicho articulo. En esta derivación de dichas ilusiones del 2010 que Akiyoshi clasifica como Pseudo Fraser Tipo II, la frontera de los arcos blancos poseen una pequeña inclinación, aunque se deberían ver como saltos, el cerebro tiende a unificarlos en una sola diagonal.
 

### Ilusión de Zöllner pequeña modificación.

* Autor: Johann Karl Friedrich Zöllner. Astrofísico alemán. Nacimiento 1834, muerte 1882.
* Implementada desde cero. Usando imagen de internet.
* Resumen:(Parrafo tomado de wikipedia) Es una ilusión óptica en la que las rectas paralelas parecen inclinarse hacia la derecha, hacia arriba o hacia abajo, por influjo de los segmentos oblicuos añadidos a estas.
* (Mio) La pequeña modificación es ir disminuyendo la distancia hacia la izquierda con el fin se vea como disminuye el efecto. Se presentan una serie de lineas diagonales paralelas, al encontrarse sobre ellas pequeños segmentos horizontales y verticales crean la ilusión de que las lineas no son paralelas. Al presionar a, se ve que sí son paralelas.


### Ilusión PseudoPonzon perspectiva. 

* Autor: Mario Ponzo. 1911.
* Implementada desde cero. Usando imagen de internet.
* Resumen: La ilusión de Ponzo es una ilusión geométrica y óptica que fue demostrada por primera vez por el psicólogo italiano Mario Ponzo en 1911. Él sugirió que la mente humana juzga el tamaño de un objeto basado en su fondo. Una de las explicaciones de la ilusión de Ponzo es la "hipótesis de la perspectiva", que afirma que la característica de perspectiva de la figura es obviamente producida por las líneas convergentes asociadas ordinariamente con la distancia. El bloque del fondo parece ser de diferente tamaño pero no lo es. 


### Ilusión Riley. Profundidad cuadros de diferente tamaños.

* Autor: Bridget Riley. 1961. Artista que hizó parte del movimiento de arte optico (Op art).
* Implementada desde cero. Usando concepto de profundidad por variación de tamaño visto en el cuadro de Riley.
* Resumen. Los cuadrados van dismunyendo de tamaño, aumentan y vuelven a disminuir, el cambio de anchura de los cuadros genera el efecto de curvatura. Al colocar un cuadro negro sobre la parte de cuadros pequeños, se puede ver sobre los primeros cuadros que sólo van disminuyendo de tamaño aunque el cerebro lo tome como una curvatura.


### Ilusión colores animados en gradientes alrededor de otro gradiente titilante en medio.

* Parece que al meter el programa en el ciclo del switch pierde fluidez.
* Autor: No hay. Lo hice despues de ver videos de gradientes de colores en movimiento. No encuentró quien ha formalizado estas ilusiones o de cuales se derivan.
* Implementada desde cero.
* Los colores del gradiente interno se eligen al azar, algunos colores intermedios aumenta de mayor forma las ilusiones, unos son mejores para la ilusion de curvatura, otros para la ilusion de movimiento por eso se puede camiar el color interno de forma aleaotria con la tecla "c".
* Se presenta tres Iiusiones. Una corresponde a la diferencia de gradientes que crea un efecto de curvatura en los bordes del color interno. La segunda ilusión es de movimiento aunque los gradientes internos estan estaticos titilando, parecieran se mueven, el superior hacia a la derecha como los colores que lo envuelven y el inferior pareciera se mueve hacia la izquierda, también debido al movimiento a la derecha del gradiente externo. La tercera es el desface entre los colores, aunque titilan con los mismos colores algunos colores internos parecen estar en diferente posición, al presionar la tecla de activación "a" se ve que las dos lineas internas son identicas, sin curvaturas y titilando sin movimiento en el eje x.
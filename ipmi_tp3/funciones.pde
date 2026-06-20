PImage obra;

float espacio = 15;
float rotacion = 0;
float escala = 1;
float giro = 0;
float ruido = 0;

void capa(float tamCirculo, float tamCuadrado, int colorCirculo, int colorCuadrado){

  fill(colorCirculo);
  ellipse(0,0,tamCirculo,tamCirculo);

  fill(colorCuadrado);
  rect(0,0,tamCuadrado,tamCuadrado);

}

float cambiarEscala(float distancia){

  return map(distancia, 0, 300, 0.8, 1.05);

}

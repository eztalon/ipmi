void capa(float tamcirc, float tamcuadra, int colorcirc, int colorcuadra){

  fill(colorcirc);
  ellipse(0,0,tamcirc,tamcirc);

  fill(colorcuadra);
  rect(0,0,tamcuadra,tamcuadra);

}

float cambiarescala(float distancia){

  return map(distancia, 0, 300, 0.8, 1.05);

}

//https://www.youtube.com/watch?v=fCU9NRDMUog

PImage obra;

float escala = 1;
float giro = 0;
float ruido = 0;

void setup() {
  size(800, 400);

  obra = loadImage("39.jpg");
}

void draw() {
  background(0);
  stroke(15);

  for(int x = 400; x < width; x += 20){
    for(int y = 0; y < height; y += 20){
      point(x, y);
    }
  }

  float d = dist(mouseX, mouseY, 600, 200);
  escala = cambiarescala(d);
  
 pushMatrix();
 
  translate(600, 200);
  rotate(radians(giro));
  scale(escala);


rectMode(CENTER);
noStroke();

float tamcirculo = 380;
float tamcuadrado = 270;

for (int i = 0; i < 6; i++) {

  int colorcirculo = 255 - i * 20;
  int colorcuadrado = i * 30;

  capa(tamcirculo, tamcuadrado, colorcirculo, colorcuadrado);

  tamcirculo *= 0.71;
  tamcuadrado *= 0.71;

}

float tam = 55;

for (int i = 0; i < 6; i++) {

  if (i % 2 == 0) {
    
    fill(180 - i * 15 + ruido);
    ellipse(0, 0, tam, tam);
  } else {
    
    fill(120 + i * 15 + ruido);
    rect(0, 0, tam, tam);
  }
  tam *= 0.55;
}

popMatrix();

  image(obra, 0, 0, width/2, height);

  }
  
  void keyPressed(){

  if(key == 'r'){
    giro = 0;
    escala = 1;
    ruido = 0;
  }

}
void mousePressed(){
  ruido = random(-15,15);
}

void mouseDragged(){
  giro += (mouseX - pmouseX) * 0.5;
}

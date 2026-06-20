//el obs no me anda, x alguna razon se me traba cuando intento grabar

void setup() {
  size(800, 400);

  obra = loadImage("39.jpg");
}

void draw() {
  background(0);
  stroke(15);

for(int x = 400; x < width; x += 20){

  for(int y = 0; y < height; y += 20){

    point(x,y);

  }

}
  image(obra, 0, 0, width/2, height);

  float d = dist(mouseX, mouseY, 600, 200);

  escala = cambiarEscala(d);

translate(600,200);
rotate(radians(giro));
scale(escala);


rectMode(CENTER);
noStroke();

capa(380, 270, 255, 0);

capa(270, 190, 230, 40);

capa(190, 135, 210, 80);

capa(135, 95, 190, 110);

capa(95, 65, 170, 130);

capa(65, 40, 150, 0);

fill(180);
ellipse(0,0,55,55);

fill(120);
rect(0,0,40,40);

// 2

fill(210 + ruido);
rect(0,0,28,28);

fill(90);
ellipse(0,0,22,22);

fill(190 + ruido);
rect(0,0,16,16);

fill(70);
ellipse(0,0,12,12);

fill(170);
rect(0,0,8,8);

fill(50);
ellipse(0,0,5,5);  
  }
  
  void keyPressed(){

  if(key == 'a'){

    giro = giro - 5;

  }else if(key == 'd'){

    giro = giro + 5;

  }else if(key == 'r'){

    giro = 0;
    escala = 1;

  }

}

void mousePressed(){

  ruido = random(-15,15);

}

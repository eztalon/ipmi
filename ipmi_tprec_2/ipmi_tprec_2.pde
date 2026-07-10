PImage fondo;
PImage gato;
PImage portada, light, ryuk, l, misa, near, mikami;

PFont fuente;

int pantalla = 0;
int tiempocambio;
int iniciotrans = 0;
int duraciontrans = 700;

float movergato;
boolean transicion = false;
boolean cambiopantalla = false;

void escenario(){

  background(255);

  image(fondo,0,0,width,height);

  movergato = sin(frameCount*0.05)*5;

  image(gato,410,40+movergato,240,440);

  fill(0,190);
  noStroke();

  rect(20,340,600,120);

  fill(255);

  textFont(fuente);

  textSize(18);
  
  textAlign(LEFT, TOP);
  
}

void pantallacero(){ //intro

  escenario();

  image(portada,80,35,330,250);

  text("death note es un anime y manga de suspenso psicológico creado por tsugumi ohba y takeshi obata. la historia explora temas como la justicia, la moralidad y el poder a través de un cuaderno capaz de decidir la vida y la muerte de las personas.",40,365,560,90);
}

void pantallauno(){ //light

  escenario();

  image(light,80,35,330,250);

  text("este es el protagonista de la historia. light es un joven extremadamente inteligente, serio y ambicioso. aunque al principio cree que está haciendo justicia, el poder del death note comienza a cambiar su personalidad, volviéndolo manipulador y controlador.",40,365,560,90);

}

void pantallados(){ //ryuk

  escenario();

  image(ryuk,80,35,330,250);

  text("ryuk es el shinigami dueño original del death note. él deja caer el cuaderno en el mundo humano por aburrimiento y observa todo lo que sucede entre light y su entorno. aunque no toma partido, disfruta viendo el caos que provoca el death note.",40,365,560,90);

}

void pantallatres(){ //lawliet bonito

  escenario();

  image(l,80,35,330,250);

  text("l lawliet es el detective más famoso del mundo y el principal rival de light. es muy inteligente y tiene una personalidad extraña y reservada. su manera de pensar y deducir situaciones lo convierte en uno de los personajes más importantes e icónicos del anime.",40,365,560,90);

}

void pantallaCUATRO(){ //misa

  escenario();

  image(misa,80,35,330,250);

  text("misa es una modelo famosa y seguidora de kira. también posee un death note y siente una fuerte admiración por light. es un personaje emocional y muy importante en varios momentos de la historia.",40,365,560,90);

}

void pantallacinco(){ //near

  escenario();

  image(near,80,35,330,250);

  text("near aparece después de l y continúa la investigación. es un joven extremadamente inteligente y tranquilo, frío y analítico. suele jugar con juguetes mientras resuelve casos.",40,365,560,90);

}

void pantallaseis(){ //mikamii

  escenario();

  image(mikami,80,35,330,250);

  text("mikami es un fiscal y seguidor fan de kira. cree completamente en la idea de eliminar criminales para crear un mundo mejor. debido a su admiración por kira, termina convirtiéndose en una pieza muy importante dentro de los planes de kira al final del anime.",40,365,560,90);

}

void pantallasiete(){ //final + boton

  background(255);

  image(fondo,0,0,width,height);

  movergato = sin(frameCount*0.05)*5;
  image(gato,410,40+movergato,240,440);

  fill(0,190);
  noStroke();
  rect(20,60,360,380);

  fill(255);

  textAlign(CENTER);

  textFont(fuente);

  textSize(28);
  text("¡fin de la presentación!",200,100);

  textSize(17);
  text("espero que hayan entendido\nun poco más sobre\nel contexto de death note!!\ngraciaas.",200,170);

  // boton
if(mouseX > 110 && mouseX < 290 && mouseY > 320 && mouseY < 370){
  fill(200);
}
else{
  fill(255);
}

stroke(0);
strokeWeight(2);
rect(110,320,180,50,10);

fill(0);
noStroke();

textAlign(CENTER, CENTER);
textSize(18);
text("REINICIAR",200,345);
}

void setup() {
  size(640,480);

  fondo = loadImage("fondo.png");
  gato = loadImage("gatoprofe.png");

  portada = loadImage("deathnote.jpg");
  light = loadImage("light.jpg");
  ryuk = loadImage("ryuk.jpg");
  l = loadImage("l.jpg");
  misa = loadImage("misa.jpg");
  near = loadImage("near.jpg");
  mikami = loadImage("mikami.jpg");
  
   tiempocambio = millis();

  fuente = loadFont("Bahnschrift-48.vlw");
}

void draw(){


  if (!transicion && pantalla < 6 && millis() - tiempocambio > 11000) {

  transicion = true;
  iniciotrans = millis();

}
    if (millis() - tiempocambio > 12000) { //12 segundos x pantalla
    pantalla++;
    tiempocambio = millis();
  }

  if (pantalla == 0) {
    pantallacero(); 
  }

  else if (pantalla == 1) {
    pantallauno();
  }

  else if (pantalla == 2) {
    pantallados();
  }

  else if (pantalla == 3) {
    pantallatres();
  }

  else if (pantalla == 4) {
    pantallaCUATRO();
  }

  else if (pantalla == 5) {
  pantallacinco();
}

  else if (pantalla == 6) {
  pantallaseis();
}

  else {
  pantallasiete();
}

if (transicion) {

  float alpha;

  if (!cambiopantalla) {

    alpha = map(millis() - iniciotrans, 0, duraciontrans, 0, 255);

    fill(0, alpha);
    noStroke();
    rect(0, 0, width, height);

    if (millis() - iniciotrans >= duraciontrans) {

      pantalla++;
      tiempocambio = millis();

      cambiopantalla = true;
      iniciotrans = millis();

    }

  } else {

    alpha = map(millis() - iniciotrans, 0, duraciontrans, 255, 0);

    fill(0, alpha);
    noStroke();
    rect(0, 0, width, height);

    if (millis() - iniciotrans >= duraciontrans) {

      transicion = false;
      cambiopantalla = false;

    }

  }

}
}

void mousePressed(){

  if(pantalla >= 6 &&
     mouseX > 110 &&
     mouseX < 290 &&
     mouseY > 320 &&
     mouseY < 370){

      pantalla = 0;
      tiempocambio = millis();

  }

}

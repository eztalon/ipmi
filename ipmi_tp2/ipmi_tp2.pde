PImage img0, img1, img2, img3, img4, img5, img6, img7;
color botonborde;
color intboton;
int contador;
int trans;
int trans1;
int trans2;
int trans3;
PFont fuente;

void setup(){
  img0 = loadImage("dntitulo.png");
  img1 = loadImage("deathnote.jpg");
  img2 = loadImage("light.jpg");
  img3 = loadImage("ryuk.jpg");
  img4 = loadImage("l.jpg");
  img5 = loadImage("misa.jpg");
  img6 = loadImage("near.jpg");
  img7 = loadImage("mikami.jpg");
  size(640,480);
  fuente = loadFont("Bahnschrift-48.vlw");
    botonborde = color(#FF0044);
    intboton = color(#FFFFFF);
    contador = 0;
    trans = 0;
    trans1 = 0;
    trans2 = 0;
    trans3 = 0 ;
}
void draw(){
  contador = contador + 1;
// 1ra pantalla
 background(255); 
 textAlign(LEFT, TOP);
  if (contador<540) {
 image(img0, 0, 0, 650, 479);
 fill(0);
 if (trans< 255) {
        trans += 4;
      }
      fill(0, trans);
textFont(fuente);
textSize(15);
text("death note es un anime y manga de suspenso psicológico, misterio y sobrenatural. la historia fue creada por Tsugumi Ohba y Takeshi Obata, y se convirtió en una de las series más populares del anime gracias a la trama intensa y los personajes inteligentes. plantea temas como la justicia, la moralidad y el poder, mostrando cómo una persona puede cambiar completamente cuando obtiene la capacidad de decidir sobre la vida y muerte de los demas.", 72, 332, 530, 332);
  }
//2da pantalla
  else if (contador < 1080) {
    trans = 0;
  image(img2, 32, 28, 273, 268);
  image(img3, 340, 28, 273, 268);

if (trans1< 255) {
        trans1 += 4;
      }
      fill(0, trans1);
      textSize(15);
   text("light yagami el protagonista de la historia. es un joven extremadamente inteligente, serio y ambicioso. al principio cree que está haciendo justicia, el poder del Death Note comienza a cambiar su personalidad, volviéndolo manipulador y obsesionado con controlar el mundo.", 32, 317, 273, 415);
   text("ryuk es el shinigami dueño original del death note de light. deja caer el cuaderno en el mundo humano por aburrimiento y observa todo lo que sucede entre light y los demás. no toma partido, el disfruta viendo el caos que provoca el death note.", 338, 317, 273, 415);
 }
  
//3ra pantalla
    else if (contador < 1620) {
    trans = 0;
image(img4, 32, 28, 273, 268);
  image(img5, 340, 28, 273, 268);
  if (trans2< 255) {
        trans2 += 4;
      }
      fill(0, trans2);
      textSize(15);
   text("l lawliet es el detective más famoso del mundo y el principal rival de kira/light. l es muy inteligente y tiene una personalidad extraña y reservada. su manera de pensar y deducir situaciones lo convierte en uno de los personajes más importantes e icónicos de la serie.", 32, 317, 273, 415);
   text("misa amane es una modelo famosa y seguidora de kira. también posee un death note y siente una fuerte admiración por light al ser kira. es un personaje emocional y muy importante en varios momentos de la historia. tambien posee los ojos del shinigami, con estos puede ver el nombre y fecha de muerte de las personas.", 338, 317, 273, 415);
}
//4ta pantalla
  else if (contador < 2160) {
    trans = 0;
 image(img6, 32, 28, 273, 268);
  image(img7, 340, 28, 273, 268);
  if (trans3< 255) {
        trans3 += 4;
      }
      fill(0, trans3);
      textSize(15);
   text("near aparece después de l y continúa la investigación contra Kira. es un joven extremadamente inteligente y tranquilo, con una personalidad fría y analítica. siempre piensa antes de actuar y suele jugar con juguetes mientras resuelve casos. aunque tiene un estilo diferente al de l, demuestra tener una gran capacidad deductiva.", 32, 317, 273, 415);
   text("teru mikami es un fiscal y seguidor fanático de kira. cree completamente en la idea de eliminar criminales para crear un mundo mejor. debido a su admiración por kira, termina convirtiéndose en una pieza muy importante dentro de los planes de kira al final del anime.", 338, 317, 273, 415);
}
//5ta pantalla
  else if (contador < 2700) {
    trans = 0;
  image(img1, 0, 0, 650, 479); 
  
 //reinicio
  stroke(0);
  strokeWeight(3);
  textAlign(CENTER, CENTER);
if (mouseX > 46 && mouseX < 588 && mouseY > 411 && mouseY < 461) {
      fill(#5D66A9);
    } else {
      fill(255);
    }

    rect(200, 411, 237, 50);
    fill(0);
    textSize(15);
    text("re-iniciar presentación", 317, 432);
 }
}
 void mouseClicked() {
  if (contador > 1440) { 

    if (mouseX > 46 && mouseX < 588 && mouseY > 411 && mouseY < 461) {
      contador = 0;
      trans = 0;
      trans1 = 0;
      trans2 = 0;
      trans3 = 0;
    }

  } 
}

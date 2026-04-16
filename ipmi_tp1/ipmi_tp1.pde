PImage img;

void setup() {
  size(800, 400);
  img = loadImage("donsatur.png");
  }
  
void draw() {
  background(140, 115, 100);
  image(img, 0, 0, width/2, height);
  
   fill(0);
  textSize(16);
  text("X: " + mouseX + " Y: " + mouseY, 10, 20);
  
    fill(225,179,142);
  noStroke();

beginShape();
vertex(510, 375);
vertex(518, 390);
vertex(524, 400);
vertex(574, 400);
vertex(567, 370);
vertex(522, 355);
vertex(511, 373);
endShape(CLOSE);
  
      fill(4,7,15);
noStroke();

beginShape();
vertex(509, 306);
vertex(494, 352);
vertex(511, 377);
vertex(525, 362);
vertex(545, 370);
vertex(545, 380);
vertex(562, 384);
vertex(574, 400);
vertex(723, 400);
endShape(CLOSE);

    fill(0,4,8);
noStroke();

beginShape();
vertex(684, 190);
vertex(725, 193);
vertex(714, 211);
vertex(762, 264);
vertex(782, 310);
vertex(720, 400);
vertex(642, 370);
vertex(582, 354);
vertex(527, 330);
vertex(502, 299);
vertex(519, 265);
vertex(541, 246);
vertex(582, 207);
endShape(CLOSE);

    fill(255);
noStroke();

beginShape();
vertex(590, 220);
vertex(572, 251);
vertex(578, 278);
vertex(612, 297);
vertex(610, 271);
vertex(618, 258);
vertex(649, 222);
endShape(CLOSE);

  
  fill(0);
noStroke();

beginShape();
vertex(550, 148);
vertex(504, 111);
vertex(522, 72);
vertex(569, 42);
vertex(562, 37);
vertex(572, 25);
vertex(581, 28);
vertex(578, 39);
vertex(693, 43);
vertex(690, 53);
vertex(718, 61);
vertex(726, 74);
vertex(744, 117);
vertex(723, 110);
vertex(744, 117);
vertex(726, 131);
vertex(742, 139);
vertex(682, 194);
endShape(CLOSE);
  
  fill(225,179,142);
 ellipse(624, 150, 140, 160);
 
    fill(0);
  noStroke();

beginShape();
vertex(563, 110);
vertex(562, 188);
vertex(554, 146);
vertex(546, 112);
endShape(CLOSE);
 
   fill(180, 140, 110);
  noStroke();

beginShape();
vertex(647, 146);
vertex(645, 125);
vertex(628, 99);
vertex(657, 110);
vertex(682, 129);
vertex(679, 190);
endShape(CLOSE);
 
   fill(0);
  noStroke();

beginShape();
vertex(560, 110);
vertex(611, 98);
vertex(658, 111);
vertex(692, 135);
vertex(690, 71);
vertex(571, 63);
vertex(556, 95);
endShape(CLOSE);

fill(40, 30, 25);
noStroke();

beginShape();
vertex(553, 146);
vertex(551, 190);
vertex(598, 231);
vertex(641, 231);
vertex(677, 209);
vertex(694, 169);
vertex(697, 138);
vertex(683, 129);
vertex(673, 146);
vertex(648, 147);
endShape(CLOSE);

  fill(225,179,142);
  noStroke();

beginShape();
vertex(567, 146);
vertex(584, 164);
vertex(611, 170);
vertex(626, 172);
vertex(638, 166);
vertex(649, 146);
endShape(CLOSE);




// :3 
fill(0);

ellipse(589, 131, 10, 10);

ellipse(622, 134, 10, 10);

noFill();
stroke(0);
strokeWeight(2);

arc(594, 155, 20, 15, 0, PI);

arc(615, 155, 20, 15, 0, PI);

}

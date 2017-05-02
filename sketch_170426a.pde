
PImage sprites[];
PImage fondo;
int index;
int x, xFondo, xFondo2; 
float a;
float inc;
int estado;

void setup(){
  
 size (800,800); 
  sprites = new PImage[24];

  sprites[0] = loadImage("Copia de Personaje1 2.png");
  sprites[1] = loadImage("Copia de Personaje1 3.png");
  sprites[2] = loadImage("Copia de Personaje1 4.png");
  sprites[3] = loadImage("Copia de Personaje1 5.png");
  sprites[4] = loadImage("Copia de Personaje1 6.png");
  sprites[5] = loadImage("Copia de Personaje1 7.png");
  sprites[6] = loadImage("Copia de Personaje1 8.png");
  sprites[7] = loadImage("Copia de Personaje1 9.png");
  sprites[8] = loadImage("Copia de Personaje1 10.png");
  sprites[9] = loadImage("Copia de Personaje1 11.png");
  sprites[10] = loadImage("Copia de Personaje1 12.png");
  sprites[11] = loadImage("Copia de Personaje1 13.png");
  sprites[12] = loadImage("Copia de Personaje1 14.png");
  sprites[13] = loadImage("Copia de Personaje1 15.png");
  sprites[14] = loadImage("Copia de Personaje1 16.png");
  sprites[15] = loadImage("Copia de Personaje1 17.png");
  sprites[16] = loadImage("Copia de Personaje1 18.png");
  sprites[17] = loadImage("Copia de Personaje1 19.png");
  sprites[18] = loadImage("Copia de Personaje1 20.png");
  sprites[19] = loadImage("Copia de Personaje1 21.png");
  sprites[20] = loadImage("Copia de Personaje1 22.png");
  sprites[21] = loadImage("Copia de Personaje1 23.png");
  sprites[22] = loadImage("Copia de Personaje1 24.png");
  sprites[23] = loadImage("Copia de Personaje1 25.png");



    x = 100;
  index = 0;
  
  xFondo = 0;
  xFondo2 = 600;
    fondo = loadImage("Ex1mage.jpg");
    a = 0.0;
    inc = TWO_PI/35.0;
    estado =0;
}

void draw (){
    background(255);
  xFondo = xFondo - 5;
  xFondo2 = xFondo2 - 5;
  image(fondo,xFondo,0,800,800);
  image(fondo,xFondo2,0,800,800);
  if (xFondo <= -800) xFondo = xFondo2 + 800;
  if (xFondo2 <= -800) xFondo2 = xFondo + 800;
  fill(0);
  
  if (estado == 1)
  {
    image(sprites[index],x,370-tan(a)*200.0);
    a = a + inc;
    if (a>PI){
      estado =0;
      a=0;
    }
  }else {
    
      index = (millis() / 30) % 24;
      image(sprites[index], x, 370);
  }
}
void mousePressed (){
 
  if (mouseButton == LEFT){
    estado =1;
  }
}
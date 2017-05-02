
PImage sprites[];
PImage fondo;
int index;
int x, xFondo, xFondo2; 
float a;
float inc;
int estado;

void setup(){
  
 size (800,800); 
  sprites = new PImage[26];

  sprites[0] = loadImage("2.png");
  sprites[1] = loadImage("3.png");
  sprites[2] = loadImage("4.png");
  sprites[3] = loadImage("5.png");
  sprites[4] = loadImage("6.png");
  sprites[5] = loadImage("7.png");
  sprites[6] = loadImage("8.png");
  sprites[7] = loadImage("9.png");
  sprites[8] = loadImage("10.png");
  sprites[9] = loadImage("11.png");
  sprites[10] = loadImage("12.png");
  sprites[11] = loadImage("13.png");
  sprites[12] = loadImage("14.png");
  sprites[13] = loadImage("15.png");
  sprites[14] = loadImage("16.png");
  sprites[15] = loadImage("17.png");
  sprites[16] = loadImage("18.png");
  sprites[17] = loadImage("19.png");
  sprites[18] = loadImage("20.png");
  sprites[19] = loadImage("21.png");
  sprites[20] = loadImage("22.png");
  sprites[21] = loadImage("23.png");
  sprites[22] = loadImage("24.png");
  sprites[23] = loadImage("25.png");
  sprites[24] = loadImage("26.png");
  sprites[25] = loadImage("27.png");

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
    image(sprites[index],x,370-sin(a)*200.0);
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
float seleccion = 0.0;
PImage sprites[];
PImage fondo;
PImage rock;
PImage piso;
int index, indexmur = 0, indexmina = 0, indexbruja = 0, indexconejo = 0;
int xpersonaje, xFondo, xFondo2, xmur = 1000, xmina = 1000, xbruja = 1000, xconejo = 1000, xtim = 1000; 
float a;
float inc;
int estado;
int xm=1200;
PImage mina[];
PImage mur[];
PImage bruja[];
PImage conejo[];
PImage tim[];
float timer;
float rand1=1000, rand2=1100;
float randobstacle;
int entobstacle;

int xentero = 0;
float [] ARR = new float [20];
int limite = 20;
float x;
int k = 0;
int b, c, m, batman;

void setup(){
  
 size (1000,600);

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
  
  mur = new PImage[3];
  
  mur[0] = loadImage("mur1.png");
  mur[1] = loadImage("mur2.png");
  mur[2] = loadImage("mur3.png");
  
  mina = new PImage[10];
  
  mina[0] = loadImage("mina1.png");
  mina[1] = loadImage("mina2.png");
  mina[2] = loadImage("mina3.png");
  mina[3] = loadImage("mina4.png");
  mina[4] = loadImage("mina5.png");
  mina[5] = loadImage("mina6.png");
  mina[6] = loadImage("mina7.png");
  mina[7] = loadImage("mina8.png");
  mina[8] = loadImage("mina9.png");
  mina[9] = loadImage("mina10.png");
  
  bruja = new PImage[3];
  
  bruja[0] = loadImage("bruja1.png");
  bruja[1] = loadImage("bruja2.png");
  bruja[2] = loadImage("bruja3.png");
  
  conejo = new PImage[5];
  
  conejo[0] = loadImage("conejo1.png");
  conejo[1] = loadImage("conejo2.png");
  conejo[2] = loadImage("conejo3.png");
  conejo[3] = loadImage("conejo4.png");
  conejo[4] = loadImage("conejo5.png");
  
  tim = new PImage[10];
  
  tim[0] = loadImage("tim0.png");
  tim[1] = loadImage("tim1.png");
  tim[2] = loadImage("tim2.png");
  tim[3] = loadImage("tim3.png");
  tim[4] = loadImage("tim4.png");
  tim[5] = loadImage("tim5.png");
  tim[6] = loadImage("tim6.png");
  tim[7] = loadImage("tim8.png");
  tim[8] = loadImage("tim9.png");
  tim[9] = loadImage("tim10.png");
  

  xpersonaje = 100;
  index = 0;
  
  xFondo = 0;
  xFondo2 = 1000;
    fondo = loadImage("fondonieve.jpg");
    a = 0.0;
    inc = TWO_PI/30.0;
    estado = 0;
}

void draw (){ 
  background(255);
  xFondo = xFondo - 30;
  xFondo2 = xFondo2 - 30;
  image(fondo,xFondo,0,1000,1000);
  image(fondo,xFondo2,0,1000,1000);
  if (xFondo <= -1000) xFondo = xFondo2 + 1000;
  if (xFondo2 <= -1000) xFondo2 = xFondo + 1000;
  fill(0);
  
  piso= loadImage("pisorocas.png");
  image(piso, -10, 500, 1150, 115);
  
  
  if (estado == 1)
  {
    image(sprites[index],xpersonaje ,350-sin(a)*200.0);
    a = a + inc;
    if (a>PI){
      estado =0;
      a=0;
    }
  }else {
      index = (millis() / 30) % 24;
      image(sprites[index], xpersonaje, 400);   
  }
  
  if (millis() > timer){
    rand1 = rand1 + 500;
    rand2 = rand2 + 500;
    
     x = random(rand1, rand2);
     xentero = int(x);
    ARR[k] = xentero;
    k = k + 1;
    timer = millis() + 1000;
    c = batman = b = m =  xentero;
    
     randobstacle = random(0, 4);
    entobstacle = int(randobstacle);
  }
   
    
  if(entobstacle == 0){
    for (batman = 0; batman < 20; batman++){
     if (ARR[batman] > 0){
          ARR[batman] = ARR[batman] - 30;
          indexmur = (millis() / 125) % 3;
          image(mur[indexmur], ARR[batman], 350);
       }
    }
}
    
    if(entobstacle == 1){
    for (m=0; m < 20; m++){
     if (ARR[m] > 0){
          ARR[m] = ARR[m] - 30;
          indexmina = (millis() / 125) % 10;
          image(mina[indexmina], ARR[m], 275);
       }
    }
}
    
    if(entobstacle == 2){
    for (b = 0; b < 20; b++){
     if (ARR[b] > 0){
          ARR[b] = ARR[b] - 30;
          indexbruja = (millis() / 125) % 3;
          image(bruja[indexbruja], ARR[b], 350);
       }
    }
   }
    
    if(entobstacle == 3){
    for (c=0; c < 20; c++){
     if (ARR[c] > 0){
          ARR[c] = ARR[c] - 30;
          indexconejo = (millis() / 125) % 5;
          image(conejo[indexconejo], ARR[c], 440);
          }
      }
    }
  if(k == limite){
      k = 0;
      rand1 = 1000;
      rand2 = 1100;
    }
}


void mousePressed (){ 
  if (mouseButton == LEFT){
    estado =1;
  }
}
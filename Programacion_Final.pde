
int xFondo,xFondo2, index, estado, estado1, obs2,entobstacle,indexmur = 0, indexmina = 0, indexbruja = 0, indexconejo = 0;
float x1,y1,r1,r2,o;
PImage sprites[],mur[],mina[],bruja[],conejo[];
PImage Inicio,Fondo,piso,roca, instrucciones,vida;
float a,inc,timer,randobstacle,rand1=1000,rand2=1000;
int p;
int xentero = 0;
float [] ARR = new float [20];
int limite = 20;
float x;
int k = 0;
int b, c, m, batman;

Boton i,i2,i3;

void setup(){
size (1000,600);
x1 = 260;
y1 = 490;
r1 = 60;
r2 = 30;

Inicio = loadImage("Inicio.PNG");
Fondo = loadImage("fondonieve2.jpg");
piso= loadImage("pisorocas.png");
roca = loadImage("rock.png");
instrucciones = loadImage("Instrucciones1.png");
vida = loadImage("vida.png");
xFondo=0;
xFondo2=1000;
index = 0;
estado = 0;
estado1 = 0;
a=0.0;
inc= TWO_PI/30.0;


  i = new Boton();
  i.x =210; i.y =450;
  i.ancho= 113; i.alto=30;
  
  i2 = new Boton();
  i2.x =606; i2.y =450;
  i2.ancho= 245; i2.alto=30;
  
  i3 = new Boton();
  i3.x =755; i3.y =468;
  i3.ancho= 173; i3.alto=38;

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
  
}
void draw(){
  
  i.dibujar();
  i2.dibujar();
  i3.dibujar(); 
    background(255);
    image(Inicio,xFondo,0,1000,600);
    image(Inicio,xFondo2,0,1000,600);
    
    index = (millis() / 30) % 24;
    image(sprites[index], 425, 260);
  

if (estado == 1){
  //Portada
background(255);
    image(Inicio,xFondo,0,1000,600);
    image(Inicio,xFondo2,0,1000,600);
    
    index = (millis() / 30) % 24;
    image(sprites[index], 425, 260);
}

if (estado == 2){
xFondo = xFondo - 35;
xFondo2 = xFondo2 - 35;
p=0;
     

    image(Fondo,xFondo,0,1000,600);
    image(Fondo,xFondo2,0,1000,600);
    for(int i = 0;i<3;i++){
    image(vida,p,0,50,50);  
    p +=35;
    }
    
if (xFondo <= -1000) {
   xFondo = xFondo2 + 1000;
  }  
if (xFondo2 <= -1000){
   xFondo2 = xFondo + 1000;
}
fill(255);

//Funcion de saltar
     if (estado1 ==2){           
    ellipse(x1,y1-sin(a)*300.0,2*r1,2*r1);
    image(sprites[index],200,420-sin(a)*300.0);
    a = a + inc;
    if (a>PI){
      estado1 =0;
       a=0;
    }
  }else {
      index = (millis() / 30) % 24; 
      ellipse(x1,y1,2*r1,2*r1);
        image(sprites[index], 200, 420);
        fill(255);
}
if (millis() > timer){//Cada cuanto tiempo se va a imprimir los obstáculos
    rand1 = rand1 + 500;//Limite inferior de la coordenada randon en x
    rand2 = rand2 + 500;//Limite superior de la coordenada random en x
    
     x = random(rand1, rand2);//Imrpime un número random que se usa como la coordenada en x donde aparece el obstáculo
     xentero = int(x);//Convierte la coordenada de flotante a entera
    ARR[k] = xentero;//Guarda en la celda el valor de la coordenada
    k = k + 1;//Le suma 1 al indice que es k
    timer = millis() + 1000;//Le suma 1000 para que se haga cada segundo
    c = batman = b = m =  xentero;//Asigna el valor de la coordenada a los indices del arreglo de cada obstáculo
    
     randobstacle = random(0, 3.99);//Imrpime un número random entre 0 y 3 para escoger que obstáculo 
    entobstacle = int(randobstacle);//Lo convierte a entero
  }
   
    
  if(entobstacle == 0){//Escoge que obstáculo imprimir
    for (batman = 0; batman < 20; batman++){
     if (ARR[batman] > 0){
          ARR[batman] = ARR[batman] - 30;//Le va restand0 30 en x al obstáculo
          indexmur = (millis() / 125) % 3;//Imrpime los sprites para hacer la animacion del obstaculo
          image(mur[indexmur], ARR[batman], 350);//Imrpime el obstaculo
          float x3 = ARR[batman] + 150, y3 = 485;

if (y1-sin(a)*300 > 300 && y1<600){        // Colisión    
o = sqrt(pow(x3-x1, 2) + pow(y3-y1, 2));  
    if (o < r1+r2) {

      
    fill(255,0,0);
  }else {
    fill(255);
  }
}
            ellipse(x3, y3, 2*r2, 2*r2); 
}
   }
    }
    if(entobstacle == 1){
    for (m=0; m < 20; m++){
     if (ARR[m] > 0){
          ARR[m] = ARR[m] - 30;
          float x4 = ARR[m] + 155, y4 = 550;
          if (y1-sin(a)*300 > 300 && y1<600){    // Colisión    
o = sqrt(pow(x4-x1, 2) + pow(y4-y1, 2));  
    if (o < r1+r2) {
    indexmina = ((millis() / 125) % 8) + 1;
    image(mina[indexmina], ARR[m], 295);  
    fill(255,0,0);
  }else {
    indexmina = (millis() / 125) % 1;
    image(mina[indexmina], ARR[m], 295);
    fill(255);
  }
}
          ellipse(x4, y4, 2*r2, 2*r2); 
       }
    }
}
    if(entobstacle == 2){
    for (b = 0; b < 20; b++){
     if (ARR[b] > 0){
          ARR[b] = ARR[b] - 30;
          indexbruja = (millis() / 125) % 3;
          image(bruja[indexbruja], ARR[b], 350);
          float x5 = ARR[b] + 50, y5 = 430;
          println(y1-sin(a)*300);
          if (y1-sin(a)*300 > 300 && y1<600){      // Colisión    
o = sqrt(pow(x5-x1, 2) + pow(y5-y1, 2));  
    if (o < r1+r2) {
    fill(255,0,0);
  }else {
    fill(255);
  }
}
          ellipse(x5, y5, 2*r2, 2*r2); 
       }
    }
   }
    if(entobstacle == 3){
    for (c=0; c < 20; c++){
     if (ARR[c] > 0){
          ARR[c] = ARR[c] - 30;
          float x6 = ARR[c] + 45,y6=540;
          if (y1-sin(a)*300 > 300 && y1<600){    // Colisión    
o = sqrt(pow(x6-x1, 2) + pow(y6-y1, 2));  
    if (o < r1+r2) {
        indexconejo = ((millis() / 200) % 3) + 2;
          image(conejo[indexconejo], ARR[c], 460);
    fill(255,0,0);
  }else {
     indexconejo = (millis() / 200) % 2 ;
          image(conejo[indexconejo], ARR[c], 460);
    fill(255);
  }
}
          ellipse(x6,y6,2*r2,2*r2); 
          }
      }
    }
  if(k == limite){//Regresa el valor de k a 0 para que no se salga del arreglo 
      k = 0;
      rand1 = 1000;//Regresa rand1 a 1000 para que no se vaya a coordenadas tan lejanas
      rand2 = 1100;//Regresa rand2 a 1100 por la misma razón de arriba
    }
}
if (estado == 3){
    
    image(instrucciones,xFondo,0,1000,600);
    image(instrucciones,xFondo2,0,1000,600);
}
  
}


void mousePressed(){
 // iniciar
 if (i.press()){  
  estado =2;  
 }
 // instrucciones
 if (i2.press()){
   estado =3;
 }
 //portada
 if (i3.press()){
   estado =1;
 }
}
void keyPressed(){
 if (key == ' ') 
  {
  estado1 = 2;
  }
}
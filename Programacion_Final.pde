int x,xFondo,xFondo2, index, estado, estado1;
PImage sprites[];
PImage Inicio,Fondo,piso;
float a,inc;
Boton i,i2;

void setup(){
size (1000,600);
Inicio = loadImage("Inicio.PNG");
Fondo = loadImage("fondonieve.jpg");
piso= loadImage("pisorocas.png");
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
}
void draw(){
      i.dibujar();
  i2.dibujar();
background(255);
    image(Inicio,xFondo,0,1000,600);
    image(Inicio,xFondo2,0,1000,600);

    
    index = (millis() / 30) % 24;
      image(sprites[index], 425, 250);

if (estado == 1){
        image(Fondo,xFondo,0,1000,600);
    image(Fondo,xFondo2,0,1000,600);
     if (estado1 ==2){
      image(sprites[index],x,350-sin(a)*200.0);
    a = a + inc;
    if (a>PI){
      estado1 =0;
      a=0;
    }
  }else {
      index = (millis() / 30) % 24;
      image(sprites[index], x, 400);
  }
  }
}

void mousePressed(){
 if (i.press()){  
  estado =1;  
 }
 if (i2.press()){
 }
 if (mouseButton == LEFT){
  estado1 = 2;
  }
}
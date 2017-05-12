int x,xFondo,xFondo2;

PImage Inicio;

void setup(){
size (800,800);
Inicio = loadImage("Fondo1.png");
xFondo=0;
xFondo2=800;




}






void draw(){

background(255);
    image(Inicio,xFondo,0,800,800);
    image(Inicio,xFondo2,0,800,800);
    
    
    
    
}
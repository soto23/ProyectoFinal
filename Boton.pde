
public class Boton{
 public int x,y,ancho,alto; 
void dibujar(){
  
if (mouseX>x && mouseX < x+ancho && mouseY>y && mouseY<y+alto){
     if (mouseButton == LEFT && mousePressed) fill(255,0,0);
     else fill(50,50,255);
}else 
fill(0);

  rect (x,y,ancho,alto);
  fill(255);
}
  boolean press(){
   if (mouseButton == LEFT && mouseX>x && mouseX < x+ancho && mouseY>y && mouseY<y+alto){ 
    return true;
   }
   else
  return false;       
  }
}
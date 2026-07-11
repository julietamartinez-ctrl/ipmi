//https://youtu.be/JKr7zKZqFv8
// Julieta Martinez Legajo: 125624/8
// TP3

PImage image;
int i=0;
int j=0;
int y=500;
int x=180;
color color1,color2, color3;
float d;
int EspacioY=40;

void setup(){
  size(800, 400);
  image = loadImage("03.jpg");
  i=0;
  j=0;
  color1 = color(255, 0, 0);
  color2 = color(0, 0, 255);
  color3 = color(0, 255, 0);

}

void draw(){
  background(255);

  //atras
for(int i=20; i<=800; i+=85){
for (int j=380; j<=800; j+=70){ 
circle(j,i,70);
circle(j,i,60);
circle(j,i,48);
circle(j,i,36);
circle(j,i,22);
circle(j,i,6);
 }
 }
 //adelante
 for(int i=-20; i<=800; i+=85){
for (int j=420; j<=800; j+=70){
circle(j,i,70);
circle(j,i,60);
circle(j,i,48);
circle(j,i,36);
circle(j,i,22);
circle(j,i,6);
     }
     image(image, 0, 0, 400, 400  );
 }
                
}
//funcion que retorna
float colores(int color3, int color1, int color2){ 
  return color1 + color3 - color2;
}

//funcion que no retorna
void miFuncion(int y, int x){
  beginShape();
  circle(y,x,100);
  vertex(450,80);
  vertex(640,80);
  vertex(540,320);
  vertex(420,280);
  vertex(640,180);
  endShape();
} 


  void mouseDragged(){
    if(mousePressed){
      float d = dist(mouseX, mouseY, j + 500, i * EspacioY + 90);
      float mezcla = map(d, 0, 300, 0, 1);
      color combinado = lerpColor(color1, color2, mezcla);
      fill(combinado);
     
    }
    
  }
 void mousePressed(){
    if(mousePressed){  
      colores(color1, color2, color3);
     color colores = lerpColor(color1, color3, color2);
     fill(colores);
    }
   
}

   void keyPressed(){
     if(keyPressed){
     }if(key =='z'){
    reiniciarVariables();
    fill(255);
  
   }else if(key =='x'){
   miFuncion(y,x);
     }
   }
   

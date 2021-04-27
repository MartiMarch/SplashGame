PImage imagen;
int ancho, alto, nuevoAncho;
int contador;
final int SPEED = 25;
final float dt = 0.1;

void setup(){
 size(600, 600);
 orientation(PORTRAIT);
 imagen = loadImage("back.png");
 
 ancho = imagen.width;
 alto = imagen.height;
 
 nuevoAncho = round((ancho * height) / alto);
 
 imagen.resize(nuevoAncho, height);
 
 textAlign(LEFT, LEFT);
 stroke(0,0,0);
 textSize(36);
}

void draw(){
 contador -= dt * SPEED;
 
 if(contador <= -imagen.width || contador >= +imagen.width){
   contador = 0;
 }
 
 image(imagen, contador, 0);
 image(imagen, contador + imagen.width, 0);
 image(imagen, contador - imagen.width, 0);
}

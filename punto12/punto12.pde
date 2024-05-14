Tanque tank;
Player player;
Bala bala;

void setup(){
  size(800, 800);
  
  // Cargar imágenes
  PImage tankImage = loadImage("tanque.png");
  PImage targetImage = loadImage("target.jpg");
  PImage balaImage = loadImage("bala.png");
  
  
  tank = new Tanque(new PVector(width/2-12, height/2-32), balaImage, tankImage, 180);
  player = new Player(new PVector(width/4, height/2), targetImage);
  
}

void draw(){
  background(255);
  
  // Actualizar y dibujar objetos del juego
  player.position.x = mouseX;
  player.position.y = mouseY;
  tank.update(player.position);
  tank.display();
  player.display();
  println(dist(player.position.x, player.position.y, tank.position.x, tank.position.y));
  line(player.position.x, player.position.y, tank.position.x, tank.position.y);
  tank.detectarplayer(player);
  if(dist(player.position.x, player.position.y, tank.position.x, tank.position.y) <= 150){
    tank.disparar();
  }
}

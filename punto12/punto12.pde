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
  bala = new Bala(tank.position, new PVector(0, 0), balaImage);
}

void draw(){
  background(255);
  
  player.position.x = mouseX;
  player.position.y = mouseY;
  
  tank.update(player.position);
  tank.display();
  player.display();
  bala.update();
  bala.display();
  
  //println(dist(player.position.x, player.position.y, tank.position.x, tank.position.y));
  line(player.position.x, player.position.y, tank.position.x, tank.position.y);
  
}

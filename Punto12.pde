Tanque tank;
Player player;

void setup() {
  size(800, 600);
  
  // Cargar imágenes
  PImage tankImage = loadImage("tank.png");
  PImage targetImage = loadImage("target.png");
  PImage bulletImage = loadImage("bullet.png");
  
  // Crear objetos del juego
  tank = new Tanque(new PVector(width/2, height/2), tankImage, bulletImage);
  player = new Player(new PVector(random(width), random(height)), targetImage);
}

void draw() {
  background(255);
  
  // Actualizar y dibujar objetos del juego
  tank.update(target.position);
  tank.display();
  player.update();
  player.display();
}

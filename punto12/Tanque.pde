class Tanque{
  float angle;
  float turretAngle;
  float balaSpeed;
  PVector position;
  PImage balaImage;
  PImage image;
  Player target;
  float vision;
  PVector direccion;
  
  Tanque(PVector position, PImage balaImage, PImage image, float vision) {
    this.position = position;
    this.balaImage = balaImage;
    this.image = image;
    this.vision = vision;
    balaSpeed = 5;
  }
  
  public void update(PVector targetPosition) {
    // Rotar hacia el objetivo
    direccion = PVector.sub(targetPosition, position);
    
    if(direccion.mag() < vision){
      direccion.normalize();
      position.add(direccion.mult(1.5));
      angle = atan2(direccion.y, direccion.x);
    }
    
    // Disparar si el objetivo está dentro del rango
    if (dist(position.x, position.y, targetPosition.x, targetPosition.y) < 150) {
      disparar();
    }
  }
  
  public void display(){
    ellipse(position.x, position.y, 300, 300);
    image(image, position.x-12, position.y-32);
  }
  
  public void detectarplayer(Player target){
    this.target = target;
  }
  
  public void disparar() {
    if(target != null){
      /*float angle = degrees(PVector.angleBetween(new PVector(1, 1), PVector.sub(target.position, position)));
      if (angle < vision/1.5) {
        image(balaImage, position.x + 50, position.y);
      }*/
      Bala bala1 = new Bala(position.copy(), PVector.fromAngle(angle).mult(balaSpeed), balaImage);
      bala1.display();
      bala1.update();
    }
  }
}

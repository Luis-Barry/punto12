class Tanque{
  float angle;
  float turretAngle;
  float balaSpeed;
  PVector position;
  PImage balaImage;
  PImage image;
  Player target;
  float vision;
  float tiempo =0;
  
  Tanque(PVector position, PImage balaImage, PImage image, float vision) {
    this.position = position;
    this.balaImage = balaImage;
    this.image = image;
    this.vision = vision;
    balaSpeed = 5;
  }
  
  public void update(PVector pl) {
    PVector direccion = PVector.sub(pl, position);
    
    if(direccion.mag() < vision){
      direccion.normalize();
      position.add(direccion.mult(.5));
      angle = atan2(direccion.y, direccion.x);
      println(millis());
      if(millis() - tiempo >= 1000){
        disparar();
        tiempo = millis();
      }
    }
  }
  
  public void display(){
    ellipse(position.x, position.y, 300, 300);
    image(image, position.x-12, position.y-32);
  }
 
  void disparar() {
    bala.position = position.copy();
    bala.velocity = PVector.fromAngle(angle).mult(balaSpeed);
  }
}

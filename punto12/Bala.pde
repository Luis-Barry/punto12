class Bala{
  PVector position;
  PVector velocity;
  PImage image;
  
  Bala(PVector position, PVector velocity, PImage image) {
    this.position = position;
    this.velocity = velocity;
    this.image = image;
  }
  
  public void update() {
    position.add(velocity);
  }
  
  public void display(){
    image(image, position.x, position.y);
  }
}

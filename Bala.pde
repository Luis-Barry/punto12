class Bala{
  PVector position;
  PVector velocity;
  
  Bala(PVector position, PVector velocity) {
    this.position = position;
    this.velocity = velocity;
  }
  
  void update() {
    position.add(velocity);
  }
  
  public void display(){
    // Dibujar la bala
    fill(0);
    ellipse(position.x, position.y, 5, 5);
  }
}

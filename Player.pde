class Player{
  PVector position;
  
  Player(PVector position) {
    this.position = position;
  }
  
  void update() {
    // Mover el objetivo de manera aleatoria
    position.add(PVector.random2D().mult(random(3)));
  }
  
  public void display(){
    // Dibujar el objetivo
    fill(255, 0, 0);
    ellipse(position.x, position.y, 20, 20);
  }
}

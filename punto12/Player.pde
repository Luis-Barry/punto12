class Player{
  PVector position;
  
  Player(PVector position) {
    this.position = position;
  }
  
  public void display(){
    // Dibujar el objetivo
    fill(255, 0, 0);
    ellipse(position.x, position.y, 20, 20);
  }
}

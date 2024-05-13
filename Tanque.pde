class Tanque{
  float angle;
  float turretAngle;
  float bulletSpeed;
  PVector position;
  PImage bulletImage;
  
  Tanque(PVector position, PImage bulletImage) {
    this.position = position;
    this.bulletImage = bulletImage;
    bulletSpeed = 5; // Velocidad de la bala
  }
  
  void update(PVector targetPosition) {
    // Rotar hacia el objetivo
    PVector direction = PVector.sub(targetPosition, position);
    angle = atan2(direction.y, direction.x);
    
    // Rotar la torreta hacia el objetivo
    turretAngle = atan2(direction.y, direction.x);
    
    // Disparar si el objetivo está dentro del rango
    if (dist(position.x, position.y, targetPosition.x, targetPosition.y) < 200) {
      shoot();
    }
  }
  
  public void display(){
    // Dibujar tanque
    pushMatrix();
    translate(position.x, position.y);
    rotate(angle);
    // Dibujar el cuerpo del tanque
    fill(100);
    rect(-20, -10, 40, 20);
    popMatrix();
    
    // Dibujar torreta
    pushMatrix();
    translate(position.x, position.y);
    rotate(turretAngle);
    // Dibujar la torreta del tanque
    fill(150);
    rect(0, -5, 30, 10);
    popMatrix();
  }
  
  void shoot() {
    // Crear y disparar una bala
    Bullet bullet = new Bullet(position.copy(), PVector.fromAngle(turretAngle).mult(bulletSpeed));
    bullet.draw();
  }
}

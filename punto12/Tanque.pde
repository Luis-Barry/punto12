class Tanque{
  float angle;
  float turretAngle;
  float bulletSpeed;
  PVector position;
  PImage bulletImage;
  
  Tanque(PVector position, PImage bulletImage) {
    this.position = position;
    this.bulletImage = bulletImage;
    bulletSpeed = 5;
  }
}

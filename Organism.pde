class Organism{
  PVector location, velocity, acceleration;
  int fieldOfView = 0;
  float time = 0;
  float topSpeed = 5;
  float lifeLength = 15;
  
  boolean dead = false;
  
  Organism(int x, int y){
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void update(){
    time = time + (0.01 * lifeLength);
    
    if (time >= lifeLength){
      dead = true;
      acceleration.x = 0;
      acceleration.y = 0;
      velocity.x = 0;
      velocity.y = 0;
    }
    
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
  }
  
  void changeAcceleration(float x, float y){
    PVector dir = new PVector(x, y);
    dir.normalize();
    acceleration = dir;
  }
}

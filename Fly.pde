class Fly{
  
  PVector location, velocity, acceleration;
  int fieldOfView = 0;
  float time = 0;
  float topSpeed = 5;
  
  Fly(){
    location = new PVector (random(width), random(height));
    velocity = new PVector (random(-2, 2), random(-2, 2));
    acceleration = new PVector (0, 0);
  }
  
  void update(){ //updates the fly's position, and calculates its acceleration
    time = time + (0.1 * topSpeed); //update the amount of time that has passed, if the fly is faster increase how far along the curve we go
    
    PVector dir = new PVector (map(noise(time), 0, 1, -2, 2), map(noise(time + 1), 0, 1, -2, 2)); //find acceleration based on two perlin noise curves 
    dir.normalize();
    dir.mult(0.1); //normalize the acceleration and multiply it by 0.1
    
    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(topSpeed); //limit the fly to its top speed
    
    location.add(velocity);
  }
  
  void checkEdges(){ //if we hit an edge, bounce back off of it
    if ((location.x > width) || (location.x < 0)){
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)){
      velocity.y = velocity.y * -1;
    }
  }
  
  void display(){ //displays the fly
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 8, 8);
  }
  
}

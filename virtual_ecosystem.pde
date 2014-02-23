Fly flyOne;

void setup(){
  size(960, 640);
  flyOne = new Fly();
  
  flyOne.fieldOfView = 0;
  flyOne.topSpeed = 3;
}

void draw(){
  background(255);
  flyOne.checkEdges();
  flyOne.update();
  flyOne.display();
}

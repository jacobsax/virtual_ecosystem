byte animals_size = 20;

Organism [] animals = new Organism[animals_size];

void setup(){
  size(640, 360);
  
  for (byte i = 0; i < animals_size; i++){
    animals[i] = new Organism();
  }
  
  
}

void draw(){
  background(255);
  
  for (byte i = 0; i < animals_size; i++){
    animals[i].checkEdges();
    animals[i].update();
    animals[i].display();
  }
  
}

class World {
  
float posX;
float posY;
float mass;
float radius;
float W;
float Th = 0;


World(float _posX, float _posY, float _mass, float _radius, float _W){
  
  posX = _posX;
  posY = _posY;
  mass = _mass;
  radius = _radius;
  W = _W;
}

void update(){
  Th = Th + W;
}

void display(){
  stroke(0);
  strokeWeight(3);
  fill(200);
  pushMatrix();
    translate(posX,posY);
    ellipse(0,0,2.0*radius, 2.0*radius);
    rotate(Th);
    line(0,0,0,radius);
 popMatrix();
}

}

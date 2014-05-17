/*objects needed

the planet or space station
city
the satellite
enemy projectile

*/

World myWorld;

void setup(){
  size(600,600);
  myWorld = new World(width/2, 1200, 3, 800, 0.01);
}

void draw(){
  background(50,0,50);
  myWorld.update();
  myWorld.display();
  
  if(mousePressed){
    if(myWorld.posY > height/2){
    myWorld.posY = myWorld.posY - 2;
    myWorld.radius = 0.996*myWorld.radius;
    } 
  } else if(myWorld.posY < 1200){
    myWorld.posY = myWorld.posY + 2;
    myWorld.radius = (1/0.996)*myWorld.radius;   
    }
}


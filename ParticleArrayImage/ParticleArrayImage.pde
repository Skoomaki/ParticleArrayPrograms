ArrayList<Particle> listOfParticles;      // An ArrayList is a resizeable array, which is pretty handy. 
                                          // Here we are declaring that we're going to create an ArrayList and put
                                          // Particle objects in it. 
                                          
                                          // Take a look at the ArrayList references here:  https://processing.org/reference/ArrayList.html
                                          // and here:   https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html
PImage pic; 

void setup(){
  
  size(800, 500); 
  pic = loadImage("test3.jpg");                   //image to be used is loaded
  
  listOfParticles = new ArrayList<Particle>();    // call the constructor for the ArrayList (because ArrayList is a class too)
  colorMode(HSB, 100);
  frameRate(120);
  
   for (int j = 1000; j>=0; j--) {
  listOfParticles.add(new Particle(new PVector(random(width), random(height)), // add a new Particle to the ArrayList
    10, 
    color(random(0, 100), 100, 100), 
    new PVector(random(-4, 4), 
    random(-4, 4))));
   }
}
 

void draw(){
  
  background(0, 0, 100);
  



  for (int j = listOfParticles.size() -1 ; j>=0; j--) {

    Particle thisParticle = listOfParticles.get(j);
    thisParticle.updateParticlePosition();                 
    thisParticle.drawParticle();
    if (thisParticle.coords.x > width || thisParticle.coords.x < 0 || thisParticle.coords.y > height || thisParticle.coords.y < 0) {
      thisParticle.speed.x = thisParticle.speed.x * -1;
      thisParticle.speed.y = thisParticle.speed.y * -1;
      
    }
  }
int total = listOfParticles.size();
  println("the number of particles is "+ total);
    
  }


 
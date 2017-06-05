/* 
boid based painting system based on 
Daniel Shiffmans Flocking sketch 
from the Nature of Code
*/

import processing.video.*;

Flock flock;
Movie goat;

void setup() {
  size(1280, 720);
  goat = new Movie(this, "goat.mp4");
  goat.loop();
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 200; i++) {
    Boid b = new Boid(0, random(0, height));
    flock.addBoid(b);
  }
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  flock.run();
}
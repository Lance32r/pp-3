Mover mover1;
Mover mover2;
void setup() {
size(620,340);
mover1 = new Mover();
mover2 = new Mover();
mover1.radius = 60;
mover2.radius = 90;
mover1.location.set(0+mover1.radius,180);
mover2.location.set(550-mover2.radius,180);
mover1.velocity.set(1,0);
mover2.velocity.set(-2,0);
}
PVector distance = new PVector(0,0);
void draw() {
distance.set(abs(mover1.location.x-mover2.location.x),0);
background(255);
mover1.update();
mover2.update();
mover1.checkEdges();
mover2.checkEdges();
mover1.display();
mover2.display();
println(distance.mag());
if(distance.mag()<= mover1.radius){
mover1.velocity.set(-1,0);
mover2.velocity.set(1,0);
}
}
class Mover {
PVector location;
PVector velocity;
float radius;
Mover(){
location = new PVector(0,0);
velocity = new PVector(0,0);
}
void update(){
location.add(velocity);
}
void display() {
stroke(0);
fill(175);
circle(location.x, location.y, radius);
}
void checkEdges() {
if (location.x > width) {
velocity.x=velocity.x*-1;
} else if (location.x < 0) {
velocity.x=velocity.x*-1;
}
if (location.y > height) {
velocity. y = velocity.y*-1;
}else if (location.y < 0) {
velocity.y = velocity.y*-1;
}
}
}

float x=300;
float y=260;
float x2=260;
float y2=150;
float xspeed=1;
float yspeed=1;
 
void setup(){
size (600, 300) ;
background (200) ;
}

void draw() {

x=x+xspeed;
y=y+yspeed;
x2=x2+xspeed;
y2=y2+yspeed;

if((x>width)||(x<0) ) {
 xspeed=xspeed*-1;
}
if((y>height) ||(y<0)) {
 yspeed=yspeed*-1;
}
if ((x2>width) ||(x2<0) ) {
xspeed=xspeed*-1;
}
if((y2>height) ||(y2<0)) {
yspeed=yspeed*-1;
}

ellipse (x,y,30, 30) ;
ellipse (x2, y2 ,40, 40) ;
}

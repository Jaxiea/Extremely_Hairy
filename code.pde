float spin = 0.0;
float line_leng = 200;
float rotation = 0.2;
int i = 0;
float travel = 0.2;


void setup(){
  size(800, 800, P3D);
  background(255);

}

void draw(){

  translate(width/2, height/2, 0);

  beginCamera();
  camera();
  translate(400, 400);
  rotateY(- PI/7 - spin);
//  rotateX(- PI/7 - spin);
//  rotateZ(- PI/7 - spin);
  endCamera();
   
  /*
  pushMatrix();
  stroke(#FC0303);
  strokeWeight(2);
  noFill();
  camera();
  translate(width/2, height/2, 0);
  rect(-68, -40, 136, 80);
  popMatrix();
  */
  
   shape_drawing();
  
  spin += 0.01; 


  
}

void shape_drawing(){

  
   beginShape(LINES);
   pushMatrix();
   //translate(width/2, height/2, 0);
   //rotateY(PI/spin);
   //rotate(radians(rotation));
   stroke(0);
   if (random(4)>3.9){
     stroke(#FF0000);
   }
   strokeWeight(0.5);
   
   vertex(random(-line_leng), random(-line_leng), random(line_leng));
   vertex(random(line_leng), random(line_leng), random(line_leng));
   popMatrix();
   rotation += 20; 
   travel += 0.2;
   endShape();

}

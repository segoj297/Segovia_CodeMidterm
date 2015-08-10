
float r = 60;
float speed = 0.05;
float theta = 10;
color rainbow;
int hue;
boolean xwave, ywave, spiral, curtain;

void setup(){
  size (300,500);
  background (0);
  colorMode (HSB, 360, 100, 100);
  xwave = true;
  
}

void draw(){
  
  fill (0,8);
  rect (0,0,width,height);

  if(xwave == true){
  r = 60;
  float x = r * cos(frameCount*speed);
  float y = r * sin(frameCount*speed);
  noStroke ();
  hue = (hue + 10) % 67;
  rainbow = color(hue, 100, 100);
  fill (rainbow);
  translate (width/2, height/2); 
  ellipse (x, y, 20, 800);
  
  }
  
  if(ywave == true){
  r = 60;
  float x = r * cos(frameCount*speed);
  float y = r * sin(frameCount*speed);
  noStroke ();
  hue = (hue + 10) % 67;
  rainbow = color(hue, 100, 100);
  fill (rainbow);
  translate (width/2, height/2); 
  ellipse (x, y, 800, 20);

  }
  
  if (spiral == true){
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  noStroke ();
  hue = (hue + 10) % 67;
  rainbow = color(hue, 100, 100);
  fill (rainbow);
  translate (width/2, height/2);
  ellipse (x, y, 20, 20);
  
  theta += 1;
  r +=0.5;
  
  }
  
  if (curtain == true){
  float speed = 0.05;
  float r = 180;
  float x = r * cos(frameCount);
  float y = r * sin(frameCount*speed);
  
  noStroke ();
  hue = (hue + 10) % 67;
  rainbow = color(hue, 100, 100);
  fill (rainbow);
  translate (width/2, height/2); 
  ellipse (x, y, 10, 10);
  
  }
}

void keyPressed(){
  
if (key=='1'){
  xwave = true;
  ywave = false;
  spiral = false;
  curtain = false;
}

if (key=='2'){
   xwave = false;
   ywave = true;
   spiral = false;
   curtain = false;
 }
 if (key=='3'){
    xwave = false;
    ywave = false;
    spiral = true;
    curtain = false;
  }
  
 if (key=='4'){
    xwave = false;
    ywave = false;
    spiral = false;
    curtain = true;
  }

}



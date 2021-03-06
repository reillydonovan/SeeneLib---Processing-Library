import algAndBeau.seenelib.*;

SeeneLibrary seeneLibrary;
SeeneObject so;
void setup() 
{
  size(700,700,P3D);
  seeneLibrary = new SeeneLibrary(this);
  println(seeneLibrary);

  so = seeneLibrary.createSeeneObjectFromFile("/Users/admin/processing-library-template/seene/data/scene.oemodel",
                                              "/Users/admin/processing-library-template/seene/data/poster.jpg");
}

void draw() 
{
  background(0);
  fill(255);
  translate(width/2,height/2,-500);
  pushMatrix();
  for(int i = 0; i < 50; i++)
  {
    translate(mouseX/2,mouseY/2-height/4,-500);
    rotateY(PI*(mouseX*1.f/width-1/2));
    so.draw();
  }
  popMatrix();
}
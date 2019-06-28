///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu
int count  = 0;
int numFrames = 11;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;



PImage img;

void setup(){
  size(500, 500, P3D);
  
  
  frameRate(3);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName);
        //delay(1000);
       }

  
  
  
  img = new PImage(500,500);
  
 
}

void draw(){
  
  count++;
       if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
 
 
 pushMatrix();
 translate(0,500);
 rotate(radians(-90));
 scale(-1.0, 1.0);
 image(img,-img.width,0);
 popMatrix();




saveFrame("output/Art3Flip_####.png");

}
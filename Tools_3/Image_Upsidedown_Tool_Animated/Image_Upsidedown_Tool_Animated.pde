///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu
int count  = 0;
int numFrames = 11;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;

int count2;

PImage img;

void setup(){
  size(568, 320, P3D);
  
  
  frameRate(5);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName);
        //delay(1000);
       }

  
  
  
  img = new PImage(568,320);
  
  count2 = img.width * img.height;
 
}

void draw(){
  
  count++;
       if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
 
 
 img.loadPixels();
 loadPixels();
for (int i = 0; i < count2; i++) {
  pixels[i] = img.pixels[count2 - i - 1];
}
updatePixels();




saveFrame("output/Art_####.png");

}
///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu

int count  = 0;
int numFrames = 10;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;



PImage img;

void setup(){
  size(1920, 1080);
  frameRate(1);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName);
        //delay(1000);
       }

  
  
  
  img = new PImage(1920,1080);
  
 
}

void draw(){
  
  count++;
       if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
  
  //background();
  //tint(1, 0);
  //image(img, -1000,-1000);
  img.resize(1920, 1080);
  image(img, 0, 0);


saveFrame("output/Art_####.png");

/*
if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }
    */

}
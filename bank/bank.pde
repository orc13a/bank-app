PFont roboR;

ArrayList<Component> allButtons = new ArrayList<Component>();

void setup() {
  size(700, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  
  smooth(8);
  pixelDensity(1);
  
  roboR = createFont("Roboto/Roboto-Regular.ttf", 12);
  textFont(roboR);
  
  allButtons.add(new ButtonToggle(125, 100, 200, 150, "10")); 
  allButtons.add(new ButtonToggle(350, 100, 200, 150, "100")); 
  allButtons.add(new ButtonToggle(575, 100, 200, 150, "1000"));
}

void draw() {
  clear();
  background(255);
  
  for(Component button : allButtons ) {
    button.display();
  }
}

void mousePressed() {
}

void mouseReleased() {
}

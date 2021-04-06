PFont roboR;

ArrayList<Component> allButtons = new ArrayList<Component>();

void setup() {
  size(700, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  
  smooth(8); //Til udseendet 
  pixelDensity(1);
  
  roboR = createFont("Roboto/Roboto-Regular.ttf", 12); //Til skrifttypen
  textFont(roboR);
  
  allButtons.add(new ButtonToggle(125, 100, 200, 150, "$10")); 
  allButtons.add(new ButtonToggle(350, 100, 200, 150, "$100")); 
  allButtons.add(new ButtonToggle(575, 100, 200, 150, "$1000"));
  allButtons.add(new Button(125, (height - 100), 200, 150, "Transfer"));
}

void draw() {
  clear();
  background(255);
  
  for(Component button : allButtons) {
    button.display();
  }
}

void mousePressed() {
  for(Component button : allButtons) {
    button.pressed();
  }
}

void mouseReleased() {
  for(Component button : allButtons) {
    button.released();
  }
}

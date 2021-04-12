PFont roboR; //Font

float addValue = 0; // Den samlede værdi man vil tilføje til sin konto

Button transferButton; // Her laver vi knappens variabel
Account myAcc; // Her laver vi kontoens variabel

ArrayList<Component> allButtons = new ArrayList<Component>(); //ArrayListe for alle vores knapper

void setup() {
  size(700, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  
  smooth(8); //Til udseendet 
  pixelDensity(1);
  
  roboR = createFont("Roboto/Roboto-Regular.ttf", 12); //Til skrifttypen
  textFont(roboR);
  
  transferButton = new Button(125, (height - 100), 200, 150, "Transfer", 0); //Her laver vi objektet
  
  allButtons.add(new ButtonToggle(125, 100, 200, 150, "$10", 10));  //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(new ButtonToggle(350, 100, 200, 150, "$100", 100)); //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(new ButtonToggle(575, 100, 200, 150, "$1000", 1000)); //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(transferButton); // Her tilføjer vi knappen til vores arrayliste
  
  myAcc = new Account(575, (height - 25), 200, 150); //Her laver vi objektet
}

void draw() {
  clear();
  background(255);
  // Vi looper vores arrayliste igennem og gør det samme for alle knapperne
  for(Component button : allButtons) {
    button.display();
  }
  
  myAcc.display();
}

void mousePressed() {
  // Vi looper vores arrayliste igennem og gør det samme for alle knapperne
  for(Component button : allButtons) {
    button.pressed();
  }
}

void mouseReleased() {
  // Vi looper vores arrayliste igennem og gør det samme for alle knapperne
  for(Component button : allButtons) {
    button.released();
  }
  // Hvis man har musen over transfer knappen, kan man clicke
  if (transferButton.toggleCheck() == true) {
    if(myAcc.userInput.length() != 0) {
      addValue += int(myAcc.userInput);
    }
    myAcc.add(addValue);
    
    for(Component button : allButtons) {
    button.reset();
    }
    
    addValue = 0;
  }
}

void keyPressed(){
  myAcc.customValue();
}

bank bankLib = new bank();

PFont roboR; //Font

bank transferButton; // Her laver vi knappens variabel
bank myAcc; // Her laver vi kontoens variabel

float addValue = 0; // Den samlede værdi man vil tilføje til sin konto

ArrayList<bank> allButtons = new ArrayList<bank>(); //ArrayListe for alle vores knapper

void setup() {
  size(700, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  
  smooth(8); //Til udseendet 
  pixelDensity(1);
  
  roboR = createFont("Roboto/Roboto-Regular.ttf", 12); //Til skrifttypen
  textFont(roboR);
  
  transferButton = new bankLib.button(125, (height - 100), 200, 150, "Transfer", 0, this); //Her laver vi objektet
  
  allButtons.add(new ButtonToggle(125, 100, 200, 150, "$10", 10, this));  //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(new ButtonToggle(350, 100, 200, 150, "$100", 100, this)); //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(new ButtonToggle(575, 100, 200, 150, "$1000", 1000, this)); //Her laver vi objektet & her tilføjer vi knappen til vores arrayliste
  allButtons.add(transferButton); // Her tilføjer vi knappen til vores arrayliste
  
  myAcc = new Account(575, (height - 25), 200, 150, this); //Her laver vi objektet
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
    myAcc.add(addValue);
  }
}

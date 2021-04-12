class Button extends Component {
  boolean isPressed = false; // Buttons state
  color buttonColour = #078fff;
  int value;
  
  Button(float x_, float y_, float w_, float h_, String text_, int value_) {  
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    text = text_;
    value = value_;
  }
  // Skal være her for at subclassen overider
  void pressed() {
  }
  // Skal være her for at subclassen overider
  void released() {
  }
  
  void display() {
    // Tjekker om der er trykket ned (knappen er valgt), og putter så stroke på den knap, så man kan visualisere det
    if(isPressed == true){
      stroke(0);
    } else {
      noStroke();
    }
    
    fill(buttonColour);
    rect(x, y, w, h, 10);
    
    fill(255);
    textSize(50);
    text(text, x, y+15);
  }
}

class ButtonToggle extends Button {
  ButtonToggle(float x_, float y_, float w_, float h_, String text_, int value_){
    //Kører forældreklassens construktør
    super(x_, y_, w_, h_, text_, value_);
  }
  
  void pressed() {
    //Tjekker om musen er over knappen
    if(toggleCheck() == true){
      // Hvis den ikke er valgt, skal knappen vælges
      if (isPressed == false) {
        isPressed = true;
        
        myAcc.addValue += value; // Tilføjer knappens værdi til den samlede tilføjelsesværdi
      } else {
        isPressed = false;
         
        myAcc.addValue -= value;
      }
    }
  }

  void released() {
  }
}

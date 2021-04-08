class Button extends Component {
  boolean isPressed = false; // Buttons state
  color buttonColour = #078fff;
  int value;
  
  Button(float x_, float y_, float w_, float h_, String text_, int value_, PApplet p_) {  
    super(x_, y_, w_, h_, text_, p_);
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
      p.stroke(0);
    } else {
      p.noStroke();
    }
    
    p.fill(buttonColour);
    p.rect(x, y, w, h, 10);
    
    p.fill(255);
    p.textSize(50);
    p.text(text, x, y+15);
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
        
        addValue += value; // Tilføjer knappens værdi til den samlede tilføjelsesværdi
      } else {
        isPressed = false;
         
        addValue -= value;
      }
    }
  }

  void released() {
  }
}

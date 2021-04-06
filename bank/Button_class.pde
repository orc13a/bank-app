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

  void pressed() {
  }

  void released() {
  }

  void display() {
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
    super(x_, y_, w_, h_, text_, value_);
  }
  
  void pressed() {
    if(toggleCheck() == true){
      if (isPressed == false) {
        isPressed = true;
        
        addValue += value;
      } else {
        isPressed = false;
        
        addValue -= value;
      }
    }
  }

  void released() {
    //isPressed = false;
  }
}

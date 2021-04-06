class Button extends Component {
  boolean checked = false; // Buttons state
  color buttonColour = #078fff; 

  void pressed() {
  }

  void released() {
  }

  void display() {
    noStroke();
    fill(buttonColour);
    rect(x, y, w, h, 10);
    
    fill(255);
    textSize(50);
    text(text, x, y+15);
  }
}

class ButtonToggle extends Button {
  ButtonToggle(float x_, float y_, float w_, float h_, String text_) {  
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    text = text_;
  }

  void pressed() {
  }

  void released() {
  }
}

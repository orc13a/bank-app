class Component {
  float x; // Pos x
  float y; // Pos y
  float w; // Width
  float h; // Height
  String text;
  
  void display() {
  }
  
  boolean toggleCheck(){
    if(mouseX >= (x - (w/2)) && mouseX <= (x + (w/2)) && mouseY >= (y - (h/2)) && mouseY <= (y + (h/2))){
        return true;
    } else {
      return false;
    }
  }
  
  void pressed() {
  }

  void released() {
  }
}

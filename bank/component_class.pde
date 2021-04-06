class Component {
  float x; // Pos x
  float y; // Pos y
  float w; // Width
  float h; // Height
  String text;
  
  void display() {
  }
  
  boolean toggleCheck(){
    if(mouseX >= x && mouseX <= (x + w) && mouseY >= y && mouseY <= (y + h)){
        return true;
    } else {
      return false;
    }
  }
}

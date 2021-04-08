class Component {
  float x; // Pos x
  float y; // Pos y
  float w; // Width
  float h; // Height
  String text;
  PApplet p;
  
  Component(float x_, float y_, float w_, float h_, String text_, PApplet p_) {  
    this.x = x_;
    this.y = y_;
    this.w = w_;
    this.h = h_;
    this.text = text_;
    this.p = p_;
  }
  
  void display() {
  }
  // Denne metode bruges i hele koden til at tjekke alle knapper
  boolean toggleCheck(){
    //Detekterer om musen er indefor knappens område, og dermed om knappen skal aktiveres hvis der clickes
    if(mouseX >= (x - (w/2)) && mouseX <= (x + (w/2)) && mouseY >= (y - (h/2)) && mouseY <= (y + (h/2))){
      return true;
    } else {
      return false;
    }
  }
  // Skal være her for at subclassen overider
  void pressed() {
  }
  // Skal være her for at subclassen overider
  void released() {
  }
}

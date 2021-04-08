class Account extends Component {
  float balance = 0;
  
  Account(float x_, float y_, float w_, float h_, PApplet p_) {
    super(x_, y_, w_, h_, "", p_);
  }
  
  void add(float v) {
    balance += v;
  }
  
  void display() {
    p.strokeWeight(4);
    p.stroke(#078fff);
    p.fill(255);
    p.rect(x, (y - (h / 2)), w, h, 10);
    
    p.fill(0);
    p.text("$" + int(balance), x, (y - (h / 2) + 15));
  }
}

class Account extends Component {
  float balance = 0;
  
  Account(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  
  void add(float v) {
    balance += v;
  }
  
  void display() {
    strokeWeight(4);
    stroke(#078fff);
    fill(255);
    rect(x, (y - (h / 2)), w, h, 10);
    
    fill(0);
    text("$" + int(balance), x, (y - (h / 2) + 15));
  }
}

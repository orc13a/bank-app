class Account extends Component {
  float balance = 0;
  String userInput = "0"; 
  
  
  Account(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  
  void add(float v) {
    balance += v;
    userInput = "0";
  }
  
  
  void display() {
    strokeWeight(4);
    stroke(#078fff);
    fill(255);
    rect(x, (y - (h / 2)), w, h, 10);
    
    fill(0);
    text("$" + int(balance), x, (y - (h / 2) + 15));
    
    inputField();
  }
  
  void inputField() {
    strokeWeight(4);
    stroke(#078fff);
    fill(255);
    rect(238, height/2, w * 2 + 25, h, 10);
    
    
    fill(0);
    text('$' ,75, height/2+15);
    textAlign(LEFT);
    text(userInput, 100, height/2 + 15);
    textAlign(CENTER);
  }
  
   void customValue(){
     if (key == BACKSPACE && key != ENTER && userInput.length() > 0) {
      userInput = userInput.substring(0, userInput.length() - 1);
    } else if (key != BACKSPACE && key != ENTER && userInput.length() < 10) {
      if(userInput.length() == 1 && userInput == "0"){
      userInput = "";
      }
      
      if (key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9' || key == '0') {
        userInput += key; 
      }
    } else if(userInput.length() == 0) {
      userInput = "0";
    }
   }
}

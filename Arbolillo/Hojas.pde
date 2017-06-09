class Hoja {
  PVector pos;

  Hoja(PVector l) {
    pos = l.get();
  }

  void display() {
    noStroke();
    fill(random(175),100,255);
    ellipse(pos.x,pos.y,8,8);   
  }
}
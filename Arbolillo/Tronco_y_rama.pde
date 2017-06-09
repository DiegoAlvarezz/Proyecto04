ArrayList<Rama> arb;
ArrayList<Hoja> hojas;

void settings() {
  size(1000, 540);
}

void setup() {
 
  colorMode(HSB);
  background(0);
  //////////////////////////////////
  arb = new ArrayList<Rama>();
  hojas = new ArrayList<Hoja>();
  ////////////////////////////////////
  Rama b = new Rama(new PVector(width/2,height),new PVector(0,-1),100);
////////////////////////////
  arb.add(b);
}

void draw() {
  background(0);
  for (int i = arb.size()-1; i >= 0; i--) {
    ////////
    Rama b = arb.get(i);
    b.update();
    b.render();
    ///////// 
    if (b.ramificacion()) {
      
      if (arb.size() < 3000) {
          
        arb.add(b.rama( 30 ));   // Add one going right
        arb.add(b.rama( -25 ));   // Add one going left
     
    } 
      else {
        hojas.add(new Hoja(b.fin));
      }
    }
  }
  
  for (Hoja leaf : hojas) {
     leaf.display(); 
  }

}
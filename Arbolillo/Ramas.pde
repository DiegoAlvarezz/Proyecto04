class Rama {
  PVector inicio;
  PVector fin;
  PVector vel;
  float cronometro;
  float inicioCronometro;
////////////////////////////////////////////////
  boolean crecimiento = true;
///////////////////////////////////////////////
  Rama(PVector l, PVector v, float n) {
    inicio = l.get();
    fin = l.get();
    vel = v.get();
    inicioCronometro = n;
    cronometro = inicioCronometro;
  }
   void update() {
    if (crecimiento) {
      fin.add(vel);
    }
  }

    void render() {
    stroke(random(186),255,255);
    strokeWeight(4);
    
    line(inicio.x,inicio.y,fin.x,fin.y);
  }

  // Did the timer run out?
  boolean ramificacion() {
    cronometro--;
    if (cronometro < 0 && crecimiento) {
      crecimiento = false;
      return true;
    } 
    else {
      return false;
    }
  }
 Rama rama(float angle) {
    
    float theta = vel.heading2D();
    float mag = vel.mag();
    theta += radians(angle+random(PI,TWO_PI));
    PVector newvel = new PVector(mag*cos(theta),mag*sin(theta));
    return new Rama(fin,newvel,inicioCronometro*random(0.750f,0.80f));
  }

}
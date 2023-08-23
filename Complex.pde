final Complex ZERO = new Complex(0, 0);
final Complex ONE = new Complex(1, 0);
final Complex MINUS_ONE = new Complex(-1, 0);
final Complex I = new Complex(0, 1);
final Complex MINUS_I = new Complex(0, -1);

final Complex HALF = new Complex(0.5, 0);
final Complex MINUS_HALF = new Complex(-0.5, 0);
final Complex HALF_I = new Complex(0, 0.5);
final Complex MINUS_HALF_I = new Complex(0, -0.5);

final Complex SQRT_2 = new Complex(1.4142136, 0);
final Complex MINUS_SQRT_2 = new Complex(-1.4142136, 0);
final Complex SQRT_2_I = new Complex(0, 1.4142136);
final Complex MINUS_SQRT_2_I = new Complex(0, -1.4142136);

final Complex INV_SQRT_2 = new Complex(0.7071068, 0);
final Complex MINUS_INV_SQRT_2 = new Complex(-0.7071068, 0);
final Complex INV_SQRT_2_I = new Complex(0, 0.7071068);
final Complex MINUS_INV_SQRT_2_I = new Complex(0, -0.7071068);

class Complex {
  float re = 0.0, im = 0.0;
  
  Complex() {}
  
  Complex(float re_, float im_) {
    re = re_;
    im = im_;
  }
  
  Complex(float x) {
    re = x;
  }
  
  Complex(int x) {
    re = x;
  }
  
  void set(Complex C) {
    re = C.re;
    im = C.im;
  }
  
  void set(float re_, float im_) {
    re = re_;
    im = im_;
  }
  
  void set(PVector v) {
    re = v.x;
    im = v.y;
  }
  
  Complex copy() {
    return this;
  }
  
  PVector PVector() {
    return new PVector(re, im);
  }
  
  
  
  void add(Complex C) {
    re += C.re;
    im += C.im;
  }
  
  void add(float x) {
    re += x;
  }
  
  void sub(Complex C) {
    re -= C.re;
    im -= C.im;
  }
  
  void sub(float x) {
    re -= x;
  }
  
  void mult(Complex C) {
    re = re * C.re - im * C.im;
    im = im * C.re + re * C.im;
  }
  
  void mult(float x) {
    re *= x;
    im *= x;
  }
  
  void div(Complex C) {
    re = (re * C.re + im * C.im) / (C.re * C.re + C.im * C.im);
    im = (im * C.re - re * C.im) / (C.re * C.re + C.im * C.im);
  }
  
  void div(float x) {
    re = (re * x) / (x * x);
    im = (im * x) / (x * x);
  }
  
  void inv() {
    float oldRe = re;
    re /= oldRe * oldRe + im * im;
    im /= -(oldRe * oldRe + im * im);
  }
  
  float mag() {
    return PApplet.sqrt(re * re + im * im);
  }
  
  float magSq() {
    return re * re + im * im;
  }
  
  float angle() {
    return atan2(im, re);
  }
  
  void sq() {
    float oldRe = re;
    re = oldRe * oldRe - im * im;
    im = oldRe * im * 2;
  }
  
  void sqrt() {
    float mag = mag();
    float oldRe = re;
    re = PApplet.sqrt((oldRe + mag) / 2);
    im = sign(im) * PApplet.sqrt((mag - oldRe) / 2);
  }
  
  void exp() {
    Complex z = new Complex(cos(im), sin(im));
    z.mult(PApplet.exp(re));
    set(z);
  }
  
  void log() {
    set(PApplet.log(mag()), angle());
  }
  
  void pow(Complex C) {
    log();
    mult(C);
    exp();
  }
  
  void pow(float b) {
    log();
    mult(b);
    exp();
  }
  
  void norm() {
    float m = mag();
    if(m > 0.0) {
      re /= m;
      im /= m;
    }
  }
  
  void setMag(float m) {
    norm();
    mult(m);
  }
  
  void limit(float m) {
    if(mag() > m) setMag(m);
  }
  
  void rotate(float theta) {
    float sin = sin(theta);
    float cos = cos(theta);
    float oldRe = re;
    re = re    * cos - im * sin;
    im = oldRe * cos + im * sin;
  }
  
  String toString() {
    return re + " + (" + im + "i)";
  }
}

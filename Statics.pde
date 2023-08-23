Complex Complex(float x) {
  return new Complex(x);
}

Complex add(Complex z1, Complex z2) {
  z1.add(z2);
  return z1;
}

Complex add(Complex z, float x) {
  z.add(x);
  return z;
}

Complex sub(Complex z1, Complex z2) {
  z1.sub(z2);
  return z1;
}

Complex sub(Complex z, float x) {
  z.sub(x);
  return z;
}

Complex mult(Complex z1, Complex z2) {
  z1.mult(z2);
  return z1;
}

Complex mult(Complex z, float x) {
  z.mult(x);
  return z;
}

Complex div(Complex z1, Complex z2) {
  z1.div(z2);
  return z1;
}

Complex div(Complex z, float x) {
  z.div(x);
  return z;
}

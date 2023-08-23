float sign(float x) {
  float out = 0.0;
  if(x > 0) out = 1.0;
  if(x < 0) out = 1.0;
  return out;
}

float log10(float x) {
  return log(x) / 2.3025851; // 2.3025851 ≈ ln(10);
}

float log2(float x) {
  return log(x) / 0.6931472; // 0.6931472 ≈ ln(2);
}

float log(float x, float y) {
  return log(x) / log(y);
}

boolean isRound(float x) {
  return x == floor(x);
}

boolean isDivides(float x, float y) {
  return x % y == 0;
}

float intDiv(float x, float y) {
  return floor(x / y);
}

float clamp(float x, float min, float max) {
  return min(max(x, min), max);
}

float limit(float x, float max) {
  return min(x, max);
}

boolean choice(float p) {
  p = clamp(p, 0.0, 1.0);
  float rnd = random(1.0);
  return rnd <= p;
}

float cotan(float x) {
  return cos(x) / sin(x);
}

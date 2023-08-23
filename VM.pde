class VM {
  float mainValue = 0;
  Token[] tokens = {};
  int p = 0;
  
  VM() {}
  
  VM(float initValue) {
    mainValue = initValue;
  }
  
  VM(Token... tokens_) {
    tokens = tokens_;
  }
  
  VM(float initValue, Token... tokens_) {
    mainValue = initValue;
    tokens = tokens_;
  }
  
  void exec(Token token) {
    switch(token.type) {
      case NONE: break;
      case X_VALUE:
        mainValue = token.value;
      break;
      case Z_VALUE:
      break;
      case X_ARRAY:
      break;
      case X_MATRIX:
      break;
      case Z_ARRAY:
      break;
      case Z_MATRIX:
      break;
      case ADD:
      mainValue += token.value;
      break;
      case SUBTRACT:
      mainValue -= token.value;
      break;
      case MULTIPLY:
      mainValue *= token.value;
      break;
      case DIVIDE:
      mainValue /= token.value;
      break;
      case INVERT:
      mainValue = 1.0 / token.value;
      break;
      case SQUARE:
      mainValue *= mainValue;
      break;
      case POW:
      mainValue = pow(mainValue, token.value);
      break;
      case SQRT:
      mainValue = sqrt(mainValue);
      break;
      case ROOT:
      mainValue = pow(mainValue, 1.0 / token.value);
      break;
      case SIN:
      mainValue = sin(mainValue);
      break;
      case COS:
      mainValue = cos(mainValue);
      break;
      case TAN:
      mainValue = tan(mainValue);
      break;
      case ASIN:
      mainValue = asin(mainValue);
      break;
      case ACOS:
      mainValue = acos(mainValue);
      break;
      case ATAN:
      mainValue = atan(mainValue);
      break;
      case EXP:
      mainValue = exp(mainValue);
      break;
      case LOG:
      mainValue = log(mainValue, token.value);
      break;
      case LOGE:
      mainValue = log(mainValue);
      break;
      case LOG2:
      mainValue = log2(mainValue);
      break;
      case LOG10:
      mainValue = log10(mainValue);
      break;
      case ABS:
      mainValue = abs(mainValue);
      break;
      case SIGN:
      mainValue = sign(mainValue);
      break;
    }
  }
    
  void step() {
    exec(tokens[p]);
    p++;
  }
  
  void run() {
    for(int i = 0; i < tokens.length; i++) {
      step();
    }
    println("Final Value: " + mainValue);
  }
}

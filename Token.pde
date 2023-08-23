final byte NONE = 0,
           X_VALUE = 1,
           Z_VALUE = 2,
           X_ARRAY = 3,
           X_MATRIX = 4,
           Z_ARRAY = 5,
           Z_MATRIX = 6,
           CUSTOM = 7,
           ADD = 8,
           SUBTRACT = 9,
           MULTIPLY = 10,
           DIVIDE = 11,
           INVERT = 12,
           SQUARE = 13,
           POW = 14,
           SQRT = 15,
           ROOT = 16,
           SIN = 17,
           COS = 18,
           TAN = 19,
           COTAN = 20,
           ASIN = 21,
           ACOS = 22,
           ATAN = 23,
           ACOTAN = 24,
           SINH = 25,
           COSH = 26,
           TANH = 27,
           COTANH = 28,
           EXP = 29,
           LOG = 30,
           LOGE = 31,
           LOG2 = 32,
           LOG10 = 33,
           ABS = 34,
           SIGN = 35,
           
           DECLARATE = 36,
           END = 37;

class Token {
  byte type = NONE;
  float value;
  
  Token() {}
  
  Token(byte type_) {
    type = type_;
  }
  
  Token(byte type_, float value_) {
    type = type_;
    value = value_;
  }
  
  void setType(byte type_) {
    type = type_;
  }
  
  void setValue(float value_) {
    value = value_;
  }
  
  String toString() {
    String output = "";
    switch(type) {
      case NONE:
      break;
      case X_VALUE:
        output = "X_VALUE : " + value;
      break;
      case ADD:
        output = "ADD : " + value;
      break;
      case SUBTRACT:
        output = "SUBTRACT : " + value;
      break;
      case MULTIPLY:
        output = "MULTIPLY : " + value;
      break;
      case DIVIDE:
        output = "DIVIDE : " + value;
      break;
      case INVERT:
        output = "INVERT : " + value;
      break;
      case SQUARE:
        output = "SQUARE";
      break;
      case POW:
        output = "POW : " + value;
      break;
      case SQRT:
        output = "SQRT";
      break;
      case ROOT:
        output = "ROOT : " + value;
      break;
      case SIN:
        output = "SIN";
      break;
      case COS:
        output = "COS";
      break;
      case TAN:
        output = "TAN";
      break;
      case COTAN:
        output = "COTAN";
      break;
      case ASIN:
        output = "ASIN";
      break;
      case ACOS:
        output = "ACOS";
      break;
      case ATAN:
        output = "ATAN";
      break;
      case ACOTAN:
        output = "ACOTAN";
      break;
      case SINH:
        output = "SINH";
      break;
      case COSH:
        output = "COSH";
      break;
      case TANH:
        output = "TANH";
      break;
      case COTANH:
        output = "COTANH";
      break;
      case EXP:
        output = "EXP";
      break;
      case LOG:
        output = "LOG";
      break;
      case LOGE:
        output = "LOGE";
      break;
      case LOG2:
        output = "LOG2";
      break;
      case LOG10:
        output = "LOG10";
      break;
      case ABS:
        output = "ABS";
      break;
      case SIGN:
        output = "SIGN";
      break;
    }
    return output;
  }
}

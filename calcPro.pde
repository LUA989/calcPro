
void setup() {
  printArray(parse("5.234 + 3.04"));
}

void draw() {
}

Token[] parse(String text) {
  ArrayList<Token> outputTokens = new ArrayList<>();
  Token tempToken = new Token(X_VALUE);
  boolean isInt = true;
  int i = 0, p = 1;
  for(i = 0; i < text.length(); i++) {
    switch(text.charAt(i)) {
      case '0':
        if(isInt) tempToken.value *= 10; else p++;
      break;
      case '1':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 1;
        } else {
          tempToken.value += pow(10, p);
          p++;
        }
      break;
      case '2':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 2;
          p = 0;
        } else {
          tempToken.value += 2 * pow(10, -p);
          p++;
        }
      break;
      case '3':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 3;
          p = 0;
        } else {
          tempToken.value += 3 * pow(10, -p);
          p++;
        }
      break;
      case '4':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 4;
          p = 0;
        } else {
          tempToken.value += 4 * pow(10, -p);
          p++;
        }
      break;
      case '5':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 5;
          p = 0;
        } else {
          tempToken.value += 5 * pow(10, -p);
          p++;
        }
      break;
      case '6':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 6;
          p = 0;
        } else {
          tempToken.value += 6 * pow(10, -p);
          p++;
        }
      break;
      case '7':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 7;
          p = 0;
        } else {
          tempToken.value += 7 * pow(10, -p);
          p++;
        }
      break;
      case '8':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 8;
          p = 0;
        } else {
          tempToken.value += 8 * pow(10, -p);
          p++;
        }
      break;
      case '9':
        if(isInt) {
          tempToken.value *= 10;
          tempToken.value += 9;
          p = 0;
        } else {
          tempToken.value += 9 * pow(10, -p);
          p++;
        }
      break;
      case '.':
        if(isInt) {
          isInt = !isInt;
        } else {
          System.err.println("PARSER ERROR at " + i + ": Fraction has already been declared!");
          return null;
        }
      break;
      case ',':
        if(isInt) {
          isInt = !isInt;
        } else {
          System.err.println("PARSER ERROR at " + i + ": Fraction has already been declared!");
        }
      break;
      case '+':
        outputTokens.add(tempToken);
        tempToken = new Token(ADD);
        p = 0;
        isInt = true;
      break;
      case '-':
        outputTokens.add(tempToken);
        tempToken = new Token(SUBTRACT);
        p = 0;
        isInt = true;
      break;
      case '*':
        outputTokens.add(tempToken);
        tempToken = new Token(MULTIPLY);
        p = 0;
        isInt = true;
      break;
      case '/':
        outputTokens.add(tempToken);
        tempToken = new Token(DIVIDE);
        p = 0;
        isInt = true;
      break;
      case '$':
        outputTokens.add(tempToken);
        tempToken = new Token(X_VALUE);
        p = 0;
        isInt = true;
      break;
      case ' ':
      p = 0;
      isInt = true;
      break;
      default:
        System.err.println("PARSER ERROR at " + i + " (" + text.charAt(i) + "): Unknown operator!");
      break;
    }
  }
  outputTokens.add(tempToken);
  Token[] output = new Token[outputTokens.size()];
  for(int j = 0; j < outputTokens.size(); j++) {
    output[j] = outputTokens.get(j);
  }
  return output;
}

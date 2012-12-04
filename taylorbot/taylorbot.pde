import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.awt.event.InputEvent;
import java.awt.event.MouseEvent;

import ddf.minim.*;
Minim minim;
AudioSample typingsound;

int charToKeyCode(char character) {
  switch (character) {
  case 'a': 
    return KeyEvent.VK_A; 
  case 'b': 
    return KeyEvent.VK_B; 
  case 'c': 
    return KeyEvent.VK_C; 
  case 'd': 
    return KeyEvent.VK_D; 
  case 'e': 
    return KeyEvent.VK_E; 
  case 'f': 
    return KeyEvent.VK_F; 
  case 'g': 
    return KeyEvent.VK_G; 
  case 'h': 
    return KeyEvent.VK_H; 
  case 'i': 
    return KeyEvent.VK_I; 
  case 'j': 
    return KeyEvent.VK_J; 
  case 'k': 
    return KeyEvent.VK_K; 
  case 'l': 
    return KeyEvent.VK_L; 
  case 'm': 
    return KeyEvent.VK_M; 
  case 'n': 
    return KeyEvent.VK_N; 
  case 'o': 
    return KeyEvent.VK_O; 
  case 'p': 
    return KeyEvent.VK_P; 
  case 'q': 
    return KeyEvent.VK_Q; 
  case 'r': 
    return KeyEvent.VK_R; 
  case 's': 
    return KeyEvent.VK_S; 
  case 't': 
    return KeyEvent.VK_T; 
  case 'u': 
    return KeyEvent.VK_U; 
  case 'v': 
    return KeyEvent.VK_V; 
  case 'w': 
    return KeyEvent.VK_W; 
  case 'x': 
    return KeyEvent.VK_X; 
  case 'y': 
    return KeyEvent.VK_Y; 
  case 'z': 
    return KeyEvent.VK_Z; 
  case '`': 
    return KeyEvent.VK_BACK_QUOTE; 
  case '0': 
    return KeyEvent.VK_0; 
  case '1': 
    return KeyEvent.VK_1; 
  case '2': 
    return KeyEvent.VK_2; 
  case '3': 
    return KeyEvent.VK_3; 
  case '4': 
    return KeyEvent.VK_4; 
  case '5': 
    return KeyEvent.VK_5; 
  case '6': 
    return KeyEvent.VK_6; 
  case '7': 
    return KeyEvent.VK_7; 
  case '8': 
    return KeyEvent.VK_8; 
  case '9': 
    return KeyEvent.VK_9; 
  case '-': 
    return KeyEvent.VK_MINUS; 
  case '=': 
    return KeyEvent.VK_EQUALS; 
  case '!': 
    return KeyEvent.VK_EXCLAMATION_MARK; 
  case '@': 
    return KeyEvent.VK_AT; 
  case '#': 
    return KeyEvent.VK_NUMBER_SIGN; 
  case '$': 
    return KeyEvent.VK_DOLLAR; 
  case '^': 
    return KeyEvent.VK_CIRCUMFLEX; 
  case '&': 
    return KeyEvent.VK_AMPERSAND; 
  case '*': 
    return KeyEvent.VK_ASTERISK; 
  case '(': 
    return KeyEvent.VK_LEFT_PARENTHESIS; 
  case ')': 
    return KeyEvent.VK_RIGHT_PARENTHESIS; 
  case '_': 
    return KeyEvent.VK_UNDERSCORE; 
  case '+': 
    return KeyEvent.VK_PLUS; 
  case '\t': 
    return KeyEvent.VK_TAB; 
  case '\n': 
    return KeyEvent.VK_ENTER; 
  case '[': 
    return KeyEvent.VK_OPEN_BRACKET; 
  case ']': 
    return KeyEvent.VK_CLOSE_BRACKET; 
  case '\\': 
    return KeyEvent.VK_BACK_SLASH; 
  case ';': 
    return KeyEvent.VK_SEMICOLON; 
  case ':': 
    return KeyEvent.VK_COLON; 
  case '\'': 
    return KeyEvent.VK_QUOTE; 
  case '"': 
    return KeyEvent.VK_QUOTEDBL; 
  case ',': 
    return KeyEvent.VK_COMMA; 
  case '<': 
    return KeyEvent.VK_LESS; 
  case '.': 
    return KeyEvent.VK_PERIOD; 
  case '>': 
    return KeyEvent.VK_DOWN; 
  case '/': 
    return KeyEvent.VK_SLASH; 
  case ' ': 
    return KeyEvent.VK_SPACE;
  case '\b':
    return KeyEvent.VK_BACK_SPACE;
  case '\r':
    return KeyEvent.VK_RIGHT;
  default:
    throw new IllegalArgumentException("Cannot convert character " + character);
  }
}

Robot r;

void moveSmoothly(int dest_x, int dest_y) {
  int last_x = mouseX;
  int last_y = mouseY;
  float distance = dist(dest_x, dest_y, last_x, last_y);
  int numsteps = Math.round(distance / 1);
  for (int step = 1; step <= numsteps; step++) {
    r.mouseMove(last_x + step * (dest_x - last_x) / numsteps, 
    last_y + step * (dest_y - last_y) / numsteps);
    r.delay(8);
  }
  r.mouseMove(dest_x, dest_y);
}

void setup() {
  try {
    minim = new Minim(this);
    typingsound = minim.loadSample("typingsound3.wav", 1500);
    r = new Robot();
    r.delay(1000);

//youtube
    moveSmoothly(58,15);
    r.mousePress(InputEvent.BUTTON1_MASK);
    r.mouseRelease(InputEvent.BUTTON1_MASK);
    moveSmoothly(273,46);
    r.mousePress(InputEvent.BUTTON1_MASK);
    r.mouseRelease(InputEvent.BUTTON1_MASK);
    r.delay(2000);
    String youtube = "you\n"; 
    for (int i = 0; i < youtube.length(); i++){
      r.keyPress(charToKeyCode(youtube.charAt(i)));
      r.delay(round(random(3, 4)*100));
      typingsound.trigger();
    }
    r.delay(2000);
    r.keyPress(KeyEvent.VK_ENTER);    
    r.delay(3000);
    moveSmoothly(329,84);
    String taylor ="taylor swift we";
    for (int i = 0; i < taylor.length(); i++){
      r.keyPress(charToKeyCode(taylor.charAt(i)));
      r.delay(round(random(3, 4)*100));
      typingsound.trigger();
    }
    r.delay(2000);
    r.mouseMove(386,113);
    r.mousePress(InputEvent.BUTTON1_MASK);
    r.mouseRelease(InputEvent.BUTTON1_MASK);
    r.delay(2000);
    r.mouseMove(291,223);
    r.mousePress(InputEvent.BUTTON1_MASK);
    r.mouseRelease(InputEvent.BUTTON1_MASK);
} 
  catch (AWTException e) {
    e.printStackTrace();
  }
}

void stop(){
  typingsound.close();
  minim.stop();
}

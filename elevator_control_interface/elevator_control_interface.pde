import processing.sound.*;
Pulse pulse;

PImage bellIcon;
PImage phoneIcon;
PImage doorCloseIcon;
PImage doorOpenIcon;
 
int buttonFiveX, buttonFiveY;      // Position of square button
int buttonFourX, buttonFourY;
int buttonThreeX, buttonThreeY;
int buttonTwoX, buttonTwoY;
int buttonOneX, buttonOneY;

int buttonDoorOpenX, buttonDoorOpenY;
int buttonDoorCloseX, buttonDoorCloseY;
int buttonBellX, buttonBellY;
int buttonPhoneX, buttonPhoneY;

int rectSize = 60;     // Diameter of rect

color defaultTopColor;
color pressedTopColor;

color defaultBottomColor;
color pressedBottomColor;

boolean buttonFiveOver = false;
boolean buttonFourOver = false;
boolean buttonThreeOver = false;
boolean buttonTwoOver = false;
boolean buttonOneOver = false;
boolean buttonDoorOpenOver = false;
boolean buttonDoorCloseOver = false;
boolean buttonBellOver = false;
boolean buttonPhoneOver = false;

boolean occupied = false;

long buttonFivePressStartTime;
long buttonFourPressStartTime;
long buttonThreePressStartTime;
long buttonTwoPressStartTime;
long buttonOnePressStartTime;

long buttonDoorOpenPressStartTime;
long buttonDoorClosePressStartTime;
long buttonBellPressStartTime;
long buttonPhonePressStartTime;

int wait = 2000;
int wait2 = 500;

int currentFloor = 1;

boolean buttonFivePressed = false;
boolean buttonFourPressed = false;
boolean buttonThreePressed = false;
boolean buttonTwoPressed = false;
boolean buttonOnePressed = false;

boolean buttonDoorOpenPressed = false;
boolean buttonDoorClosePressed = false;
boolean buttonBellPressed = false;
boolean buttonPhonePressed = false;





int index = 0;
 
void setup() {
  size(360, 680); 
  
  pulse = new Pulse(this);
  bellIcon = loadImage("bell.png");
  phoneIcon = loadImage("phone.png");
  doorCloseIcon = loadImage("door_close.png");
  doorOpenIcon = loadImage("door_open.png");
  
  buttonFiveX = 180;
  buttonFiveY = 140;
  buttonFourX = 180;
  buttonFourY = 210;
  buttonThreeX = 180;
  buttonThreeY = 280;
  buttonTwoX = 180;
  buttonTwoY = 350;
  buttonOneX = 180;
  buttonOneY = 420;
  
  buttonDoorOpenX = 110;
  buttonDoorOpenY = 510;
  
  buttonDoorCloseX = 250;
  buttonDoorCloseY = 510;
  
  buttonBellX = 110;
  buttonBellY = 590;
  
  buttonPhoneX = 250;
  buttonPhoneY = 590;
  
  defaultTopColor = color(204, 229,255);
  pressedTopColor = color(255,255);
  defaultBottomColor = color(204,229,255);
  pressedBottomColor = color(255,255);
  

  
  //noStroke();
  //rectMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(160,160,160); 
  //background(256,256);
  
  rect(90, 10, 180, 100, 6);
  
  fill(0, 0, 0);
  rect(120,140,60,60, 10); //5 black
  rect(120,210,60,60, 10); //4 black
  rect(120,280,60,60, 10); //3 black
  rect(120,350,60,60, 10); //2 black
  rect(120,420,60,60, 10); //1 black
 
  rect(50,510,60,60, 10); //open door black
  rect(190,510,60,60, 10); //close door black
  rect(50,590,60,60, 10); //alarm bell black
  rect(190,590,60,60, 10); //phone black
  
  fill(224,224,224);
  textSize(50);
  text("5", 138, 185); //5 text
  text("4", 138, 255); //4 text
  text("3", 138, 325); //3 text
  text("2", 138, 395); //2 text
  text("1", 138, 465); //1 text
  
  
  image(bellIcon, 60, 600, 40, 40);
  image(phoneIcon, 200, 600, 40, 40);
  image(doorCloseIcon, 60, 520, 40, 40);
  image(doorOpenIcon, 200, 520, 40, 40);
  
  textSize(90);
  fill(0,0,0);
  text(currentFloor, 155, 90); //1 text
  
  /*
  fill(255, 255);
  rect(245,160,40,40, 3); //5 white
  */
  
  if(buttonFivePressed) {
    fill(pressedTopColor);
    rect(buttonFiveX, buttonFiveY, rectSize, rectSize, 10);
    
    if (millis() > (buttonFivePressStartTime + wait)) {
      buttonFivePressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
      currentFloor = 5;
    }
  } else {
    fill(defaultTopColor);
    rect(buttonFiveX, buttonFiveY, rectSize, rectSize, 10);
  }
  
  if(buttonFourPressed) {
    fill(pressedTopColor);
    rect(buttonFourX, buttonFourY, rectSize, rectSize, 10);
    
    if (millis() > (buttonFourPressStartTime + wait)) {
      buttonFourPressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
      currentFloor = 4;
    }
  } else {
    fill(defaultTopColor);
    rect(buttonFourX, buttonFourY, rectSize, rectSize, 10);
  }
  
  if(buttonThreePressed) {
    fill(pressedTopColor);
    rect(buttonThreeX, buttonThreeY, rectSize, rectSize, 10);
    
    if (millis() > (buttonThreePressStartTime + wait)) {
      buttonThreePressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
      currentFloor = 3;
    }
  } else {
    fill(defaultTopColor);
    rect(buttonThreeX, buttonThreeY, rectSize, rectSize, 10);
  }
  
  if(buttonTwoPressed) {
    fill(pressedTopColor);
    rect(buttonTwoX, buttonTwoY, rectSize, rectSize, 10);
    
    if (millis() > (buttonTwoPressStartTime + wait)) {
      buttonTwoPressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
      currentFloor = 2;
    }
  } else {
    fill(defaultTopColor);
    rect(buttonTwoX, buttonTwoY, rectSize, rectSize, 10);
  }
  
  if(buttonOnePressed) {
    fill(pressedTopColor);
    rect(buttonOneX, buttonOneY, rectSize, rectSize, 10);
    
    if (millis() > (buttonOnePressStartTime + wait)) {
      buttonOnePressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
      currentFloor = 1;
    }
  } else {
    fill(defaultTopColor);
    rect(buttonOneX, buttonOneY, rectSize, rectSize, 10);
  }
  
  fill(defaultBottomColor);
  rect(buttonDoorOpenX, buttonDoorOpenY, rectSize, rectSize, 10);
  rect(buttonDoorCloseX, buttonDoorCloseY, rectSize, rectSize, 10);
  rect(buttonBellX, buttonBellY, rectSize, rectSize, 10);
  rect(buttonPhoneX, buttonPhoneY, rectSize, rectSize, 10);

  if(buttonDoorOpenPressed) {
    if (millis() > (buttonDoorOpenPressStartTime + wait2)) {
      buttonDoorOpenPressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
    }
  }
  
  if(buttonDoorClosePressed) {
    if (millis() > (buttonDoorClosePressStartTime + wait2)) {
      buttonDoorClosePressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
    }
  }
  
  if(buttonBellPressed) {
    if (millis() > (buttonBellPressStartTime + wait2)) {
      buttonBellPressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
    }
  }
  
  if(buttonPhonePressed) {
    if (millis() > (buttonPhonePressStartTime + wait2)) {
      buttonPhonePressed = false;
      pulse.freq(2100);
      pulse.play();
      delay(80);
      pulse.stop();
    }
  }
  
  //fill(defaultBottomColor);
  //rect(buttonDoorOpenX, buttonDoorOpenY, rectSize, rectSize, 3);
  //rect(buttonDoorCloseX, buttonDoorCloseY, rectSize, rectSize, 3);
  //rect(buttonBellX, buttonBellY, rectSize, rectSize, 3);
  //rect(buttonPhoneX, buttonPhoneY, rectSize, rectSize, 3);
  
  fill(224,224);
  rect(185,145,50,50, 3); //5 grey
  rect(185,215,50,50, 3); //4 grey
  rect(185,285,50,50, 3); //3 grey
  rect(185,355,50,50, 3); //2 grey
  rect(185,425,50,50, 3); //1 grey
  
  rect(115,515,50,50, 3); //Door Open grey
  rect(255,515,50,50, 3); //Door Close grey
  rect(115,595,50,50, 3); //Bell grey
  rect(255,595,50,50, 3); //Phone grey
  
}

void update(int x, int y) {
  if ( overButton(buttonFiveX, buttonFiveY, rectSize, rectSize) ) {
    buttonFiveOver = true;
  } else if (overButton(buttonFourX, buttonFourY, rectSize, rectSize) ){
    buttonFourOver = true;
  } else if (overButton(buttonThreeX, buttonThreeY, rectSize, rectSize) ){
    buttonThreeOver = true;
  } else if (overButton(buttonTwoX, buttonTwoY, rectSize, rectSize) ){
    buttonTwoOver = true;
  } else if (overButton(buttonOneX, buttonOneY, rectSize, rectSize) ){
    buttonOneOver = true;
  } else if (overButton(buttonDoorOpenX, buttonDoorOpenY, rectSize, rectSize) ){
    buttonDoorOpenOver = true;
  } else if (overButton(buttonDoorCloseX, buttonDoorCloseY, rectSize, rectSize) ){
    buttonDoorCloseOver = true;
  } else if (overButton(buttonBellX, buttonBellY, rectSize, rectSize) ){
    buttonBellOver = true;
  } else if (overButton(buttonPhoneX, buttonPhoneY, rectSize, rectSize) ){
    buttonPhoneOver = true;
  } else {
    buttonFiveOver = false;
    buttonFourOver = false;
    buttonThreeOver = false;
    buttonTwoOver = false;
    buttonOneOver = false;
    buttonDoorOpenOver = false;
    buttonDoorCloseOver = false;
    buttonBellOver = false;
    buttonPhoneOver = false;
  }
}

void mousePressed() {
  if (buttonFiveOver) {
    //make the white behind the button disappear
    //currentColor = rectColor;
    print("button 5 was pressed\n");
    buttonFivePressed = true;
    buttonFivePressStartTime = millis();
    //occupied = true;
  }
  if (buttonFourOver) {
    print("button 4 was pressed\n");
    buttonFourPressed = true;
    buttonFourPressStartTime = millis();
    //occupied 
  }
  if (buttonThreeOver) {
    //make the white behind the button disappear
    //currentColor = rectColor;
    print("button 3 was pressed\n");
    buttonThreePressed = true;
    buttonThreePressStartTime = millis();
  }
  if (buttonTwoOver) {
    print("button 2 was pressed\n");
    buttonTwoPressed = true;
    buttonTwoPressStartTime = millis();
  }
  if (buttonOneOver) {
    //make the white behind the button disappear
    //currentColor = rectColor;
    print("button 1 was pressed\n");
    buttonOnePressed = true;
    buttonOnePressStartTime = millis();
  }
  if (buttonDoorOpenOver) {
    print("button door open was pressed\n");
    buttonDoorOpenPressed = true;
    buttonDoorOpenPressStartTime = millis();
  }
  if (buttonDoorCloseOver) {
    //make the white behind the button disappear
    //currentColor = rectColor;
    print("button door close was pressed\n");
    buttonDoorClosePressed = true;
    buttonDoorClosePressStartTime = millis();
  }
  if (buttonBellOver) {
    print("button bell was pressed\n");
    buttonBellPressed = true;
    buttonBellPressStartTime = millis();
  }
  if (buttonPhoneOver) {
    //make the white behind the button disappear
    //currentColor = rectColor;
    print("button phone was pressed\n");
    buttonPhonePressed = true;
    buttonPhonePressStartTime = millis();
  }
}

boolean overButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

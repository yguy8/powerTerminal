int latchPin = 8;
int clockPin = 13;
int dataPin = 12;
int dt = 1000;
byte numbers[] = {
  0b11111100, //0
  0b01100000, //1
  0b11011010, //2
  0b11110010, //3
  0b01100110, //4
  0b10110110, //5
  0b10111110, //6
  0b11100000, //7
  0b11111110, //8
  0b11111100 //9
};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(latchPin, 0);            //ABCDEFGX
  shiftOut(dataPin, clockPin, LSBFIRST, numbers[5]);
  digitalWrite(latchPin, 1);
  delay(dt);
}

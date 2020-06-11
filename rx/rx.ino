#include "RF24.h"
#include <LiquidCrystal_I2C.h>

RF24 radio(9, 10); // CE, CSN
const uint8_t pipe = 1;
const uint8_t address[] = {0, 0, 0, 0, 0};

LiquidCrystal_I2C lcd(0x27,20,4); // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup() {
  Serial.begin(115200);

  radio.begin();
  radio.openReadingPipe(pipe, address);
  radio.startListening();

  lcd.init();
  lcd.backlight();
  lcd.setCursor(0, 0);
  lcd.print("0 W");

  pinMode(4, OUTPUT);
}

bool alarm = false;

void loop() {
  if (radio.available()) {
    uint16_t power;

    radio.read(&power, 2);

    Serial.println(power);

    lcd.clear();
    lcd.print(power);
    lcd.print(" W");

    alarm = power >= 3500;
  }

  if (alarm) {
    digitalWrite(4, HIGH);
    delay(1);
    digitalWrite(4, LOW);
    delay(1);
  }
}

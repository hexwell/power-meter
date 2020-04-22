#include "RF24.h"
#include "LiquidCrystal.h"

RF24 radio(9, 10); // CE, CSN
const byte pipe[] = {0, 0, 0, 0, 0, 0};

LiquidCrystal lcd(6, 7, 2, 3, 4, 5);

void setup() {
  Serial.begin(115200);

  radio.begin();
  radio.openReadingPipe(1, pipe); // TODO: Test with 0 as first arg
  radio.startListening();

  lcd.begin(16, 2);
  lcd.setCursor(0, 0);
  lcd.print("0 W");
}

void loop() {
  if (radio.available()) {
    uint16_t power;

    radio.read(&power, 2);

    Serial.println(power);

    lcd.clear();
    lcd.print(power);
    lcd.print(" W");
  }
}

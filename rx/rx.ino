#include "RF24.h"
#include <LiquidCrystal_I2C.h>

#include "printf.h"

RF24 radio(9, 10); // CE, CSN

typedef uint16_t payload;

LiquidCrystal_I2C lcd(0x27, 20, 4); // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup() {
  Serial.begin(115200);

  radio.begin();

  // TODO check these
  radio.setPayloadSize(sizeof(payload));
  radio.disableDynamicPayloads();
  radio.setAutoAck(false);
  radio.setPALevel(RF24_PA_MIN);
  radio.setDataRate(RF24_250KBPS);

  const uint8_t address[] = {0, 0, 0, 0, 0};
  // TODO set pipe to 0 after https://github.com/nRF24/RF24/issues/496 is fixed
  radio.openReadingPipe(1, address);
  radio.startListening(); // TODO Check if needed

  delay(5000);
  printf_begin();
  radio.printDetails();

  lcd.init();
  lcd.backlight();
  lcd.setCursor(0, 0);
  lcd.print("0 W");

  pinMode(4, OUTPUT);
}

bool alarm = false;

void loop() {
  if (radio.available()) {
    payload power;

    radio.read(&power, sizeof(payload));

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

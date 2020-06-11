#include "RF24.h"

#define MAINS_FREQUENCY 50 // Hz

#define SENSOR_PIN A0

#define PRECISION 100

// Measurement time (2s @ 50 Hz mains)
const unsigned long SAMPLING_RATE = 5 * MAINS_FREQUENCY; // Sa/s
const unsigned long SAMPLING_PERIOD = 1000000 / SAMPLING_RATE; // μs
const unsigned long SAMPLES = 2 * SAMPLING_RATE;

RF24 radio(5, 10); // CE, CSN
const uint8_t address[] = {0, 0, 0, 0, 0};

void setup() {  
  radio.begin();
  radio.openWritingPipe(address);
}

void loop() {
  unsigned long lastReadAt = micros();
  uint16_t remainingSamples = SAMPLES;

  double summation = 0;

  while (remainingSamples)
    if (micros() - lastReadAt >= SAMPLING_PERIOD) {
        lastReadAt += SAMPLING_PERIOD;

        summation += analogRead(SENSOR_PIN);

        remainingSamples--;
    }

  double mean_value = summation / SAMPLES * PRECISION;
  uint16_t int_mean_value = mean_value;

  radio.write(&int_mean_value, 2);
}

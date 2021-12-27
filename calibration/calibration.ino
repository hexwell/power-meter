#include "RF24.h"

// Mains Characteristics
#define GRID_FREQUENCY 50 // Hz

#define SENSOR_PIN A0

#define PRECISION 100

// Measurement time (2s @ 50 Hz mains)
const unsigned long SAMPLING_RATE = 5 * GRID_FREQUENCY; // Sa/s
const unsigned long SAMPLING_PERIOD = 1000000 / SAMPLING_RATE; // μs
const unsigned long SAMPLES = 2 * SAMPLING_RATE;

RF24 radio(5, 10); // CE, CSN

typedef uint16_t payload;

void setup() {
  radio.begin();

  radio.setRetries(0, 0);
  radio.setPayloadSize(sizeof(payload));
  radio.disableDynamicPayloads();
  radio.setAutoAck(false);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);

  radio.stopListening(); // TODO Check if needed

  const uint8_t address[] = {0xCD, 0xE6, 0x36, 0xE7, 0xCD};
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
  payload int_mean_value = mean_value;

  radio.write(&int_mean_value, sizeof(payload));
}

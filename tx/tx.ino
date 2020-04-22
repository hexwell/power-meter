#include "RF24.h"

#define RMS_MAINS_VOLTAGE 230 // V
#define MAINS_FREQUENCY 50 // Hz

#define SENSOR_PORT A0
#define SENSOR_CALIBRATION 512 // analogRead(SENSOR_PORT) with no load
#define SENSOR_SCALAR 1 // TODO

const unsigned long SAMPLING_RATE = 5 * MAINS_FREQUENCY; // Hz
const unsigned long SAMPLING_PERIOD = 1000000 / SAMPLING_RATE; // μs
const unsigned long SAMPLES = 2 * SAMPLING_RATE;

RF24 radio(5, 10); // CE, CSN
const byte pipe[] = {0, 0, 0, 0, 0, 0};

void setup() {
  Serial.begin(115200);

  radio.begin();
  radio.openWritingPipe(pipe);
}

void loop() {
  unsigned long lastReadAt = micros();
  uint16_t remainingSamples = SAMPLES;

  unsigned long rms_summation = 0;

  while (remainingSamples)
    if (micros() - lastReadAt >= SAMPLING_PERIOD) {
        lastReadAt += SAMPLING_PERIOD;

        rms_summation += pow(analogRead(SENSOR_PORT) - SENSOR_CALIBRATION, 2);

        remainingSamples--;
    }

  double rms_current = sqrt(rms_summation / SAMPLES) * SENSOR_SCALAR;
  uint16_t power = max(0, rms_current * RMS_MAINS_VOLTAGE);

  radio.write(&power, 2);
  delay(1000); // The final refresh rate is this value plus measurement time (2s @ 50 Hz mains)
}

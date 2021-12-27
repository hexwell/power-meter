#include "RF24.h"

#define RMS_MAINS_VOLTAGE 230 // V
#define MAINS_FREQUENCY 50 // Hz

#define TRANSFORMER_INPUT 100 // A
#define TRANSFORMER_OUTPUT 1 // V

#define SENSOR_PIN A0
#define SENSOR_CALIBRATION 510.3 // RMS analogRead(SENSOR_PIN) with no load, use "calibration" sketch to measure this value

#define VCC 4.683 // V
#define ADC_DIVISIONS 1024 // d

// The power supply injects noise in the sensor output and it gets read as power consumption
#define POWER_SUPPLY_NOISE_CORRECTION 150 // W

// Measurement time (2s @ 50 Hz mains)
const unsigned long SAMPLING_RATE = 5 * MAINS_FREQUENCY; // Sa/s
const unsigned long SAMPLING_PERIOD = 1000000 / SAMPLING_RATE; // μs
const unsigned long SAMPLES = 2 * SAMPLING_RATE;

const double VOLTS_PER_DIVISION = VCC / ADC_DIVISIONS; // V/d
const double DIVISIONS_PER_TRANSFORMER_RANGE = TRANSFORMER_OUTPUT / VOLTS_PER_DIVISION;
const double AMPS_PER_DIVISION = TRANSFORMER_INPUT / DIVISIONS_PER_TRANSFORMER_RANGE; // A/d

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

  // The address was chosen randomly (to avoid collisions with other devices)
  // avoiding nibbles that mess with the preable detection circuitry of the nRF24L01,
  // as suggested by this article:
  // http://maniacalbits.blogspot.com/2013/04/rf24-addressing-nrf24l01-radios-require.html
  // linked by TMRh20 here:
  // https://github.com/nRF24/RF24/issues/496#issuecomment-671169580

  // The nibbles to avoid are: 0x0, 0x1, 0x2, 0x5, 0xA, 0xF

  radio.stopListening(); // TODO Check if needed
  
  const uint8_t address[] = {0xCD, 0xE6, 0x36, 0xE7, 0xCD};
  radio.openWritingPipe(address);
}

void loop() {
  unsigned long lastReadAt = micros();
  uint16_t remainingSamples = SAMPLES;

  double rms_summation = 0;

  while (remainingSamples)
    if (micros() - lastReadAt >= SAMPLING_PERIOD) {
        lastReadAt += SAMPLING_PERIOD;

        rms_summation += pow(analogRead(SENSOR_PIN) - SENSOR_CALIBRATION, 2);

        remainingSamples--;
    }

  double rms_current = sqrt(rms_summation / SAMPLES);
  payload power = abs(rms_current * AMPS_PER_DIVISION * RMS_MAINS_VOLTAGE - POWER_SUPPLY_NOISE_CORRECTION);

  radio.write(&power, sizeof(payload));
}

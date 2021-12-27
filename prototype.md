## Prototype circuit design notes

The circuit of both devices is pretty trivial. For both devices it's just an Arduino Pro Micro with an NRF24L01 transceiver (connected via the standard SPI configuration) and voltage regulation since the Arduino I had laying around was a 5V version and the transceiver is 3.3V. In addition to this, the meter has a voltage divider to DC bias the sensor and the alarm has a speaker directly connected between GND and a pin. Below are some considerations on actually assembling the devices:

- An SCT-013-000V current transformer with integrated burden resistor is used, because I didn't have a precise enough one. The other model (SCT-013-000) tho had integrated TVS diodes for protection instead, that now I need to integrate externally. (See note)
- A voltage divider DC-biases the current transformer/sensor in order to move the current waveform in the safe and measurable range of the Arduino ADC (as in the negative half cycle the voltage across the sensor is negative). The capacitor to ground is for stability of the bias voltage
- A 10 μF capacitor is placed between the power rails of the Arduino, as close as possible to it, for ADC stability as it need a stable supply to make precise measurements
- A shielded cable is used to carry the signal from the the sensor to the Arduino, although it probably is not needed as the frequency is only 50 Hz
- A NRF24L01+PA+LNA transceiver module (with RFAXIS RFX2401C chip) is used. The version with the RFAXIS PA+LNA was chosen for better range and for the SMA connector, allowing for an external (outside of project enclosure) and orientable antenna
- A 3.3 V regulator module with some capacitors on board off of Amazon is used to supply the transceiver. It saves space and does the job fine
- An additional 10 μF stability/noise filtering capacitor is placed between the transceiver power rails, as close as possible to it, just to be sure (not required with the regulator module)
- The tranceiver is wrapped in a layer of isolant followed by a layer of grounded tin foil to reduce interference, as suggested by [Samy Kamkar](https://github.com/SamyK) in [this youtube video](https://youtu.be/1NBNrgTEwq0?t=760) (12:40)
- All boards with power LEDs had them desoldered for power efficiency (namely: Arduino, 3.3 V regulator board)
- For the final project enclosure, I made a USB B to Arduino Micro USB passthrough since the former is more physically robust
- The current transformer/sensor is connected with a 3.3 mm jack breakout board in order to be easily detached from the device using it's original connector.
- **IMPORTANT** TODO: TVS diodes or some sort of protection against voltages outside of 0-5 V should be placed on the sensor output, as a short circuit could cause a spike that destroys the ADC of the Arduino (See explanation above). Alternatively I could use the other current tranformer with integrated protection and add the resistor. It should not be a difficult modification.
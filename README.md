# Power Meter

A power meter to read the energy consumption of my house and sound an alert in case it exeeds a threshold.
It consist of two devices:
- A meter that measures the power value and broadcasts it
- An alarm that receives the value and upon need sounds the alarm

## Meter circuit

![tx_circuit]()

### Explanation

- An SCT-013-000V current transformer with integrated burden resistor is used, because I didn't have a precise enough one. The other model (SCT-013-000) tho had integrated TVS diodes for protection instead, that now I need to integrate externally. (See note)
- The voltage divider DC-biases the current transformer/sensor in order to move the current waveform in the safe and measurable range of the Arduino ADC. The capacitor to ground is for stability of the voltage
- A 10 μF capacitor is placed between the power rails of the Arduino for ADC stability
- A shielded cable is used to carry the signal from the the sensor to the Arduino, although it probably is not needed as the frequency is only 50 Hz
- A NRF24L01+PA+LNA module (with RFAXIS RFX2401C chip) is used for better range and for the SMA connector, allowing for an external (outside of project enclosure) and orientable antenna
- A 3.3 V regulator module with some capacitors on board off of Amazon is used to supply the transceiver. It saves space and does the job fine
- An additional 10 μF stability capacitor is placed between the transceiver power rails just to be sure (not required with the regulator module)
- The tranceiver is wrapped in a layer of isolant followed by a layer of grounded tin foil to reduce interference, as suggested by [Samy Kamkar](https://github.com/SamyK) in [this youtube video](https://youtu.be/1NBNrgTEwq0?t=760) (12:40)
- All boards with power LEDs had them desoldered for power efficiency (namely: Arduino, 3.3 V regulator board)

## Alarm circuit

![rx_circuit]()

## Firmware

The firmware of both devices can be flashed with the Arduino IDE software, selecting the **Arduino Leonardo** board.

### Libraries

- [RF24](https://github.com/nRF24/RF24)
- [LiquidCrystal_I2C](https://github.com/johnrickman/LiquidCrystal_I2C)

## Meter pictures

## Notes

- A _true_ RMS reading of the sensor is crucial in order to get the real power value. The RMS reading is because of the nature of AC currents. The _true_ RMS is necessary because of the different current waveform of various types of loads (resistive, inductive, capacitive, etc.)
- Power consumption of the final build is .05 A at 5 V
- If the board ever gets **bricked** [my guide](https://github.com/hexwell/notes-public/blob/master/en/electronics/resources/pro_micro_brick.md) might be of use.
- **IMPORTANT** TODO: TVS diodes or some sort of protection against voltages outside of 0-5 V should be placed on the sensor output, as a short circuit could cause a spike that destroys the ADC of the Arduino

## Questioning the whole thing

Since measuring power using just a current transformer is probably not really precise, other possible options were reading the power measurement of the energy company's power meter directly via it's IR port. That would require a lot of work tho, since the protocol needs to be reverse engineered. Irony of sorts, my italian energy company's meter is named OpenMeter.

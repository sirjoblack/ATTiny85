# ATTiny85
The goal of the project is to manage a MCU AVR "AT tiny 85/84" using C/C++ code without using external libraries and avoiding the use of assembler coding (i.e.: very minimal use of assembler code). The full development should cover all aspects of the features these MCUs cover. The source clock used to clock the MCU will be internal clock. This allows to use all the I/O pins the MCU has. I.E.: AT tiny 84 will use 8Mhz internal clock, AT tiny 85 will use 16 Mhz internal clock. Although, at now, the code seems able to fit inside smaller tiny MCUs, the development will target "tiny 84/85" MCUs. The actual state of art is very minimal; it try to cover timing and SPI communication (TWI should be better).

ADDED: ADC management

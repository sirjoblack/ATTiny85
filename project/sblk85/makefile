PRG = sblk85
ARDUINODIR=/opt/arduino-1.6.0
ifndef CPU
CPU = tiny85
endif
CPUX = at$(CPU)
CPPC = $(ARDUINODIR)/hardware/tools/avr/bin/avr-g++
CC = $(ARDUINODIR)/hardware/tools/avr/bin/avr-gcc
DBFLAGS =  -g3

# -pedantic
CPPFLAGS = $(DBFLAGS) -Os -Wall -ansi -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=$(CPUX)
CFLAGS = $(DBFLAGS) -Os -Wall -ansi -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=$(CPUX)
PFLAGS = -D__AVR_AT$(CPU)__ -D__AVR__ -DCIRCBUFF_POW2DIM $(DEFS)
INCL = ../*.h ../include/*.h ../include/reg/*.h
IDIR = -I ../include

LDFLAGS = -Wl,--gc-sections -mmcu=$(CPUX) 
LIBS = -lm

CO = $(ARDUINODIR)/hardware/tools/avr/bin/avr-objcopy
EEPO =  -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 
FLAO = -O ihex -R .eeprom

SZ = $(ARDUINODIR)/hardware/tools/avr/bin/avr-size

AVRCNFF = $(ARDUINODIR)/hardware/tools/avr/etc/avrdude.conf
RBRATE = 19200
RDEV = /dev/ttyACM0
ROM = $(ARDUINODIR)/hardware/tools/avr/bin/avrdude
DUDEOPT = -p$(CPUX) -c avrisp -b$(RBRATE) -P$(RDEV) -C$(AVRCNFF)
ROPT = $(DUDEOPT)
CLKOPT = $(DUDEOPT) -V -e

DUMP = $(ARDUINODIR)/hardware/tools/avr/bin/avr-objdump

#------------------------------------------------------

all:	$(PRG).hex $(PRG).eep
	@echo "------------------------------------"
	@$(SZ) -A $(PRG).elf
	@$(SZ) -C --mcu=$(CPUX) $(PRG).elf

	@$(DUMP) -d -S  $(PRG).elf >$(PRG).elf.s
clean:
	rm -rf *.o *.s *.elf *.hex *.eep *.d

rom:	$(PRG).hex $(PRG).eep
	@echo "------------------------------------"
	$(ROM) $(ROPT) -U flash:w:$(PRG).hex
	@cp $(PRG).hex $(PRG).hex.rom
	@cp $(PRG).elf $(PRG).elf.rom

clock:
	@echo "------------------------------------"
ifeq ($(CPU),tiny85)
	$(ROM) $(CLKOPT) -U lfuse:w:0xE1:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m
else
	$(ROM) $(CLKOPT) -U lfuse:w:0xE2:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m
endif

$(PRG).hex: $(PRG).elf
	@echo "------------------------------------"
	@echo "#Create flash image"
	$(CO) $(FLAO) $(PRG).elf $(PRG).hex

$(PRG).eep: $(PRG).elf
	@echo "------------------------------------"
	@echo "#Create eeprom image"
	$(CO) $(EEPO) $(PRG).elf $(PRG).eep

$(PRG).elf: $(PRG).o circbuff.o attimer.o spi.o fnclib.o
	@echo "------------------------------------"
	@echo "#Linking"
	$(CPPC) $(LDFLAGS) *.o -o $(PRG).elf

$(PRG).o: ../$(PRG).cpp $(INCL) makefile
	$(CPPC) -S $(CPPFLAGS) $(PFLAGS) $(IDIR) ../$(PRG).cpp
	$(CPPC) -c $(CPPFLAGS) $(PFLAGS) $(IDIR) ../$(PRG).cpp	

circbuff.o: ../circbuff.cpp $(INCL) makefile
	$(CPPC) -S $(CPPFLAGS) $(PFLAGS) $(IDIR) ../circbuff.cpp
	$(CPPC) -c $(CPPFLAGS) $(PFLAGS) $(IDIR) ../circbuff.cpp	

attimer.o: ../attimer.cpp $(INCL) makefile
	$(CPPC) -S $(CPPFLAGS) $(PFLAGS) $(IDIR) ../attimer.cpp
	$(CPPC) -c $(CPPFLAGS) $(PFLAGS) $(IDIR) ../attimer.cpp	

spi.o: ../spi.cpp $(INCL) makefile
	$(CPPC) -S $(CPPFLAGS) $(PFLAGS) $(IDIR) ../spi.cpp
	$(CPPC) -c $(CPPFLAGS) $(PFLAGS) $(IDIR) ../spi.cpp	

fnclib.o: ../fnclib.c $(INCL) makefile
	$(CC) -S $(CFLAGS) -fno-builtin $(PFLAGS) $(IDIR) ../fnclib.c
	$(CC) -c $(CFLAGS) -fno-builtin $(PFLAGS) $(IDIR) ../fnclib.c



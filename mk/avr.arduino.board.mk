.if !target(__<avr.arduino.board.mk>__)
__<avr.arduino.board.mk>__:

BOARD_uno_AVR_MCU=		atmega328p
BOARD_uno_AVRDUDE_MCU= 		m328p
BOARD_uno_AVRDUDE_PROG=		arduino
BOARD_uno_ARDUINO_VARIANT=	standard
BOARD_uno_AVAIL_FLASH=		32768
BOARD_uno_AVAIL_SRAM=		2048
BOARD_uno_AVAIL_EEPROM=		1024

BOARD_mega_AVR_MCU=		atmega1280
BOARD_mega_AVRDUDE_MCU=		m1280
BOARD_mega_AVRDUDE_PROG=	arduino
BOARD_mega_ARDUINO_VARIANT=	mega
BOARD_mega_AVAIL_FLASH=		131072
BOARD_mega_AVAIL_SRAM=		8192
BOARD_mega_AVAIL_EEPROM=	4096

BOARD_mega2560_AVR_MCU=		atmega2560
BOARD_mega2560_AVRDUDE_MCU= 	m2560
BOARD_mega2560_AVRDUDE_PROG=	wiring
BOARD_mega2560_ARDUINO_VARIANT=	mega
BOARD_mega2560_AVAIL_FLASH=	262144
BOARD_mega2560_AVAIL_SRAM=	8192
BOARD_mega2560_AVAIL_EEPROM=	4096

.if empty(BOARD_${BOARD}_AVR_MCU)
.  error Unrecognised Arduino board '${BOARD}'
.endif

CFLAGS+=	-DBOARD_${BOARD:tu}

.for v in AVR_MCU AVRDUDE_MCU AVRDUDE_PROG ARDUINO_VARIANT \
	AVAIL_FLASH AVAIL_SRAM AVAIL_EEPROM
${v}=	${BOARD_${BOARD}_${v}}
.endfor

.endif
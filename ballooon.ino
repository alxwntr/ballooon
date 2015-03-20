/* main.ino
 * Main loop.
 * vi:set syn=cpp:
 */
 
#include "ballooon.h"

/* This has to be here or the wretched GUI won't link in the library */
#include <Wire.h>

void setup()
{
    serial_setup();
    warn(WDEBUG, sF("Done setup()"));
}

void loop()
{
    warn(WDEBUG, "Before setjmp");

    PANIC_CATCH;

    warn(WDEBUG, "After setjmp");

    while (1) ;
}

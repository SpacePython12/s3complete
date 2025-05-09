#include "sonic3k.h"
#include "sonic3k.data.h"
#include "sonic3k.variables.h"

void ErrorTrap() {
    while (1) {}
}

void Test_LockOn();

void EntryPoint() {
    register ulong i, a, b;
    // In case of a soft reset
    if (!memAccess(uword, HW_Port_1_Control-1) || !memAccess(uword, HW_Expansion_Control-1)) {
        if (!(memAccess(ubyte, HW_Version) & 0xF)) { // Get hardware version
            memAccess(ulong, Security_addr) = 0x53454741; // SEGA
        }
        for (i = 0; i < 24; i++) { // set all 24 registers
            memAccess(uword, VDP_control_port) = 0x0080 + (0x0100*i) + memAccess(ubyte, VDPInitValues+i);
        }
        memAccess(ulong, VDP_control_port) = vdpComm(0, VRAM, DMA); // set VRAM write mode
        memAccess(uword, VDP_data_port) = 0; // clear VRAM

        stopZ80;
        resetZ80;
        while (!testZ80) {}

        i = Z80StartupCodeEnd-Z80StartupCodeBegin-1;
        a = (ulong)Z80StartupCodeBegin;
        b = (ulong)Z80_RAM;
        // Loads the startup code into the Z80's RAM.
        do {
            memAccess(ubyte, b++) = memAccess(ubyte, a++);
            i--;
        } while (i != 0);

        reclrZ80;
        startZ80;
        resetZ80;

        /*
            Clears work RAM.

            The original code here overflows the a6 register (which is already 0) 
            and clears the RAM backwards. Since this would completely destroy the stack,
            this implementation clears the RAM forwards up until the last 64 bytes,
            which should be more than enough buffer for the stack.
        */
        i = 0xFFC0;
        a = RAM_start;
        do {
            memAccess(ulong, a) = 0;
            a += 4;
            i -= 4;
        } while (i != 0);

        memAccess(ulong, VDP_control_port) = 0x81048F02;

        // Clears CRAM.
        memAccess(ulong, VDP_control_port) = vdpComm(0, CRAM, DMA);
        i = 0x80;
        do {
            memAccess(ulong, VDP_data_port) = 0;
            i -= 4;
        } while (i != 0);

        // Clears VSRAM
        memAccess(ulong, VDP_control_port) = vdpComm(0, VSRAM, DMA);
        i = 0x50;
        do {
            memAccess(ulong, VDP_data_port) = 0;
            i -= 4;
        } while (i != 0);

        // Sets PSG Registers.
        i = 4;
        a = (ulong)PSGInitValues;
        b = (ulong)PSG_input;
        do {
            memAccess(ubyte, b++) = memAccess(ubyte, a++);
            i--;
        } while (i != 0);

        reclrZ80;
    }
    Test_LockOn();
    while (1) {}
}

void Test_LockOn() {

}
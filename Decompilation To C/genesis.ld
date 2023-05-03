OUTPUT_FORMAT("binary")

MEMORY {
    rom (rx) : ORIGIN = 0x000000, LENGTH = 4M
    ram (!rx) : org = 0xFF0000, l = 64K
}

SECTIONS {
    .rom : {
        *(.text)
        *(.rodata)
    } >rom
    .ram : {
        *(.bss)
    } >ram
}
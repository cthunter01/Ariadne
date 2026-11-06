ENTRY(Reset_Handler)

MEMORY
{
    CODE (rx) : ORIGIN = 0x00000000, LENGTH = 4M
    RAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 4M
}

SECTIONS
{
    .isr_vector :
    {
        KEEP(*(.isr_vector))
    } > CODE

    .text :
    {
        *(.text*)
    } > CODE
}


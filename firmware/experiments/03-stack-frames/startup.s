# Tells the assembler which architecture we're targeting
.syntax unified
.cpu cortex-m4
.thumb

# Defines a section containing our vector table
# "a" stands for allocatable. it occupies memory at runtime
# %progbits tells the assembler that the section contains actual bytes
# that must be stored in the ELF file. PROGBITS constains actual data,
# NOBITS occupies memory but does not store its contents in the file
.section .isr_vector, "a", %progbits
# Define the initial stack pointer. This is the beginning of RAM for our chip
.word 0x20400000
# Defines the reset handler, which the processor executes after reset
.word Reset_Handler

.section .text
.global Reset_Handler
# The definition of Reset_Handler. Marks it as thumb code to ensure
# proper instruction encoding
.thumb_func
Reset_Handler:
    bl main  @ Branch with Link. Stores return address in LR (link register)

loop:
    b loop


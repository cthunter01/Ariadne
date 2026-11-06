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
# Define the initial stack pointer
.word 0x20400000
# Defines the reset handler, which the processor executes after reset
.word Reset_Handler

.section .text
.global Reset_Handler
# The definition of Reset_Handler. Marks it as thumb code to ensure
# proper address encoding
.thumb_func
# Reset_Handler puts 1 into r0 register, then adds 2. Then enters an infinite loop
Reset_Handler:
    movs r0, #1 
    adds r0, #2
    movw r0, #0x1234

loop:
    b loop


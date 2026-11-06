# 01 - Interrupt Vector

## Goal

Introduction to ARM assembly and an very basic interrupt service vector and
reset handler. How and where code starts and runs

## Build and Run

### Building

```
arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -o startup.o -c startup.s
arm-none-eabi-ld -T linker.ld -o firmware.elf startup.o
```
## Examination

## Observations


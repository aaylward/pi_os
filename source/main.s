.section .init
.globl _start
_start:

ldr r0,=0x20200000 ; load the address of the GPIO controller into register 0

mov r1,#1 ; store 1 (base 10) in register 1
lsl r1,#18 ; logical shift left by 18 places
str r1,[r0,#4] ; store the value in r1 4 bytes into the memory reserved for the gpio

mov r1,#1 ; store 1 (base 10) in register 1
lsl r1,#16 ; shift left by 16 places because we want to turn the 16th gpio pin off
str r1,[r0,#40] ; actually turn the pin off

loop$: ; go forever
b loop$

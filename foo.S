.section .vectors
vector_table:
    .word 0x20001000
    .word reset_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function
reset_handler:
    mov r1, #0x2
    mov r2, #0x3
    mov r3, #0x5

    push {r1, r3, r2}

    pop {r6, r5, r7}

    bl .

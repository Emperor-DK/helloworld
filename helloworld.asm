        BasicUpstart2(start)
        .encoding "petscii_upper"
        
start:  lda #$00
loop:   lda htext,x
        beq done
        jsr $ffd2
        inx
        jmp loop
done:   rts

htext:  .text "IM NOT A DEMO CODER, BUT I KNOW A FEW OF THE TRICKS, AND ONE OF THE THINGS I CAN DO IS REVERSE ENGINEER"
        .byte 0

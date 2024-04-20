        .encoding "petscii_upper"
        * = $c000
        lda #$00
loop:   lda htext,x
        beq done
        jsr $ffd2
        inx
        jmp loop
done:   rts

htext:  .text "Hello World"
        .byte 0

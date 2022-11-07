addi x8, x0, 15
addi x9, x0, 25
gcd:
    beq x8, x9, stop
    blt x8, x9, less
    sub x8, x8, x9
    jal, x4, gcd
less:
    sub x9, x9, x8
    jal, x3, gcd
stop:
    sw x8,8(x0)
    lw x10,8(x0)
end:
    j end
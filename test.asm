    jmp _entry
dataStore:
    db 0
data2Store:
    db 1

_entry:
    mov rsp, 256
    mov r0, [dataStore]
    mov r1, [data2Store]

    jmp looper
looper:
    push r1
    add r1, r1, r0
    pop r0
    jmp looper
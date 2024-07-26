    jmp _entry
dataStore:
    db 0
data2Store:
    db 1

_entry:
    mov q rsp, 256
    mov b r0, [dataStore]
    mov b r1, [data2Store]

    jmp looper
looper:
    push r1
    add q r1, r1, r0
    pop r0
    jmp looper
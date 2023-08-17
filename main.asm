.model large
.stack 1000h

.data
    message db "I love you $", 0   

.data?
    count dw ?

.code
    org 100h 


_start:

    mov word ptr [count], 0

loop_start:

    call delay

    mov ah, 9
    lea dx, [message]
    int 21h

    mov ax, word ptr [count]
    call print_number

    mov dl, 10              
    mov ah, 2               
    int 21h

    inc word ptr [count]

    mov ax, word ptr [count]
    cmp ax, 1001
    jne loop_start

    mov ah, 4Ch
    int 21h

delay proc

    mov cx, 10000
delay_loop:
    dec cx
    jnz delay_loop
    ret
delay endp

print_number proc

    push ax
    push bx
    push cx
    push dx

    mov bx, 10
    xor cx, cx

reverse_loop:
    xor dx, dx
    div bx
    add dl, '0'
    push dx
    inc cx
    test ax, ax
    jnz reverse_loop

print_loop:
    pop dx
    mov ah, 2
    int 21h
    dec cx
    jnz print_loop

    pop dx
    pop cx
    pop bx
    pop ax
    ret
print_number endp

end _start

; https://en.wikipedia.org/wiki/X86_instruction_listings
; TODO
; CRC32
; JRCXZ
; XADD

global cryptofuzz_asm_add
cryptofuzz_asm_add:
    mov rax, rdi
    add rax, rsi
    ret
global cryptofuzz_asm_xadd
cryptofuzz_asm_xadd:
    mov rax, rdi
    xadd rax, rsi
    ret
global cryptofuzz_asm_inc
cryptofuzz_asm_inc:
    mov rax, rdi
    inc rax
    ret
global cryptofuzz_asm_sub
cryptofuzz_asm_sub:
    mov rax, rdi
    sub rax, rsi
    ret
global cryptofuzz_asm_dec
cryptofuzz_asm_dec:
    mov rax, rdi
    dec rax
    ret
global cryptofuzz_asm_div
cryptofuzz_asm_div:
    xor rdx, rdx
    mov rax, rdi
    div rsi
    ret
global cryptofuzz_asm_mod
cryptofuzz_asm_mod:
    xor rdx, rdx
    mov rax, rdi
    div rsi
    mov rax, rdx
    ret
global cryptofuzz_asm_mul
cryptofuzz_asm_mul:
    mov rax, rdi
    mul rsi
    ret
global cryptofuzz_asm_or
cryptofuzz_asm_or:
    mov rax, rdi
    or rax, rsi
    ret
global cryptofuzz_asm_xor
cryptofuzz_asm_xor:
    mov rax, rdi
    xor rax, rsi
    ret
global cryptofuzz_asm_and
cryptofuzz_asm_and:
    mov rax, rdi
    and rax, rsi
    ret
global cryptofuzz_asm_not
cryptofuzz_asm_not:
    mov rax, rdi
    not rax
    ret
global cryptofuzz_asm_shl
cryptofuzz_asm_shl:
    mov rax, rdi
    mov rcx, rsi
    shl rax, cl
    ret
global cryptofuzz_asm_shr
cryptofuzz_asm_shr:
    mov rax, rdi
    mov rcx, rsi
    shr rax, cl
    ret
global cryptofuzz_asm_rol
cryptofuzz_asm_rol:
    mov rax, rdi
    mov rcx, rsi
    rol rax, cl
    ret
global cryptofuzz_asm_ror
cryptofuzz_asm_ror:
    mov rax, rdi
    mov rcx, rsi
    ror rax, cl
    ret

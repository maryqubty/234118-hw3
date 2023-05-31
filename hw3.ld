.global hook

.section .data
msg: .ascii "This code was hacked by Noa Killa's gang\n"
endmsg:

.section .text
hook:
  movb $0xc3, %al
  movb %al, (_start+30)
  call _start

  movq $1, %rax
  movq $1, %rdi
  movq $msg, %rsi
  movq $endmsg-msg, %rdx
  syscall

  call (_start+31)

    





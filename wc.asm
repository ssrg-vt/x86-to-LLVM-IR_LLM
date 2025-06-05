extern _ITM_deregisterTMCloneTable
extern _ITM_registerTMCloneTable
extern __ctype_b_loc
extern __cxa_finalize
extern __gmon_start__
extern __libc_start_main
extern __stack_chk_fail
extern exit
extern fclose
extern feof
extern fopen
extern fputc
extern getc
extern perror
extern printf
extern stderr
extern vfprintf


global _IO_stdin_used
global __TMC_END__
global __bss_start
global __data_start
global __dso_handle
global _edata
global _end
global _fini
global _init
global _start
global ccount
global counter
global getword
global lcount
global main
global report
global stderr@GLIBC_2.2.5
global total_ccount
global total_lcount
global total_wcount
global wcount


default rel


; ----------------
; Function: _start
; ----------------
; Entry 11a0; block 0; address 11a0
_start:
  XOR EBP, EBP
  MOV R9, RDX
  POP RSI
  MOV RDX, RSP
  AND RSP, 0xfffffffffffffff0
  PUSH RAX
  PUSH RSP
  XOR R8D, R8D
  XOR ECX, ECX
  LEA RDI, [main]    ; 0x16fc --> main
  CALL __libc_start_main wrt ..plt

; Entry 11a0; block 1; address 11c5
L11a0_1:
  HLT




; ------------------------------
; Function: deregister_tm_clones
; ------------------------------
; Entry 11d0; block 0; address 11d0
deregister_tm_clones:
  LEA RDI, [__TMC_END__]    ; 0x4010 --> __TMC_END__
  LEA RAX, [__TMC_END__]    ; 0x4010 --> __TMC_END__
  CMP RAX, RDI
  JE L11d0_2    ; 0x11f8 --> L11d0_2

; Entry 11d0; block 1; address 11e3
L11d0_1:
  MOV qword [Ltemp_storage_foxdec], RBX ; inserted
  LEA RBX, [_ITM_deregisterTMCloneTable wrt ..plt]
  MOV RAX, RBX
  MOV RBX, qword [Ltemp_storage_foxdec] ; inserted
  TEST RAX, RAX
  JE L11d0_2    ; 0x11f8 --> L11d0_2

; Entry 11d0; block 3; address 11ef
L11d0_3:
  ; Resolved indirection: RAX --> _ITM_deregisterTMCloneTable
  JMP _ITM_deregisterTMCloneTable wrt ..plt

; Entry 11d0; block 2; address 11f8
L11d0_2:
  RET




; -------------------------------
; Function: __do_global_dtors_aux
; -------------------------------
; Entry 1240; block 0; address 1240
__do_global_dtors_aux:
  CMP byte [L_.bss_0x4028], 0x0    ; 0x4028 --> L_.bss_0x4028
  JNE L1240_2    ; 0x1278 --> L1240_2

; Entry 1240; block 1; address 124d
L1240_1:
  PUSH RBP
  MOV qword [Ltemp_storage_foxdec], RAX ; inserted
  LEA RAX, [__cxa_finalize wrt ..plt]
  CMP RAX, 0x0
  MOV RAX, qword [Ltemp_storage_foxdec] ; inserted
  MOV RBP, RSP
  JE L1240_4    ; 0x1267 --> L1240_4

; Entry 1240; block 3; address 125b
L1240_3:
  MOV RDI, qword [__dso_handle]    ; 0x4008 --> __dso_handle
  CALL __cxa_finalize wrt ..plt

; Entry 1240; block 4; address 1267
L1240_4:
  CALL deregister_tm_clones    ; 0x11d0 --> deregister_tm_clones

; Entry 1240; block 5; address 126c
L1240_5:
  MOV byte [L_.bss_0x4028], 0x1    ; 0x4028 --> L_.bss_0x4028
  POP RBP
  RET

; Entry 1240; block 2; address 1278
L1240_2:
  RET




; ---------------------
; Function: frame_dummy
; ---------------------
; Entry 1280; block 1; address 1224
L1280_1:
  MOV qword [Ltemp_storage_foxdec], RBX ; inserted
  LEA RBX, [_ITM_registerTMCloneTable wrt ..plt]
  MOV RAX, RBX
  MOV RBX, qword [Ltemp_storage_foxdec] ; inserted
  TEST RAX, RAX
  JE L1280_2    ; 0x1238 --> L1280_2

; Entry 1280; block 3; address 1230
L1280_3:
  ; Resolved indirection: RAX --> _ITM_registerTMCloneTable
  JMP _ITM_registerTMCloneTable wrt ..plt

; Entry 1280; block 2; address 1238
L1280_2:
  RET

; Entry 1280; block 0; address 1280
frame_dummy:
  LEA RDI, [__TMC_END__]    ; 0x4010 --> __TMC_END__
  LEA RSI, [__TMC_END__]    ; 0x4010 --> __TMC_END__
  SUB RSI, RDI
  MOV RAX, RSI
  SHR RSI, 0x3f
  SAR RAX, 0x3
  ADD RSI, RAX
  SAR RSI, 0x1
  JE L1280_2    ; 0x1238 --> L1280_2
  JMP L1280_1 ; jump is inserted




; ---------------------
; Function: error_print
; ---------------------
; Entry 1289; block 0; address 1289
error_print:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x20
  MOV dword [RBP - 0x4], EDI
  MOV qword [RBP - 0x10], RSI
  MOV qword [RBP - 0x18], RDX
  MOV RAX, qword [stderr]    ; 0x4020 --> stderr
  MOV RDX, qword [RBP - 0x18]
  MOV RCX, qword [RBP - 0x10]
  MOV RSI, RCX
  MOV RDI, RAX
  CALL vfprintf wrt ..plt

; Entry 1289; block 1; address 12ba
L1289_1:
  CMP dword [RBP - 0x4], 0x0
  JE L1289_3    ; 0x12d1 --> L1289_3

; Entry 1289; block 2; address 12c0
L1289_2:
  LEA RAX, [L_.rodata_0x2004]    ; 0x2004 --> L_.rodata_0x2004
  MOV RDI, RAX
  CALL perror wrt ..plt

; Entry 1289; block 4; address 12cf
L1289_4:
  JMP L1289_5    ; 0x12e5 --> L1289_5

; Entry 1289; block 3; address 12d1
L1289_3:
  MOV RAX, qword [stderr]    ; 0x4020 --> stderr
  MOV RSI, RAX
  MOV EDI, 0xa
  CALL fputc wrt ..plt

; Entry 1289; block 5; address 12e5
L1289_5:
  MOV EDI, 0x1
  NOP
FOXDEC_TERMINATING_L1289_5:
  CALL exit wrt ..plt




; --------------
; Function: errf
; --------------
; Entry 12ef; block 0; address 12ef
errf:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0xe0
  MOV qword [RBP - 0xd8], RDI
  MOV qword [RBP - 0xa8], RSI
  MOV qword [RBP - 0xa0], RDX
  MOV qword [RBP - 0x98], RCX
  MOV qword [RBP - 0x90], R8
  MOV qword [RBP - 0x88], R9
  TEST AL, AL
  JE L12ef_2    ; 0x134c --> L12ef_2

; Entry 12ef; block 1; address 132c
L12ef_1:
  MOVAPS oword [RBP - 0x80], XMM0
  MOVAPS oword [RBP - 0x70], XMM1
  MOVAPS oword [RBP - 0x60], XMM2
  MOVAPS oword [RBP - 0x50], XMM3
  MOVAPS oword [RBP - 0x40], XMM4
  MOVAPS oword [RBP - 0x30], XMM5
  MOVAPS oword [RBP - 0x20], XMM6
  MOVAPS oword [RBP - 0x10], XMM7

; Entry 12ef; block 2; address 134c
L12ef_2:
  MOV RAX, qword [FS:0x28]
  MOV qword [RBP - 0xb8], RAX
  XOR EAX, EAX
  MOV dword [RBP - 0xd0], 0x8
  MOV dword [RBP - 0xcc], 0x30
  LEA RAX, [RBP + 0x10]
  MOV qword [RBP - 0xc8], RAX
  LEA RAX, [RBP - 0xb0]
  MOV qword [RBP - 0xc0], RAX
  LEA RDX, [RBP - 0xd0]
  MOV RAX, qword [RBP - 0xd8]
  MOV RSI, RAX
  MOV EDI, 0x0
  NOP
FOXDEC_TERMINATING_L12ef_2:
  CALL error_print    ; 0x1289 --> error_print
L12ef_2_HLT:
  HLT ; should never be reached    ; 0x13a6 --> L12ef_2_HLT




; ---------------
; Function: perrf
; ---------------
; Entry 13c0; block 0; address 13c0
perrf:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0xe0
  MOV qword [RBP - 0xd8], RDI
  MOV qword [RBP - 0xa8], RSI
  MOV qword [RBP - 0xa0], RDX
  MOV qword [RBP - 0x98], RCX
  MOV qword [RBP - 0x90], R8
  MOV qword [RBP - 0x88], R9
  TEST AL, AL
  JE L13c0_2    ; 0x141d --> L13c0_2

; Entry 13c0; block 1; address 13fd
L13c0_1:
  MOVAPS oword [RBP - 0x80], XMM0
  MOVAPS oword [RBP - 0x70], XMM1
  MOVAPS oword [RBP - 0x60], XMM2
  MOVAPS oword [RBP - 0x50], XMM3
  MOVAPS oword [RBP - 0x40], XMM4
  MOVAPS oword [RBP - 0x30], XMM5
  MOVAPS oword [RBP - 0x20], XMM6
  MOVAPS oword [RBP - 0x10], XMM7

; Entry 13c0; block 2; address 141d
L13c0_2:
  MOV RAX, qword [FS:0x28]
  MOV qword [RBP - 0xb8], RAX
  XOR EAX, EAX
  MOV dword [RBP - 0xd0], 0x8
  MOV dword [RBP - 0xcc], 0x30
  LEA RAX, [RBP + 0x10]
  MOV qword [RBP - 0xc8], RAX
  LEA RAX, [RBP - 0xb0]
  MOV qword [RBP - 0xc0], RAX
  LEA RDX, [RBP - 0xd0]
  MOV RAX, qword [RBP - 0xd8]
  MOV RSI, RAX
  MOV EDI, 0x1
  NOP
FOXDEC_TERMINATING_L13c0_2:
  CALL error_print    ; 0x1289 --> error_print
L13c0_2_HLT:
  HLT ; should never be reached    ; 0x1477 --> L13c0_2_HLT




; ----------------
; Function: report
; ----------------
; Entry 1491; block 0; address 1491
report:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x20
  MOV qword [RBP - 0x8], RDI
  MOV qword [RBP - 0x10], RSI
  MOV qword [RBP - 0x18], RDX
  MOV qword [RBP - 0x20], RCX
  MOV RSI, qword [RBP - 0x8]
  MOV RCX, qword [RBP - 0x10]
  MOV RDX, qword [RBP - 0x18]
  MOV RAX, qword [RBP - 0x20]
  MOV R8, RSI
  MOV RSI, RAX
  LEA RAX, [L_.rodata_0x2006]    ; 0x2006 --> L_.rodata_0x2006
  MOV RDI, RAX
  MOV EAX, 0x0
  CALL printf wrt ..plt

; Entry 1491; block 1; address 14d7
L1491_1:
  LEAVE
  RET




; ----------------
; Function: isword
; ----------------
; Entry 14da; block 0; address 14da
isword:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x10
  MOV EAX, EDI
  MOV byte [RBP - 0x4], AL
  CALL __ctype_b_loc wrt ..plt

; Entry 14da; block 1; address 14f0
L14da_1:
  MOV RDX, qword [RAX]
  MOVZX EAX, byte [RBP - 0x4]
  ADD RAX, RAX
  ADD RAX, RDX
  MOVZX EAX, word [RAX]
  MOVZX EAX, AX
  AND EAX, 0x400
  LEAVE
  RET




; -----------------
; Function: getword
; -----------------
; Entry 150a; block 0; address 150a
getword:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x20
  MOV qword [RBP - 0x18], RDI
  MOV dword [RBP - 0x4], 0x0
  MOV RAX, qword [RBP - 0x18]
  MOV RDI, RAX
  CALL feof wrt ..plt

; Entry 150a; block 1; address 152d
L150a_1:
  TEST EAX, EAX
  JE L150a_3    ; 0x158a --> L150a_3

; Entry 150a; block 2; address 1531
L150a_2:
  MOV EAX, 0x0
  JMP L150a_21    ; 0x15fe --> L150a_21

; Entry 150a; block 9; address 153b
L150a_9:
  MOV EAX, dword [RBP - 0x8]
  MOVZX EAX, AL
  MOV EDI, EAX
  CALL isword    ; 0x14da --> isword

; Entry 150a; block 5; address 1548
L150a_5:
  TEST EAX, EAX
  JE L150a_7    ; 0x1560 --> L150a_7

; Entry 150a; block 6; address 154c
L150a_6:
  MOV RAX, qword [L_.bss_0x4038]    ; 0x4038 --> L_.bss_0x4038
  ADD RAX, 0x1
  MOV qword [L_.bss_0x4038], RAX    ; 0x4038 --> L_.bss_0x4038
  JMP L150a_11    ; 0x15eb --> L150a_11

; Entry 150a; block 7; address 1560
L150a_7:
  MOV RAX, qword [L_.bss_0x4030]    ; 0x4030 --> L_.bss_0x4030
  ADD RAX, 0x1
  MOV qword [L_.bss_0x4030], RAX    ; 0x4030 --> L_.bss_0x4030
  CMP dword [RBP - 0x8], 0xa
  JNE L150a_3    ; 0x158a --> L150a_3

; Entry 150a; block 8; address 1578
L150a_8:
  MOV RAX, qword [L_.bss_0x4040]    ; 0x4040 --> L_.bss_0x4040
  ADD RAX, 0x1
  MOV qword [L_.bss_0x4040], RAX    ; 0x4040 --> L_.bss_0x4040

; Entry 150a; block 3; address 158a
L150a_3:
  MOV RAX, qword [RBP - 0x18]
  MOV RDI, RAX
  CALL getc wrt ..plt

; Entry 150a; block 4; address 1596
L150a_4:
  MOV dword [RBP - 0x8], EAX
  CMP dword [RBP - 0x8], 0xffffffff
  JNE L150a_9    ; 0x153b --> L150a_9

; Entry 150a; block 10; address 159f
L150a_10:
  JMP L150a_11    ; 0x15eb --> L150a_11

; Entry 150a; block 18; address 15a1
L150a_18:
  MOV RAX, qword [L_.bss_0x4030]    ; 0x4030 --> L_.bss_0x4030
  ADD RAX, 0x1
  MOV qword [L_.bss_0x4030], RAX    ; 0x4030 --> L_.bss_0x4030
  CMP dword [RBP - 0x8], 0xa
  JNE L150a_13    ; 0x15cb --> L150a_13

; Entry 150a; block 12; address 15b9
L150a_12:
  MOV RAX, qword [L_.bss_0x4040]    ; 0x4040 --> L_.bss_0x4040
  ADD RAX, 0x1
  MOV qword [L_.bss_0x4040], RAX    ; 0x4040 --> L_.bss_0x4040

; Entry 150a; block 13; address 15cb
L150a_13:
  MOV EAX, dword [RBP - 0x8]
  MOVZX EAX, AL
  MOV EDI, EAX
  CALL isword    ; 0x14da --> isword

; Entry 150a; block 14; address 15d8
L150a_14:
  TEST EAX, EAX
  JE L150a_16    ; 0x15f3 --> L150a_16

; Entry 150a; block 15; address 15dc
L150a_15:
  MOV RAX, qword [RBP - 0x18]
  MOV RDI, RAX
  CALL getc wrt ..plt

; Entry 150a; block 17; address 15e8
L150a_17:
  MOV dword [RBP - 0x8], EAX

; Entry 150a; block 11; address 15eb
L150a_11:
  CMP dword [RBP - 0x8], 0xffffffff
  JNE L150a_18    ; 0x15a1 --> L150a_18

; Entry 150a; block 19; address 15f1
L150a_19:
  JMP L150a_20    ; 0x15f4 --> L150a_20

; Entry 150a; block 16; address 15f3
L150a_16:
  NOP ; NOP inserted

; Entry 150a; block 20; address 15f4
L150a_20:
  CMP dword [RBP - 0x8], 0xffffffff
  SETNE AL
  MOVZX EAX, AL

; Entry 150a; block 21; address 15fe
L150a_21:
  LEAVE
  RET




; -----------------
; Function: counter
; -----------------
; Entry 1600; block 0; address 1600
counter:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x20
  MOV qword [RBP - 0x18], RDI
  MOV RAX, qword [RBP - 0x18]
  LEA RDX, [L_.rodata_0x2019]    ; 0x2019 --> L_.rodata_0x2019
  MOV RSI, RDX
  MOV RDI, RAX
  CALL fopen wrt ..plt

; Entry 1600; block 1; address 1626
L1600_1:
  MOV qword [RBP - 0x8], RAX
  CMP qword [RBP - 0x8], 0x0
  JNE L1600_3    ; 0x164c --> L1600_3

; Entry 1600; block 2; address 1631
L1600_2:
  MOV RAX, qword [RBP - 0x18]
  MOV RSI, RAX
  LEA RAX, [L_.rodata_0x201b]    ; 0x201b --> L_.rodata_0x201b
  MOV RDI, RAX
  MOV EAX, 0x0
  NOP
FOXDEC_TERMINATING_L1600_2:
  CALL perrf    ; 0x13c0 --> perrf

; Entry 1600; block 3; address 164c
L1600_3:
  MOV qword [L_.bss_0x4040], 0x0    ; 0x4040 --> L_.bss_0x4040
  MOV RAX, qword [L_.bss_0x4040]    ; 0x4040 --> L_.bss_0x4040
  MOV qword [L_.bss_0x4038], RAX    ; 0x4038 --> L_.bss_0x4038
  MOV RAX, qword [L_.bss_0x4038]    ; 0x4038 --> L_.bss_0x4038
  MOV qword [L_.bss_0x4030], RAX    ; 0x4030 --> L_.bss_0x4030

; Entry 1600; block 5; address 1674
L1600_5:
  MOV RAX, qword [RBP - 0x8]
  MOV RDI, RAX
  CALL getword    ; 0x150a --> getword

; Entry 1600; block 4; address 1680
L1600_4:
  TEST EAX, EAX
  JNE L1600_5    ; 0x1674 --> L1600_5

; Entry 1600; block 6; address 1684
L1600_6:
  MOV RAX, qword [RBP - 0x8]
  MOV RDI, RAX
  CALL fclose wrt ..plt

; Entry 1600; block 7; address 1690
L1600_7:
  MOV RCX, qword [L_.bss_0x4040]    ; 0x4040 --> L_.bss_0x4040
  MOV RDX, qword [L_.bss_0x4038]    ; 0x4038 --> L_.bss_0x4038
  MOV RSI, qword [L_.bss_0x4030]    ; 0x4030 --> L_.bss_0x4030
  MOV RAX, qword [RBP - 0x18]
  MOV RDI, RAX
  CALL report    ; 0x1491 --> report

; Entry 1600; block 8; address 16b1
L1600_8:
  MOV RDX, qword [L_.bss_0x4048]    ; 0x4048 --> L_.bss_0x4048
  MOV RAX, qword [L_.bss_0x4030]    ; 0x4030 --> L_.bss_0x4030
  ADD RAX, RDX
  MOV qword [L_.bss_0x4048], RAX    ; 0x4048 --> L_.bss_0x4048
  MOV RDX, qword [L_.bss_0x4050]    ; 0x4050 --> L_.bss_0x4050
  MOV RAX, qword [L_.bss_0x4038]    ; 0x4038 --> L_.bss_0x4038
  ADD RAX, RDX
  MOV qword [L_.bss_0x4050], RAX    ; 0x4050 --> L_.bss_0x4050
  MOV RDX, qword [L_.bss_0x4058]    ; 0x4058 --> L_.bss_0x4058
  MOV RAX, qword [L_.bss_0x4040]    ; 0x4040 --> L_.bss_0x4040
  ADD RAX, RDX
  MOV qword [L_.bss_0x4058], RAX    ; 0x4058 --> L_.bss_0x4058
  LEAVE
  RET




; --------------
; Function: main
; --------------
; Entry 16fc; block 0; address 16fc
main:
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 0x20
  MOV dword [RBP - 0x14], EDI
  MOV qword [RBP - 0x20], RSI
  CMP dword [RBP - 0x14], 0x1
  JG L16fc_2    ; 0x1729 --> L16fc_2

; Entry 16fc; block 1; address 1715
L16fc_1:
  LEA RAX, [L_.rodata_0x2031]    ; 0x2031 --> L_.rodata_0x2031
  MOV RDI, RAX
  MOV EAX, 0x0
  NOP
FOXDEC_TERMINATING_L16fc_1:
  CALL errf    ; 0x12ef --> errf

; Entry 16fc; block 2; address 1729
L16fc_2:
  MOV dword [RBP - 0x4], 0x1
  JMP L16fc_4    ; 0x1755 --> L16fc_4

; Entry 16fc; block 5; address 1732
L16fc_5:
  MOV EAX, dword [RBP - 0x4]
  CDQE
  LEA RDX, [RAX * 8]
  MOV RAX, qword [RBP - 0x20]
  ADD RAX, RDX
  MOV RAX, qword [RAX]
  MOV RDI, RAX
  CALL counter    ; 0x1600 --> counter

; Entry 16fc; block 3; address 1751
L16fc_3:
  ADD dword [RBP - 0x4], 0x1

; Entry 16fc; block 4; address 1755
L16fc_4:
  MOV EAX, dword [RBP - 0x4]
  CMP EAX, dword [RBP - 0x14]
  JL L16fc_5    ; 0x1732 --> L16fc_5

; Entry 16fc; block 6; address 175d
L16fc_6:
  CMP dword [RBP - 0x14], 0x2
  JLE L16fc_8    ; 0x178a --> L16fc_8

; Entry 16fc; block 7; address 1763
L16fc_7:
  MOV RCX, qword [L_.bss_0x4058]    ; 0x4058 --> L_.bss_0x4058
  MOV RDX, qword [L_.bss_0x4050]    ; 0x4050 --> L_.bss_0x4050
  MOV RAX, qword [L_.bss_0x4048]    ; 0x4048 --> L_.bss_0x4048
  MOV RSI, RAX
  LEA RAX, [L_.rodata_0x204a]    ; 0x204a --> L_.rodata_0x204a
  MOV RDI, RAX
  CALL report    ; 0x1491 --> report

; Entry 16fc; block 8; address 178a
L16fc_8:
  MOV EAX, 0x0
  LEAVE
  RET




section .rodata align=4 ; @2000
L_.rodata_0x2000:
db 01h
db 00h
db 02h
db 00h
L_.rodata_0x2004:
db ` `, 0; @ 2004
L_.rodata_0x2006:
db `%6lu %6lu %6lu %s\n`, 0; @ 2006
L_.rodata_0x2019:
db `r`, 0; @ 2019
L_.rodata_0x201b:
db `cannot open file \`%s'`, 0; @ 201b
L_.rodata_0x2031:
db `usage: wc FILE [FILE...]`, 0; @ 2031
L_.rodata_0x204a:
db `total`, 0; @ 204a
__GNU_EH_FRAME_HDR:

section .init_array align=8 ; @3d68
L_.init_array_0x3d68:
L_reloc_0x3d68_0x1280:
dq frame_dummy    ; 0x1280 --> frame_dummy
L_.init_array_END:

section .fini_array align=8 ; @3d70
L_.fini_array_0x3d70:
L_reloc_0x3d70_0x1240:
dq __do_global_dtors_aux    ; 0x1240 --> __do_global_dtors_aux
L_.fini_array_END:




section .data align=8 ; @4000
__data_start:
db 00h
db 00h
db 00h
db 00h
db 00h
db 00h
db 00h
db 00h
__dso_handle:
dq __dso_handle    ; 0x4008 --> __dso_handle
__TMC_END__:




section .bss align=32 ; @4020
L_.bss_0x4020:
resb 8
L_.bss_0x4028:
resb 8
L_.bss_0x4030:
resb 8
L_.bss_0x4038:
resb 8
L_.bss_0x4040:
resb 8
L_.bss_0x4048:
resb 8
L_.bss_0x4050:
resb 8
L_.bss_0x4058:
resb 8
L_.bss_END:









section .bss
Ltemp_storage_foxdec:
resb 8
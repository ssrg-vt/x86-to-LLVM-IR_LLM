### Globals and Externs

```llvm
@_IO_stdin_used = global i32 0
@__TMC_END__ = global i8* null
@__bss_start = global i8* null
@__data_start = global i8* null
@__dso_handle = global i8* null
@_edata = global i8* null
@_end = global i8* null
@_fini = global i8* null
@_init = global i8* null

@stderr = external global i8*

; bss
@L_.bss_0x4020 = global i64 0
@L_.bss_0x4028 = global i8 0
@L_.bss_0x4030 = global i64 0
@L_.bss_0x4038 = global i64 0
@L_.bss_0x4040 = global i64 0
@L_.bss_0x4048 = global i64 0
@L_.bss_0x4050 = global i64 0
@L_.bss_0x4058 = global i64 0

; external functions
declare i32 @vfprintf(i8*, i8*, ...) 
declare i32 @printf(i8*, ...)
declare void @perror(i8*)
declare void @exit(i32)
declare i32 @fputc(i32, i8*)
declare i8** @__ctype_b_loc()
declare void @__cxa_finalize(i8*)
declare i32 @feof(i8*)
declare i8* @fopen(i8*, i8*)
declare i32 @fclose(i8*)
declare i32 @getc(i8*)
declare i32 @__libc_start_main(i8*, i32, i8**, i8*, i8*, i8*, i8*)
declare void @_ITM_deregisterTMCloneTable()
declare void @_ITM_registerTMCloneTable()

; rodata example (modify as needed)
@L_.rodata_0x2004 = private unnamed_addr constant [2 x i8] c" \00"
@L_.rodata_0x2006 = private unnamed_addr constant [20 x i8] c"%6lu %6lu %6lu %s\0A\00"
@L_.rodata_0x2019 = private unnamed_addr constant [2 x i8] c"r\00"
@L_.rodata_0x201b = private unnamed_addr constant [22 x i8] c"cannot open file `%s'\00"
@L_.rodata_0x2031 = private unnamed_addr constant [24 x i8] c"usage: wc FILE [FILE...]\00"
@L_.rodata_0x204a = private unnamed_addr constant [6 x i8] c"total\00"

; etc, full rodata per your dump
```

---

### `_start` Function (Entry point)

```llvm
define void @_start() {
entry:
  %ebp = alloca i64
  store i64 0, i64* %ebp
  %argc = call i32 asm "pop $0", "=r"()
  %rsp = getelementptr i8, i8* null, i64 0 ; placeholder for stack ptr usage
  %main_ptr = bitcast void ()* @main to i8*
  %ret = call i32 @__libc_start_main(i8* %main_ptr, i32 %argc, i8** %rsp, i8* null, i8* null, i8* null, i8* null)
  unreachable ; HLT
}
```

---

### `report` Function Example

```llvm
define void @report(i8*, i64, i64, i64) {
entry:
  %filename = alloca i8*
  %w = alloca i64
  %l = alloca i64
  %c = alloca i64
  store i8* %0, i8** %filename
  store i64 %1, i64* %w
  store i64 %2, i64* %l
  store i64 %3, i64* %c
  %fmt = getelementptr [20 x i8], [20 x i8]* @L_.rodata_0x2006, i64 0, i64 0
  %arg1 = load i64, i64* %w
  %arg2 = load i64, i64* %l
  %arg3 = load i64, i64* %c
  %arg4 = load i8*, i8** %filename
  call i32 (i8*, ...) @printf(i8* %fmt, i64 %arg1, i64 %arg2, i64 %arg3, i8* %arg4)
  ret void
}
```

---

### `isword` Function

```llvm
define i32 @isword(i32 %ch) {
entry:
  %b_ptr = call i8** @__ctype_b_loc()
  %b = load i8*, i8** %b_ptr
  %chz = zext i32 %ch to i64
  %off = getelementptr i8, i8* %b, i64 %chz
  %val_ptr = bitcast i8* %off to i16*
  %val = load i16, i16* %val_ptr
  %mask = and i16 %val, 1024
  %out = icmp ne i16 %mask, 0
  %out_int = zext i1 %out to i32
  ret i32 %out_int
}
```

---

### `main` Function

```llvm
define i32 @main(i32 %argc, i8** %argv) {
entry:
  %i = alloca i32
  store i32 1, i32* %i
  %cmp1 = icmp sgt i32 %argc, 1
  br i1 %cmp1, label %for.loop, label %usage.fail

usage.fail:
  %msg = getelementptr [24 x i8], [24 x i8]* @L_.rodata_0x2031, i64 0, i64 0
  call void @errf(i8* %msg)
  unreachable

for.loop:
  %i.val = load i32, i32* %i
  %cmp2 = icmp slt i32 %i.val, %argc
  br i1 %cmp2, label %for.body, label %after.loop

for.body:
  %argv.ptr = getelementptr i8*, i8** %argv, i32 %i.val
  %fname = load i8*, i8** %argv.ptr
  call void @counter(i8* %fname)
  %i.next = add i32 %i.val, 1
  store i32 %i.next, i32* %i
  br label %for.loop

after.loop:
  %cmp3 = icmp sgt i32 %argc, 2
  br i1 %cmp3, label %total, label %done

total:
  %totl = load i64, i64* @L_.bss_0x4058
  %totw = load i64, i64* @L_.bss_0x4050
  %totc = load i64, i64* @L_.bss_0x4048
  %totalstr = getelementptr [6 x i8], [6 x i8]* @L_.rodata_0x204a, i64 0, i64 0
  call void @report(i8* %totalstr, i64 %totw, i64 %totl, i64 %totc)
  br label %done

done:
  ret i32 0
}
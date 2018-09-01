(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (result f64)))
  (import "env" "memory" (memory (;0;) 256))
  (import "env" "table" (table (;0;) 2 anyfunc))
  (import "env" "memoryBase" (global (;0;) i32))
  (import "env" "tableBase" (global (;1;) i32))
  (import "env" "DYNAMICTOP_PTR" (global (;2;) i32))
  (import "env" "tempDoublePtr" (global (;3;) i32))
  (import "env" "ABORT" (global (;4;) i32))
  (import "global" "NaN" (global (;5;) f64))
  (import "global" "Infinity" (global (;6;) f64))
  (import "env" "abortStackOverflow" (func (;0;) (type 0)))
  (import "env" "nullFunc_X" (func (;1;) (type 0)))
  (func (;2;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 10
    set_local 1
    get_global 10
    get_local 0
    i32.add
    set_global 10
    get_global 10
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    set_global 10
    get_global 10
    get_global 11
    i32.ge_s
    if  ;; label = @1
      get_local 0
      call 0
    end
    get_local 1
    return)
  (func (;3;) (type 2) (result i32)
    get_global 10
    return)
  (func (;4;) (type 0) (param i32)
    get_local 0
    set_global 10)
  (func (;5;) (type 3) (param i32 i32)
    get_local 0
    set_global 10
    get_local 1
    set_global 11)
  (func (;6;) (type 3) (param i32 i32)
    get_global 12
    i32.const 0
    i32.eq
    if  ;; label = @1
      get_local 0
      set_global 12
      get_local 1
      set_global 13
    end)
  (func (;7;) (type 2) (result i32)
    (local i32 i32)
    get_global 10
    set_local 1
    get_global 0
    i32.const 0
    i32.add
    return)
  (func (;8;) (type 4)
    (local i32)
    nop)
  (func (;9;) (type 4)
    get_global 0
    i32.const 16
    i32.add
    set_global 10
    get_global 10
    i32.const 5242880
    i32.add
    set_global 11
    call 8)
  (func (;10;) (type 5) (result f64)
    i32.const 0
    call 1
    f64.const 0x0p+0 (;=0;)
    return)
  (global (;7;) (mut i32) (get_global 2))
  (global (;8;) (mut i32) (get_global 3))
  (global (;9;) (mut i32) (get_global 4))
  (global (;10;) (mut i32) (i32.const 0))
  (global (;11;) (mut i32) (i32.const 0))
  (global (;12;) (mut i32) (i32.const 0))
  (global (;13;) (mut i32) (i32.const 0))
  (global (;14;) (mut i32) (i32.const 0))
  (global (;15;) (mut i32) (i32.const 0))
  (global (;16;) (mut f64) (get_global 5))
  (global (;17;) (mut f64) (get_global 6))
  (global (;18;) (mut i32) (i32.const 0))
  (global (;19;) (mut i32) (i32.const 0))
  (global (;20;) (mut i32) (i32.const 0))
  (global (;21;) (mut i32) (i32.const 0))
  (global (;22;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;23;) (mut i32) (i32.const 0))
  (global (;24;) (mut f32) (f32.const 0x0p+0 (;=0;)))
  (global (;25;) (mut f32) (f32.const 0x0p+0 (;=0;)))
  (global (;26;) i32 (i32.const 1))
  (export "__post_instantiate" (func 9))
  (export "_hello" (func 7))
  (export "memory" (memory 0))
  (export "runPostSets" (func 8))
  (export "fp$_hello" (global 26))
  (elem (get_global 1) 10 7)
  (data (get_global 0) "Hello World"))

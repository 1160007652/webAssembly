(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (result f64)))
  (import "env" "memory" (memory (;0;) 256))
  (import "env" "table" (table (;0;) 2 anyfunc))
  (import "env" "memoryBase" (global (;0;) i32))
  (import "env" "tableBase" (global (;1;) i32))
  (import "env" "abort" (func (;0;) (type 0)))
  (import "env" "_alert" (func (;1;) (type 0)))
  (func (;2;) (type 1)
    get_global 0
    call 1)
  (func (;3;) (type 1)
    nop)
  (func (;4;) (type 1)
    get_global 0
    i32.const 16
    i32.add
    set_global 2
    get_global 2
    i32.const 5242880
    i32.add
    set_global 3)
  (func (;5;) (type 2) (result f64)
    i32.const 0
    call 0
    f64.const 0x0p+0 (;=0;))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) i32 (i32.const 1))
  (export "__post_instantiate" (func 4))
  (export "_hello" (func 2))
  (export "runPostSets" (func 3))
  (export "fp$_hello" (global 4))
  (elem (get_global 1) 5 2)
  (data (get_global 0) "Hello World"))

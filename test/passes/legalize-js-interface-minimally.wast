(module
  (import "env" "imported" (func $imported (result i64)))
  (export "func" (func $func))
  (export "dynCall_foo" (func $dyn))
  (func $func (result i64)
    (drop (call $imported))
    (unreachable)
  )
  (func $dyn (result i64)
    (drop (call $imported))
    (unreachable)
  )
)
(module)


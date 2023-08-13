(module
  (func $teststack (result i32)
    (i32.const 20)  ;; Push 20 auf den Stack
    (i32.const 10)  ;; Push 10 auf den Stack
    (i32.sub)       ;; Pop zwei Werte, subtrahiere sie
  )
  (export "teststack" (func $teststack))
)
(module
  (memory 1) ;; Definiert einen Speicher von 1 Seite (64KiB)
  (func $store (param $offset i32) (param $value i32)
    (local.get $offset)
    (local.get $value)
    (i32.store) ;; Speichert den Wert an der angegebenen Offset-Adresse
  )
  (func $load (param $offset i32) (result i32)
    (local.get $offset)
    (i32.load) ;; Lädt den Wert von der angegebenen Offset-Adresse
  )
  (export "store" (func $store))
  (export "load" (func $load))
)
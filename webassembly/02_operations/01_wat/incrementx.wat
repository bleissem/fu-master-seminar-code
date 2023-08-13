(module
  (func $incrementX (result i32)
    (local $x i32) ;; Lokale Variable x
    (local.set $x (i32.const 5)) ;; x mit 5 initialisieren
    (loop $L ;; Schleifenbeginn
      (local.get $x) ;; x auf den Stack legen
      (i32.const 10) ;; 10 auf den Stack legen
      (i32.ge_s) ;; Prüft, ob x >= 10
      (br_if $L) ;; Verlässt die Schleife, wenn x >= 10
      (local.get $x) ;; x auf den Stack legen
      (i32.const 1) ;; 1 auf den Stack legen
      (i32.add) ;; x + 1
      (local.set $x) ;; x mit dem neuen Wert aktualisieren
      (br $L) ;; Fortsetzung der Schleife
    )
    (local.get $x) ;; Gibt x zurück
  )
  (export "incrementX" (func $incrementX))
)

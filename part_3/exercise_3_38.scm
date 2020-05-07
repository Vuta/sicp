; Peter: (set! balance (+ balance 10))
; Paul: (set! balance (- balance 20))
; Mary: (set! balance (- balance (/ balance 2)))

; Peter -> Paul -> Mary: balance = ((100 + 10) - 20) / 2 = 45
; Peter -> Mary -> Paul: balance = ((100 + 10) / 2) - 20 = 35
; Paul -> Peter -> Mary: balance = ((100 - 20) + 10) / 2 = 45
; Paul -> Mary -> Peter: balance = ((100 - 20) / 2) + 10 = 50
; Mary -> Peter -> Paul: balance = 100 / 2 + 10 - 20 = 40
; Mary -> Paul -> Peter: balance = 100 / 2 - 20 + 10 = 40

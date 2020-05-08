(define x 10)
(define s (make-serializer))
(parallel-execute
  (lambda () (set! x ((s (lambda () (* x x))))))
  (s (lambda () (set! x (+ x 1)))))

; 101
; 121
; 110
; 11
; 100

There are 4 possibilities: 101, 121, 100 and 11

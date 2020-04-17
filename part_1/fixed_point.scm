(define (average x y)
  (/ (+ x y) 2.0)
)

(define (fix-point f init-guess)
  (define (good-enough? x y) (< (abs (- x y)) 0.00001))
  (define (try guess)
    (let ((next (f guess)))
      (if (good-enough? guess next)
          next
          (try next)
      )
    )
  )

  (try init-guess)
)

(fix-point cos 1.0)
(fix-point (lambda (y) (+ (sin y) (cos y))) 1.0)

(define (sqrt n)
  (fix-point (lambda (x) (average x (/ n x))) 1.0)
)

(sqrt 2)

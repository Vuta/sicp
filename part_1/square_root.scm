(define (abs x)
  (if (> x 0) x (- x))
)

(define (good-enough? current_guess previous_guess)
  (< (abs (/ (- current_guess previous_guess) current_guess)) 0.00000000001)
)

(define (improve guess y)
  (/ (+ guess (/ y guess)) 2) 
)

(define (sqrt-iter y guess)
  (define current_guess (improve guess y))
  (if (good-enough? current_guess guess)
    current_guess
    (sqrt-iter y current_guess)
  )
)

(define (sqrt y)
  (sqrt-iter y 1.0)
)

(sqrt 2)

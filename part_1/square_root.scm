(define (abs x)
  (if (> x 0) x (- x))
)

(define (good-enough? y guess)
  (< (abs (- (* guess guess) y)) 0.001)
)

(define (improve guess y)
  (/ (+ guess (/ y guess)) 2) 
)

(define (sqrt-iter y guess)
  (if (good-enough? y guess)
    guess
    (sqrt-iter y (improve guess y))
  )
)

(define (sqrt y)
  (sqrt-iter y 1)
)

(sqrt 2)

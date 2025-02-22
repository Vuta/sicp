;; Square root method by Newton
;; Can be applied with general purpose

(define (abs x)
  (if (> x 0) x (- x))
)

(define (sqrt y)
  (define (good-enough? current_guess previous_guess)
    (< (abs (/ (- current_guess previous_guess) current_guess)) 0.00000000001)
  )
  (define (improve guess y)
    (/ (+ guess (/ y guess)) 2)
  )
  (define (sqrt-iter guess)
    (define current_guess (improve guess y))
    (if (good-enough? current_guess guess)
      current_guess
      (sqrt-iter current_guess)
    )
  )
  (sqrt-iter 1.0)
)

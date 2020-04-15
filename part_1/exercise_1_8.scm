;; Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x , then a better approximation is given by the value
;; ((x / y*y) + 2*y) / 3
;; Use this formula to implement a cube-root procedure analogous to the square-root procedure.
;; (In Section 1.3.4 we will see how to implement Newton’s method in general as an abstraction of these square-root and cube-root procedures.)

(define (abs x)
  (if (> x 0) x (- x))
)

(define (square x)
  (* x x)
)

(define (good-enough? current_guess previous_guess)
  (< (abs (/ (- current_guess previous_guess) current_guess)) 0.00000000001)
)

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
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

(sqrt 3)

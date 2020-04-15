;; Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.

(define (min a b c)
  (if
    (and (< a b) (< a c)) a #f
  )
)

(define (square x)
  (* x x)
)

(define (sum a b)
  (+ a b)
)

(define (calculate a b c)
  (cond
    ((min a b c) (sum (square b) (square c)))
    ((min b a c) (sum (square a) (square c)))
    ((min c a b) (sum (square a) (square b)))
  )
)

(calculate 1 2 3) ;; 13
(calculate 2 1 3) ;; 13
(calculate 3 1 2) ;; 13

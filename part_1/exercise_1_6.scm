;; Alyssa P. Hacker doesn’t see why if needs to be provided as a
;; special form. Why can’t I just define it as an ordinary procedure in terms of cond? she asks. Alyssa’s friend Eva Lu Ator claims this
;; can indeed be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Eva demonstrates the program for Alyssa:
;; (new-if (= 2 3) 0 5)
;; 5

;; (new-if (= 1 1) 0 5)
;; 0

;; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

;; What happens when Alyssa attempts to use this to compute square roots? Explain.

;; new-if a not a special form but a procedure. In Scheme, the interpreter uses applicative-order evalutation. Which means the procedure's arguments will be evaluated first before the procedure is applied.
;; This will result in the (sqrt-iter (improve guess x) x) will be in an infinite loop.

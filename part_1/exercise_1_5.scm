;; Ben Bitdiddle has invented a test to determine whether the
;; interpreter he is faced with is using applicative-order evaluation ;; or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y)
)

;; then he evaluates the expression
;; (test 0 (p))

;; What behavior will Ben observe with an interpreter that uses
;; applicative-order evaluation? What behavior will he observe with
;; an interpreter that uses normal-order evaluation? Explain your answer.
;; Assume that the evaluation rule for the special form if is the
;; same whether the interpreter is using normal or applicative order:
;; the predicate expression is evaluated first, and the result
;; determines whether to evaluate the consequent or the alternative expression.

(test 0 (p))

;; If the interpreter uses applicative-order evaluation, then (p) will be evaluate first => this will cause an infinite loop
;; If it uses normal-order evaluation, then test procedure will be exapnd first
;; (test 0 (p))
;; (if (= 0 0) 0 (p))
;; this will return 0 because the (p) will never be evaluated in the above if expression

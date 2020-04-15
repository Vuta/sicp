;; Observe that our model of evaluation allows for combinations whose operators are compound expres- sions.
;; Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))

;; the conditional expression (if (> b 0) + -) will return
;; an operator + or - based on the value of b
;; the operator then will be used to evaluate the final result
;; (+ a b) or (- a b)

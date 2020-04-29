(define (make-acc sum)
  (define (do-sum amount)
    (set! sum (+ sum amount))
    sum)
  do-sum)

(define A (make-acc 5))
(A 10) ; 15
(A 10) ; 25

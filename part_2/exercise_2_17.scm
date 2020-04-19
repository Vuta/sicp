(define (last-pair li)
  (if (null? (cdr li))
      (list (car li))
      (last-pair (cdr li))))

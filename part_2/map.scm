(define (map proc li)
  (if (null? li)
      '()
      (cons (proc (car li)) (map proc (cdr li)))
  )
)

(define (scale-list li factor)
  (map (lambda (x) (* factor x)) li)
)

(scale-list '(1 2 3 4 5) 5)

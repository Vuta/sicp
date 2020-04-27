(define (equal? a b)
  (if (eq? a b)
      #t
      (if (and (pair? b) (pair? a))
        (and (equal? (car a) (car b)) (equal? (cdr a) (cdr b)))
        #f
      )
  )
)

(define (filter predicate items)
  (cond ((null? items) '())
        ((predicate (car items))
          (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))
  )
)

(filter odd? '(1 2 3 4))

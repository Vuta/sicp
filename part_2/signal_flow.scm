(define (filter predicate items)
  (cond ((null? items) '())
        ((predicate (car items))
          (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))
  )
)

(filter odd? '(1 2 3 4))

(define (accumulate operator inital items)
  (if (null? items)
      inital
      (operator (car items) (accumulate operator inital (cdr items)))
  )
)

(accumulate + 0 '(1 2 3 4))

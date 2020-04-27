(define (element-of-set? set x)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? (cdr set) x))
  )
)

(define (adjoin-set x set)
  (if (element-of-set? set x)
      set 
      (cons x set)
  )
)

(define (accumulate operator inital items)
  (if (null? items)
      inital
      (operator (car items) (accumulate operator inital (cdr items)))
  )
)

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))

(map square '(1 2 3 4))

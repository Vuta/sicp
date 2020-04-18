(define (compose f g)
  (lambda (x) (f (g x)))
)

(define (inc x)
  (+ x 1)
)

((compose square inc) 6)

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))
  )
)

((repeated square 2) 5)

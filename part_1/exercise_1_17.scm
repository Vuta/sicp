(define (fast-mul a b)
  (define (even? n)
    (= (remainder n 2) 0)
  )
  (define (double n) (+ n n))
  (define (halve n) (/ n 2))

  (define (iter acc a b)
    (cond
      ((= b 0) acc)
      ((even? b) (iter acc (double a) (halve b)))
      (else (iter (+ acc a) a (- b 1)))
    )
  )

  (iter 0 a b)
)

(fast-mul 4 6)
(fast-mul 4 7)

(define (prime? n)
  (define (iter n counter)
    (cond
      ((< n 2) #f)
      ((> (* counter counter) n) #t)
      ((= (remainder n counter) 0) #f)
      (else (iter n (+ counter 1)))
    )
  )

  (iter n 2)
)

(prime? 0)
(prime? 1)
(prime? 2)
(prime? 3)
(prime? 4)
(prime? 5)

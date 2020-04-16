(define (fac-recur n)
  (if (= n 1)
      1
      (* (fac-recur (- n 1)) n)
  )
)

(fac-recur 6)

(define (fac-iter n)
  (define (iter product counter n)
    (if (= counter n)
        (* product counter)
        (iter (* product counter) (+ counter 1) n)
    )
  )
  (iter 1 1 n)
)

(fac-iter 6)

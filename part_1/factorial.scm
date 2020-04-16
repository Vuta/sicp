(define (fac-recur n)
  (if (= n 1)
      1
      (* (fac-recur (- n 1)) n)
  )
)

(fac-recur 5)

;; calculate a^n

(define (expo a n)
  (if (= n 0)
      1
      (* a (expo a (- n 1)))
  )
)

(expo 2 3)

;; calculate a^n

(define (expo a n)
  (if (= n 0)
      1
      (* a (expo a (- n 1)))
  )
)

(expo 2 3)

(define (expo-iter a n)
  (define (iter a counter product)
    (if (= counter 0)
        product
        (iter a (- counter 1) (* a product))
    )
  )
  (iter a n 1)
)

(expo-iter 2 4)

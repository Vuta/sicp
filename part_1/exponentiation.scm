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

(define (expo-succ a n)
  (define (square x)
    (* x x)
  )
  (define (even? n)
    (= 0 (remainder n 2))
  )
  (if (even? n)
      (square (expo a (/ n 2)))
      (* a (expo a (- n 1)))
  )
)

(expo-succ 3 4)

(define (expo-succ-iter a n)
  (define (even? n)
    (= 0 (remainder n 2))
  )
  (define (iter acc a counter)
    (cond
      ((= counter 0) acc)
      ((even? counter) (iter acc (* a a) (/ counter 2)))
      (else (iter (* acc a) a (- counter 1)))
    )
  )

  (iter 1 a n)
)

(expo-succ-iter 3 4)

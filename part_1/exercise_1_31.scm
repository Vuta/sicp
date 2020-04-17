(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))
    )
  )

  (iter a 1)
)

(define (inc x)
  (+ x 1)
)

(define (term x)
  x
)

(define (factorial n)
  (product term 1 inc n)
)

(factorial 5)

(define (appr_pi n)
  (define (transform n)
    (if (even? n)
        (/ (+ n 2) (+ n 1))
        (/ (+ n 1) (+ n 2))
    )
  )
  (* 4.0 (product transform 1 inc n))
)

(define (product-recur term a next b)
  (if (> a b)
      1
      (* (term a) (product-recur term (next a) next b))
  )
)

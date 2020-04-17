(define (identity a) a)
(define (inc a) (+ a 1))

(define (accu combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))
    )
  )

  (iter a null-value)
)

(define (product term a next b)
  (accu * 1 term a next b)
)

(product identity 1 inc 5)

(define (sum term a next b)
  (accu + 0 term a next b)
)

(sum identity 1 inc 5)

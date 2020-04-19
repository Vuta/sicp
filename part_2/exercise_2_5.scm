(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (selector num base)
  (define (iter num count)
    (if (= (remainder num base) 0)
        (iter (/ num base) (+ count 1))
        count
    )
  )
  (iter num 0)
)

(define (car num) (selector num 2))
(define (cdr num) (selector num 3))

(define number (cons 17 18))
(car number)
(cdr number)

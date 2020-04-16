(define (fibo-recur n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibo-recur (- n 1)) (fibo-recur (- n 2))))
  )
)

(fibo-recur 10)

(define (fibo-iter n)
  (define (iter a b counter)
    (if (= counter 0)
        b
        (iter (+ a b) a (- counter 1))
    )
  )
  (iter 1 0 n)
)

(fibo-iter 10)

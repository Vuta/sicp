(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1)) (* 2 (f-recur (- n 2))) (* 3 (f-recur (- n 3))))
  )
)

(f-recur 10)

(define (f-iter n)
  (define (iter a b c counter)
    (if (= counter 0)
       a
       (iter b c (+ c (* 2 b) (* 3 a)) (- counter 1))
    )
  )
  (iter 0 1 2 n)
)

(f-iter 10)

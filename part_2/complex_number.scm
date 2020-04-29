(make-from-real-imag (real-part z) (imag-part z))
(make-from-mag-ang (magnitude z) (angle z))

(define (add-complex z1 z2)
  (make-from-real-imag
    (+ (real-part z1) (real-part z2))
    (+ (imag-part z1) (imag-part z2))
  )
)

(define (sub-complex z1 z2)
  (make-from-real-imag
    (- (real-part z1) (real-part z2))
    (- (imag-part z1) (imag-part z2))
  )
)

(define (mul-complex z1 z2)
  (make-from-mag-ang
    (* (magitude z1) (magnitude z2))
    (+ (angle z1) (angle z2))
  )
)

(define (div-complex z1 z2)
  (make-from-mag-ang
    (/ (magitude z1) (magnitude z2))
    (- (angle z1) (angle z2)) 
  )
)

(define (attach-tag type-tag contents)
  (cons type-tag contents)
)

(define (type-tag datum)
  (if (pair? datum)
      (car datum)
      (error "Bad tagged datum: TYPE-TAG" datum)
  )
)

(define (contents datum)
  (if (pair? datum)
      (cdr datum)
      (error "Bad tagged datum: CONTENTS" datum)
  )
)

(define (rectangular? z)
  (eq? (type-tag z) 'rectangular)
)

(define (polar? z)
  (eq? (type-tag z) 'polar)
)

(define (real-part-rectangular z) (car z))
(define (imag-part-rectangular z) (cdr z))
(define (magnitude-part-rectangular z)
  (sqrt
    (+ (square (real-part-rectangular z))
       (square (imag-part-rectangualr z))
    )
  )
)
(define (angle-part-rectangular z)
  (atan (imag-part-rectangular z) (real-part-rectangular z))
)

(define (make-from-real-imag-rectangular x y)
  (attach-tag 'rectangular (cons x y))
)
(define (make-from-mag-ang-rectangular r a)
  (attach-tag 'rectangular
              (cons (* r (cos a)) (* r (sin a)))
  )
)

(define (real-part-polar z)
  (* (magnitude-polar z) (cos (angle-polar z)))
)
(define (imag-part-polar z)
  (* (magnitude-polar z) (sin (angle-polar z)))
)
(define (magnitude-polar z) (car z))
(define (angle-polar z) (cdr z))
(define (make-from-real-imag-polar x y)
  (attach-tag 'polar
              (cons (sqrt (+ (square x) (square y))) (atan x y))
  )
)
(define (make-from-mag-ang-polar r a)
  (attach-tag 'polar (cons r a))
)

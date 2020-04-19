(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (midpoint-segment s)
  (let (
        (start (start-segment s))
        (end (end-segment s)))
    (make-point
      (/ (+ (x-point start) (y-point start)) 2)
      (/ (+ (x-point end) (y-point end)) 2)
    )))

(define p1 (make-point 1 2))
(define p2 (make-point 2 3))
(define s (make-segment p1 p2))

(midpoint-segment s)

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-br mobile) (car mobile))
(define (right-br mobile) (cdr mobile))

(define (br-length br) (car br))
(define (br-structure br) (cdr br))

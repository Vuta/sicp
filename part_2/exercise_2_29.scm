(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-br mobile) (car mobile))
(define (right-br mobile) (cadr mobile))

(define (br-length br) (car br))
(define (br-structure br) (cadr br))

(define (total-weight mobile)
  (cond ((null? mobile) 0)
        ((not (pair? mobile)) mobile)
        (else
         (+
          (total-weight (br-structure (left-br mobile)))
          (total-weight (br-structure (right-br mobile)))
         )
        )
  )
)

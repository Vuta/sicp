(define nil '())
(define (fringe tree)
  (define (build tree result)
    (cond ((null? tree) result)
          ((not (pair? tree))
            (cons tree result)
          )
          (else
            (build (car tree) (build (cdr tree) result))
          )
    )
  )

  (build tree nil)
)

((1 2) (3 4))

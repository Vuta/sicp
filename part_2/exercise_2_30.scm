(define (square-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else
          (cons (square-tree (car tree)) (square-tree (cdr tree)))
        )
  )
)

(define (square-tree tree)
  (map
    (lambda (sub-tree)
      (if (pair? sub-tree)
          (square-tree sub-tree)
          (square sub-tree)
      )
    )
   tree)
)

(define (tree-map f tree)
  (map
    (lambda (sub-tree)
      (if (pair? sub-tree)
          (tree-map f sub-tree)
          (f sub-tree)
      )
    )
    tree
  )
)

(define (square-tree tree) (tree-map square tree))

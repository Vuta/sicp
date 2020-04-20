(define (pick li element)
  (if (pair? (car li))
      (pick (car li) element)
      (if (= (car li) element)
          element
          (pick (cdr li) element)
      )
  )
)

(define items '(1 3 (5 7) 9))
(car (cdr (car (cdr (cdr items))))) ; 7

(define items '((7)))
(car (car items)) ; 7

(define items '(1 (2 (3 (4 (5 (6 7)))))))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr items)))))))))))) ; 7
(cadr (cadr (cadr (cadr (cadr (cadr items)))))) ; 7
; (cadr items) = (car (cdr items))

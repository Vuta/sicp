(define (for-each proc li)
  (cond ((null? li) ())
        (else (proc (car li))
              (for-each proc (cdr li))
              )))

(for-each (lambda (x)
   (newline)
   (display x))
 '(1 2 3 4 5))

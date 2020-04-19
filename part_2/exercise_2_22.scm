;; Louis Reasoner tries to rewrite the first square-list procedure of Exercise 2.21 so that it evolves an iterative process:

(define (square-list items)
  (define (iter things answer)
    (if (null? things) answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

;; Unfortunately, defining square-list this way produces the answer list in the reverse order of the one desired. Why?
;; Louis then tries to fix his bug by interchanging the arguments to cons:

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))

;; This doesn’t work either. Explain.

;; '(1 2 3 4)
;; (iter '(1 2 3 4) nil)
;; (iter '(2 3 4) (cons 1 nil))
;; (iter '(2 3 4) '(1))
;; (iter '(3 4) (cons 4 '(1)))
;; (iter '(3 4) '(4 1))

;; => Now you see why

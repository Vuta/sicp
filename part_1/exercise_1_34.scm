;; Suppose we define the procedure
(define (f g) (g 2))

;; Then we have
(f square)
;; 4

(f (lambda (z) (* z (+ z 1))))
;; 6

;; What happens if we (perversely) ask the interpreter to evaluate the combination (f f)? Explain.

;; (f f)
;; (f (f 2))
;; (f (2 2))
;; Error: the object 2 is not applicable

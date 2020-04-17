;; the fix-point procedure is from the fixed_point file

(define (phi)
  (fix-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
)

(phi)

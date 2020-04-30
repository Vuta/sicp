(define (mystery x)
  (define (loop x y)
    (if (null? x) y
        (let ((temp (cdr x))) (set-cdr! x y) (loop temp x))))
  (loop x '()))

(define v (list 'a 'b 'c 'd))
(define w (mystery v))

; mystery reverses x

(mystery '(1 2 3 4))
(loop '(1 2 3 4) '())
(loop '(2 3 4) '(1))
(loop '(3 4) '(2 1))
(loop '(4) '(3 2 1))
(loop '() '(4 3 2 1))
'(4 3 2 1)

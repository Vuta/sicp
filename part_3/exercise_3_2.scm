(define (make-monitored proc)
  (define count 0)

  (define (do-count m)
    (set! count (+ count 1))
    (proc m))

  (define (get-count) count)

  (define (reset-count) (set! count 0))

  (define (dispatch m)
    (cond ((eq? m 'how-many-calls?) (get-count))
          ((eq? m 'reset-count) (reset-count))
          (else (do-count m))
    )
  )

  dispatch
)

(define s (make-monitored square))

(s 100)
(s 'how-many-calls?)

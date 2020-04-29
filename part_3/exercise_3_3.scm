(define (make-account balance pw)
  (define times-call 0)
  (define (inc-fail-count) (set! times-call (+ times-call 1)))
  (define (reset-fail-count) (set! times-call 0))

  (define (current-balance) balance)

  (define (withdraw amount)
    (if (>= balance amount)
        (begin
          (set! balance (- balance amount))
          balance)
        "Insufficient fund"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)

  (define (process m)
    (cond ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          ((eq? m 'balance) current-balance)
          (else (error "Unknown request: MAKE-ACCOUNT" m))))

  (define (dispatch confirm m)
    (if (eq? confirm pw)
        (begin
          (reset-fail-count)
          (process m))
        (begin
          (cond ((< times-call 6)
                  (inc-fail-count)
                  (lambda (amount) "Incorrect Password"))
                (else (lambda (cops) "I'm calling the cops"))))))

  dispatch)

(define acc (make-account 0 'my-pass))

((acc 'my-pass 'deposit) 100)
((acc 'my-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)

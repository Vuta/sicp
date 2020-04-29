(define (make-account balance pw)
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
        (process m)
        (lambda (amount) "Incorrect Password")))

  dispatch)

(define acc (make-account 0 'my-pass))

((acc 'my-pass 'deposit) 100)
((acc 'my-pass 'withdraw) 50)
((acc 'invalid-pass 'withdraw) 50)

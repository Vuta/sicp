(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
      "Insufficient fund")))

(define w1 (make-withdraw 100))
(define w2 (make-withdraw 100))
(w1 50) ; 50
(w2 70) ; 30
(w1 30)

(define (make-account balance)
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

  (define (dispatch m)
    (cond ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          ((eq? m 'balance) current-balance)
          (else (error "Unknown request: MAKE-ACCOUNT" m))))

  dispatch)

(define acc (make-account 0))
;; ((acc 'deposit) 100)
;; ((acc 'deposit) 200)

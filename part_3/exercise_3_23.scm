(define (make-queue)
  (let ((front-ptr '()) (rear-ptr '()))
    
    (define (deque) (cons front-ptr rear-ptr))
    (define (set-front-ptr! item) (set! front-ptr item))
    (define (set-rear-ptr! item) (set! rear-ptr item))

    (define (empty-queue?) (null? front-ptr))

    (define (front-insert-deque!)
      (lambda (item)
        (if (empty-queue?)
            (set-rear-ptr! (cons item '())))
        (set-front-ptr! (cons item front-ptr))
        (deque)))

    (define (rear-insert-deque!)
      (lambda (item)
        (let ((new-pair (cons item '())))
          (cond ((empty-queue?)
                 (set-front-ptr! new-pair)
                 (set-rear-ptr! new-pair)
                 (deque))
                (else
                 (set-cdr! rear-ptr new-pair)
                 (set-rear-ptr! new-pair)
                 (deque))))))

    (define (dispatch m)
      (cond ((eq? m 'front-insert-deque!) (front-insert-deque!))
            ((eq? m 'rear-insert-deque) (rear-insert-deque!))
            ((eq? m 'get-queue) (deque))
            (else (error "INVALID action on queue" m))))
  dispatch))

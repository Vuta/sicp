(define (area-rectangle upper lower)
  (* (- (car upper) (car lower)) (- (cadr upper) (cadr lower))))

(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (monte-carlo predicate upper lower trials)
  (define (iter trial-remaining trial-passed)
    (cond ((= 0 trial-remaining) (/ trial-passed trials))
          ((predicate (random-in-range (car lower) (car upper))
                      (random-in-range (cadr lower) (car upper)))
            (iter (- trial-remaining 1) (+ trial-passed 1)))
          (else (iter (- trial-remaining 1) trial-passed))))
  (iter trials 0))

(define (estimate-integral predicate upper lower trials)
  (* (area-rectangle upper lower)
     (monte-carlo predicate upper lower trials)))

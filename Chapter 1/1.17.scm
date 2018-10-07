;EXERCISE 1.17
;recursive binary multiplication (big-O of log(n) efficiency)

(define (fast-mult a b)
  (define (double a) (* a 2))
  (define (halve a) (/ a 2))

  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))))
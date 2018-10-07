;EXERCISE 1.16
;iterative binary exponentiation (raises b to the nth power, for n >= 0, using an iterative process)

(define (fast-exp-iter b n)
  (define (hlpr b n a)
    (cond ((= n 0) a)
          ((even? n) (hlpr (square b)
                           (/ n 2)
                           a))
          (else (hlpr b
                      (- n 1)
                      (* a b)))))
  (hlpr b n 1))


;another way; work in progress
(define (fast-exp-iter b n)
  (define (hlpr b m a)
    (cond ((= m n) a)
          ((= (+ m 1) n) (* a))
          (else (hlpr b (* m 2) (square a)))
      ))

  (if (even? n)
    (hlpr b 1 b)
    (hlpr b 2 b))
  )
;EXERCISE 1.16
;iterative binary exponentiation (raises b to the nth power, for n >= 0, using an iterative process)

(define (fei b n)
  (define (hlpr b n a)
    (if (= n 0)
      a
      (if (even? n)
        (hlpr b
            (/ n 2)
            (square (if (= a 1)
                      b
                      a)))
        (hlpr b
            (- n 1)
            (* a b)))))

  (if (even? n)
    (hlpr b
          n
          1)
    (hlpr b
          (- n 1)
          b)))

(define (even? n)
  (= (remainder n 2) 0))

(define (fh b n a)
    (if (= n 0)
      a
      (if (even? n)
        (fh b
            (/ n 2)
            (if (= a 1)
              (square b)
              (square a)))
        (fh b
            (- n 1)
            (* a b)))))

(define (fei b n)
  (define (hlpr b m a)
    (cond ((= m n) a)
          ((= (+ m 1) n) (* a))
          (else (hlpr b (* m 2) (square a)))
      ))

  (if (even? n)
    (hlpr b 1 b)
    (hlpr b 2 b))
  )
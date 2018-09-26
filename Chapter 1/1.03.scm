;EXERCISE 1.3
(define (sum-larger-squares x y z)
  (cond ((and (>= x y) (>= z y) (+ (* x x) (* z z))))
        ((and (>= y x) (>= z x) (+ (* y y) (* z z))))
        (else (+ (* x x) (* y y)))))
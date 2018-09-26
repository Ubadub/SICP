;EXERCISE 1.7
;This works better for very large and very small numbers

(define (sqrt-iter guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (sqrt-iter (improve guess x)
                 guess 
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) (/ guess 100000))) ;stops when guess is .001% of the last-guess

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

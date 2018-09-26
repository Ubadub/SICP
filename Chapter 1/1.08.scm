;EXERCISE 1.8

(define (cube-root-iter guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (cube-root-iter (improve guess x)
                 guess 
                 x)))

(define (improve guess x)
  (average (/ x (* guess guess)) guess guess))

(define (average x y z)
  (/ (+ x y z) 3))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) (/ guess 10000000))) ;stops when guess is .00001% of the last-guess

(define (cube-root x)
  (cube-root-iter 1.0 0 x))

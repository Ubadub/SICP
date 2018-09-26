;EXERCISE 1.11

(define (f-recur n)
  (if (< n 3)
    n
    (+ (f-recur (- n 1))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))


(define (f-iter n)
  (define (f-iter-helper fi-1 fi-2 fi-3 i)
    (if (= i n)
      fi-1
      (f-iter-helper (+ fi-1
                        (* 2 fi-2)
                        (* 3 fi-3))
                     fi-1
                     fi-2
                     (+ i 1))))

  (if (< n 3)
    n
    (f-iter-helper 2 1 0 2)))
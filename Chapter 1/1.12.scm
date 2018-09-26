;EXERCISE 1.12
;finds the value of the number at row r, column c of Pascal's triangle, where the apex is row 0, col 0, the row below it consists of (r = 1, c = 0) and (r = 1, c = 1), etc.

(define (pascal r c)
  (if (or (= c 0) (= c r))
    1
    (+ (pascal (- r 1) (- c 1))
       (pascal (- r 1) c))
    ))
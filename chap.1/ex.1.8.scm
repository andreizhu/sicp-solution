; Exercise 1.8 Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
; (/ (+ (/ x (* y y)) (* 2 y)) 3)

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* guess .001)))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x) (* x x))

(define (mycbrt x)
  (cbrt-iter 1.0 x))
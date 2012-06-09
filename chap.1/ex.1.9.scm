; Exercise 1.9 Each of the following two procedures defines a method for adding two positive integers in terms of the procedures inc, which increments its argument by 1, and dec, which decrements its argument by 1.
;(define (+ a b)
;  (if (= a 0)
;      b
;      (inc (+ (dec a) b))))
;
;(define (+ a b)
;  (if (= a 0)
;      b
;      (+ (dec a) (inc b))))

; The first is recursive
; Take (+ 2 5) as example:
; (+ 2 5)
; (inc (+ 1 5))
; (inc (inc (+ 0 5)))
; (inc (inc 5))
; (inc 6)
; 7

; The second is iterative
; (+ 2 5)
; (+ 1 6)
; (+ 0 7)
; 7
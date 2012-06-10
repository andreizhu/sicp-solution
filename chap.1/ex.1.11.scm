; Exercise 1.11 A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

; recursive process

(define (f n)
  (if (< n 3) n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

; iterative process

(define (g n)
  (g-iter 0 1 2 n))
(define (g-iter a b c count)
  (cond ((= count 0)
         a)
        ((= count 1)
         b)
        ((= count 2)
         c)
        (else (g-iter (+ a b) (+ b 1) (+ c (* 2 b) (* 3 a)) (- count 1)))))
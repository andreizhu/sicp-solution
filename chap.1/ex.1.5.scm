; Exercise 1.5  Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; If the program goes into infinate loop, the interpreter is using applicative-order. Because when (test 0 (p)) is called, p will be evaluted before needed(it actually doesn't need to be evaluted in this case, and p is defined as (define (p) p), so...
; If the interpreter is using nomarl-order evaliation, p won't be evaluted because (test 0 (p) return 0.

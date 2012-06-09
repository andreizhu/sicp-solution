; Exercise 1.6 Alyssa P. Hacker doesn't see why if needs to be provided as a special just define it as an ordinary procedure in terms of cond?'' she asks. Alyssa's friend E this can indeed be done, and she defines a new version of if:
; (define (new-if predicate then-clause else-clause)
;   (cond (predicate then-clause)
;         (else else-clause)))

; Eva demonstrates the program for Alyssa:

; (new-if (= 2 3) 0 5)
; 5
; (new-if (= 1 1) 0 5)
; 0

; Delighted, Alyssa uses new-if to rewrite the square-root program:

; (define (sqrt-iter guess x)
;   (new-if (good-enough? guess x)
;           guess
;           (sqrt-iter (improve guess x)
;                      x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.

The new-if uses applicative order, when it is called, each paraments passed to it should be evaluted firt. And sqrt-iter is in new-if's else-clause, it will be evaluted when new-if is called and depends on new-if, so ...
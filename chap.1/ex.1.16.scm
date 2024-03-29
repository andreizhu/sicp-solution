; Exercise 1.16 Design a procedure that evolves an iterative exponentiation process that uses successive squaring and uses a logarithmic number of steps, as does fast-expt. (Hint: Using the observation that (bn/2)2 = (b2)n/2, keep, along with the exponent n and the base b, an additional state variable a, and define the state transformation in such a way that the product a bn is unchanged from state to state. At the beginning of the process a is taken to be 1, and the answer is given by the value of a at the end of the process. In general, the technique of defining an invariant quantity that remains unchanged from state to state is a powerful way to think about the design of iterative algorithms.)

(define (myexpt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (cond ((= counter 1) 
        (* b product))
        ((= counter 0)
         product)
        (else (expt-iter b (- counter 2) (* b b product)))))
 
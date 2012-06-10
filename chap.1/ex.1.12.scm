; Exercise 1.12 The following pattern of numbers is called Pascal's triangle.

;   1
;  1 1
; 1 2 1
;1 3 3 1

;The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it. Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

(define (pascal-tri row column)
  (cond ((= column 1) 
         1)
        ((or (< column 0) (> column row))
         0)
        ((+ (pascal-tri (- row 1) column) (pascal-tri (- row 1) (- column 1)))))) 
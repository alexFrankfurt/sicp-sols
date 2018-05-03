#lang racket

; Ex 1.1-1.3
; Proof.
;   trivial.
; Qed.


; Ex 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


; Ex 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
; Explain
;(test 0 (p))


; Ex 1.6
;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x)
;                     x)))


; Ex 1.7
; TODO

; Ex 1.8
; TODO

; Ex 1.9
; These are recursive


; Ex 1.10
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
(A 2 4)
(A 3 3)

; f(n) = 2⋅n
(define (f n) (A 0 n))
; g(n) = 2ⁿ
(define (g n) (A 1 n))
; h(n) = Ahf.png
(define (h n) (A 2 n))
; k(n) = 5⋅n²
(define (k n) (* 5 n n))


; Ex 1.11
(define (ef n)
  (if (< n 3)
      n
      (+ (ef (- n 1))
         (* 2 (ef (- n 2)))
         (* 3 (ef (- n 3))))))

(define (ef-it n)
  (ef-iter 2 1 0 (- n 2)))

(define (ef-iter a b c count)
  (if (< count 1)
      a
      (ef-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))


; Ex 1.12
(define (pascal m n)
  (cond ((= n 0) 1)
        ((< m 2) 1)
        ((= n m) 1)
        (else (+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n)))))


; Ex 1.13
; TODO
(define x 3)
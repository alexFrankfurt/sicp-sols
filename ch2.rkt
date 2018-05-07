#lang racket

; Ex 2.19
(define us-coins '(50 25 10 5 1))
(define uk-coins '(100 50 20 10 5 2 1 0.5))

(define (no-more? l)
  (if (empty? l)
      #t
      #f))

(define (first-denomination l)
  (car l))

(define (except-first-denomination l)
  (cdr l))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))


(cc 100 us-coins)


; Ex 2.20
; TODO

; Ex 2.32
; TODO

; Ex 2.64
; TODO

; Ex 2.73
; TODO

#lang racket
(define (gcd a b)
  (cond ((= b 0) a))
  (gcd b (remainder a b)))
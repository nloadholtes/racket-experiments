#lang racket
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; Testing out the questionable if replacement
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Combining
(define (i-sqrt x)
  (define (i-sqrt-iter guess x)
    (if (i-good-enough? guess x)
	guess
	(i-sqrt-iter (improve guess x)
		   x)))

  (define (i-improve guess x)
    (i-average guess (/ x guess)))

  (define (i-average x y)
    (/ (+ x y) 2))

  (define (i-good-enough? guess x)
    (< (abs (- (i-square guess) x)) 0.0001))

  (define (i-square x)
    (* x x))
  (i-sqrt-iter 1.0 x))

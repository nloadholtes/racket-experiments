#lang racket
(define (get-coin-value coin)
  (cond ((= coin 1) 1)
        ((= coin 2) 5)
        ((= coin 3) 10)
        ((= coin 4) 25)))
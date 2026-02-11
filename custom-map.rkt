#lang racket

(require "custom-bools.rkt")
(provide custom-andmap)

; takes in a boolean returning function f and a list xs
; returns the and after mapped function
(define (custom-andmap f xs)
  (apply custom-and (map f xs))
)

;(custom-andmap integer? '(1 2 3))

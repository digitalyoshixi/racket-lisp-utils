#lang racket

(require "custom-bools.rkt")
(provide custom-andmap)

(define (custom-map f l)
	(define (map-iter l accum)
		(cond   
        [(empty? l) (accum l)]
				[else (map-iter (rest l) (lambda (x) (accum (cons (f (first l)) x))) )]
		)
	)
	(map-iter l (lambda (x) x))
)

; takes in a boolean returning function f and a list xs
; returns the and after mapped function
(define (custom-andmap f xs)
  (apply custom-and (map f xs))
)

;(custom-andmap integer? '(1 2 3))

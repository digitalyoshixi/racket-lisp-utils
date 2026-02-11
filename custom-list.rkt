#lang racket

(provide custom-length)

(define (custom-length xs)
  (local
      [(define (custom-length-cps xs k)
         (if (empty? xs)
             (k 0)
             (custom-length-cps (rest xs) (lambda (x) (k (+ 1 x)) ))
             )
       )
     ]
    (custom-length-cps xs (lambda (x) x))
    )
  )

(custom-length '(1 2 3 4))

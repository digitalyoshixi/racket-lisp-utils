#lang racket

(provide custom-and)

(define (custom-and-binary a b)
  (if a
    (if b
      #t
      #f
      )
    #f
  )
)

(define (custom-and . vars)
  (foldr custom-and-binary #t vars)
  )

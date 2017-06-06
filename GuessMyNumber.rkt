#lang racket

;; variables
(define lower 1)
(define upper 100)

;; there will be three functions
;; guess, smaller, and bigger

;; the computer guesses
;; there is no formal argument
;; using binary searchg
;; the result of this function is a number
(define (guess)
  (quotient (+ lower upper) 2))

;; changing the lower limit of guesses
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

;; changing the upper bounds of guessing
(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

;; main function
(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))

;; Tests
;;;; to run the tests use the raco command on the command line
;;;; ➜  NovoRealmOfRacket git:(master) raco test GuessMyNumber.rkt
;;;; raco test: (submod "GuessMyNumber.rkt" test)
;;;; 1 test passed
(module+ test
  (require rackunit rackunit/text-ui)

  ;; basic tests
  (check-equal? (guess) 50)
  
  )
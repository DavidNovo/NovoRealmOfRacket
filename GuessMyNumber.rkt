#lang racket

;; variables
(define lower 1)
(define upper 100)

;; there will be three functions
;; guess, smaller, and bigger

;; the computer guesses
;; there is no formal argument
(define (guess)
  (quotient (+ lower upper) 2))

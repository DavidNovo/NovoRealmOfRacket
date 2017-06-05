#lang racket
;; structures in Racket

;;;; create a structure
(struct student (name id# dorm))

;;;; create an instance of student
;;;; the ` are needed or Racket will assume they are procedure names
(define freshman1 (student `Joe 1234 `NewHall))

;;;; (studnet-name freshman1) -> 'Joe
;;;; one of the selectors creatred

(struct example (x y z))
(define ex1 (example 1 2 3))
;;;; this is not transparent, so > ex1 returns a procedure address
;;;; #<example>

(struct example2 (p q r) #:transparent)
(define ex2 (example2 9 8 7))

(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven () "Return expected time in oven" 337)

(defun remaining-minutes-in-oven 
  (elapsed)
  "Calculate remaining minutes based on elapsed time"
  (- (expected-time-in-oven) elapsed))

(defun preparation-time-in-minutes 
  (layers) 
  "Calculate preparation time based on number of layers" 
  (* layers 19))

(defun elapsed-time-in-minutes
  (layers elapsed)
  "Calculate elapsed time which is the sum of preparation time and time spent in oven"
  (+ (preparation-time-in-minutes layers) elapsed))

(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun convert (n)
  (setq outstring "")
  (when (zerop (mod n 3)) (setq outstring (concatenate 'string outstring "Pling")))
  (when (zerop (mod n 5)) (setq outstring (concatenate 'string outstring "Plang")))
  (when (zerop (mod n 7)) (setq outstring (concatenate 'string outstring "Plong")))
  (if (string= outstring "") 
      (write-to-string n)
      outstring)
  )

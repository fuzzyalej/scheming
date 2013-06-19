(define p 80)
(if (> p 70)
  (display "hi")
  (display "lo"))

(newline)

(cond ((< p 70) (display "lo"))
      ((and (> p 70) (< p 90)) (display "-"))
      ((> p 90) (display "hi"))
      (else (display "out")))

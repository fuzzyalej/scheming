(define counter 0)
(define inc
  (lambda ()
    (set! counter (+ counter 1))))

(display counter)
(inc)(display counter)
(inc)(display counter)
(inc)(display counter)
(inc)(display counter)

(display
  (let ((x 1)
        (y 2))
    (list x y)))

(define stupid-square
  (lambda (x)
    (let* ((y x)
          (z y))
      (* y z))))

(display (stupid-square 4))

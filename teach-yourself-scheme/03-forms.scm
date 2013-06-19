(display
  ((lambda (x) (+ 2 x)) 5))

(define add2
  (lambda (x) (+ 2 x)))

(display (add2 4))

(define show
  (lambda (args . last)
    (display args)
    (newline)
    (display last)
    (newline)))

(show "asdf")
(show (list 1 2 3 4 5 6) "asdf")
(show 'asdf 'asdf 'asdf)

(newline)

(define x '(1 2 3 4 5))
(display (apply + x))
(display (apply + 1 2 4 5 6 x))

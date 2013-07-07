(display 9)
(display 9 (current-output-port))

(newline)

(define i (open-input-file "a.txt"))
(display (read-char i))
(display (read i))

(newline)

;(define o (open-output-file "b.txt"))
;(display "Hello" o)
;(write-char #\space o)
;(display 'world o)
;(newline o)
;(close-output-port o)

(call-with-input-file "b.txt"
  (lambda (i)
    (let* ((a (read-char i))
           (b (read-char i))
           (c (read-char i)))
      (display (list a b c)))))

(newline)

(define i (open-input-string "This is a string"))
(display (read-char i))
(display (read i))
(display (read i))
(display (read i))

(newline)

(define o (open-output-string))
(write 'hello o)
(write-char #\, o)
(display " " o)
(display "world" o)
(display (get-output-string o))

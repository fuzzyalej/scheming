(display (boolean? #t))
(display (not #t))
(display (eqv? 42 42))
(display (= 12 14))
(display (max 1 2 3 5 6 8 3 5 8 0))
(display (abs -3))
(display (char? #\space))
(display (char-ci=? #\a #\B))
(display (char-upcase #\c))
(display (quote abc))
(display 'abc)

(newline)

(define abc "This is fine")
(display abc)

(newline)

(set! abc "This is also fine")
(display abc)

(newline)

(define abc (string #\H #\i))
(display abc)

(newline)

(display (string-append abc abc))

(newline)

(define v1 (vector 0 1 2 3 4 5))
(display v1)
(define v2 (make-vector 5))
(vector-set! v2 0 1)
(display v2)

(newline)

(define l (cons 1 2))
(display l)
(display (list? l))
(display (car l))
(display (cdr l))
(set! l (cons l '()))
(display l)
(display (list? l))
(set! l (list 1 2 3 4 5))
(display l)
(display (list? l))

(newline)

(display (string->list "What's up"))

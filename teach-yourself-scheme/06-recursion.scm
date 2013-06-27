(define factorial
  (lambda (n)
    (if (= n 0) 1
      (* n (factorial (- n 1))))))

(display (factorial 100))

(newline)

(define is-even?
  (lambda (n)
    (if (= n 0) #t
      (is-odd? (- n 1)))))

(define is-odd?
  (lambda (n)
    (if (= n 0) #f
      (is-even? (- n 1)))))

(display (is-even? 3))
(display (is-odd? 1231))

(newline)

(letrec ((countdown (lambda (i)
                      (if (= i 0) 'go
                        (begin
                          (display i)
                          (newline)
                          (countdown (- i 1)))))))
  (countdown 10))

(newline)

(let countdown ((i 10))
  (if (= i 0) 'go
    (begin
      (display i)
      (newline)
      (countdown (- i 1)))))

(define list-position
  (lambda (o l)
    (let loop ((i 0) (l 1))
      (if (null? l) #f
        (if (eqv? (car l) o) i
          (loop (+ i 1) (cdr l)))))))

(define reverse!
  (lambda (s)
    (let loop ((s s) (r '()))
      (if (null? s) r
        (let ((d (cdr s)))
          (set-cdr! s r)
          (loop d s))))))

(newline)

(display (map
           (lambda (x)
             (- x 1))
           '(1 2 3 4 5)))

(for-each display
          (list "one " "two " "smell my poo"))

(display (map cons
              '(1 2 3) '(10 20 30)))

(display (map +
              '(1 2 3) '(10 20 30)))

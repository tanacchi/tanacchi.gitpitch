(define zero?
  (lambda (x)
    (eq? x (quote ()))))

(define sub1
  (lambda (x)
    (- x 1)))

(define reverse 
  (lambda (x) 
    (define reverse-aux 
      (lambda (x result) 
        (if (null? x) 
          result 
          (reverse-aux (cdr x) (cons (car x) result)))))
    (reverse-aux x (quote ()))))

(define range
  (lambda (n)
    (define range-aux
      (lambda (n)
        (if (zero? n)
          (quote ())
          (cons (sub1 n) (range-aux (sub1 n))))))
    (reverse (range-aux n))))

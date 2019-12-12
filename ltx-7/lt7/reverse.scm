(define null?
  (lambda (x)
    (eq? x (quote ()))))

(define reverse-aux 
  (lambda (x result) 
    (if (null? x) 
      result 
      (reverse-aux (cdr x) (cons (car x) result)))))

(define reverse 
  (lambda (y) 
    (reverse-aux y (quote ()))))

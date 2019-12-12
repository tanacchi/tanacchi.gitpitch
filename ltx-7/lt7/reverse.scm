(define nil
  (lambda ()
    (quote ())))

(define null?
  (lambda (x)
    (eq? x (nil))))

(define reverse 
  (lambda (x) 
    (define reverse-aux 
      (lambda (x result) 
        (if (null? x) 
          result 
          (reverse-aux (cdr x) (cons (car x) result)))))
    (reverse-aux x (nil))))

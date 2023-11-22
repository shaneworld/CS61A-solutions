(define (over-or-under num1 num2) 
  (if (< num1 num2)
    -1
    (if (= num1 num2)
      0
      (if (> num1 num2)
        1
      )
    )
  )
)

(define (make-adder num) 
  (lambda (inc) (+ num inc))
)

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (repeat f n)
  (lambda (x)
    (define (iter i result)
      (if (= i 0)
          result
          (iter (- i 1) (f result))))
    (iter n x)))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (if (zero? (* a b))
    (max a b)
     (let ((big (max a b))
           (small (min a b))
           )
       (gcd small (modulo big small))
       )
     )
  )

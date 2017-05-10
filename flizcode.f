; evaluates to 0 if x is a simple list of integers (no nested lists), and to 1 otherwise.
(define (intlist x)
        (ifn x 0
               (ifa (head x) (intlist (tail x))
                             1)))

;append
(define (append x y)
  (ifa x (list x [])
    (ifn x y
        (list (head x) (append (tail x) y)))))


; reverse the elements in x
(define (reverse x)
        (ifn (tail x) x
               (append (reverse (tail x)) (list (head x) []))))

; evaluates to [] if x is simple list of integers
(define (singlist x)
        (ifn x []
                (ifa (head x) (singlist (tail x))
                                1)))

; recursively inverse elements in x, that is, any nested lists are also reversed
(define (recreverse x)
    (ifn x  []
        (ifa x  x
                (ifn (singlist x) (reverse x)
                                (append (recreverse (tail x)) (list (recreverse(head x)) []))))))




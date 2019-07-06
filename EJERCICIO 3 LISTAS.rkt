;Prog que sume los valores primos de una lista numérica
(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))

(define (primo n)
  (if (or (= n 1) (= n 2)(= n 3)(= n 5)(= n 7))
      n
      0
      )
  )

(define (sumaprimos lista)
  (if (null? lista)
      0
      (+ (primo (car lista))
         (sumaprimos (cdr lista))
         )
      )
  )
;  Prog que compare si dos listas son iguales (equal?)

(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))
(define lista3 (list 1 2 3 4 5))
(define lista4 (list 1 2 3 4 5))

(define (igual list lista)
  (if (equal? list lista)
      (display "las dos listas son iguales")
      (display "las dos listas no son iguales")
      )
  )




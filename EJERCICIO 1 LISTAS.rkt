;Construir un prog que calcule la suma de los valores pares
;de una lista numérica

(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))

(define (par n)
  (if (= (remainder n 2)0)
      n
      0
  ))

(define (sumalist lista)
  (if (null? lista)
      0
      (+ (par (car lista))
         (sumalist (cdr lista)))
      )
  )

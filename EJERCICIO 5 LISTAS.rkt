; Prog que determina si la suma de los elementos pares de una lista
; es mayor que la suma de los elementos pares de otra lista

(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))
(define lista3 (list 1 2 3 4 5))
(define lista4 (list 1 2 3 4 5))

(define (par n)
  (if (= (remainder n 2) 0)
      n
      0
      )
  )

(define (sumapares lista)
  (if (null? lista)
      0
      (+ (par (car lista))
         (sumapares (cdr lista))
         )
      )
  )

(define (mayor list lista)
  (if (or (> (sumapares list) (sumapares lista)) (> (sumapares lista) (sumapares list)))
      (display "la suma de los elementos pares de una lista es mayor que la suma de los elementos pares de la otra lista")
      (display "la suma de los elementos pares de una lista no es mayor que la suma de los elementos pares de la otra lista")
  )
)
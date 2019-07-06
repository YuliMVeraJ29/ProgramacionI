;Construir un prog que calcule el promedio de los valores impares de una
;lista numérica

(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))

(define (impar n)
  (if (not (= (remainder n 2) 0))
      n
      0
      )
  )

(define (sumalist lista)
  (if (null? lista)
      0
      (+ (impar (car lista))
         (sumalist (cdr lista)))
      )
  )

(define (cuenta n)
  (if (not (= (remainder n 2) 0))
      1
      0
      )
  )


(define (cuenta2 lista)
  (if (null? lista)
      0
      (+ (cuenta (car lista)) (cuenta2 (cdr lista)))
      )
  )

(define (promedio lista)
  (if (null? lista)
      0
      (/ (sumalist lista)
         (cuenta2 lista))
      )
  )
;Prog que determine recursivamente el valor mayor de una lista
(define lista1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(define lista2 (list 45 90 65 21 20 34 87 52 41 96 100 120 145 200 458 545))

(define (mayor a b)
  (if (> a b)
      a
      b
      )
  )

(define (mayorlista lista may)
  (if (null? lista)
      may
      (mayorlista (cdr lista) (mayor (car lista) may))
      )
  )

(define (union lista)
  (mayorlista lista (car lista))
  )
(union lista2)
      

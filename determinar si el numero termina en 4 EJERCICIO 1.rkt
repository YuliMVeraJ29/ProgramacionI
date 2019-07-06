;OBJETIVO
;construir un programa que
;lea un numero entero y determine si es un numero terminado en 4

;E--> n(numero entero)
;P--> n/10
;S--> si termina en 4 o no termina en 4

(define x 10)
(define (terminacion4 n)
  (if (= (remainder n x) 4)
      (display "es un numero terminado en 4")
      (display "no es un numero terminado en 4")))

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (terminacion4 n))

(interfaz 0)
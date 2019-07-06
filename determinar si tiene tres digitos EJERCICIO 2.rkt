;OBJETIVO
;contruir un programa que
;lea un numero entero y determine si tiene 3 digitos

;E--> n(numero entero)
;P--> 99<n<1000
;S--> si tiene tres digitos o no tiene tres digitos

(define (tresdigitos n)
  (if(and (> n 99) (< n 1000))
  (display "si tiene tres digitos")
  (display "no tiene tres digitos")))

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (tresdigitos n))

(interfaz 0)
;OBJETIVO
;construir un programa que
;lea un numero entero y determine si tiene 3 digitos

;E--> n(numero entero)
;P--> 99<n<1000 -99>n>-1000
;S--> n tiene o no tiene 3 digitos

(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))

(define (digitos n)
  (if (or (and (> n 99) (< n 1000)) (and (< n -99) (> n -1000)))
           (display "tiene tres digitos")
           (display "no tiene tres digitos")))

;funcion INTERFAZ
;E-->no aplica
;P--> salidas por pantalla
;S--> titulos y lecturas

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (newline)
  (entero n))

(interfaz 0)


  
           
           
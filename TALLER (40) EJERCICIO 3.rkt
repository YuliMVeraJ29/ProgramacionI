;OBJETIVO
;construir un programa que
;lea un numero entero y determine si es negativo

;E--> n(numero entero)
;P--> n<0
;S--> n es o no es negativo

(define (entero n)
  (if (exact? n)
      (negativo n)
      (display "no es un numero entero")))

(define (negativo n)
  (if (< n 0)
      (display "es negativo")
      (display "no es negativo")))

;funcion INTERFAZ
;E--> no aplica
;P--> salidas por pantalla
;S--> titulos y lecturas

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (entero n))

(interfaz 0)
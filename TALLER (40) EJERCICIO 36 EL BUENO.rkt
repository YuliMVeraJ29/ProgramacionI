;OBJETIVO
;construir un programa que lea un numero entero de cuatro digitos
;y determine si tiene mas digitos pares o impares

;E--> n(numero entero de cuatro digitos)
;P--> si todos los digitos son pares, entonces tiene todos sus digitos pares
;     si todos son impares, entonces tiene todos sus digitos impares
;     si tres digitos son pares, entonces tiene mas digitos pares
;     si tres digitos son impares, entonces tiene mas digitos impares
;     si hay dos digitos pares, entonces hay igual numero de pares e impares
;     si hay un digito par, entonces hay mas digitos impares
;     si hay un digito impar, entonces hay mas digitos pares 
;S-->tiene mas digitos pares o tiene mas digitos impares
(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))

(define (digitos n)
  (if (or (and (> n 999) (< n 10000)) (and (< n -999) (> n -10000)))
      (paresoimpares n)
      (display "no es un numero de cuatro digitos")))

(define (primerdigito n)
  (quotient n 1000))

(define (segundodigito n)
  (quotient (remainder n 1000) 100))

(define (tercerdigito n)
  (quotient (remainder (remainder n 1000)100) 10))

(define (cuartodigito n)
  (remainder (remainder (remainder n 1000) 100) 10))

(define (paresoimpares n)
  (if (and (even? (primerdigito n)) (even? (segundodigito n)) (even? (tercerdigito n)) (even? (cuartodigito n)))
      (display "todos son pares")
      (if (and (odd? (primerdigito n)) (odd? (segundodigito n)) (odd? (tercerdigito n)) (odd? (cuartodigito n)))
          (display "todos son impares")
          (if (or (and (even? (primerdigito n)) (even? (segundodigito n)) (even? (tercerdigito n)))
                  (and (even? (primerdigito n)) (even? (segundodigito n)) (even? (cuartodigito n)))
                  (and (even? (primerdigito n)) (even? (tercerdigito n)) (even? (cuartodigito n)))
                  (and (even? (segundodigito n)) (even? (tercerdigito n)) (even? (cuartodigito n))))
              (display "tiene mas digitos pares")
              (if (or (and (odd? (primerdigito n)) (odd? (segundodigito n)) (odd? (tercerdigito n)))
                  (and (odd? (primerdigito n)) (odd? (segundodigito n)) (odd? (cuartodigito n)))
                  (and (odd? (primerdigito n)) (odd? (tercerdigito n)) (odd? (cuartodigito n)))
                  (and (odd? (segundodigito n)) (odd? (tercerdigito n)) (odd? (cuartodigito n))))
                  (display "tiene mas digitos impares")
                  (if (or (and (even? (primerdigito n)) (even? (segundodigito n)))
                          (and (even? (primerdigito n)) (even? (tercerdigito n)))
                          (and (even? (primerdigito n)) (even? (cuartodigito n)))
                          (and (even? (segundodigito n)) (even? (tercerdigito n)))
                          (and (even? (segundodigito n)) (even? (cuartodigito n)))
                          (and (even? (tercerdigito n)) (even? (cuartodigito n))))
                      (display "tiene igual numero de pares y de impares")
                      (if (or (even? (primerdigito n))
                              (even? (segundodigito n))
                              (even? (tercerdigito n))
                              (even? (cuartodigito n)))
                          (display "tiene mas digitos impares")
                          (display "tiene mas digitos pares"))))))))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz n)
  (display "numero entero de cuatro digitos=")
  (set! n (read))
  (entero n))

(interfaz 0)
                          
;OBJETIVO
;construir un programa que lea un numero entero de cuatro digitos
;y determine cuantos digitos pares tiene

;E--> n(numero entero de cuatro digitos)
;P--> si los cuatro digitos al dividirlos entre 2 su residuo es cero, entonces tiene cuatro digitos pares
;     si solo tres digitos al dividirlos entre 2 su residuo es cero, tiene tres digitos pares
;     si solo dos digitos al dividirlos entre 2 su residuo es cero, tiene dos digitos pares
;     si solo un digito al dividirlo entre 2 su redio es cero, tiene un digito par
;     si no se cumple ninguna de las anteriores observaciones, entonces el numero no tiene digitos pares
;S--> tiene uno o dos o tres digitos pares o no tiene digitos pares

(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))

(define (digitos n)
  (if (or (and (> n 999) (< n 10000)) (and (< n -999) (> n -10000)))
      (pares n)
      (display "no es un numero de cuatro digitos")))

(define (primerdigito n)
  (quotient n 1000))

(define (segundodigito n)
  (quotient (remainder n 1000) 100))

(define (tercerdigito n)
  (quotient (remainder (remainder n 1000)100) 10))

(define (cuartodigito n)
  (remainder (remainder (remainder n 1000) 100) 10))

(define (cuatrodigitos n)
  (and (= (remainder (primerdigito n) 2) 0) (= (remainder (segundodigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0)))
 

(define (tresdigitos n)
  (or (and (= (remainder (primerdigito n) 2) 0) (= (remainder (segundodigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0))
      (and (= (remainder (primerdigito n) 2) 0) (= (remainder (segundodigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))
      (and (= (remainder (primerdigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))
      (and (= (remainder (segundodigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))))

(define (dosdigitos n)
  (or (and (= (remainder (primerdigito n) 2) 0) (= (remainder (segundodigito n) 2) 0))
      (and (= (remainder (primerdigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0))
      (and (= (remainder (primerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))
      (and (= (remainder (segundodigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0))
      (and (= (remainder (segundodigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))
      (and (= (remainder (tercerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0))))

(define (undigito n)
  (or (= (remainder (primerdigito n) 2) 0) (= (remainder (segundodigito n) 2) 0) (= (remainder (tercerdigito n) 2) 0) (= (remainder (cuartodigito n) 2) 0)))

(define (pares n)
  (if (cuatrodigitos n)
      (begin
        (display "tiene cuatro digitos pares"))
      (begin
        (if (tresdigitos n)
            (begin
              (display "tiene tres digitos pares"))
            (begin
              (if (dosdigitos n)
                  (begin
                    (display "tiene dos digitos pares"))
                  (begin
                    (if (undigito n)
                        (display "tiene un digito par")
                        (display "no tiene ningun digito par")))))))))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz n)
  (display "numero entero de cuatro digitos=")
  (set! n (read))
  (entero n))

(interfaz 0)
                    
          
 
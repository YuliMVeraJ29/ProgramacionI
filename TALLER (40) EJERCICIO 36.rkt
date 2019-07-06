;OBJETIVO
;construir un programa que lea un numero entero de cuatro digitos
;y determine si tiene mas digitos pares o impares

;E--> n(numero entero de cuatro digitos)
;P-->
;S-->tiene mas digitos pares o tiene mas digitos impares
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

(define (funcion1 n)
  (if (cuatrodigitos n)
      (display "tiene mas digitos pares")
      (display "tiene mas digitos impares")))
(define (funcion2 n)
  (if (tresdigitos n)
      (display "tiene mas digitos pares")
      (display "tiene mas digitos impares")))
(define (pares n)
(if (cuatrodigitos n)
    (begin
      (funcion1 n))
    (begin
      (if (tresdigitos n)
          (begin
           (tresdigitos n))
         (begin
              (if (dosdigitos n)
                  (begin
                    (display "tiene igual numero de digitos pares e impares"))
                  (begin
                    (if (undigito n)
                        (display "tiene mas digitos impares")
                        ))))))))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz n)
  (display "numero entero de cuatro digitos=")
  (set! n (read))
  (entero n))

(interfaz 0)
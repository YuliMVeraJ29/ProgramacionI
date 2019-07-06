;OBJETIVO
;construir un programa que
;lea un numero entero de tres digitos y determine cuantos digitos pares tiene

;E--> n(numero entero)
;P-->
;S-->

(define (digitos n)
  (if (and (> n 99) (< n 1000))
       (pares n)
       (display "no es un numero de tres digitos")))

(define (pares n)
 (if (or (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0))
      (display "tiene un digito par"))
  (if (or ( and (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0))
          ( and (= (remainder (quotient n 100) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0))
          ( and (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0)))
          (display "tiene dos digitos pares"))
  (if (and (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0))
      (display "tiene tres digitos pares")))
  

;funcion INTERFAZ
;E--> no aplica
;P--> salidas por pantalla
;S--> titulos y lecturas

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (digitos n))
(interfaz 0)
  
          
                
      
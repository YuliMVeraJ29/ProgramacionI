;OBJETIVO
;construir un programa que
;lea un numero entero de tres digitos y determine cuantos digitos pares tiene

;E--> n(numero entero)
;P--> si los tres digitos al dividirlos entre 2 su residuo es cero, entonces tiene tres digitos pares
;     si solo dos digitos al dividirlos entre 2 su residuo es cero, entonces tiene dos digitos pares
;     si solo un digito al dividirlo entre 2 su residuo es cero, entonces tiene un digito par
;S--> tiene uno dos o tres digitos pares

(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))

(define (digitos n)
  (if (or (and (> n 99) (< n 1000)) (and (< n -99) (> n -1000)))
       (pares n)
       (display "no es un numero de tres digitos")))

(define (funcion1 n)
 (and (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0)))

(define (funcion2 n)
  (or ( and (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0))
          ( and (= (remainder (quotient n 100) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0))
          ( and (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0)))
)
  
(define (funcion3 n)
 (or (= (remainder (quotient n 100) 2) 0) (= (remainder (quotient (remainder n 100) 10) 2) 0) (= (remainder (remainder (remainder n 100) 10) 2) 0))
      )
  
(define (pares n)
  (if (funcion1 n)
     (begin
      (display "tiene tres digitos pares"))
     (begin
     (if (funcion2 n)
     (begin
          (display "tiene dos digitos pares"))

  (begin
    (if (funcion3 n)
    (begin
      (display "tiene un digito par"))
    (begin
       (display "no tiene digitos pares"))))))))
 
  

;funcion INTERFAZ
;E--> no aplica
;P--> salidas por pantalla
;S--> titulos y lecturas

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (entero n))
(interfaz 0)

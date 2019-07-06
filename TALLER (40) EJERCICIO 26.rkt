;OBJETIVO
;construir un programa que lea un numero entero de cuatro digitos
;y determine a cuanto es igual la suma de sus digitos

;E--> n(numero entero de cuatro digitos) n1(primer digito) n2(segundo digito) n3(tercer digito) n4(cuarto digito)
;P--> n1+n2+n3+n4
;S--> la suma de los digitos es igual a

(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))

(define (digitos n)
  (if (or (and (> n 999) (< n 10000)) (and (< n -999) (> n -10000)))
      (begin
      (display "la suma de sus digitos es=") 
      (sumadigitos n))                                       
      (display "no es un numero de cuatro digitos")))

(define (primerdigito n)
  (quotient n 1000))

(define (segundodigito n)
  (quotient (remainder n 1000) 100))

(define (tercerdigito n)
  (quotient (remainder (remainder n 1000)100) 10))

(define (cuartodigito n)
  (remainder (remainder (remainder n 1000) 100) 10))

(define (sumadigitos n)
  (+ (primerdigito n) (segundodigito n) (tercerdigito n) (cuartodigito n)))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz n)
  (display "numero entero de cuatro digitos=")
  (set! n (read))
  (entero n))

(interfaz 0)

     

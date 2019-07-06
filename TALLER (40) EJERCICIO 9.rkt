;OBJETIVO
;construir un programa que lea un numero entero de dos digitos
;y determine si un digito es multiplo del otro

;E--> n(numero entero) n1(primer digito de n) n2(segundo digito de n)
;P--> n1/n2= residuo 0
;S--> un digito es o no es multiplo del otro

(define (entero n)
  (if (exact? n)
      (digitos n)
      (display "no es un numero entero")))


(define (digitos n)
  (if (or (and (> n 9) (< n 100)) (and (< n -9) (> n -100)))
      (multiplo n)
      (display "no es numero de dos digitos")))

(define (multiplo n)
  (if (or (= (remainder (remainder n 10)(quotient n 10)) 0) (= (remainder (quotient n 10) (remainder n 10)) 0))
          (display "un digito es multiplo del otro")
          (display "un digito no es multiplo del otro")))

;funcion INTERFAZ
;E--> no aplica
;P--> salidas por pantalla
;S--> titulos y lecturas

(define (interfaz n)
  (display "numero entero=")
  (set! n (read))
  (entero n))

(interfaz 0)


          
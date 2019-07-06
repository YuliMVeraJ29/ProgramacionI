;OBJETIVO
;construir un programa que permita sumar todos los digitos
;primos de un numero

;E--> n(numero que digita el usuario)
;P--> el digito que sea primo se suma con los otros digitos primos
;S--> la suma de los digitos primos es

(define (primo n)
  (if (or (= n 1) (= n 2) (= n 3) (= n 5) (= n 7))
      n
      0
      ))

;funcion recursiva
(define (sumaprimos n)
  (if (= n 0)
      0
      (+ (primo (remainder n 10))
         (sumaprimos (quotient n 10)))))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz n)
  (display "ingrese un numero: ")
  (set! n (read))
  (display "la suma de los digitos primos es igual a= ")
  (sumaprimos n)
  )

(interfaz 0)
               
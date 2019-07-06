;OBJETIVO
;construir un programa que permita sumar todos los digitos
;multiplos de 3 de un numero

;E--> n(numero que digita el usuario)
;P--> si el residuo entre n y 3 es igual 0 entonces ese digito es
;     multiplo de 3 y se va a sumar con los otros digitos
;     multiplos de 3
;S--> la suma de los digitos multiplos de 3 es igual a

(define (multiplo n)
  (if (= (remainder n 3) 0)
      n
      0
      ))

;funcion recursiva

(define (suma n)
  (if (= n 0)
      0
      (+
;OBJETIVO
;construir un programa que
;lea tres numeros enteros y determine cual es el mayor utilizando dos variables

;E--> a(primer numero) b(segundo numero)
;P--> si a es mayor que b, entonces el tercer numero se almacenará en b
;     y si a sigue siendo mayor que el nuevo b, entonces a es el mayor.
;     o si a es menor que el nuevo b, entonces b es el mayor.
;     si a es menor que b, entonces el tercer numero se almacenará en a
;     y si el nuevo a sigue siendo menor que b, el mayor es b.
;     y si el nuevo a es mayor que b, el mayor es a.
;S--> el numero mayor es

(define (enteros a b)
  (if (and (exact? a) (exact? b))
      (mayores a b)
      (display "no son numeros enteros")))

(define (mayores a b)
  (if (> a b)
  (begin
      (display "tercer numero=")
      (set! b (read))
      (if (> a b)
          (begin
          (display "el mayor es:")
          (display a))
          (begin
          (display "el mayor es:")
          (display b))))
   (begin
      (display "tercer numero=")
      (set! a (read))
      (if (< a b)
          (begin
          (display "el mayor es:")
          (display b))
          (begin
          (display "el mayor es:")
          (display a))))))

;funcion INTERFAZ
;E-->no aplica
;P-->salidas por pantalla
;S-->titulos y lecturas

(define (interfaz a b)
  (display "primer numero=")
  (set! a (read))
  (display "segundo numero=")
  (set! b (read))
  (enteros a b))

(interfaz 0 0)
                   
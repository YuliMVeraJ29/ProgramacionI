;funcion principal que toma los datos básicos para ejecutar el programa
(define tamañom 0)
(define tamañoc 0)
(define precio 0)
(define tipo 0)
(define placa 0)
(define hora 0)
(define vehiculo 0)
(define pos 0)
(define retirar 0)
(define (principal opcion motos carros parkm parkc horam horac)
  (display "Hola! estos son los datos que necesito para el parqueadero:")
  (newline)
  (display "ingrese el numero de espacios de parqueo para motos:")
  (set! tamañom (read))
  (newline)
  (display "ingrese el numero de espacios de parqueo para carros:")
  (set! tamañoc (read))
  (newline)
  (display "ingrese el precio por hora:")
  (set! precio (read))
  (define motos (make-vector tamañom 0))
  (define carros (make-vector tamañoc 0))
  (define parkm (make-vector tamañom 0))
  (define parkc (make-vector tamañoc 0))
  (define horam (make-vector tamañom 0))
  (define horac (make-vector tamañoc 0))
  (menu opcion motos carros parkm parkc horam horac)
  )

;funcion menu que muestra las opciones a ejecutar
(define (menu opcion motos carros parkm parkc horam horac)
  (display "BIENVENIDO")
  (newline)
  (display "1. parquear un vehiculo")
  (newline)
  (display "2. retirar un vehiculo")
  (newline)
  (display "3. consultar espacios ocupados y desocupados")
  (newline)
  (display "4. salir")
  (newline)
  (display "escriba la opción que desea ejecutar:")
  (set! opcion (read))
  (seleccion opcion motos carros parkm parkc horam horac)
  )

;funcion que ejecuta las opciones seleccionadas
 (define (seleccion opcion motos carros parkm parkc horam horac)
   (cond
   ((= opcion 1)(display "ingrese el tipo de vehiculo (escriba 1 si es moto o 2 si es carro):")
                (set! tipo (read))
                (if (= tipo 1)
                    (insertar_tipo motos 0 0)
                    (insertar_tipo carros 0 0))
                (display "ingrese la placa del vehiculo (solo numeros):")
                (set! placa (read))
                (display motos)
                (set! pos (read))
                (insertar_placa carros pos placa)
                (if (= tipo 1)
                    (insertar_placa motos pos placa)
                    (insertar_placa carros pos placa))
                (display "ingrese la hora de entrada del vehiculo:")
                (set! hora (read))
                (if (= tipo 1)
                    (insertar_hora horam 0 0)
                    (insertar_hora horac 0 0)
                   )
                (menu opcion motos carros parkm parkc horam horac)
                )
   ((= opcion 2)(display "ingrese el tipo de vehiculo que desea retirar (escriba 1 si es moto o 2 si es carro):")
                (set! vehiculo (read))
                (if (= vehiculo 1)
                    (begin
                      (display "ingrese la placa del vehiculo que desea retirar:")
                      (set! retirar (read))
                      (set! pos (bbrayan motos retirar 0))
                      (if (equal? pos 0)
                          (display "no esta")
                          (begin
                            (vector-set! motos pos 0)
                            )
                          )             )
                    ))))
                      
                


;funcion que inserta tipo de vehiculo en el vector correspondiente
(define (insertar_tipo v pos tipo)
  (vector-set! v pos tipo)
  )
                
;funcion que inserta placa del vehiculo en el vector correspondiente
(define (insertar_placa v pos placa)
  (vector-set! v pos placa)
  (display v)
  )

;funcion que inserta la hora de entrada del vehiculo en el vector correspondiente
(define (insertar_hora v pos hora)
  (vector-set! v pos hora)
  )

;funcion que busca un elemento en un vector
(define (buscar v elemento pos)
  (if (< pos (vector-length v))
      (begin
        (if (= elemento (vector-ref v pos))
             pos 
            (buscar v elemento (+ pos 1))
            
            ))
        (display "hola mundo")
        )
      )

;funcion que cuenta los espacios desocupados en el vector correspondiente
(define (espaciosd v pos)
  (if (= 0 (vector-ref v pos))
      1
      (+ (espaciosd v (+ pos 1)))
      )
  )

;funcion que cuenta los espacios ocupados en el vector correspondiente
(define (espacioso v pos)
  (if (not (= 0 (vector-ref v pos)))
      1
      (+ (espacioso v (+ pos 1)))
      )
  )

;otra funcion que busca un elemento en el vector correspondiente (nuevo intento)
(define (bbrayan vect elemento pos)
  (if (< pos (vector-length vect))
  (if (= elemento (vector-ref vect pos))
       pos
      (begin
      (bbrayan vect elemento (+ pos 1))
      )
  )
  )
  (set! pos 0)
  )
(principal 0 0 0 0 0 0 0)           
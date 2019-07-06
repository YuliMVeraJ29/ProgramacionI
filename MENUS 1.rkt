;1. Construir el sigte menu:
;op 1. Mostrar un *
;op 2. Mostrar un recta dibujada con *
;op 3. Mostrar un rectangulo dibujado con *
;op 4. Mostrar un triángulo dibujado con *
;op 5. Salir


;mostrar un *
(define (asterisco)
  (display "*")
  (menu 0))

;recta
(define (recta)
  (display "********************")
  (menu 0))

;rectangulo
(define (rectangulo)
  (display "            *******************
            *                 *
            *******************"
           )
  (menu 0))

;triangulo
(define (triangulo)
  (display "                  *
                 * * 
                *   * 
               ******* ")
  (menu 0))

;salir
(define (salir)
  (display "adiós"))

;MENU

(define (menu op)
  (newline) (newline)
  (display "MENÚ")
  (newline)
  (display "opción 1: Mostrar un *")
  (newline)
  (display "opción 2: Mostrar una recta dibujada con *")
  (newline)
  (display "opción 3: Mostrar un rectángulo dibujado con *")
  (newline)
  (display "opción 4: Mostrar un triángulo dibujado con *")
  (newline)
  (display "opción 5: salir")
  (newline)
  (display "opción: ")
  (set! op(read))
  
  (cond
    ((= op 1) (asterisco))
    ((= op 2) (recta))
    ((= op 3) (rectangulo))
    ((= op 4) (triangulo))
    ((= op 5) (salir))
    (else (begin
            (display "ERROR")
            (menu 0)))))

  (menu 0)
  
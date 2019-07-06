(require racket/string)

(define hora_ingreso "12:35")
(define hora_salida "13:34")
(define precio 3000)
(define vi 0)
(define vf 0)

(define (valor_total hora_inicio hora_final)
   (set! vf (string-split hora_final ":"))
   (set! vi (string-split hora_inicio ":"))
  (if (> (string->number (second vf)) (string->number(second vi)))
      (display (* (+ (- (string->number (first vf)) (string->number(first vi)))1) precio))
      (display (* (- (string->number(first vf)) (string->number(first vi))) precio))
  
  )


(valor_total hora_ingreso hora_salida)




(define-struct ocorrencia (nome ritual nivel-medo agentes-enviados))

(define (soma-medo-recursiva lista)
  (if (null? lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))

(define (analise-final lista-oc)
  (let* (
         (total (soma-medo-recursiva lista-oc))
         (media (/ total (length lista-oc)))

         (criticas
          (filter
           (lambda (o)
             (and
              (> (ocorrencia-agentes-enviados o) 3)
              (> (ocorrencia-nivel-medo o) media)))
           lista-oc)))

    (mapcar ocorrencia-nome criticas)))

(define casos
  (list
    (make-ocorrencia "Floresta Negra" "Invocação" 60 2)
    (make-ocorrencia "Cripta Antiga" "Selamento" 90 5)
    (make-ocorrencia "Manicômio" "Exorcismo" 40 6)
    (make-ocorrencia "Túmulo Perdido" "Ritual" 80 4)))

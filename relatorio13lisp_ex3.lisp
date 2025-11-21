(define-struct item (nome tipo preco forca-magica))

(define catalogo-itens
  (list
    (make-item "Espada Sombria" "Arma" 100 120)
    (make-item "Adaga Rúnica" "Arma" 80 70)
    (make-item "Poção de Sangue" "Pocao" 50 20)
    (make-item "Orbe Macabro" "Artefato" 200 150)))

(define (adiciona-imposto preco)
  (* preco 1.15))

(define (bonus-maldicao forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(define (processa-venda catalogo)
  (let* (
         (armas (filter (lambda (i)
                          (equal? (item-tipo i) "Arma"))
                        catalogo))

         (armas-com-imposto
          (mapcar (lambda (i)
                    (make-item (item-nome i)
                               (item-tipo i)
                               (adiciona-imposto (item-preco i))
                               (item-forca-magica i)))
                  armas))

         (relatorio-final
          (mapcar (lambda (i)
                    (list (item-nome i)
                          (bonus-maldicao (item-forca-magica i))))
                  armas-com-imposto))
         )
    relatorio-final))

(define-struct criatura (nome ambiente periculosidade vida-media))

(define catalogo
  (list
    (make-criatura "Peeper" "Safe Shallows" "Baixa" 5)
    (make-criatura "Reaper Leviathan" "Open Ocean" "Alta" 80)
    (make-criatura "Ghost Ray" "Deep" "Média" 30)
    (make-criatura "Crab Squid" "Deep" "Alta" 40)))

(define (filtra-por-perigo catalogo)
  (filter (lambda (c)
            (not (equal? (criatura-periculosidade c) "Baixa")))
          catalogo))

(define (relatorio-profundidade catalogo)
  (mapcar
    (lambda (c)
      (string-append "[" (criatura-nome c) "]: Vive em " (criatura-ambiente c)))
    (filter (lambda (c)
              (equal? (criatura-ambiente c) "Deep"))
            catalogo)))

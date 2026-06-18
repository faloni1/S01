alimenta(sol, plantas).
alimenta(terra, plantas).
alimenta(sol, algas).
alimenta(agua, algas).
alimenta(plantas, capivara).
alimenta(plantas, veado).
alimenta(plantas, gafanhoto).
alimenta(plantas, anta).
alimenta(capivara, onca).
alimenta(veado, onca).
alimenta(gafanhoto, sapo).
alimenta(gafanhoto, passaro).
alimenta(sapo, cobra).
alimenta(passaro, cobra).
alimenta(sapo, gaviao).
alimenta(passaro, gaviao).
alimenta(peixe, jacare).
alimenta(capivara, jacare).
alimenta(fruta, tucano).
alimenta(arvore, tucano).
alimenta(inseto, tamandua).
alimenta(agua, sucuri).
alimenta(terra, sucuri).

nicho(onca, predador_topo).
nicho(onca, floresta_densa).
nicho(jacare, rios).
nicho(jacare, pantanal).
nicho(sucuri, pantano).
nicho(tucano, copas_arvores).
nicho(tucano, dispersor_sementes).
nicho(gaviao, ceu).
nicho(tamandua, solo).
nicho(tamandua, controlador_insetos).
nicho(borboleta, polinizador).
nicho(abelha, polinizador).
nicho(fungo, decompositor).

local_comum(onca, cavernas).
local_comum(jacare, margens).
local_comum(sucuri, profundezas).
local_comum(tucano, ninhos_altos).
local_comum(gafanhoto, arbustos).

especie_chave(Animal) :-
    (alimenta(agua, Animal) ; alimenta(terra, Animal)),
    (nicho(Animal, rios) ; nicho(Animal, pantano) ; nicho(Animal, profundezas)).

:- especie_chave(X), write(X), nl, fail ; true.

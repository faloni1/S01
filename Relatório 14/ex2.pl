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

especie_dominante(Animal) :-
    nicho(Animal, X),
    nicho(Animal, Y),
    X \= Y,
    local_comum(Animal, margens).

:- especie_dominante(X), write(X), nl, fail ; true.

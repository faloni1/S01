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

competidores_diretos(A, B) :-
    alimenta(sol, A),
    alimenta(terra, A),
    alimenta(sol, B),
    alimenta(terra, B),
    A \= B.

:- competidores_diretos(A, B), write(A-B), nl, fail ; true.

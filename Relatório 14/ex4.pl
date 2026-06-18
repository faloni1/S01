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

fluxo_energia(A, D) :-
    alimenta(A, D).

fluxo_energia(A, D) :-
    alimenta(A, Z),
    fluxo_energia(Z, D).

:- fluxo_energia(sol, X), write(X), nl, fail ; true.

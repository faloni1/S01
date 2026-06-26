componente(reator_fusao, 0, fundamental).
componente(propulsor_ion, 8, propulsao).
componente(dobra_espacial, 10, propulsao).
componente(escudo_plasma, 6, defesa).
componente(canhao_laser, 4, combate).
componente(torpedo_foton, 6, combate).
componente(ia_navegacao, 4, sistemas).
componente(scanner_deep_space, 6, sistemas).
componente(modulo_suporte_vida, 8, sistemas).
componente(cloaking_device, 6, defesa).
componente(android_reparo, 4, suporte).
componente(estacao_pesquisa, 10, pesquisa).

precisa(propulsor_ion, reator_fusao).
precisa(dobra_espacial, propulsor_ion).
precisa(escudo_plasma, reator_fusao).
precisa(ia_navegacao, propulsor_ion).
precisa(ia_navegacao, modulo_suporte_vida).
precisa(canhao_laser, ia_navegacao).
precisa(canhao_laser, propulsor_ion).
precisa(torpedo_foton, ia_navegacao).
precisa(scanner_deep_space, modulo_suporte_vida).
precisa(android_reparo, modulo_suporte_vida).
precisa(estacao_pesquisa, scanner_deep_space).
precisa(estacao_pesquisa, android_reparo).

peca_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).

peca_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).

% ?- peca_raiz(P).
% ?- peca_final(P).
% ?- peca_raiz(P), componente(P, _, Cat), Cat \= propulsao.

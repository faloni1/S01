componente(canhao_laser, 4, combate).
componente(torpedo_foton, 6, combate).
componente(propulsor_ion, 8, propulsao).
componente(dobra_espacial, 10, propulsao).
componente(reator_fusao, 0, fundamental).
componente(escudo_plasma, 6, defesa).
componente(ia_navegacao, 4, sistemas).
componente(scanner_deep_space, 6, sistemas).
componente(modulo_suporte_vida, 8, sistemas).
componente(cloaking_device, 6, defesa).
componente(android_reparo, 4, suporte).
componente(estacao_pesquisa, 10, pesquisa).

possui(hangar_alpha,   reator_fusao).
possui(hangar_alpha,   modulo_suporte_vida).
possui(hangar_beta,    reator_fusao).
possui(hangar_beta,    propulsor_ion).
possui(hangar_beta,    modulo_suporte_vida).
possui(hangar_gamma,   reator_fusao).
possui(hangar_gamma,   cloaking_device).
possui(hangar_gamma,   scanner_deep_space).
possui(hangar_delta,   modulo_suporte_vida).
possui(hangar_delta,   android_reparo).
possui(hangar_delta,   scanner_deep_space).
possui(hangar_epsilon, propulsor_ion).
possui(hangar_epsilon, dobra_espacial).
possui(hangar_epsilon, cloaking_device).
possui(hangar_epsilon, canhao_laser).

hangar_combate(H) :-
    possui(H, P1),
    componente(P1, _, combate),
    possui(H, P2),
    componente(P2, _, combate),
    P1 \= P2.

falta_energia(H) :-
    possui(H, _),
    \+ (possui(H, P), componente(P, _, propulsao)).

% ?- hangar_combate(H).
% ?- setof(H, falta_energia(H), L).
% ?- hangar_combate(H), falta_energia(H).

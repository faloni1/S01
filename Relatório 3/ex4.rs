fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let npl = nota3;
    let media_final = (npt * 0.7) + (npl * 0.3);

    if media_final >= 60.0 {
        println!("Congratulações! Média: {}", media_final);
    } else {
        println!("Reprovado. Média: {}", media_final);
    }

    media_final
}

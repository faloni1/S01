use std::io;

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

fn main() {
    let mut n1_s = String::new();
    let mut n2_s = String::new();
    let mut n3_s = String::new();

    io::stdin().read_line(&mut n1_s).expect("Erro");
    io::stdin().read_line(&mut n2_s).expect("Erro");
    io::stdin().read_line(&mut n3_s).expect("Erro");

    let n1: f64 = n1_s.trim().parse().expect("Erro");
    let n2: f64 = n2_s.trim().parse().expect("Erro");
    let n3: f64 = n3_s.trim().parse().expect("Erro");

    calcular_media(n1, n2, n3);
}

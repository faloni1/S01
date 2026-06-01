use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha_p1 = String::new();
    io::stdin().read_line(&mut escolha_p1).expect("Erro");
    let escolha_p1 = escolha_p1.trim().to_lowercase();

    let mut n1 = String::new();
    io::stdin().read_line(&mut n1).expect("Erro");
    let n1: i32 = n1.trim().parse().expect("Número inválido");

    let mut n2 = String::new();
    io::stdin().read_line(&mut n2).expect("Erro");
    let n2: i32 = n2.trim().parse().expect("Número inválido");

    let soma = n1 + n2;
    let resultado_impar = eh_impar(soma);
    
    let p1_venceu = if resultado_impar {
        escolha_p1 == "impar" || escolha_p1 == "ímpar"
    } else {
        escolha_p1 == "par"
    };

    println!("Soma: {}", soma);
    if p1_venceu {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
